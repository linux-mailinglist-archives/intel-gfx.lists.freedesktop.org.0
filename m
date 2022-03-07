Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E50D24D026A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 16:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06D8710E467;
	Mon,  7 Mar 2022 15:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5FF710E403;
 Mon,  7 Mar 2022 15:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646665578; x=1678201578;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b5T5yh11OY9iPW5XzGaUefKNSFhUVyQza/dx1N0hOes=;
 b=kjPxzYU1aSb+dS+DfJbLroSpLO2+34YHTjdXqPsSE+nPsU7jVSYjAoMf
 movMW/5lymRhI/2jPWcVNCXxS61gifWRbq/uUS6oP+Rj5cqLQ8z+2JIa8
 bvChewvhp/7nurwpztnNbyL1Sg0GILPC34+lEKKWqAz6rK1Lmn1YgzERp
 gEilsSr/Ce6/qKGkPolEq9akSuXROKfKAB7DKAhL0XYHxddxws2ODt2B/
 F9nQ96BIj4yHrJwBv1CT2buxPjHRxVdoRIMpyoStST+nsn+PV9lJC7iGh
 gxr+jo6FSIrB0qRICD6f/HWafrwnJUeAsnK8xPt76kJR0swO92X1lC/jI g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="251984861"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="251984861"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 07:06:18 -0800
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="553188136"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.26.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 07:06:14 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Date: Mon, 07 Mar 2022 16:06:10 +0100
Message-ID: <21668843.hxa6pUQ8Du@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YiYHUju3mA6wNTGr@kamilkon-DESK1>
References: <20220307082643.380066-1-janusz.krzysztofik@linux.intel.com>
 <YiYHUju3mA6wNTGr@kamilkon-DESK1>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t] lib/intel_mmio: Fix mmapped
 resources not unmapped on fini
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kamil,

