Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3554CD8FF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 17:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED89C1124F1;
	Fri,  4 Mar 2022 16:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B9B1124EE;
 Fri,  4 Mar 2022 16:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646410823; x=1677946823;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kTaaPh57VoOKl6Ks3Btb+LKxvmculC7Bl/3x17vQcsc=;
 b=RWnH2pUOgiZ4nXzs+4rdItouaiyxegfF7liDIqUSNJbw+XLiuJv3msx4
 jNcUZ4gpJtElVz0rHCaxfikVECZtMuJYQd/dOXZwpy9j9II3adEUVTH7i
 kzDoOy7fmQXmK/P9Y6CGNdrjO65rUpqq98lTZsXWBGy2IWNMxpRWqWqwa
 vSVoG4DMnC1+S96bnfUWw7JkpVt7zgwi7GfC3+AIdfj+cnx+yS7ZKRNrr
 jFA8J3FUMzRofnyGCkoSQXlxd4D3YRy5A8fnRcDZCz7O/yfURbFlyzFjN
 I/oqoqrUjnv8aeJACnIDdGMkYnNuz5deMwFrFlvUPILROTLk9QfygAqas Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="252834223"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="252834223"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:20:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="552274684"
Received: from lkurylo-mobl.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.ger.corp.intel.com) ([10.213.11.7])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:20:22 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Date: Fri, 04 Mar 2022 17:20:19 +0100
Message-ID: <14572198.JCcGWNJJiE@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YiIsvT1GlBN/HaXC@kamilkon-DESK1>
References: <20220301140755.315472-1-janusz.krzysztofik@linux.intel.com>
 <YiIsvT1GlBN/HaXC@kamilkon-DESK1>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v2 i-g-t] lib/intel_mmio: Fix
 mmapped resources not unmapped on fini
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

Thanks for review.

