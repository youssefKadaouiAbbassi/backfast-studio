import MainHeader from '@/components/headers/mainHeader';

export default async function Index() {
  const config = await import('@/config/config.json');

  return (
    <>
      <MainHeader />
      <div className="text-3xl">{JSON.stringify(config)}</div>
    </>
  );
}