On Monday, 7 March 2022 14:23:30 CET Kamil Konieczny wrote:
> Hi Janusz,
>=20
> Dnia 2022-03-07 at 09:26:43 +0100, Janusz Krzysztofik napisa=C5=82(a):
> > Commit 5f3cfa485eb4 ("lib: Use safe wrappers around libpciaccess
> > initialization functions") took care of not leaking memory allocated by
> > pci_system_init() but didn't take care of users potentially attempting =
to
> > reinitialize global data maintained by libpciaccess.  For example,
> > intel_register_access_init() mmaps device's PCI BAR0 resource with
> > pci_device_map_range() but intel_register_access_fini() doesn't unmap it
> > and next call to intel_register_access_init() fails on attempt to mmap =
it
> > again.
> >=20
> > Fix it, and also provide intel_mmio_unmap_*() counterparts to public
> > functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().
> >=20
> > v2: apply last minute fixes, cached but unfortunately not committed bef=
ore
> >     sending
> > v3: use .pci_device_id field content as an indicator of arg initializat=
ion
> >     via intel_register_access_init(),
> >   - improve checks of argument initialization status,
> >   - shorten warning messages (Kamil),
> >   - don't fill .mmio_size field until initialization succeeds (Kamil)
> >=20
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > ---
> >  lib/intel_io.h   |  4 +++
> >  lib/intel_mmio.c | 64 +++++++++++++++++++++++++++++++++++++++++++++---
> >  2 files changed, 65 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/lib/intel_io.h b/lib/intel_io.h
> > index 1cfe4fb6b9..ea2649d9bc 100644
> > --- a/lib/intel_io.h
> > +++ b/lib/intel_io.h
> > @@ -49,6 +49,8 @@ struct intel_register_map {
> > =20
> >  struct intel_mmio_data {
> >  	void *igt_mmio;
> > +	size_t mmio_size;
> > +	struct pci_device *dev;
> >  	struct intel_register_map map;
> >  	uint32_t pci_device_id;
> >  	int key;
> > @@ -57,7 +59,9 @@ struct intel_mmio_data {
> > =20
> >  void intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data,
> >  			    struct pci_device *pci_dev);
> > +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data);
> >  void intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char =
*file);
> > +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data);
> > =20
> >  int intel_register_access_init(struct intel_mmio_data *mmio_data,
> >  			       struct pci_device *pci_dev, int safe, int fd);
> > diff --git a/lib/intel_mmio.c b/lib/intel_mmio.c
> > index 667a69f5aa..d6ce0ee3ea 100644
> > --- a/lib/intel_mmio.c
> > +++ b/lib/intel_mmio.c
> > @@ -82,6 +82,8 @@ void *igt_global_mmio;
> >   * Sets also up mmio_data->igt_mmio to point at the data contained
> >   * in @file. This allows the same code to get reused for dumping and d=
ecoding
> >   * from running hardware as from register dumps.
> > + *
> > + * Users are expected to call intel_mmio_unmap_dump_file() after use.
> >   */
> >  void
> >  intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
> > @@ -99,11 +101,32 @@ intel_mmio_use_dump_file(struct intel_mmio_data *m=
mio_data, char *file)
> >  	igt_fail_on_f(mmio_data->igt_mmio =3D=3D MAP_FAILED,
> >  		      "Couldn't mmap %s\n", file);
> > =20
> > +	mmio_data->mmio_size =3D st.st_size;
> >  	igt_global_mmio =3D mmio_data->igt_mmio;
> > =20
> >  	close(fd);
> >  }
> > =20
> > +/**
> > + * intel_mmio_unmap_dump_file:
> > + * @mmio_data:  mmio structure for IO operations
> > + *
> > + * Unmaps a dump file mmapped with intel_mmio_use_dump_file()
> > + */
> > +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data)
> > +{
> > +	if (igt_warn_on_f(mmio_data->dev,
> > +			  "test bug: arg initialized with intel_mmio_use_pci_bar()\n"))
> > +		return;
>=20
> Please add a global description about this kind of errors, this
> one is for using unmap when mmio was mmap-ed from other mmap
> type.

Can you please be more specific in what you mean by "global description of=
=20
this kind of errors"?  A more detailed warning?  A comment?  If the latter=
=20
then how would you like me to make it global?

If you just don't like the reference to intel_mmio_use_pci_bar() here then=
=20
would you be satisfied with something like "test bug: arg initialized by a=
=20
method other than intel_mmio_use_dump_file()\n"?

> > +	if (igt_warn_on_f(!mmio_data->mmio_size,
> > +			  "test bug: arg not initialized\n"))
> > +		return;
>=20
> Can we replace this with one check igt_global_mmio !=3D NULL ?
> Something like:
>=20
> 	if (igt_warn_on_f(!igt_global_mmio,
> 			  "mmio regs not mmap-ed\n"))
> 		return;
>=20
> Or should we add this before all other checks in unmap functions
> and keep this additional check ?

Why igt_global_mmio again?  I still think this global variable is broken an=
d=20
users should just use the structure they pass to intel_mmio_use_*() or=20
intel_register_access_init(), then introducing another a dependency on it w=
ith=20
this patch doesn't make sense to me.  If you think the opposite then please=
=20
explain why.

> > +
> > +	igt_global_mmio =3D NULL;
> > +	igt_debug_on(munmap(mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> > +	mmio_data->mmio_size =3D 0;
> > +}
> > +
> >  /**
> >   * intel_mmio_use_pci_bar:
> >   * @mmio_data:  mmio structure for IO operations
> > @@ -112,6 +135,8 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mm=
io_data, char *file)
> >   * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
> >   *
> >   * @pci_dev can be obtained from intel_get_pci_device().
> > + *
> > + * Users are expected to call intel_mmio_unmap_pci_bar() after use.
> >   */
> >  void
> >  intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_d=
evice *pci_dev)
> > @@ -141,10 +166,34 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mm=
io_data, struct pci_device *pci
> >  				      PCI_DEV_MAP_FLAG_WRITABLE,
> >  				      &mmio_data->igt_mmio);
> > =20
> > -	igt_global_mmio =3D mmio_data->igt_mmio;
> > -
> >  	igt_fail_on_f(error !=3D 0,
> >  		      "Couldn't map MMIO region\n");
> > +
> > +	mmio_data->mmio_size =3D mmio_size;
> > +	mmio_data->dev =3D pci_dev;
> > +	igt_global_mmio =3D mmio_data->igt_mmio;

