Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D9216C8F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 22:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529616E845;
	Tue,  7 May 2019 20:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D836E845
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 20:48:38 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 13:48:37 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 13:48:37 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 7 May 2019 13:48:37 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.135]) with mapi id 14.03.0415.000;
 Tue, 7 May 2019 13:48:37 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Expand subslice mask
Thread-Index: AQHVBQc427Kl5tb8mEGlwOuD1VIJS6Zgl7+A
Date: Tue, 7 May 2019 20:48:36 +0000
Message-ID: <2fac0fe1df309711846000cfdfbe9019df16bd19.camel@intel.com>
References: <20190503213020.25628-1-stuart.summers@intel.com>
 <20190503213020.25628-6-stuart.summers@intel.com>
 <ea334454-c3af-0deb-b5a2-a744549a7249@intel.com>
In-Reply-To: <ea334454-c3af-0deb-b5a2-a744549a7249@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Expand subslice mask
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0356159550=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0356159550==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-dsbq+J1PBC/7xbNXj61S"

--=-dsbq+J1PBC/7xbNXj61S
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-05-07 at 12:00 -0700, Daniele Ceraolo Spurio wrote:
>=20
> On 5/3/19 2:30 PM, Stuart Summers wrote:
> > Currently, the subslice_mask runtime parameter is stored as an
> > array of subslices per slice. Expand the subslice mask array to
> > better match what is presented to userspace through the
> > I915_QUERY_TOPOLOGY_INFO ioctl. The index into this array is
> > then calculated:
> >    slice * subslice stride + subslice index / 8
> >=20
> > v2: fix spacing in set_sseu_info args
> >      use set_sseu_info to initialize sseu data when building
> >      device status in debugfs
> >      rename variables in intel_engine_types.h to avoid checkpatch
> >      warnings
> > v3: update headers in intel_sseu.h
> > v4: add const to some sseu_dev_info variables
> >      use sseu->eu_stride for EU stride calculations
> > v5: address review comments from Tvrtko and Daniele
> >=20
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  24 ++-
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h |  30 ++--
> >   drivers/gpu/drm/i915/gt/intel_hangcheck.c    |   3 +-
> >   drivers/gpu/drm/i915/gt/intel_sseu.c         |  43 ++++-
> >   drivers/gpu/drm/i915/gt/intel_sseu.h         |  28 +++-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c  |   2 +-
> >   drivers/gpu/drm/i915/i915_debugfs.c          |  40 ++---
> >   drivers/gpu/drm/i915/i915_drv.c              |   6 +-
> >   drivers/gpu/drm/i915/i915_gpu_error.c        |   5 +-
> >   drivers/gpu/drm/i915/i915_query.c            |  10 +-
> >   drivers/gpu/drm/i915/intel_device_info.c     | 155 ++++++++++--
> > -------
> >   11 files changed, 227 insertions(+), 119 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 5907a9613641..290bda5cc82b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -909,12 +909,30 @@ const char *i915_cache_level_str(struct
> > drm_i915_private *i915, int type)
> >   	}
> >   }
> >  =20
> > +static inline u32
> > +intel_sseu_fls_subslice(const struct sseu_dev_info *sseu, u32
> > slice)
> > +{
> > +	u32 subslice;
> > +	int i;
> > +
> > +	for (i =3D sseu->ss_stride - 1; i >=3D 0; i--) {
> > +		subslice =3D fls(sseu->subslice_mask[slice * sseu-
> > >ss_stride +
> > +						   i]);
> > +		if (subslice) {
> > +			subslice +=3D i * BITS_PER_BYTE;
> > +			break;
> > +		}
> > +	}
> > +
> > +	return subslice;
> > +}
> > +
> >   u32 intel_calculate_mcr_s_ss_select(struct drm_i915_private
> > *dev_priv)
> >   {
> >   	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	u32 mcr_s_ss_select;
> >   	u32 slice =3D fls(sseu->slice_mask);
> > -	u32 subslice =3D fls(sseu->subslice_mask[slice]);
> > +	u32 subslice =3D intel_sseu_fls_subslice(sseu, slice);
> >  =20
> >   	if (IS_GEN(dev_priv, 10))
> >   		mcr_s_ss_select =3D GEN8_MCR_SLICE(slice) |
> > @@ -990,6 +1008,7 @@ void intel_engine_get_instdone(struct
> > intel_engine_cs *engine,
> >   			       struct intel_instdone *instdone)
> >   {
> >   	struct drm_i915_private *dev_priv =3D engine->i915;
> > +	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	struct intel_uncore *uncore =3D engine->uncore;
> >   	u32 mmio_base =3D engine->mmio_base;
> >   	int slice;
> > @@ -1007,7 +1026,8 @@ void intel_engine_get_instdone(struct
> > intel_engine_cs *engine,
> >  =20
> >   		instdone->slice_common =3D
> >   			intel_uncore_read(uncore, GEN7_SC_INSTDONE);
> > -		for_each_instdone_slice_subslice(dev_priv, slice,
> > subslice) {
> > +		for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > +						 subslice) {
> >   			instdone->sampler[slice][subslice] =3D
> >   				read_subslice_reg(dev_priv, slice,
> > subslice,
> >   						  GEN7_SAMPLER_INSTDONE
> > );
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index c0ab11b12e14..582340b55144 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -535,20 +535,20 @@ intel_engine_needs_breadcrumb_tasklet(const
> > struct intel_engine_cs *engine)
> >   	return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
> >   }
> >  =20
> > -#define instdone_slice_mask(dev_priv__) \
> > -	(IS_GEN(dev_priv__, 7) ? \
> > -	 1 : RUNTIME_INFO(dev_priv__)->sseu.slice_mask)
> > -
> > -#define instdone_subslice_mask(dev_priv__) \
> > -	(IS_GEN(dev_priv__, 7) ? \
> > -	 1 : RUNTIME_INFO(dev_priv__)->sseu.subslice_mask[0])
> > -
> > -#define for_each_instdone_slice_subslice(dev_priv__, slice__,
> > subslice__) \
> > -	for ((slice__) =3D 0, (subslice__) =3D 0; \
> > -	     (slice__) < I915_MAX_SLICES; \
> > -	     (subslice__) =3D ((subslice__) + 1) < I915_MAX_SUBSLICES ?
> > (subslice__) + 1 : 0, \
> > -	       (slice__) +=3D ((subslice__) =3D=3D 0)) \
> > -		for_each_if((BIT(slice__) &
> > instdone_slice_mask(dev_priv__)) && \
> > -			    (BIT(subslice__) &
> > instdone_subslice_mask(dev_priv__)))
> > +#define instdone_has_slice(dev_priv___, sseu___, slice___) \
> > +	((IS_GEN(dev_priv___, 7) ? 1 : ((sseu___)->slice_mask)) & \
> > +	BIT(slice___))
> > +
> > +#define instdone_has_subslice(dev_priv__, sseu__, slice__,
> > subslice__) \
> > +	(IS_GEN(dev_priv__, 7) ? 1 : \
>=20
> This will return true for all ss on gen7, while the original code=20
> returned 1 as the subslice mask (i.e. only has ss =3D=3D 0).

True, I'll fix this.

>=20
> > +	 intel_sseu_has_subslice(sseu__, slice__, subslice__))
> > +
> > +#define for_each_instdone_slice_subslice(dev_priv_, sseu_, slice_,
> > subslice_) \
> > +	for ((slice_) =3D 0, (subslice_) =3D 0; (slice_) < I915_MAX_SLICES;
> > \
> > +	     (subslice_) =3D ((subslice_) + 1) % I915_MAX_SUBSLICES, \
> > +	     (slice_) +=3D ((subslice_) =3D=3D 0)) \
> > +		for_each_if((instdone_has_slice(dev_priv_, sseu_,
> > slice_)) && \
> > +			    (irnstdone_has_subslice(dev_priv_, sseu_,
> > slice_, \
> > +						    subslice_)))
> >  =20
> >   #endif /* __INTEL_ENGINE_TYPES_H__ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > b/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > index 721ab74a382f..10e032c9ab10 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > @@ -51,6 +51,7 @@ static bool instdone_unchanged(u32
> > current_instdone, u32 *old_instdone)
> >   static bool subunits_stuck(struct intel_engine_cs *engine)
> >   {
> >   	struct drm_i915_private *dev_priv =3D engine->i915;
> > +	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	struct intel_instdone instdone;
> >   	struct intel_instdone *accu_instdone =3D &engine-
> > >hangcheck.instdone;
> >   	bool stuck;
> > @@ -72,7 +73,7 @@ static bool subunits_stuck(struct intel_engine_cs
> > *engine)
> >   	stuck &=3D instdone_unchanged(instdone.slice_common,
> >   				    &accu_instdone->slice_common);
> >  =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice) {
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice) {
> >   		stuck &=3D
> > instdone_unchanged(instdone.sampler[slice][subslice],
> >   					    &accu_instdone-
> > >sampler[slice][subslice]);
> >   		stuck &=3D
> > instdone_unchanged(instdone.row[slice][subslice],
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > index a0756f006f5f..a8b98b0266b7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > @@ -8,6 +8,17 @@
> >   #include "intel_lrc_reg.h"
> >   #include "intel_sseu.h"
> >  =20
> > +void intel_sseu_set_info(struct sseu_dev_info *sseu, u8
> > max_slices,
> > +			 u8 max_subslices, u8 max_eus_per_subslice)
> > +{
> > +	sseu->max_slices =3D max_slices;
> > +	sseu->max_subslices =3D max_subslices;
> > +	sseu->max_eus_per_subslice =3D max_eus_per_subslice;
> > +
> > +	sseu->ss_stride =3D GEN_SSEU_STRIDE(sseu->max_subslices);
> > +	sseu->eu_stride =3D GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > +}
> > +
> >   unsigned int
> >   intel_sseu_subslice_total(const struct sseu_dev_info *sseu)
> >   {
> > @@ -19,10 +30,40 @@ intel_sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> >   	return total;
> >   }
> >  =20
> > +void intel_sseu_copy_subslices(const struct sseu_dev_info *sseu,
> > int slice,
> > +			       u8 *to_mask)
> > +{
> > +	int offset =3D slice * sseu->ss_stride;
> > +
> > +	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu-
> > >ss_stride);
> > +}
> > +
> > +u32  intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8
> > slice)
>=20
> nitpick: extra space

