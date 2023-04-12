export type CreateUserDTO = {
  username: string;
  name: string;
  cpf: string;
  birth_date: Date;
  password: string;
  id_state: number;
  id_city: number;
};