To be consequent with what I said above, in next version of the patch I'm=20
going to not touch the assignment of mmio_data->igt_mmio to the out of scop=
e=20
and depreciated igt_global_mmio, leaving it as broken as it already is.

> > +}
> > +
> > +/**
> > + * intel_mmio_unmap_pci_bar:
> > + * @mmio_data:  mmio structure for IO operations
> > + *
> > + * Unmaps a PCI BAR region mmapped with intel_mmio_use_pci_bar()
> > + */
> > +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data)
> > +{
> > +	if (igt_warn_on_f(mmio_data->pci_device_id,
> > +			  "test bug: arg initialized with intel_register_access_init()\n"))

Similarly to the case of intel_mmio_unmap_dump_file(), I can change the=20
message to "test bug: arg initialized with a method other than=20
intel_mmio_use_pci_bar()\n" if that's what you prefer.

> > +		return;
> > +	if (igt_warn_on_f(!mmio_data->dev,
> > +			  "test bug: arg not initialized with intel_mmio_use_pci_bar()\n"))
> > +		return;
> > +
> > +	igt_global_mmio =3D NULL;
> > +	igt_debug_on(pci_device_unmap_range(mmio_data->dev,
> > +					    mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> > +	mmio_data->dev =3D NULL;
> > +	mmio_data->mmio_size =3D 0;
> >  }
> > =20
> >  static void
> > @@ -166,6 +215,8 @@ release_forcewake_lock(int fd)
> >   * It also initializes mmio_data->igt_mmio like intel_mmio_use_pci_bar=
().
> >   *
> >   * @pci_dev can be obtained from intel_get_pci_device().
> > + *
> > + * Users are expected to call intel_register_access_fini() after use.
> >   */
> >  int
> >  intel_register_access_init(struct intel_mmio_data *mmio_data, struct p=
ci_device *pci_dev, int safe, int fd)
> > @@ -222,8 +273,15 @@ int intel_register_access_needs_fakewake(struct in=
tel_mmio_data *mmio_data)
> >  void
> >  intel_register_access_fini(struct intel_mmio_data *mmio_data)
> >  {
> > -	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
> > +	if (igt_warn_on_f(!mmio_data->pci_device_id,
> > +			  "test bug: arg not initialized with intel_register_access_init()\=
n"))
> > +		return;
> > +
> > +	if (intel_register_access_needs_wake(mmio_data))

As mmio_data->key is no longer used since v3 as an indication of mmio_data=
=20
having been initialized by intel_register_access_init() or not, the origina=
l=20
(potentially broken) condition:

	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))

should be not touched by this patch as out of scope but its original form=20
preserved.  I'm going to restore it in next version of the patch.

> >  		release_forcewake_lock(mmio_data->key);
> > +
> > +	mmio_data->pci_device_id =3D 0;
>=20
> Here we should check other conditions so no warn triggers in unmap_pci_bar
> or make the messages generic (and document it in comments at beggining)
> or maybe make helper with no checks for unmap_pci_bar.

Why? I can't see any potential scenario where mmio_data->pci_device_id is n=
ot=20
0 but mmio_data->dev is NULL.  If you can see one then please tell me more=
=20
about it.

Thanks,
Janusz


> > +	intel_mmio_unmap_pci_bar(mmio_data);
> >  }
> > =20
> >  /**
>=20




