Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042125481
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 17:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93B1892D8;
	Tue, 21 May 2019 15:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E713B892D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 15:52:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 08:52:49 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 21 May 2019 08:52:49 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 21 May 2019 08:52:49 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.54]) with mapi id 14.03.0415.000;
 Tue, 21 May 2019 08:52:48 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Expand subslice mask
Thread-Index: AQHVDDhLKN9APFu2rk6ZKAod79tXgqZ2N16A
Date: Tue, 21 May 2019 15:52:47 +0000
Message-ID: <2b12cda48023e4697e14f9351fcc73b4ec48c17f.camel@intel.com>
References: <20190513205643.16488-1-stuart.summers@intel.com>
 <20190513205643.16488-6-stuart.summers@intel.com>
 <0d176a40-8e99-b2bc-19b5-e248be644420@intel.com>
In-Reply-To: <0d176a40-8e99-b2bc-19b5-e248be644420@intel.com>
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
Content-Type: multipart/mixed; boundary="===============0412310205=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0412310205==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-TV02ZbDuEdUuXWGyQHwl"

--=-TV02ZbDuEdUuXWGyQHwl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-16 at 15:40 -0700, Daniele Ceraolo Spurio wrote:
> <snip>
>=20
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -9,16 +9,18 @@
> >  =20
> >   #include <linux/types.h>
> >   #include <linux/kernel.h>
> > +#include <linux/string.h>
>=20
> AFAICS this header is not needed anymore. With it removed:
>=20
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Thanks for the review!

I do not believe I have push rights to drm-tip at this point. Can you
help with merging this series?

Thanks,
Stuart

