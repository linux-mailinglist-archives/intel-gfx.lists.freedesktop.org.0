Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8668310E5E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 23:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594F4892CA;
	Wed,  1 May 2019 21:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE615892CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 21:04:48 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 14:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,419,1549958400"; 
 d="p7s'?scan'208";a="320641015"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2019 14:04:48 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 1 May 2019 14:04:45 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.228]) with mapi id 14.03.0415.000;
 Wed, 1 May 2019 14:04:44 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/6] drm/i915: Remove inline from sseu helper functions
Thread-Index: AQHVAFkY2aEJ+LQ4B0yy+RBJ+p/xB6ZXN6OA
Date: Wed, 1 May 2019 21:04:44 +0000
Message-ID: <4991fb9bebabff1f1abd194e4fe688fad35feb7b.camel@intel.com>
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-6-stuart.summers@intel.com>
 <c317779d-6a9e-1959-4aa4-bac720eb8ef2@intel.com>
In-Reply-To: <c317779d-6a9e-1959-4aa4-bac720eb8ef2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Remove inline from sseu
 helper functions
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
Content-Type: multipart/mixed; boundary="===============0233354157=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0233354157==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-PPw07wWTc3SXRIEoOB8i"

--=-PPw07wWTc3SXRIEoOB8i
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-01 at 13:04 -0700, Daniele Ceraolo Spurio wrote:
> Can you elaborate a bit more on what's the rationale for this? do
> you=20
> just want to avoid having too many inlines since the paths they're
> used=20
> in are not critical, or do you have some more functional reason? This
> is=20
> not a critic to the patch, I just want to understand where you're
> coming=20
> from ;)

This was a request from Jani Nikula in a previous series update. I
don't have a strong preference either way personally. If you don't have
any major concerns, I'd prefer to keep the series as-is to prevent too
much thrash here, but let me know.

>=20
> BTW, looking at this patch I realized there are a few more=20
> DIV_ROUND_UP(..., BITS_PER_BYTE) that could be converted to=20
> GEN_SSEU_STRIDE() in patch 2. I noticed you update them to a new=20
> variable in the next patch, but for consistency it might still be
> worth=20
> updating them all in patch 2 or at least mention in the commit
> message=20
> of patch 2 that the remaining cases are updated by a follow-up patch
> in=20
> the series. Patch 2 is quite small, so you could also just squash it=20
> into patch 6 to avoid the split.

I'm happy to squash them. I did try to isolate this a bit, but you're
right that I ended up pushing some of these DIV_ROUND_UP... stride
calculations to the last patch in the series. If you don't have any
objection, to keep the finaly patch a bit simpler, I'd rather pull
those changes into the earlier patch. I realize you already have a RB
on that patch. Any issues doing this?

Thanks,
Stuart

