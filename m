Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A48FB36
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 16:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528B3891AC;
	Tue, 30 Apr 2019 14:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFCCB891AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 14:16:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 07:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; 
 d="p7s'?scan'208";a="228072315"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 30 Apr 2019 07:16:48 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 07:16:48 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.228]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 07:16:47 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915: Expand subslice mask
Thread-Index: AQHU/qN9nAEFY9YbYU2/uB4ztnCIFaZU30OAgABXfYA=
Date: Tue, 30 Apr 2019 14:16:47 +0000
Message-ID: <58c1b0c1715bd4bbbe8674838fff006d3c76a106.camel@intel.com>
References: <20190429155135.6468-1-stuart.summers@intel.com>
 <20190429155135.6468-6-stuart.summers@intel.com> <87bm0nrhjq.fsf@intel.com>
In-Reply-To: <87bm0nrhjq.fsf@intel.com>
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
Content-Type: multipart/mixed; boundary="===============0772819991=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0772819991==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-5Vkua9P5bFZqtgxSkE/I"

--=-5Vkua9P5bFZqtgxSkE/I
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-04-30 at 12:03 +0300, Jani Nikula wrote:
> On Mon, 29 Apr 2019, Stuart Summers <stuart.summers@intel.com> wrote:
> > Currently, the subslice_mask runtime parameter is stored as an
> > array of subslices per slice. Expand the subslice mask array to
> > better match what is presented to userspace through the
> > I915_QUERY_TOPOLOGY_INFO ioctl. The index into this array is
> > then calculated:
> >   slice * subslice stride + subslice index / 8
> >=20
> > v2: fix spacing in set_sseu_info args
> >     use set_sseu_info to initialize sseu data when building
> >     device status in debugfs
> >     rename variables in intel_engine_types.h to avoid checkpatch
> >     warnings
> > v3: update headers in intel_sseu.h
> >=20
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   6 +-
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  32 +++--
> >  drivers/gpu/drm/i915/gt/intel_hangcheck.c    |   3 +-
> >  drivers/gpu/drm/i915/gt/intel_sseu.h         |  45 +++++-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c  |   2 +-
> >  drivers/gpu/drm/i915/i915_debugfs.c          |  43 +++---
> >  drivers/gpu/drm/i915/i915_drv.c              |   6 +-
> >  drivers/gpu/drm/i915/i915_gpu_error.c        |   5 +-
> >  drivers/gpu/drm/i915/i915_query.c            |  10 +-
> >  drivers/gpu/drm/i915/intel_device_info.c     | 139 +++++++++++--
> > ------
> >  10 files changed, 183 insertions(+), 108 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index f7308479d511..8922358ee6c6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -908,7 +908,7 @@ u32 intel_calculate_mcr_s_ss_select(struct
> > drm_i915_private *dev_priv)
> >  	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >  	u32 mcr_s_ss_select;
> >  	u32 slice =3D fls(sseu->slice_mask);
> > -	u32 subslice =3D fls(sseu->subslice_mask[slice]);
> > +	u32 subslice =3D fls(sseu->subslice_mask[slice * sseu-
> > >ss_stride]);
> > =20
> >  	if (IS_GEN(dev_priv, 10))
> >  		mcr_s_ss_select =3D GEN8_MCR_SLICE(slice) |
> > @@ -984,6 +984,7 @@ void intel_engine_get_instdone(struct
> > intel_engine_cs *engine,
> >  			       struct intel_instdone *instdone)
> >  {
> >  	struct drm_i915_private *dev_priv =3D engine->i915;
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
>=20
> const?
>=20
> >  	struct intel_uncore *uncore =3D engine->uncore;
> >  	u32 mmio_base =3D engine->mmio_base;
> >  	int slice;
> > @@ -1001,7 +1002,8 @@ void intel_engine_get_instdone(struct
> > intel_engine_cs *engine,
> > =20
> >  		instdone->slice_common =3D
> >  			intel_uncore_read(uncore, GEN7_SC_INSTDONE);
> > -		for_each_instdone_slice_subslice(dev_priv, slice,
> > subslice) {
> > +		for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > +						 subslice) {
> >  			instdone->sampler[slice][subslice] =3D
> >  				read_subslice_reg(dev_priv, slice,
> > subslice,
> >  						  GEN7_SAMPLER_INSTDONE
> > );
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index d972c339309c..fa70528963a4 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -534,20 +534,22 @@ intel_engine_needs_breadcrumb_tasklet(const
> > struct intel_engine_cs *engine)
> >  	return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
> >  }
> > =20
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
> > +	((IS_GEN(dev_priv___, 7) ? \
> > +	  1 : (sseu___)->slice_mask) & \
> > +	BIT(slice___)) \
> > +
> > +#define instdone_has_subslice(dev_priv__, sseu__, slice__,
> > subslice__) \
> > +	((IS_GEN(dev_priv__, 7) ? \
> > +	  1 : (sseu__)->subslice_mask[slice__ * (sseu__)->ss_stride + \
> > +				      subslice__ / BITS_PER_BYTE]) & \
> > +	 BIT(subslice__ % BITS_PER_BYTE)) \
> > +
> > +#define for_each_instdone_slice_subslice(dev_priv_, sseu_, slice_,
> > subslice_) \
> > +	for ((slice_) =3D 0, (subslice_) =3D 0; (slice_) < I915_MAX_SLICES;
> > \
> > +	     (subslice_) =3D ((subslice_) + 1) < I915_MAX_SUBSLICES ?
> > (subslice_) + 1 : 0, \
> > +	       (slice_) +=3D ((subslice_) =3D=3D 0)) \
> > +		for_each_if(instdone_has_slice(dev_priv_, sseu_, slice)
> > && \
> > +			    instdone_has_subslice(dev_priv_, sseu_,
> > slice_, subslice_)) \
> > =20
> >  #endif /* __INTEL_ENGINE_TYPES_H__ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > b/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > index e5eaa06fe74d..95dfce65c00c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_hangcheck.c
> > @@ -50,6 +50,7 @@ static bool instdone_unchanged(u32
> > current_instdone, u32 *old_instdone)
> >  static bool subunits_stuck(struct intel_engine_cs *engine)
> >  {
> >  	struct drm_i915_private *dev_priv =3D engine->i915;
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
>=20
> const?

Sure. I'll make these two changes in the next revision. Thanks for the
look!

-Stuart

>=20
> >  	struct intel_instdone instdone;
> >  	struct intel_instdone *accu_instdone =3D &engine-
> > >hangcheck.instdone;
> >  	bool stuck;
> > @@ -71,7 +72,7 @@ static bool subunits_stuck(struct intel_engine_cs
> > *engine)
> >  	stuck &=3D instdone_unchanged(instdone.slice_common,
> >  				    &accu_instdone->slice_common);
> > =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice) {
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice) {
> >  		stuck &=3D
> > instdone_unchanged(instdone.sampler[slice][subslice],
> >  					    &accu_instdone-
> > >sampler[slice][subslice]);
> >  		stuck &=3D
> > instdone_unchanged(instdone.row[slice][subslice],
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > index 5127b4ff92bf..34b461da6735 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -9,16 +9,18 @@
> > =20
> >  #include <linux/types.h>
> >  #include <linux/kernel.h>
> > +#include <linux/string.h>
> > =20
> >  struct drm_i915_private;
> > =20
> >  #define GEN_MAX_SLICES		(6) /* CNL upper bound */
> >  #define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
> >  #define GEN_SSEU_STRIDE(bits) DIV_ROUND_UP(bits, BITS_PER_BYTE)
> > +#define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
> > =20
> >  struct sseu_dev_info {
> >  	u8 slice_mask;
> > -	u8 subslice_mask[GEN_MAX_SLICES];
> > +	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
> >  	u16 eu_total;
> >  	u8 eu_per_subslice;
> >  	u8 min_eu_in_pool;
> > @@ -33,6 +35,9 @@ struct sseu_dev_info {
> >  	u8 max_subslices;
> >  	u8 max_eus_per_subslice;
> > =20
> > +	u8 ss_stride;
> > +	u8 eu_stride;
> > +
> >  	/* We don't have more than 8 eus per subslice at the moment and
> > as we
> >  	 * store eus enabled using bits, no need to multiply by eus per
> >  	 * subslice.
> > @@ -63,6 +68,17 @@ intel_sseu_from_device_info(const struct
> > sseu_dev_info *sseu)
> >  	return value;
> >  }
> > =20
> > +static inline void set_sseu_info(struct sseu_dev_info *sseu, u8
> > max_slices,
> > +				 u8 max_subslices, u8
> > max_eus_per_subslice)
> > +{
> > +	sseu->max_slices =3D max_slices;
> > +	sseu->max_subslices =3D max_subslices;
> > +	sseu->max_eus_per_subslice =3D max_eus_per_subslice;
> > +
> > +	sseu->ss_stride =3D GEN_SSEU_STRIDE(sseu->max_subslices);
> > +	sseu->eu_stride =3D GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > +}
> > +
> >  static inline unsigned int sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> >  {
> >  	unsigned int i, total =3D 0;
> > @@ -76,7 +92,32 @@ static inline unsigned int
> > sseu_subslice_total(const struct sseu_dev_info *sseu)
> >  static inline unsigned int
> >  sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8
> > slice)
> >  {
> > -	return hweight8(sseu->subslice_mask[slice]);
> > +	unsigned int i, total =3D 0;
> > +
> > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > +		total +=3D hweight8(sseu->subslice_mask[slice * sseu-
> > >ss_stride +
> > +						      i]);
> > +
> > +	return total;
> > +}
> > +
> > +static inline void sseu_copy_subslices(const struct sseu_dev_info
> > *sseu,
> > +				       int slice, u8 *to_mask,
> > +				       const u8 *from_mask)
> > +{
> > +	int offset =3D slice * sseu->ss_stride;
> > +
> > +	memcpy(&to_mask[offset], &from_mask[offset], sseu->ss_stride);
> > +}
> > +
> > +static inline void sseu_set_subslices(struct sseu_dev_info *sseu,
> > +				      int slice, u32 ss_mask)
> > +{
> > +	int i, offset =3D slice * sseu->ss_stride;
> > +
> > +	for (i =3D 0; i < sseu->ss_stride; i++)
> > +		sseu->subslice_mask[offset + i] =3D
> > +			(ss_mask >> (BITS_PER_BYTE * i)) & 0xff;
> >  }
> > =20
> >  static inline int sseu_eu_idx(const struct sseu_dev_info *sseu,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 5751446a4b0b..51df88873ff5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -771,7 +771,7 @@ wa_init_mcr(struct drm_i915_private *i915,
> > struct i915_wa_list *wal)
> >  		u32 slice =3D fls(sseu->slice_mask);
> >  		u32 fuse3 =3D
> >  			intel_uncore_read(&i915->uncore,
> > GEN10_MIRROR_FUSE3);
> > -		u8 ss_mask =3D sseu->subslice_mask[slice];
> > +		u8 ss_mask =3D sseu->subslice_mask[slice * sseu-
> > >ss_stride];
> > =20
> >  		u8 enabled_mask =3D (ss_mask | ss_mask >>
> >  				   GEN10_L3BANK_PAIR_COUNT) &
> > GEN10_L3BANK_MASK;
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 0ecf006d26b3..4f8d4370912f 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -1256,6 +1256,7 @@ static void i915_instdone_info(struct
> > drm_i915_private *dev_priv,
> >  			       struct seq_file *m,
> >  			       struct intel_instdone *instdone)
> >  {
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >  	int slice;
> >  	int subslice;
> > =20
> > @@ -1271,11 +1272,11 @@ static void i915_instdone_info(struct
> > drm_i915_private *dev_priv,
> >  	if (INTEL_GEN(dev_priv) <=3D 6)
> >  		return;
> > =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice)
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice)
> >  		seq_printf(m, "\t\tSAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
> >  			   slice, subslice, instdone-
> > >sampler[slice][subslice]);
> > =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice)
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice)
> >  		seq_printf(m, "\t\tROW_INSTDONE[%d][%d]: 0x%08x\n",
> >  			   slice, subslice, instdone-
> > >row[slice][subslice]);
> >  }
> > @@ -4065,7 +4066,9 @@ static void gen10_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >  			continue;
> > =20
> >  		sseu->slice_mask |=3D BIT(s);
> > -		sseu->subslice_mask[s] =3D info->sseu.subslice_mask[s];
> > +		sseu_copy_subslices(&info->sseu, s,
> > +				    sseu->subslice_mask,
> > +				    info->sseu.subslice_mask);
> > =20
> >  		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> >  			unsigned int eu_cnt;
> > @@ -4116,18 +4119,22 @@ static void gen9_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >  		sseu->slice_mask |=3D BIT(s);
> > =20
> >  		if (IS_GEN9_BC(dev_priv))
> > -			sseu->subslice_mask[s] =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_mask[s];
> > +			sseu_copy_subslices(&info->sseu, s,
> > +					    sseu->subslice_mask,
> > +					    info->sseu.subslice_mask);
> > =20
> >  		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> >  			unsigned int eu_cnt;
> > +			u8 ss_idx =3D s * info->sseu.ss_stride +
> > +				    ss / BITS_PER_BYTE;
> > =20
> >  			if (IS_GEN9_LP(dev_priv)) {
> >  				if (!(s_reg[s] &
> > (GEN9_PGCTL_SS_ACK(ss))))
> >  					/* skip disabled subslice */
> >  					continue;
> > =20
> > -				sseu->subslice_mask[s] |=3D BIT(ss);
> > +				sseu->subslice_mask[ss_idx] |=3D
> > +					BIT(ss % BITS_PER_BYTE);
> >  			}
> > =20
> >  			eu_cnt =3D 2 * hweight32(eu_reg[2*s + ss/2] &
> > @@ -4144,25 +4151,24 @@ static void gen9_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >  static void broadwell_sseu_device_status(struct drm_i915_private
> > *dev_priv,
> >  					 struct sseu_dev_info *sseu)
> >  {
> > +	struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> >  	u32 slice_info =3D I915_READ(GEN8_GT_SLICE_INFO);
> >  	int s;
> > =20
> >  	sseu->slice_mask =3D slice_info & GEN8_LSLICESTAT_MASK;
> > =20
> >  	if (sseu->slice_mask) {
> > -		sseu->eu_per_subslice =3D
> > -			RUNTIME_INFO(dev_priv)->sseu.eu_per_subslice;
> > -		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> > -			sseu->subslice_mask[s] =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_mask[s];
> > -		}
> > +		sseu->eu_per_subslice =3D info->sseu.eu_per_subslice;
> > +		for (s =3D 0; s < fls(sseu->slice_mask); s++)
> > +			sseu_copy_subslices(&info->sseu, s,
> > +					    sseu->subslice_mask,
> > +					    info->sseu.subslice_mask);
> >  		sseu->eu_total =3D sseu->eu_per_subslice *
> >  				 sseu_subslice_total(sseu);
> > =20
> >  		/* subtract fused off EU(s) from enabled slice(s) */
> >  		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> > -			u8 subslice_7eu =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_7eu[s];
> > +			u8 subslice_7eu =3D info->sseu.subslice_7eu[s];
> > =20
> >  			sseu->eu_total -=3D hweight8(subslice_7eu);
> >  		}
> > @@ -4209,6 +4215,7 @@ static void i915_print_sseu_info(struct
> > seq_file *m, bool is_available_info,
> >  static int i915_sseu_status(struct seq_file *m, void *unused)
> >  {
> >  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> > +	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> >  	struct sseu_dev_info sseu;
> >  	intel_wakeref_t wakeref;
> > =20
> > @@ -4216,14 +4223,12 @@ static int i915_sseu_status(struct seq_file
> > *m, void *unused)
> >  		return -ENODEV;
> > =20
> >  	seq_puts(m, "SSEU Device Info\n");
> > -	i915_print_sseu_info(m, true, &RUNTIME_INFO(dev_priv)->sseu);
> > +	i915_print_sseu_info(m, true, &info->sseu);
> > =20
> >  	seq_puts(m, "SSEU Device Status\n");
> >  	memset(&sseu, 0, sizeof(sseu));
> > -	sseu.max_slices =3D RUNTIME_INFO(dev_priv)->sseu.max_slices;
> > -	sseu.max_subslices =3D RUNTIME_INFO(dev_priv)-
> > >sseu.max_subslices;
> > -	sseu.max_eus_per_subslice =3D
> > -		RUNTIME_INFO(dev_priv)->sseu.max_eus_per_subslice;
> > +	set_sseu_info(&sseu, info->sseu.max_slices, info-
> > >sseu.max_subslices,
> > +		      info->sseu.max_eus_per_subslice);
> > =20
> >  	with_intel_runtime_pm(dev_priv, wakeref) {
> >  		if (IS_CHERRYVIEW(dev_priv))
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > b/drivers/gpu/drm/i915/i915_drv.c
> > index b6ce7580d414..7a95c262aa14 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -323,7 +323,7 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  	struct pci_dev *pdev =3D dev_priv->drm.pdev;
> >  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >  	drm_i915_getparam_t *param =3D data;
> > -	int value;
> > +	int value =3D 0;
> > =20
> >  	switch (param->param) {
> >  	case I915_PARAM_IRQ_ACTIVE:
> > @@ -452,7 +452,9 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  			return -ENODEV;
> >  		break;
> >  	case I915_PARAM_SUBSLICE_MASK:
> > -		value =3D sseu->subslice_mask[0];
> > +		/* Only copy bits from the first subslice */
> > +		memcpy(&value, sseu->subslice_mask,
> > +		       min(sseu->ss_stride, (u8)sizeof(value)));
> >  		if (!value)
> >  			return -ENODEV;
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
> > b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index f51ff683dd2e..9da4118ad43a 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -405,6 +405,7 @@ static void print_error_buffers(struct
> > drm_i915_error_state_buf *m,
> >  static void error_print_instdone(struct drm_i915_error_state_buf
> > *m,
> >  				 const struct drm_i915_error_engine
> > *ee)
> >  {
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(m->i915)->sseu;
> >  	int slice;
> >  	int subslice;
> > =20
> > @@ -420,12 +421,12 @@ static void error_print_instdone(struct
> > drm_i915_error_state_buf *m,
> >  	if (INTEL_GEN(m->i915) <=3D 6)
> >  		return;
> > =20
> > -	for_each_instdone_slice_subslice(m->i915, slice, subslice)
> > +	for_each_instdone_slice_subslice(m->i915, sseu, slice,
> > subslice)
> >  		err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
> >  			   slice, subslice,
> >  			   ee->instdone.sampler[slice][subslice]);
> > =20
> > -	for_each_instdone_slice_subslice(m->i915, slice, subslice)
> > +	for_each_instdone_slice_subslice(m->i915, sseu, slice,
> > subslice)
> >  		err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
> >  			   slice, subslice,
> >  			   ee->instdone.row[slice][subslice]);
> > diff --git a/drivers/gpu/drm/i915/i915_query.c
> > b/drivers/gpu/drm/i915/i915_query.c
> > index 7c1708c22811..000dcb145ce0 100644
> > --- a/drivers/gpu/drm/i915/i915_query.c
> > +++ b/drivers/gpu/drm/i915/i915_query.c
> > @@ -37,8 +37,6 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >  	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >  	struct drm_i915_query_topology_info topo;
> >  	u32 slice_length, subslice_length, eu_length, total_length;
> > -	u8 subslice_stride =3D GEN_SSEU_STRIDE(sseu->max_subslices);
> > -	u8 eu_stride =3D GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> >  	int ret;
> > =20
> >  	if (query_item->flags !=3D 0)
> > @@ -50,8 +48,8 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >  	BUILD_BUG_ON(sizeof(u8) !=3D sizeof(sseu->slice_mask));
> > =20
> >  	slice_length =3D sizeof(sseu->slice_mask);
> > -	subslice_length =3D sseu->max_slices * subslice_stride;
> > -	eu_length =3D sseu->max_slices * sseu->max_subslices * eu_stride;
> > +	subslice_length =3D sseu->max_slices * sseu->ss_stride;
> > +	eu_length =3D sseu->max_slices * sseu->max_subslices * sseu-
> > >eu_stride;
> >  	total_length =3D sizeof(topo) + slice_length + subslice_length +
> >  		       eu_length;
> > =20
> > @@ -69,9 +67,9 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >  	topo.max_eus_per_subslice =3D sseu->max_eus_per_subslice;
> > =20
> >  	topo.subslice_offset =3D slice_length;
> > -	topo.subslice_stride =3D subslice_stride;
> > +	topo.subslice_stride =3D sseu->ss_stride;
> >  	topo.eu_offset =3D slice_length + subslice_length;
> > -	topo.eu_stride =3D eu_stride;
> > +	topo.eu_stride =3D sseu->eu_stride;
> > =20
> >  	if (__copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> >  			   &topo, sizeof(topo)))
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 559cf0d0628e..1cc72beb86ee 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -84,17 +84,42 @@ void intel_device_info_dump_flags(const struct
> > intel_device_info *info,
> >  #undef PRINT_FLAG
> >  }
> > =20
> > +#define SS_STR_MAX_SIZE (GEN_MAX_SUBSLICE_STRIDE * 2)
> > +
> > +static u8 *
> > +subslice_per_slice_str(u8 *buf, const struct sseu_dev_info *sseu,
> > u8 slice)
> > +{
> > +	int i;
> > +	u8 ss_offset =3D slice * sseu->ss_stride;
> > +
> > +	GEM_BUG_ON(slice >=3D sseu->max_slices);
> > +
> > +	memset(buf, 0, SS_STR_MAX_SIZE);
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
> >  static void sseu_dump(const struct sseu_dev_info *sseu, struct
> > drm_printer *p)
> >  {
> >  	int s;
> > +	u8 buf[SS_STR_MAX_SIZE];
> > =20
> >  	drm_printf(p, "slice total: %u, mask=3D%04x\n",
> >  		   hweight8(sseu->slice_mask), sseu->slice_mask);
> >  	drm_printf(p, "subslice total: %u\n",
> > sseu_subslice_total(sseu));
> >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > -		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > +		drm_printf(p, "slice%d: %u subslices, mask=3D%s\n",
> >  			   s, sseu_subslices_per_slice(sseu, s),
> > -			   sseu->subslice_mask[s]);
> > +			   subslice_per_slice_str(buf, sseu, s));
> >  	}
> >  	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> >  	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
> > @@ -118,6 +143,7 @@ void intel_device_info_dump_topology(const
> > struct sseu_dev_info *sseu,
> >  				     struct drm_printer *p)
> >  {
> >  	int s, ss;
> > +	u8 buf[SS_STR_MAX_SIZE];
> > =20
> >  	if (sseu->max_slices =3D=3D 0) {
> >  		drm_printf(p, "Unavailable\n");
> > @@ -125,9 +151,9 @@ void intel_device_info_dump_topology(const
> > struct sseu_dev_info *sseu,
> >  	}
> > =20
> >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > -		drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
> > +		drm_printf(p, "slice%d: %u subslice(s) (0x%s):\n",
> >  			   s, sseu_subslices_per_slice(sseu, s),
> > -			   sseu->subslice_mask[s]);
> > +			   subslice_per_slice_str(buf, sseu, s));
> > =20
> >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >  			u16 enabled_eus =3D sseu_get_eus(sseu, s, ss);
> > @@ -156,15 +182,10 @@ static void gen11_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  	u8 eu_en;
> >  	int s;
> > =20
> > -	if (IS_ELKHARTLAKE(dev_priv)) {
> > -		sseu->max_slices =3D 1;
> > -		sseu->max_subslices =3D 4;
> > -		sseu->max_eus_per_subslice =3D 8;
> > -	} else {
> > -		sseu->max_slices =3D 1;
> > -		sseu->max_subslices =3D 8;
> > -		sseu->max_eus_per_subslice =3D 8;
> > -	}
> > +	if (IS_ELKHARTLAKE(dev_priv))
> > +		set_sseu_info(sseu, 1, 4, 8);
> > +	else
> > +		set_sseu_info(sseu, 1, 8, 8);
> > =20
> >  	s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) & GEN11_GT_S_ENA_MASK;
> >  	ss_en =3D ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
> > @@ -177,9 +198,11 @@ static void gen11_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  			int ss;
> > =20
> >  			sseu->slice_mask |=3D BIT(s);
> > -			sseu->subslice_mask[s] =3D (ss_en >> ss_idx) &
> > ss_en_mask;
> > +			sseu->subslice_mask[s * sseu->ss_stride] =3D
> > +				(ss_en >> ss_idx) & ss_en_mask;
> >  			for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > -				if (sseu->subslice_mask[s] & BIT(ss))
> > +				if (sseu->subslice_mask[s * sseu-
> > >ss_stride] &
> > +				    BIT(ss))
> >  					sseu_set_eus(sseu, s, ss,
> > eu_en);
> >  			}
> >  		}
> > @@ -201,23 +224,10 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  	const int eu_mask =3D 0xff;
> >  	u32 subslice_mask, eu_en;
> > =20
> > +	set_sseu_info(sseu, 6, 4, 8);
> > +
> >  	sseu->slice_mask =3D (fuse2 & GEN10_F2_S_ENA_MASK) >>
> >  			    GEN10_F2_S_ENA_SHIFT;
> > -	sseu->max_slices =3D 6;
> > -	sseu->max_subslices =3D 4;
> > -	sseu->max_eus_per_subslice =3D 8;
> > -
> > -	subslice_mask =3D (1 << 4) - 1;
> > -	subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > -			   GEN10_F2_SS_DIS_SHIFT);
> > -
> > -	/*
> > -	 * Slice0 can have up to 3 subslices, but there are only 2 in
> > -	 * slice1/2.
> > -	 */
> > -	sseu->subslice_mask[0] =3D subslice_mask;
> > -	for (s =3D 1; s < sseu->max_slices; s++)
> > -		sseu->subslice_mask[s] =3D subslice_mask & 0x3;
> > =20
> >  	/* Slice0 */
> >  	eu_en =3D ~I915_READ(GEN8_EU_DISABLE0);
> > @@ -242,14 +252,22 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  	eu_en =3D ~I915_READ(GEN10_EU_DISABLE3);
> >  	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> > =20
> > -	/* Do a second pass where we mark the subslices disabled if all
> > their
> > -	 * eus are off.
> > -	 */
> > +	subslice_mask =3D (1 << 4) - 1;
> > +	subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > +			   GEN10_F2_SS_DIS_SHIFT);
> > +
> >  	for (s =3D 0; s < sseu->max_slices; s++) {
> >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >  			if (sseu_get_eus(sseu, s, ss) =3D=3D 0)
> > -				sseu->subslice_mask[s] &=3D ~BIT(ss);
> > +				subslice_mask &=3D ~BIT(ss);
> >  		}
> > +
> > +		/*
> > +		 * Slice0 can have up to 3 subslices, but there are
> > only 2 in
> > +		 * slice1/2.
> > +		 */
> > +		sseu_set_subslices(sseu, s, s =3D=3D 0 ? subslice_mask :
> > +						     subslice_mask &
> > 0x3);
> >  	}
> > =20
> >  	sseu->eu_total =3D compute_eu_total(sseu);
> > @@ -274,13 +292,12 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  {
> >  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >  	u32 fuse;
> > +	u8 subslice_mask;
> > =20
> >  	fuse =3D I915_READ(CHV_FUSE_GT);
> > =20
> >  	sseu->slice_mask =3D BIT(0);
> > -	sseu->max_slices =3D 1;
> > -	sseu->max_subslices =3D 2;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	set_sseu_info(sseu, 1, 2, 8);
> > =20
> >  	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
> >  		u8 disabled_mask =3D
> > @@ -289,7 +306,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
> >  			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> > =20
> > -		sseu->subslice_mask[0] |=3D BIT(0);
> > +		subslice_mask |=3D BIT(0);
> >  		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> >  	}
> > =20
> > @@ -300,10 +317,12 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
> >  			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
> > =20
> > -		sseu->subslice_mask[0] |=3D BIT(1);
> > +		subslice_mask |=3D BIT(1);
> >  		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> >  	}
> > =20
> > +	sseu_set_subslices(sseu, 0, subslice_mask);
> > +
> >  	sseu->eu_total =3D compute_eu_total(sseu);
> > =20
> >  	/*
> > @@ -335,9 +354,8 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  	sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>
> > GEN8_F2_S_ENA_SHIFT;
> > =20
> >  	/* BXT has a single slice and at most 3 subslices. */
> > -	sseu->max_slices =3D IS_GEN9_LP(dev_priv) ? 1 : 3;
> > -	sseu->max_subslices =3D IS_GEN9_LP(dev_priv) ? 3 : 4;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	set_sseu_info(sseu, IS_GEN9_LP(dev_priv) ? 1 : 3,
> > +		      IS_GEN9_LP(dev_priv) ? 3 : 4, 8);
> > =20
> >  	/*
> >  	 * The subslice disable field is global, i.e. it applies
> > @@ -356,14 +374,16 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  			/* skip disabled slice */
> >  			continue;
> > =20
> > -		sseu->subslice_mask[s] =3D subslice_mask;
> > +		sseu_set_subslices(sseu, s, subslice_mask);
> > =20
> >  		eu_disable =3D I915_READ(GEN9_EU_DISABLE(s));
> >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >  			int eu_per_ss;
> >  			u8 eu_disabled_mask;
> > +			u8 ss_idx =3D s * sseu->ss_stride + ss /
> > BITS_PER_BYTE;
> > =20
> > -			if (!(sseu->subslice_mask[s] & BIT(ss)))
> > +			if (!(sseu->subslice_mask[ss_idx] &
> > +			      BIT(ss % BITS_PER_BYTE)))
> >  				/* skip disabled subslice */
> >  				continue;
> > =20
> > @@ -435,9 +455,7 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> > =20
> >  	fuse2 =3D I915_READ(GEN8_FUSE2);
> >  	sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>
> > GEN8_F2_S_ENA_SHIFT;
> > -	sseu->max_slices =3D 3;
> > -	sseu->max_subslices =3D 3;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	set_sseu_info(sseu, 3, 3, 8);
> > =20
> >  	/*
> >  	 * The subslice disable field is global, i.e. it applies
> > @@ -464,18 +482,21 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  			/* skip disabled slice */
> >  			continue;
> > =20
> > -		sseu->subslice_mask[s] =3D subslice_mask;
> > +		sseu_set_subslices(sseu, s, subslice_mask);
> > =20
> >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >  			u8 eu_disabled_mask;
> > +			u8 ss_idx =3D s * sseu->ss_stride + ss /
> > BITS_PER_BYTE;
> >  			u32 n_disabled;
> > =20
> > -			if (!(sseu->subslice_mask[s] & BIT(ss)))
> > +			if (!(sseu->subslice_mask[ss_idx] &
> > +			      BIT(ss % BITS_PER_BYTE)))
> >  				/* skip disabled subslice */
> >  				continue;
> > =20
> >  			eu_disabled_mask =3D
> > -				eu_disable[s] >> (ss * sseu-
> > >max_eus_per_subslice);
> > +				eu_disable[s] >>
> > +					(ss * sseu-
> > >max_eus_per_subslice);
> > =20
> >  			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
> > =20
> > @@ -514,6 +535,7 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >  	u32 fuse1;
> >  	int s, ss;
> > +	u32 subslice_mask;
> > =20
> >  	/*
> >  	 * There isn't a register to tell us how many slices/subslices.
> > We
> > @@ -525,22 +547,18 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  		/* fall through */
> >  	case 1:
> >  		sseu->slice_mask =3D BIT(0);
> > -		sseu->subslice_mask[0] =3D BIT(0);
> > +		subslice_mask =3D BIT(0);
> >  		break;
> >  	case 2:
> >  		sseu->slice_mask =3D BIT(0);
> > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > +		subslice_mask =3D BIT(0) | BIT(1);
> >  		break;
> >  	case 3:
> >  		sseu->slice_mask =3D BIT(0) | BIT(1);
> > -		sseu->subslice_mask[0] =3D BIT(0) | BIT(1);
> > -		sseu->subslice_mask[1] =3D BIT(0) | BIT(1);
> > +		subslice_mask =3D BIT(0) | BIT(1);
> >  		break;
> >  	}
> > =20
> > -	sseu->max_slices =3D hweight8(sseu->slice_mask);
> > -	sseu->max_subslices =3D hweight8(sseu->subslice_mask[0]);
> > -
> >  	fuse1 =3D I915_READ(HSW_PAVP_FUSE1);
> >  	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >> HSW_F1_EU_DIS_SHIFT) {
> >  	default:
> > @@ -557,9 +575,14 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  		sseu->eu_per_subslice =3D 6;
> >  		break;
> >  	}
> > -	sseu->max_eus_per_subslice =3D sseu->eu_per_subslice;
> > +
> > +	set_sseu_info(sseu, hweight8(sseu->slice_mask),
> > +		      hweight8(subslice_mask),
> > +		      sseu->eu_per_subslice);
> > =20
> >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > +		sseu_set_subslices(sseu, s, subslice_mask);
> > +
> >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >  			sseu_set_eus(sseu, s, ss,
> >  				     (1UL << sseu->eu_per_subslice) -
> > 1);
>=20
>=20

--=-5Vkua9P5bFZqtgxSkE/I
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA0MzAxNDE2NDVaMCMGCSqGSIb3DQEJ
BDEWBBRIUeD69LSny/olG8nzci+mh43InDANBgkqhkiG9w0BAQEFAASCAQB2xFkIQHJwDCpHWAaY
OtMdp2VqVW7eCRYz6izPk6RJSZKf0R2npiLoJg9vGDS+nWMXrg4RWONPpQQR6VlmDO2GW+dXD+WQ
USWNpgGK6ezv48+WGBE7mN6pI10Sd0bHWoQQrWEH10bIKDgmJz4Zli7T2e/AuJa9Q0Q6YCMFJyd1
lU1j5xcxrdlghWNfcb3Jd0O908aS5EGA8DXC7/ym8MdbtZyRwY1DM5J+B7YUiXB77EcFb5ct6REG
xHU7c8w3cIg/LMNL/DE5lPjxU0CjtB0srUFjPWZFO/i38G3Y6VTx3zqNesX1k/6UUwM5PLkDyHiB
fxcmCDjFEH9SPYelTrO+AAAAAAAA


--=-5Vkua9P5bFZqtgxSkE/I--

--===============0772819991==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0772819991==--