>=20
> Daniele
>=20
> >  =20
> >   struct drm_i915_private;
> >  =20
> >   #define GEN_MAX_SLICES		(6) /* CNL upper bound */
> >   #define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
> >   #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries,
> > BITS_PER_BYTE)
> > +#define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
> >  =20
> >   struct sseu_dev_info {
> >   	u8 slice_mask;
> > -	u8 subslice_mask[GEN_MAX_SLICES];
> > +	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
> >   	u16 eu_total;
> >   	u8 eu_per_subslice;
> >   	u8 min_eu_in_pool;
> > @@ -33,6 +35,9 @@ struct sseu_dev_info {
> >   	u8 max_subslices;
> >   	u8 max_eus_per_subslice;
> >  =20
> > +	u8 ss_stride;
> > +	u8 eu_stride;
> > +
> >   	/* We don't have more than 8 eus per subslice at the moment and
> > as we
> >   	 * store eus enabled using bits, no need to multiply by eus per
> >   	 * subslice.
> > @@ -63,12 +68,33 @@ intel_sseu_from_device_info(const struct
> > sseu_dev_info *sseu)
> >   	return value;
> >   }
> >  =20
> > +static inline bool
> > +intel_sseu_has_subslice(const struct sseu_dev_info *sseu, int
> > slice,
> > +			int subslice)
> > +{
> > +	u8 mask =3D sseu->subslice_mask[slice * sseu->ss_stride +
> > +				      subslice / BITS_PER_BYTE];
> > +
> > +	return mask & BIT(subslice % BITS_PER_BYTE);
> > +}
> > +
> > +void intel_sseu_set_info(struct sseu_dev_info *sseu, u8
> > max_slices,
> > +			 u8 max_subslices, u8 max_eus_per_subslice);
> > +
> >   unsigned int
> >   intel_sseu_subslice_total(const struct sseu_dev_info *sseu);
> >  =20
> >   unsigned int
> >   intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice);
> >  =20
> > +void intel_sseu_copy_subslices(const struct sseu_dev_info *sseu,
> > int slice,
> > +			       u8 *to_mask);
> > +
> > +u32  intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8
> > slice);
> > +
> > +void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int
> > slice,
> > +			      u32 ss_mask);
> > +
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >   			 const struct intel_sseu *req_sseu);
> >  =20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 43e290306551..8437f9d918ec 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -767,7 +767,7 @@ wa_init_mcr(struct drm_i915_private *i915,
> > struct i915_wa_list *wal)
> >   		u32 slice =3D fls(sseu->slice_mask);
> >   		u32 fuse3 =3D
> >   			intel_uncore_read(&i915->uncore,
> > GEN10_MIRROR_FUSE3);
> > -		u8 ss_mask =3D sseu->subslice_mask[slice];
> > +		u32 ss_mask =3D intel_sseu_get_subslices(sseu, slice);
> >  =20
> >   		u8 enabled_mask =3D (ss_mask | ss_mask >>
> >   				   GEN10_L3BANK_PAIR_COUNT) &
> > GEN10_L3BANK_MASK;
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > b/drivers/gpu/drm/i915/i915_debugfs.c
> > index a26015722405..46365ab957e6 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -1259,6 +1259,7 @@ static void i915_instdone_info(struct
> > drm_i915_private *dev_priv,
> >   			       struct seq_file *m,
> >   			       struct intel_instdone *instdone)
> >   {
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >   	int slice;
> >   	int subslice;
> >  =20
> > @@ -1274,11 +1275,11 @@ static void i915_instdone_info(struct
> > drm_i915_private *dev_priv,
> >   	if (INTEL_GEN(dev_priv) <=3D 6)
> >   		return;
> >  =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice)
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice)
> >   		seq_printf(m, "\t\tSAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
> >   			   slice, subslice, instdone-
> > >sampler[slice][subslice]);
> >  =20
> > -	for_each_instdone_slice_subslice(dev_priv, slice, subslice)
> > +	for_each_instdone_slice_subslice(dev_priv, sseu, slice,
> > subslice)
> >   		seq_printf(m, "\t\tROW_INSTDONE[%d][%d]: 0x%08x\n",
> >   			   slice, subslice, instdone-
> > >row[slice][subslice]);
> >   }
> > @@ -4072,7 +4073,7 @@ static void gen10_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >   			continue;
> >  =20
> >   		sseu->slice_mask |=3D BIT(s);
> > -		sseu->subslice_mask[s] =3D info->sseu.subslice_mask[s];
> > +		intel_sseu_copy_subslices(&info->sseu, s, sseu-
> > >subslice_mask);
> >  =20
> >   		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> >   			unsigned int eu_cnt;
> > @@ -4123,18 +4124,21 @@ static void gen9_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >   		sseu->slice_mask |=3D BIT(s);
> >  =20
> >   		if (IS_GEN9_BC(dev_priv))
> > -			sseu->subslice_mask[s] =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_mask[s];
> > +			intel_sseu_copy_subslices(&info->sseu, s,
> > +						  sseu->subslice_mask);
> >  =20
> >   		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> >   			unsigned int eu_cnt;
> > +			u8 ss_idx =3D s * info->sseu.ss_stride +
> > +				    ss / BITS_PER_BYTE;
> >  =20
> >   			if (IS_GEN9_LP(dev_priv)) {
> >   				if (!(s_reg[s] &
> > (GEN9_PGCTL_SS_ACK(ss))))
> >   					/* skip disabled subslice */
> >   					continue;
> >  =20
> > -				sseu->subslice_mask[s] |=3D BIT(ss);
> > +				sseu->subslice_mask[ss_idx] |=3D
> > +					BIT(ss % BITS_PER_BYTE);
> >   			}
> >  =20
> >   			eu_cnt =3D 2 * hweight32(eu_reg[2*s + ss/2] &
> > @@ -4151,25 +4155,23 @@ static void gen9_sseu_device_status(struct
> > drm_i915_private *dev_priv,
> >   static void broadwell_sseu_device_status(struct drm_i915_private
> > *dev_priv,
> >   					 struct sseu_dev_info *sseu)
> >   {
> > +	struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> >   	u32 slice_info =3D I915_READ(GEN8_GT_SLICE_INFO);
> >   	int s;
> >  =20
> >   	sseu->slice_mask =3D slice_info & GEN8_LSLICESTAT_MASK;
> >  =20
> >   	if (sseu->slice_mask) {
> > -		sseu->eu_per_subslice =3D
> > -			RUNTIME_INFO(dev_priv)->sseu.eu_per_subslice;
> > -		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> > -			sseu->subslice_mask[s] =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_mask[s];
> > -		}
> > +		sseu->eu_per_subslice =3D info->sseu.eu_per_subslice;
> > +		for (s =3D 0; s < fls(sseu->slice_mask); s++)
> > +			intel_sseu_copy_subslices(&info->sseu, s,
> > +						  sseu->subslice_mask);
> >   		sseu->eu_total =3D sseu->eu_per_subslice *
> >   				 intel_sseu_subslice_total(sseu);
> >  =20
> >   		/* subtract fused off EU(s) from enabled slice(s) */
> >   		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> > -			u8 subslice_7eu =3D
> > -				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_7eu[s];
> > +			u8 subslice_7eu =3D info->sseu.subslice_7eu[s];
> >  =20
> >   			sseu->eu_total -=3D hweight8(subslice_7eu);
> >   		}
> > @@ -4216,6 +4218,7 @@ static void i915_print_sseu_info(struct
> > seq_file *m, bool is_available_info,
> >   static int i915_sseu_status(struct seq_file *m, void *unused)
> >   {
> >   	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> > +	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> >   	struct sseu_dev_info sseu;
> >   	intel_wakeref_t wakeref;
> >  =20
> > @@ -4223,14 +4226,13 @@ static int i915_sseu_status(struct seq_file
> > *m, void *unused)
> >   		return -ENODEV;
> >  =20
> >   	seq_puts(m, "SSEU Device Info\n");
> > -	i915_print_sseu_info(m, true, &RUNTIME_INFO(dev_priv)->sseu);
> > +	i915_print_sseu_info(m, true, &info->sseu);
> >  =20
> >   	seq_puts(m, "SSEU Device Status\n");
> >   	memset(&sseu, 0, sizeof(sseu));
> > -	sseu.max_slices =3D RUNTIME_INFO(dev_priv)->sseu.max_slices;
> > -	sseu.max_subslices =3D RUNTIME_INFO(dev_priv)-
> > >sseu.max_subslices;
> > -	sseu.max_eus_per_subslice =3D
> > -		RUNTIME_INFO(dev_priv)->sseu.max_eus_per_subslice;
> > +	intel_sseu_set_info(&sseu, info->sseu.max_slices,
> > +			    info->sseu.max_subslices,
> > +			    info->sseu.max_eus_per_subslice);
> >  =20
> >   	with_intel_runtime_pm(dev_priv, wakeref) {
> >   		if (IS_CHERRYVIEW(dev_priv))
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > b/drivers/gpu/drm/i915/i915_drv.c
> > index 8a7d4dea8609..dc6bafc09b36 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -331,7 +331,7 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >   	struct pci_dev *pdev =3D dev_priv->drm.pdev;
> >   	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	drm_i915_getparam_t *param =3D data;
> > -	int value;
> > +	int value =3D 0;
> >  =20
> >   	switch (param->param) {
> >   	case I915_PARAM_IRQ_ACTIVE:
> > @@ -460,7 +460,9 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >   			return -ENODEV;
> >   		break;
> >   	case I915_PARAM_SUBSLICE_MASK:
> > -		value =3D sseu->subslice_mask[0];
> > +		/* Only copy bits from the first slice */
> > +		memcpy(&value, sseu->subslice_mask,
> > +		       min(sseu->ss_stride, (u8)sizeof(value)));
> >   		if (!value)
> >   			return -ENODEV;
> >   		break;
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
> > b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index 4f85cbdddb0d..c760cc5b3388 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -408,6 +408,7 @@ static void print_error_buffers(struct
> > drm_i915_error_state_buf *m,
> >   static void error_print_instdone(struct drm_i915_error_state_buf
> > *m,
> >   				 const struct drm_i915_error_engine
> > *ee)
> >   {
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(m->i915)->sseu;
> >   	int slice;
> >   	int subslice;
> >  =20
> > @@ -423,12 +424,12 @@ static void error_print_instdone(struct
> > drm_i915_error_state_buf *m,
> >   	if (INTEL_GEN(m->i915) <=3D 6)
> >   		return;
> >  =20
> > -	for_each_instdone_slice_subslice(m->i915, slice, subslice)
> > +	for_each_instdone_slice_subslice(m->i915, sseu, slice,
> > subslice)
> >   		err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
> >   			   slice, subslice,
> >   			   ee->instdone.sampler[slice][subslice]);
> >  =20
> > -	for_each_instdone_slice_subslice(m->i915, slice, subslice)
> > +	for_each_instdone_slice_subslice(m->i915, sseu, slice,
> > subslice)
> >   		err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
> >   			   slice, subslice,
> >   			   ee->instdone.row[slice][subslice]);
> > diff --git a/drivers/gpu/drm/i915/i915_query.c
> > b/drivers/gpu/drm/i915/i915_query.c
> > index 7c1708c22811..000dcb145ce0 100644
> > --- a/drivers/gpu/drm/i915/i915_query.c
> > +++ b/drivers/gpu/drm/i915/i915_query.c
> > @@ -37,8 +37,6 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	struct drm_i915_query_topology_info topo;
> >   	u32 slice_length, subslice_length, eu_length, total_length;
> > -	u8 subslice_stride =3D GEN_SSEU_STRIDE(sseu->max_subslices);
> > -	u8 eu_stride =3D GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> >   	int ret;
> >  =20
> >   	if (query_item->flags !=3D 0)
> > @@ -50,8 +48,8 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	BUILD_BUG_ON(sizeof(u8) !=3D sizeof(sseu->slice_mask));
> >  =20
> >   	slice_length =3D sizeof(sseu->slice_mask);
> > -	subslice_length =3D sseu->max_slices * subslice_stride;
> > -	eu_length =3D sseu->max_slices * sseu->max_subslices * eu_stride;
> > +	subslice_length =3D sseu->max_slices * sseu->ss_stride;
> > +	eu_length =3D sseu->max_slices * sseu->max_subslices * sseu-
> > >eu_stride;
> >   	total_length =3D sizeof(topo) + slice_length + subslice_length +
> >   		       eu_length;
> >  =20
> > @@ -69,9 +67,9 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	topo.max_eus_per_subslice =3D sseu->max_eus_per_subslice;
> >  =20
> >   	topo.subslice_offset =3D slice_length;
> > -	topo.subslice_stride =3D subslice_stride;
> > +	topo.subslice_stride =3D sseu->ss_stride;
> >   	topo.eu_offset =3D slice_length + subslice_length;
> > -	topo.eu_stride =3D eu_stride;
> > +	topo.eu_stride =3D sseu->eu_stride;
> >  =20
> >   	if (__copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> >   			   &topo, sizeof(topo)))
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 97f742530fa1..3625f777f3a3 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -92,9 +92,9 @@ static void sseu_dump(const struct sseu_dev_info
> > *sseu, struct drm_printer *p)
> >   		   hweight8(sseu->slice_mask), sseu->slice_mask);
> >   	drm_printf(p, "subslice total: %u\n",
> > intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> > -		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > +		drm_printf(p, "slice%d: %u subslices, mask=3D%08x\n",
> >   			   s, intel_sseu_subslices_per_slice(sseu, s),
> > -			   sseu->subslice_mask[s]);
> > +			   intel_sseu_get_subslices(sseu, s));
> >   	}
> >   	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> >   	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
> > @@ -117,10 +117,9 @@ void intel_device_info_dump_runtime(const
> > struct intel_runtime_info *info,
> >   static int sseu_eu_idx(const struct sseu_dev_info *sseu, int
> > slice,
> >   		       int subslice)
> >   {
> > -	int subslice_stride =3D GEN_SSEU_STRIDE(sseu-
> > >max_eus_per_subslice);
> > -	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > +	int slice_stride =3D sseu->max_subslices * sseu->eu_stride;
> >  =20
> > -	return slice * slice_stride + subslice * subslice_stride;
> > +	return slice * slice_stride + subslice * sseu->eu_stride;
> >   }
> >  =20
> >   static u16 sseu_get_eus(const struct sseu_dev_info *sseu, int
> > slice,
> > @@ -129,7 +128,7 @@ static u16 sseu_get_eus(const struct
> > sseu_dev_info *sseu, int slice,
> >   	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> >   	u16 eu_mask =3D 0;
> >  =20
> > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > i++) {
> > +	for (i =3D 0; i < sseu->eu_stride; i++) {
> >   		eu_mask |=3D ((u16)sseu->eu_mask[offset + i]) <<
> >   			(i * BITS_PER_BYTE);
> >   	}
> > @@ -142,7 +141,7 @@ static void sseu_set_eus(struct sseu_dev_info
> > *sseu, int slice, int subslice,
> >   {
> >   	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> >  =20
> > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > i++) {
> > +	for (i =3D 0; i < sseu->eu_stride; i++) {
> >   		sseu->eu_mask[offset + i] =3D
> >   			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> >   	}
> > @@ -159,9 +158,9 @@ void intel_device_info_dump_topology(const
> > struct sseu_dev_info *sseu,
> >   	}
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> > -		drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
> > +		drm_printf(p, "slice%d: %u subslice(s) (0x%08x):\n",
> >   			   s, intel_sseu_subslices_per_slice(sseu, s),
> > -			   sseu->subslice_mask[s]);
> > +			   intel_sseu_get_subslices(sseu, s));
> >  =20
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			u16 enabled_eus =3D sseu_get_eus(sseu, s, ss);
> > @@ -190,15 +189,10 @@ static void gen11_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	u8 eu_en;
> >   	int s;
> >  =20
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
> > +		intel_sseu_set_info(sseu, 1, 4, 8);
> > +	else
> > +		intel_sseu_set_info(sseu, 1, 8, 8);
> >  =20
> >   	s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) & GEN11_GT_S_ENA_MASK;
> >   	ss_en =3D ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
> > @@ -207,15 +201,15 @@ static void gen11_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		if (s_en & BIT(s)) {
> > -			int ss_idx =3D sseu->max_subslices * s;
> >   			int ss;
> >  =20
> >   			sseu->slice_mask |=3D BIT(s);
> > -			sseu->subslice_mask[s] =3D (ss_en >> ss_idx) &
> > ss_en_mask;
> > -			for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > -				if (sseu->subslice_mask[s] & BIT(ss))
> > +
> > +			intel_sseu_set_subslices(sseu, s, ss_en_mask);
> > +
> > +			for (ss =3D 0; ss < sseu->max_subslices; ss++)
> > +				if (intel_sseu_has_subslice(sseu, s,
> > ss))
> >   					sseu_set_eus(sseu, s, ss,
> > eu_en);
> > -			}
> >   		}
> >   	}
> >   	sseu->eu_per_subslice =3D hweight8(eu_en);
> > @@ -235,23 +229,10 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	const int eu_mask =3D 0xff;
> >   	u32 subslice_mask, eu_en;
> >  =20
> > +	intel_sseu_set_info(sseu, 6, 4, 8);
> > +
> >   	sseu->slice_mask =3D (fuse2 & GEN10_F2_S_ENA_MASK) >>
> >   			    GEN10_F2_S_ENA_SHIFT;
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
> >  =20
> >   	/* Slice0 */
> >   	eu_en =3D ~I915_READ(GEN8_EU_DISABLE0);
> > @@ -276,14 +257,22 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	eu_en =3D ~I915_READ(GEN10_EU_DISABLE3);
> >   	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> >  =20
> > -	/* Do a second pass where we mark the subslices disabled if all
> > their
> > -	 * eus are off.
> > -	 */
> > +	subslice_mask =3D (1 << 4) - 1;
> > +	subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > +			   GEN10_F2_SS_DIS_SHIFT);
> > +
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			if (sseu_get_eus(sseu, s, ss) =3D=3D 0)
> > -				sseu->subslice_mask[s] &=3D ~BIT(ss);
> > +				subslice_mask &=3D ~BIT(ss);
> >   		}
> > +
> > +		/*
> > +		 * Slice0 can have up to 3 subslices, but there are
> > only 2 in
> > +		 * slice1/2.
> > +		 */
> > +		intel_sseu_set_subslices(sseu, s, s =3D=3D 0 ?
> > subslice_mask :
> > +							   subslice_mas
> > k & 0x3);
> >   	}
> >  =20
> >   	sseu->eu_total =3D compute_eu_total(sseu);
> > @@ -309,13 +298,12 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   {
> >   	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >   	u32 fuse;
> > +	u8 subslice_mask;
> >  =20
> >   	fuse =3D I915_READ(CHV_FUSE_GT);
> >  =20
> >   	sseu->slice_mask =3D BIT(0);
> > -	sseu->max_slices =3D 1;
> > -	sseu->max_subslices =3D 2;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	intel_sseu_set_info(sseu, 1, 2, 8);
> >  =20
> >   	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
> >   		u8 disabled_mask =3D
> > @@ -324,7 +312,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
> >   			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> >  =20
> > -		sseu->subslice_mask[0] |=3D BIT(0);
> > +		subslice_mask |=3D BIT(0);
> >   		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> >   	}
> >  =20
> > @@ -335,10 +323,12 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
> >   			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
> >  =20
> > -		sseu->subslice_mask[0] |=3D BIT(1);
> > +		subslice_mask |=3D BIT(1);
> >   		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> >   	}
> >  =20
> > +	intel_sseu_set_subslices(sseu, 0, subslice_mask);
> > +
> >   	sseu->eu_total =3D compute_eu_total(sseu);
> >  =20
> >   	/*
> > @@ -371,9 +361,8 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>
> > GEN8_F2_S_ENA_SHIFT;
> >  =20
> >   	/* BXT has a single slice and at most 3 subslices. */
> > -	sseu->max_slices =3D IS_GEN9_LP(dev_priv) ? 1 : 3;
> > -	sseu->max_subslices =3D IS_GEN9_LP(dev_priv) ? 3 : 4;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	intel_sseu_set_info(sseu, IS_GEN9_LP(dev_priv) ? 1 : 3,
> > +			    IS_GEN9_LP(dev_priv) ? 3 : 4, 8);
> >  =20
> >   	/*
> >   	 * The subslice disable field is global, i.e. it applies
> > @@ -392,14 +381,14 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			/* skip disabled slice */
> >   			continue;
> >  =20
> > -		sseu->subslice_mask[s] =3D subslice_mask;
> > +		intel_sseu_set_subslices(sseu, s, subslice_mask);
> >  =20
> >   		eu_disable =3D I915_READ(GEN9_EU_DISABLE(s));
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			int eu_per_ss;
> >   			u8 eu_disabled_mask;
> >  =20
> > -			if (!(sseu->subslice_mask[s] & BIT(ss)))
> > +			if (!intel_sseu_has_subslice(sseu, s, ss))
> >   				/* skip disabled subslice */
> >   				continue;
> >  =20
> > @@ -472,9 +461,7 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  =20
> >   	fuse2 =3D I915_READ(GEN8_FUSE2);
> >   	sseu->slice_mask =3D (fuse2 & GEN8_F2_S_ENA_MASK) >>
> > GEN8_F2_S_ENA_SHIFT;
> > -	sseu->max_slices =3D 3;
> > -	sseu->max_subslices =3D 3;
> > -	sseu->max_eus_per_subslice =3D 8;
> > +	intel_sseu_set_info(sseu, 3, 3, 8);
> >  =20
> >   	/*
> >   	 * The subslice disable field is global, i.e. it applies
> > @@ -501,18 +488,19 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			/* skip disabled slice */
> >   			continue;
> >  =20
> > -		sseu->subslice_mask[s] =3D subslice_mask;
> > +		intel_sseu_set_subslices(sseu, s, subslice_mask);
> >  =20
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			u8 eu_disabled_mask;
> >   			u32 n_disabled;
> >  =20
> > -			if (!(sseu->subslice_mask[s] & BIT(ss)))
> > +			if (!intel_sseu_has_subslice(sseu, s, ss))
> >   				/* skip disabled subslice */
> >   				continue;
> >  =20
> >   			eu_disabled_mask =3D
> > -				eu_disable[s] >> (ss * sseu-
> > >max_eus_per_subslice);
> > +				eu_disable[s] >>
> > +					(ss * sseu-
> > >max_eus_per_subslice);
> >  =20
> >   			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
> >  =20
> > @@ -552,6 +540,7 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> >   	u32 fuse1;
> >   	int s, ss;
> > +	u32 subslice_mask;
> >  =20
> >   	/*
> >   	 * There isn't a register to tell us how many slices/subslices.
> > We
> > @@ -563,22 +552,18 @@ static void haswell_sseu_info_init(struct
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
> > @@ -595,9 +580,14 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   		sseu->eu_per_subslice =3D 6;
> >   		break;
> >   	}
> > -	sseu->max_eus_per_subslice =3D sseu->eu_per_subslice;
> > +
> > +	intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
> > +			    hweight8(subslice_mask),
> > +			    sseu->eu_per_subslice);
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> > +		intel_sseu_set_subslices(sseu, s, subslice_mask);
> > +
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   			sseu_set_eus(sseu, s, ss,
> >   				     (1UL << sseu->eu_per_subslice) -
> > 1);
> >=20

--=-TV02ZbDuEdUuXWGyQHwl
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjExNTUyNDVaMCMGCSqGSIb3DQEJ
BDEWBBSTXOkEMleA6MVcYWWO+PG+CuestjANBgkqhkiG9w0BAQEFAASCAQAEE9e8c8XmZ8wSI7Ym
yGmR/7FThXlsNxDN8BxX6DPFAOdChlXEpFTVolTAu5kO/4XZnxEwTJZcCC7UGzkXp8DU1bCkXcM5
fe4mPW46QoTh4IUjYW8336ubZ+kzptmnQq+w97dAw/KNagtaatxXEebsizlo95o8ZwUmRZ7AFl+Y
l4VRXRxVU1/r+jE0gFvqAjh9abR9FCefgFLsytxBrC476pglvdiEfHOMb9t1+Ew/s69Hz9ue3Hfn
L49fbgqh+gS82DFNpQcCGkxaR+GxkMEN2MN3bQ/sGJzSoiAI/ao07fUnBj4/MTUEteF/dEjgSKyU
+X4SFC/FLO/+A8yLCYS3AAAAAAAA


--=-TV02ZbDuEdUuXWGyQHwl--

--===============0412310205==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0412310205==--