>=20
> Daniele
>=20
> On 5/1/19 8:34 AM, Stuart Summers wrote:
> > Additionally, ensure these are all prefixed with intel_sseu_*
> > to match the convention of other functions in i915.
> >=20
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_sseu.c     | 54 +++++++++++++++++++
> >   drivers/gpu/drm/i915/gt/intel_sseu.h     | 57 +++--------------
> > ---
> >   drivers/gpu/drm/i915/i915_debugfs.c      |  6 +--
> >   drivers/gpu/drm/i915/i915_drv.c          |  2 +-
> >   drivers/gpu/drm/i915/intel_device_info.c | 69 ++++++++++++-------
> > -----
> >   5 files changed, 102 insertions(+), 86 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > index 7f448f3bea0b..4a0b82fc108c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > @@ -8,6 +8,60 @@
> >   #include "intel_lrc_reg.h"
> >   #include "intel_sseu.h"
> >  =20
> > +unsigned int
> > +intel_sseu_subslice_total(const struct sseu_dev_info *sseu)
> > +{
> > +	unsigned int i, total =3D 0;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
> > +		total +=3D hweight8(sseu->subslice_mask[i]);
> > +
> > +	return total;
> > +}
> > +
> > +unsigned int
> > +intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice)
> > +{
> > +	return hweight8(sseu->subslice_mask[slice]);
> > +}
> > +
> > +static int intel_sseu_eu_idx(const struct sseu_dev_info *sseu, int
> > slice,
> > +			     int subslice)
> > +{
> > +	int subslice_stride =3D DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > +					   BITS_PER_BYTE);
> > +	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > +
> > +	return slice * slice_stride + subslice * subslice_stride;
> > +}
> > +
> > +u16 intel_sseu_get_eus(const struct sseu_dev_info *sseu, int
> > slice,
> > +		       int subslice)
> > +{
> > +	int i, offset =3D intel_sseu_eu_idx(sseu, slice, subslice);
> > +	u16 eu_mask =3D 0;
> > +
> > +	for (i =3D 0;
> > +	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > +		eu_mask |=3D ((u16)sseu->eu_mask[offset + i]) <<
> > +			(i * BITS_PER_BYTE);
> > +	}
> > +
> > +	return eu_mask;
> > +}
> > +
> > +void intel_sseu_set_eus(struct sseu_dev_info *sseu, int slice, int
> > subslice,
> > +			u16 eu_mask)
> > +{
> > +	int i, offset =3D intel_sseu_eu_idx(sseu, slice, subslice);
> > +
> > +	for (i =3D 0;
> > +	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > +		sseu->eu_mask[offset + i] =3D
> > +			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > +	}
> > +}
> > +
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >   			 const struct intel_sseu *req_sseu)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > index 029e71d8f140..56e3721ae83f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -63,58 +63,17 @@ intel_sseu_from_device_info(const struct
> > sseu_dev_info *sseu)
> >   	return value;
> >   }
> >  =20
> > -static inline unsigned int sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> > -{
> > -	unsigned int i, total =3D 0;
> > -
> > -	for (i =3D 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
> > -		total +=3D hweight8(sseu->subslice_mask[i]);
> > +unsigned int
> > +intel_sseu_subslice_total(const struct sseu_dev_info *sseu);
> >  =20
> > -	return total;
> > -}
> > +unsigned int
> > +intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice);
> >  =20
> > -static inline unsigned int
> > -sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8
> > slice)
> > -{
> > -	return hweight8(sseu->subslice_mask[slice]);
> > -}
> > -
> > -static inline int sseu_eu_idx(const struct sseu_dev_info *sseu,
> > -			      int slice, int subslice)
> > -{
> > -	int subslice_stride =3D DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > -					   BITS_PER_BYTE);
> > -	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > -
> > -	return slice * slice_stride + subslice * subslice_stride;
> > -}
> > +u16 intel_sseu_get_eus(const struct sseu_dev_info *sseu, int
> > slice,
> > +		       int subslice);
> >  =20
> > -static inline u16 sseu_get_eus(const struct sseu_dev_info *sseu,
> > -			       int slice, int subslice)
> > -{
> > -	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > -	u16 eu_mask =3D 0;
> > -
> > -	for (i =3D 0;
> > -	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > -		eu_mask |=3D ((u16)sseu->eu_mask[offset + i]) <<
> > -			(i * BITS_PER_BYTE);
> > -	}
> > -
> > -	return eu_mask;
> > -}
> > -
> > -static inline void sseu_set_eus(struct sseu_dev_info *sseu,
> > -				int slice, int subslice, u16 eu_mask)
> > -{
> > -	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > -
> > -	for (i =3D 0;
> > -	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > -		sseu->eu_mask[offset + i] =3D
> > -			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > -	}
> > -}
> > +void intel_sseu_set_eus(struct sseu_dev_info *sseu, int slice, int
> > subslice,
> > +			u16 eu_mask);
> >  =20
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >   			 const struct intel_sseu *req_sseu);
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > b/drivers/gpu/drm/i915/i915_debugfs.c
> > index fe854c629a32..3f3ee83ac315 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -4158,7 +4158,7 @@ static void
> > broadwell_sseu_device_status(struct drm_i915_private *dev_priv,
> >   				RUNTIME_INFO(dev_priv)-
> > >sseu.subslice_mask[s];
> >   		}
> >   		sseu->eu_total =3D sseu->eu_per_subslice *
> > -				 sseu_subslice_total(sseu);
> > +				 intel_sseu_subslice_total(sseu);
> >  =20
> >   		/* subtract fused off EU(s) from enabled slice(s) */
> >   		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> > @@ -4182,10 +4182,10 @@ static void i915_print_sseu_info(struct
> > seq_file *m, bool is_available_info,
> >   	seq_printf(m, "  %s Slice Total: %u\n", type,
> >   		   hweight8(sseu->slice_mask));
> >   	seq_printf(m, "  %s Subslice Total: %u\n", type,
> > -		   sseu_subslice_total(sseu));
> > +		   intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> >   		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
> > -			   s, sseu_subslices_per_slice(sseu, s));
> > +			   s, intel_sseu_subslices_per_slice(sseu, s));
> >   	}
> >   	seq_printf(m, "  %s EU Total: %u\n", type,
> >   		   sseu->eu_total);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > b/drivers/gpu/drm/i915/i915_drv.c
> > index c376244c19c4..130c5140db0d 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -378,7 +378,7 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >   		value =3D i915_cmd_parser_get_version(dev_priv);
> >   		break;
> >   	case I915_PARAM_SUBSLICE_TOTAL:
> > -		value =3D sseu_subslice_total(sseu);
> > +		value =3D intel_sseu_subslice_total(sseu);
> >   		if (!value)
> >   			return -ENODEV;
> >   		break;
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 559cf0d0628e..e1dbccf04cd9 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -90,10 +90,10 @@ static void sseu_dump(const struct
> > sseu_dev_info *sseu, struct drm_printer *p)
> >  =20
> >   	drm_printf(p, "slice total: %u, mask=3D%04x\n",
> >   		   hweight8(sseu->slice_mask), sseu->slice_mask);
> > -	drm_printf(p, "subslice total: %u\n",
> > sseu_subslice_total(sseu));
> > +	drm_printf(p, "subslice total: %u\n",
> > intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > -			   s, sseu_subslices_per_slice(sseu, s),
> > +			   s, intel_sseu_subslices_per_slice(sseu, s),
> >   			   sseu->subslice_mask[s]);
> >   	}
> >   	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> > @@ -126,11 +126,11 @@ void intel_device_info_dump_topology(const
> > struct sseu_dev_info *sseu,
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
> > -			   s, sseu_subslices_per_slice(sseu, s),
> > +			   s, intel_sseu_subslices_per_slice(sseu, s),
> >   			   sseu->subslice_mask[s]);
> >  =20
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > -			u16 enabled_eus =3D sseu_get_eus(sseu, s, ss);
> > +			u16 enabled_eus =3D intel_sseu_get_eus(sseu, s,
> > ss);
> >  =20
> >   			drm_printf(p, "\tsubslice%d: %u EUs (0x%hx)\n",
> >   				   ss, hweight16(enabled_eus),
> > enabled_eus);
> > @@ -180,7 +180,7 @@ static void gen11_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			sseu->subslice_mask[s] =3D (ss_en >> ss_idx) &
> > ss_en_mask;
> >   			for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> >   				if (sseu->subslice_mask[s] & BIT(ss))
> > -					sseu_set_eus(sseu, s, ss,
> > eu_en);
> > +					intel_sseu_set_eus(sseu, s, ss,
> > eu_en);
> >   			}
> >   		}
> >   	}
> > @@ -222,32 +222,32 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	/* Slice0 */
> >   	eu_en =3D ~I915_READ(GEN8_EU_DISABLE0);
> >   	for (ss =3D 0; ss < sseu->max_subslices; ss++)
> > -		sseu_set_eus(sseu, 0, ss, (eu_en >> (8 * ss)) &
> > eu_mask);
> > +		intel_sseu_set_eus(sseu, 0, ss, (eu_en >> (8 * ss)) &
> > eu_mask);
> >   	/* Slice1 */
> > -	sseu_set_eus(sseu, 1, 0, (eu_en >> 24) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 1, 0, (eu_en >> 24) & eu_mask);
> >   	eu_en =3D ~I915_READ(GEN8_EU_DISABLE1);
> > -	sseu_set_eus(sseu, 1, 1, eu_en & eu_mask);
> > +	intel_sseu_set_eus(sseu, 1, 1, eu_en & eu_mask);
> >   	/* Slice2 */
> > -	sseu_set_eus(sseu, 2, 0, (eu_en >> 8) & eu_mask);
> > -	sseu_set_eus(sseu, 2, 1, (eu_en >> 16) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 2, 0, (eu_en >> 8) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 2, 1, (eu_en >> 16) & eu_mask);
> >   	/* Slice3 */
> > -	sseu_set_eus(sseu, 3, 0, (eu_en >> 24) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 3, 0, (eu_en >> 24) & eu_mask);
> >   	eu_en =3D ~I915_READ(GEN8_EU_DISABLE2);
> > -	sseu_set_eus(sseu, 3, 1, eu_en & eu_mask);
> > +	intel_sseu_set_eus(sseu, 3, 1, eu_en & eu_mask);
> >   	/* Slice4 */
> > -	sseu_set_eus(sseu, 4, 0, (eu_en >> 8) & eu_mask);
> > -	sseu_set_eus(sseu, 4, 1, (eu_en >> 16) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 4, 0, (eu_en >> 8) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 4, 1, (eu_en >> 16) & eu_mask);
> >   	/* Slice5 */
> > -	sseu_set_eus(sseu, 5, 0, (eu_en >> 24) & eu_mask);
> > +	intel_sseu_set_eus(sseu, 5, 0, (eu_en >> 24) & eu_mask);
> >   	eu_en =3D ~I915_READ(GEN10_EU_DISABLE3);
> > -	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> > +	intel_sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> >  =20
> >   	/* Do a second pass where we mark the subslices disabled if all
> > their
> >   	 * eus are off.
> >   	 */
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > -			if (sseu_get_eus(sseu, s, ss) =3D=3D 0)
> > +			if (intel_sseu_get_eus(sseu, s, ss) =3D=3D 0)
> >   				sseu->subslice_mask[s] &=3D ~BIT(ss);
> >   		}
> >   	}
> > @@ -260,9 +260,10 @@ static void gen10_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * EU in any one subslice may be fused off for die
> >   	 * recovery.
> >   	 */
> > -	sseu->eu_per_subslice =3D sseu_subslice_total(sseu) ?
> > +	sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> >   				DIV_ROUND_UP(sseu->eu_total,
> > -					     sseu_subslice_total(sseu))
> > : 0;
> > +					     intel_sseu_subslice_total(
> > sseu)) :
> > +				0;
> >  =20
> >   	/* No restrictions on Power Gating */
> >   	sseu->has_slice_pg =3D 1;
> > @@ -290,7 +291,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> >  =20
> >   		sseu->subslice_mask[0] |=3D BIT(0);
> > -		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> > +		intel_sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> >   	}
> >  =20
> >   	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
> > @@ -301,7 +302,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
> >  =20
> >   		sseu->subslice_mask[0] |=3D BIT(1);
> > -		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> > +		intel_sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> >   	}
> >  =20
> >   	sseu->eu_total =3D compute_eu_total(sseu);
> > @@ -310,8 +311,8 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * CHV expected to always have a uniform distribution of EU
> >   	 * across subslices.
> >   	*/
> > -	sseu->eu_per_subslice =3D sseu_subslice_total(sseu) ?
> > -				sseu->eu_total /
> > sseu_subslice_total(sseu) :
> > +	sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> > +				sseu->eu_total /
> > intel_sseu_subslice_total(sseu) :
> >   				0;
> >   	/*
> >   	 * CHV supports subslice power gating on devices with more than
> > @@ -319,7 +320,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * more than one EU pair per subslice.
> >   	*/
> >   	sseu->has_slice_pg =3D 0;
> > -	sseu->has_subslice_pg =3D sseu_subslice_total(sseu) > 1;
> > +	sseu->has_subslice_pg =3D intel_sseu_subslice_total(sseu) > 1;
> >   	sseu->has_eu_pg =3D (sseu->eu_per_subslice > 2);
> >   }
> >  =20
> > @@ -369,7 +370,7 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  =20
> >   			eu_disabled_mask =3D (eu_disable >> (ss * 8)) &
> > eu_mask;
> >  =20
> > -			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
> > +			intel_sseu_set_eus(sseu, s, ss,
> > ~eu_disabled_mask);
> >  =20
> >   			eu_per_ss =3D sseu->max_eus_per_subslice -
> >   				hweight8(eu_disabled_mask);
> > @@ -393,9 +394,10 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * recovery. BXT is expected to be perfectly uniform in EU
> >   	 * distribution.
> >   	*/
> > -	sseu->eu_per_subslice =3D sseu_subslice_total(sseu) ?
> > +	sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> >   				DIV_ROUND_UP(sseu->eu_total,
> > -					     sseu_subslice_total(sseu))
> > : 0;
> > +					     intel_sseu_subslice_total(
> > sseu)) :
> > +				0;
> >   	/*
> >   	 * SKL+ supports slice power gating on devices with more than
> >   	 * one slice, and supports EU power gating on devices with
> > @@ -407,7 +409,7 @@ static void gen9_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	sseu->has_slice_pg =3D
> >   		!IS_GEN9_LP(dev_priv) && hweight8(sseu->slice_mask) >
> > 1;
> >   	sseu->has_subslice_pg =3D
> > -		IS_GEN9_LP(dev_priv) && sseu_subslice_total(sseu) > 1;
> > +		IS_GEN9_LP(dev_priv) && intel_sseu_subslice_total(sseu)
> > > 1;
> >   	sseu->has_eu_pg =3D sseu->eu_per_subslice > 2;
> >  =20
> >   	if (IS_GEN9_LP(dev_priv)) {
> > @@ -477,7 +479,7 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			eu_disabled_mask =3D
> >   				eu_disable[s] >> (ss * sseu-
> > >max_eus_per_subslice);
> >  =20
> > -			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
> > +			intel_sseu_set_eus(sseu, s, ss,
> > ~eu_disabled_mask);
> >  =20
> >   			n_disabled =3D hweight8(eu_disabled_mask);
> >  =20
> > @@ -496,9 +498,10 @@ static void broadwell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * subslices with the exception that any one EU in any one
> > subslice may
> >   	 * be fused off for die recovery.
> >   	 */
> > -	sseu->eu_per_subslice =3D sseu_subslice_total(sseu) ?
> > +	sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> >   				DIV_ROUND_UP(sseu->eu_total,
> > -					     sseu_subslice_total(sseu))
> > : 0;
> > +					     intel_sseu_subslice_total(
> > sseu)) :
> > +				0;
> >  =20
> >   	/*
> >   	 * BDW supports slice power gating on devices with more than
> > @@ -561,8 +564,8 @@ static void haswell_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >  =20
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > -			sseu_set_eus(sseu, s, ss,
> > -				     (1UL << sseu->eu_per_subslice) -
> > 1);
> > +			intel_sseu_set_eus(sseu, s, ss,
> > +					   (1UL << sseu-
> > >eu_per_subslice) - 1);
> >   		}
> >   	}
> >  =20
> >=20

--=-PPw07wWTc3SXRIEoOB8i
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDEyMTA0NDFaMCMGCSqGSIb3DQEJ
BDEWBBQcettWAwI8ELSwE6U8E6ftRAR3cjANBgkqhkiG9w0BAQEFAASCAQBigy4IWQqtKssnjaTl
Ki7cno+ZnVOTSAOyV3GN1TVmAHeAGlHc7OAJJIygiSsbSLNYlcbJuIKtNNCp4CZiNJ3gt/THt+V3
5M094qJxNYMau57ncbZqXycErcSkiTFFBsji6kYA/lOwbXf38qJDWQ08Nsrtd/yQWF9HDGdVF1QD
7lssLgIFwFfHma6j00TuGmrV91qM3Mo3eO2px/BdLkODMJnBKtETRcZ1him6VpxicwdCfmyAXHsE
SY821RwdOATXVUzzYYl5+SPlD5RfESD5dCU7VyoDSXEUZPPctSDrrS6ZU+n9NgCRksSVeYS6cIN7
gScyQQvTAL/fzf79CqhEAAAAAAAA


--=-PPw07wWTc3SXRIEoOB8i--

--===============0233354157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0233354157==--