Ok.

>=20
> > +{
> > +	int i, offset =3D slice * sseu->ss_stride;
> > +	u32 mask;
> > +
>=20
> GEM_BUG_ON(sseu->ss_stride > size(u32)) to catch the unlikely case we
> go=20
> over and need to update the mask size?

Makes sense. I'll add this.

>=20
> > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > +		mask |=3D (u32)sseu->subslice_mask[offset + i] <<
> > +			i * BITS_PER_BYTE;
> > +
> > +	return mask;
> > +}
> > +
> > +void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int
> > slice,
> > +			      u32 ss_mask)
> > +{
> > +	int i, offset =3D slice * sseu->ss_stride;
> > +
> > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > +		sseu->subslice_mask[offset + i] =3D
> > +			(ss_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > +}
> > +
> >   unsigned int
> >   intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice)
> >   {
> > -	return hweight8(sseu->subslice_mask[slice]);
> > +	return hweight32(intel_sseu_get_subslices(sseu, slice));
> >   }
> >  =20
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
>=20
> <snip>
>=20
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -84,17 +84,46 @@ void intel_device_info_dump_flags(const struct
> > intel_device_info *info,
> >   #undef PRINT_FLAG
> >   }
> >  =20
> > +#define SS_STR_MAX_SIZE (GEN_MAX_SUBSLICE_STRIDE * 2 + 1)
> > +
> > +static char *
> > +subslice_per_slice_str(char *buf, u8 size, const struct
> > sseu_dev_info *sseu,
> > +		       u8 slice)
> > +{
> > +	int i;
> > +	u8 ss_offset =3D slice * sseu->ss_stride;
> > +
> > +	GEM_BUG_ON(slice >=3D sseu->max_slices);
> > +
> > +	/* Two ASCII character hex plus null terminator */
> > +	GEM_BUG_ON(size < sseu->ss_stride * 2 + 1);
> > +
> > +	memset(buf, 0, size);
> > +
> > +	/*
> > +	 * Print subslice information in reverse order to match
> > +	 * userspace expectations.
> > +	 */
> > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > +		sprintf(&buf[i * 2], "%02x",
> > +			sseu->subslice_mask[ss_offset + sseu->ss_stride=20
> > -
> > +					    (i + 1)]);
> > +
> > +	return buf;
> > +}
> > +
> >   static void sseu_dump(const struct sseu_dev_info *sseu, struct
> > drm_printer *p)
> >   {
> >   	int s;
> > +	char buf[SS_STR_MAX_SIZE];
> >  =20
> >   	drm_printf(p, "slice total: %u, mask=3D%04x\n",
> >   		   hweight8(sseu->slice_mask), sseu->slice_mask);
> >   	drm_printf(p, "subslice total: %u\n",
> > intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> > -		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > +		drm_printf(p, "slice%d: %u subslices, mask=3D%s\n",
> >   			   s, intel_sseu_subslices_per_slice(sseu, s),
> > -			   sseu->subslice_mask[s]);
> > +			   subslice_per_slice_str(buf, ARRAY_SIZE(buf),
> > sseu, s));
>=20
> Now that we have intel_sseu_get_subslices() can't we just print the=20
> return from that instead of using the buffer?

I personally would prefer we keep the stringify function as it gives a
little more flexibility. Do you have a strong preference to move to a
direct printk formatted string?

>=20
>=20
> >   	}
> >   	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> >   	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
>=20
> <snip>
>=20
> > @@ -555,6 +570,7 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >   	u32 fuse1;
> >   	int s, ss;
> > +	u32 subslice_mask;
> >  =20
> >   	/*
> >   	 * There isn't a register to tell us how many slices/subslices.
> > We
> > @@ -566,22 +582,18 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   		/* fall through */
> >   	case 1:
> >   		sseu->slice_mask =3D BIT(0);
> > -		sseu->subslice_mask[0] =3D BIT(0);
> > +		subslice_mask =3D BIT(0);
> >   		break;
> >   	case 2:
> >   		sseu->slice_mask =3D BIT(0);
> > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > +		subslice_mask =3D BIT(0) | BIT(1);
> >   		break;
> >   	case 3:
> >   		sseu->slice_mask =3D BIT(0) | BIT(1);
> > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > -		sseu->subslice_mask[1] =3D BIT(0) | BIT(1);
> > +		subslice_mask =3D BIT(0) | BIT(1);
> >   		break;
> >   	}
> >  =20
> > -	sseu->max_slices =3D hweight8(sseu->slice_mask);
> > -	sseu->max_subslices =3D hweight8(sseu->subslice_mask[0]);
> > -
> >   	fuse1 =3D I915_READ(HSW_PAVP_FUSE1);
> >   	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >> HSW_F1_EU_DIS_SHIFT) {
> >   	default:
> > @@ -598,9 +610,14 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   		sseu->eu_per_subslice =3D 6;
> >   		break;
> >   	}
> > -	sseu->max_eus_per_subslice =3D sseu->eu_per_subslice;
> > +
> > +	intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
> > +			    hweight8(subslice_mask),
> > +			    sseu->eu_per_subslice);
>=20
> I'd still prefer this to use a local variable so that we always only
> set=20
> sseu->eu_per_subslice from within intel_sseu_set_info.