On Friday, 4 March 2022 16:14:05 CET Kamil Konieczny wrote:
> Hi Janusz,
>=20
> Dnia 2022-03-01 at 15:07:55 +0100, Janusz Krzysztofik napisa=C5=82(a):
> > Commit 5f3cfa485eb4 ("lib: Use safe wrappers around libpciaccess
> > initialization functions") took care of not leaking memory allocated by
> > pci_system_init() but didn't take care of users potentially attempting =
to
> > reinitialize global data maintained by libpciaccess.  For example,
> > intel_register_access_init() mmaps device's PCI BAR0 resource with
> > pci_device_map_range() but intel_register_access_fini() doesn't unmap it
> > and next call to intel_register_access_init() fails on attempt to mmap =
it
> > again with pci_device_map_range().
> ------ ^
> imho you can cut here, no need to repeat it twice.

OK

> >=20
> > Fix it, and also provide intel_mmio_umap_*() counterparts to public
> -------------------------------------- ^
> s/umap/unmap/

Thanks.

> > functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().
> >=20
> > v2: apply last minute fixes, cached but unfortunately not committed bef=
ore
> >     sending
> >=20
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/intel_io.h   |  4 +++
> >  lib/intel_mmio.c | 67 ++++++++++++++++++++++++++++++++++++++++++------
> >  2 files changed, 63 insertions(+), 8 deletions(-)
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
> > index 667a69f5aa..cb8f9db2e5 100644
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
> > @@ -99,11 +101,29 @@ intel_mmio_use_dump_file(struct intel_mmio_data *m=
mio_data, char *file)
>=20
> imho at beginning of this function there should be check
> that igt_global_mmio =3D=3D NULL, and the same check should be at
> other init functions.

No, what I think needs to be fixed are users who are still using=20
igt_global_mmio while they should use the value they passed as the mmio=20
argument to intel_mmio_use_*() or intel_register_access_init(), and that=20
global variable should be dropped.  But first of all, that's not related to=
=20
the issue this patch is trying to fix, then out of scope of this patch.

> Looks like we cannot mmap two different pcie cards at the same
> time with this lib.

We can, if we just ignore that depreciated global variable, I believe.

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
> > +	if (igt_warn_on_f(!mmio_data->mmio_size || mmio_data->dev,
> > +			  "test bug: argument doesn't point to struct intel_mmio_data initi=
alized with intel_mmio_use_dump_file()\n"))
>=20
> Please shorten text for warning, something like: arg was not
> inialized with ...

OK

> Please also add check for null at global var.
>=20
> > +		return;
> > +
> > +	igt_global_mmio =3D NULL;
> > +	igt_debug_on(munmap(mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> > +	mmio_data->mmio_size =3D 0;
> > +}
> > +
> >  /**
> >   * intel_mmio_use_pci_bar:
> >   * @mmio_data:  mmio structure for IO operations
> > @@ -112,12 +132,14 @@ intel_mmio_use_dump_file(struct intel_mmio_data *=
mmio_data, char *file)
> >   * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
> >   *
> >   * @pci_dev can be obtained from intel_get_pci_device().
> > + *
> > + * Users are expected to call intel_mmio_unmap_pci_bar() after use.
> >   */
> >  void
> >  intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_d=
evice *pci_dev)
> >  {
> >  	uint32_t devid, gen;
> > -	int mmio_bar, mmio_size;
> > +	int mmio_bar;
>=20
> Please use this local var and assign it to struct only after
> succesfull initialization.

OK

>=20
> >  	int error;
> > =20
> >  	memset(mmio_data, 0, sizeof(struct intel_mmio_data));
> > @@ -129,22 +151,42 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mm=
io_data, struct pci_device *pci
> > =20
> >  	gen =3D intel_gen(devid);
> >  	if (gen < 3)
> > -		mmio_size =3D 512*1024;
> > +		mmio_data->mmio_size =3D 512*1024;
> >  	else if (gen < 5)
> > -		mmio_size =3D 512*1024;
> > +		mmio_data->mmio_size =3D 512*1024;
>=20
> Both places uses the same number 512*1024, please make it one
> if check: if (gen < 5)
>=20
> Or maybe it is an error for gen < 3 ?

Out of scope.

>=20
> >  	else
> > -		mmio_size =3D 2*1024*1024;
> > +		mmio_data->mmio_size =3D 2*1024*1024;
> > =20
> >  	error =3D pci_device_map_range (pci_dev,
> >  				      pci_dev->regions[mmio_bar].base_addr,
> > -				      mmio_size,
> > +				      mmio_data->mmio_size,
> >  				      PCI_DEV_MAP_FLAG_WRITABLE,
> >  				      &mmio_data->igt_mmio);
> > =20
> > -	igt_global_mmio =3D mmio_data->igt_mmio;
> > -
> >  	igt_fail_on_f(error !=3D 0,
> >  		      "Couldn't map MMIO region\n");
> > +
> > +	mmio_data->dev =3D pci_dev;
> > +	igt_global_mmio =3D mmio_data->igt_mmio;
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
> > +	if (igt_warn_on_f(!mmio_data->dev,
> > +			  "test bug: argument doesn't point to struct intel_mmio_data initi=
alized with intel_mmio_use_pci_bar()\n"))
>=20
> Same here, please shorten this warn.
>=20
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
> > @@ -166,6 +208,8 @@ release_forcewake_lock(int fd)
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
> > @@ -222,8 +266,15 @@ int intel_register_access_needs_fakewake(struct in=
tel_mmio_data *mmio_data)
> >  void
> >  intel_register_access_fini(struct intel_mmio_data *mmio_data)
> >  {
> > -	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
> > +	if (igt_warn_on_f(!mmio_data->key,
> > +			  "test bug: argument doesn't point to struct intel_mmio_data initi=
alized with intel_register_access_init()\n"))
>=20
> Same here, please shorten this warn.
>=20
> Btw, in this lib error condition for key is -1, so maybe this
> should also be cheked ?

No, key =3D=3D -1 means forcewake is not supported and shouldn't be used bu=
t it=20
still means the structure was initialized by intel_register_access_init(). =
=20
However, thanks for this question, since now I can see 0, though unlikely, =
can=20
be a valid key.

AFAICT, 0000 is not a valid PCI device ID, then mmio->device_id is a much=20
better candidate than ->key for this check -- I'll switch to it in v2 of th=
is=20
patch.

> > +		return;
> > +
> > +	if (intel_register_access_needs_wake(mmio_data))
> >  		release_forcewake_lock(mmio_data->key);
> > +	mmio_data->key =3D 0;
> > +
> > +	intel_mmio_unmap_pci_bar(mmio_data);
> >  }
> > =20
> >  /**
> >
>=20
> Please correct desciption of global var igt_global_mmio, there
> is one more method for initialize it: intel_mmio_use_pci_bar
> as you wrote on irc.

Out of scope.

Thanks,
Janusz

>=20
> Regards,
> Kamil Konieczny
> =20
>=20




