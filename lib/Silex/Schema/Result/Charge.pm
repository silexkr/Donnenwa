use utf8;
package Silex::Schema::Result::Charge;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Silex::Schema::Result::Charge

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<Silex::Schema::ResultBase>

=cut

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'Silex::Schema::ResultBase';

=head1 TABLE: C<charge>

=cut

__PACKAGE__->table("charge");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 amount

  data_type: 'integer'
  is_nullable: 0

??

=head2 user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

?? ???

=head2 comment

  data_type: 'varchar'
  is_nullable: 1
  size: 255

?? ??

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

?? ??

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "amount",
  { data_type => "integer", is_nullable => 0 },
  "user_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "comment",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 user

Type: might_have

Related object: L<Silex::Schema::Result::User>

=cut

__PACKAGE__->might_have(
  "user",
  "Silex::Schema::Result::User",
  { "foreign.id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 15:02:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lk/58Now57Uy/h14a7yJXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