So the reason I kept this is in intel_sseu_set_info we are really just
setting the max_eus_per_subslice, not the eu_per_subslice. Are you
saying you'd also like to move the code that sets eu_per_subslice in
each generation's handler to local variables and/or just passed
directly as an argument to intel_sseu_set_info?

I.e. should we use intel_sseu_set_info to set most or all of the
members of the intel_sseu structure? Or is it OK to keep the current
implementation of only using this to set default maximums per platform?

-Stuart

>=20
> Daniele
>=20
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> > +		intel_sseu_set_subslices(sseu, s, subslice_mask);
> > +
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			intel_sseu_set_eus(sseu, s, ss,
> >   					   (1UL << sseu-
> > >eu_per_subslice) - 1);
> >=20

--=-dsbq+J1PBC/7xbNXj61S
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKcTCCBOsw
ggPToAMCAQICEDabxALowUBS+21KC0JI8fcwDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzEyMTEwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
yzuW/y/g0bznz8BD48M94luFzqHaqY9yGN9H/W0J7hOVBpl0rTQJ6kZ7z7hyDb9kf2UW4ZU25alC
i+q5m6NwHg+z9pcN7bQ84SSBueaYF7cXlAg7z3XyZbzSEYP7raeuWRf5fYvYzq8/uI7VNR8o/43w
PtDP10YDdO/0J5xrHxnC/9/aU+wTFSVsPqxsd7C58mnu7G4VRJ0n9PG4SfmYNC0h/5fLWuOWhxAv
6MuiK7MmvTPHLMclULgJqVSqG1MbBs0FbzoRHne4Cx0w6rtzPTrzo+bTRqhruaU18lQkzBk6OnyJ
UthtaDQIlfyGy2IlZ5F6QEyjItbdKcHHdjBX8wIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFNpBI5xaj3GvV4M+INPjZdsMywvbMA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAp9XGgH85hk/3IuN8F4nrFd24MAoau7Uq
M/of09XtyYg2dV0TIPqtxPZw4813r78WwsGIbvtO8VQ18dNktIxaq6+ym2zebqDh0z6Bvo63jKE/
HMj8oNV3ovnuo+7rGpCppcda4iVBG2CetB3WXbUVr82EzECN+wxmC4H9Rup+gn+t+qeBTaXulQfV
TYOvZ0eZPO+DyC2pVv5q5+xHljyUsVqpzsw89utuO8ZYaMsQGBRuFGOncRLEOhCtehy5B5aCI571
i4dDAv9LPODrEzm3PBfrNhlp8C0skak15VXWFzNuHd00AsxXxWSUT4TG8RiAH61Ua5GXsP1BIZwl
4WjK8DCCBX4wggRmoAMCAQICEzMAAHThOHejBjRRsRQAAAAAdOEwDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEIwHhcNMTkwMTIzMTcxMTA0WhcNMjAwMTE4MTcxMTA0WjBDMRgwFgYDVQQDEw9TdW1tZXJz
LCBTdHVhcnQxJzAlBgkqhkiG9w0BCQEWGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAL7LpY79h4eyLdxekwAblnyPAHSCaXvVTUmnPKxWXs9g
VCcf7gjGg8qg/HLCwvgGKGqtVkn2EaCKd85rqklaTp07JciV6a77qodO0yOgyz96hRVuSFAIP0UQ
TXP+PuVIfYuqNSSgh2x2HzJy2DzpG12ZMldy6r2zAa6ypWevjFp5+3/mscAVNAmSHnyj838uukd/
YwrFtEG2j5l/EoijzGMRFUD0tS5eD2y0WmRfmc4xkv1Qjr8AN3ogZr4arGr+rF2F4aakLmoDUCZk
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDcyMDQ4MzFaMCMGCSqGSIb3DQEJ
BDEWBBQzpln0tiFxelFX/2/IX1cvTDP+7jANBgkqhkiG9w0BAQEFAASCAQBlVfScHb7Xs7zR8IJ8
CYHHzPTO3bEGTn/lM1a1I6JGVMHePf6dbRl3PrLSRqelL0TYH/jhopacF6CQfeQn/5/ufjJxH8LC
gR3F2INzgw7voY4pp8qr5t375D6UPYfxy7VNdSCgUf2Zudk3E4LHIdTp9qj20XBQeRjdctMdsYIW
cNg88kS1qLL32G5bBt4dH8w59EIiVIfyTbDCtkpXvFupkf91+q7r1ZjQ2NEyFJRiGt7hSCZNqH2D
8TezkyQu7nk+X4HDHXUAwAT3TSbBKWvS0Xh7dVUAaontIfaDPn6hvFolRI7qgTqFJIbdB/muWPkh
aucCaJ6VYufHytWOvEEpAAAAAAAA


--=-dsbq+J1PBC/7xbNXj61S--

--===============0356159550==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0356159550==--
