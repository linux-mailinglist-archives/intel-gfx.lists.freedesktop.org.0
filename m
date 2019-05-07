Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E20916A0D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 20:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4E66E821;
	Tue,  7 May 2019 18:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A465B6E821
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 18:21:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 11:21:55 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 07 May 2019 11:21:54 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 7 May 2019 11:21:54 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.245]) with mapi id 14.03.0415.000;
 Tue, 7 May 2019 11:21:54 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/5] drm/i915: Refactor sseu helper functions
Thread-Index: AQHVBQCMi+G774XNu0Wl8q+cMhNviqZgbtEA
Date: Tue, 7 May 2019 18:21:53 +0000
Message-ID: <e241c7d392cd0d76125d6a25c24068f5248b0d92.camel@intel.com>
References: <20190503213020.25628-1-stuart.summers@intel.com>
 <20190503213020.25628-5-stuart.summers@intel.com>
 <acd7780b-455b-2397-7c9f-8180d41ee5c1@intel.com>
In-Reply-To: <acd7780b-455b-2397-7c9f-8180d41ee5c1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Refactor sseu helper functions
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
Content-Type: multipart/mixed; boundary="===============0516354088=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0516354088==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-dSiSpmAxRbXCe2yWL6JR"

--=-dSiSpmAxRbXCe2yWL6JR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-05-07 at 11:12 -0700, Daniele Ceraolo Spurio wrote:
>=20
> On 5/3/19 2:30 PM, Stuart Summers wrote:
> > Move functions to intel_sseu.h and remove inline qualifier.
> > Additionally, ensure these are all prefixed with intel_sseu_*
> > to match the convention of other functions in i915.
> >=20
> > v2: fix spacing from checkpatch warning
> > v3: squash helper function changes into a single patch
> >      break 80 character line to fix checkpatch warning
> >      move get/set_eus helpers to intel_device_info.c
> >=20
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_sseu.c     |  17 ++++
> >   drivers/gpu/drm/i915/gt/intel_sseu.h     |  10 +--
> >   drivers/gpu/drm/i915/i915_debugfs.c      |   4 +-
> >   drivers/gpu/drm/i915/i915_drv.c          |   2 +-
> >   drivers/gpu/drm/i915/intel_device_info.c | 103 ++++++++++++++++
> > -------
> >   drivers/gpu/drm/i915/intel_device_info.h |  44 ----------
> >   6 files changed, 97 insertions(+), 83 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > index 7f448f3bea0b..a0756f006f5f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> > @@ -8,6 +8,23 @@
> >   #include "intel_lrc_reg.h"ther occurrences below a
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
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >   			 const struct intel_sseu *req_sseu)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > index 9618dff46d83..b50d0401a4e2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -63,11 +63,11 @@ intel_sseu_from_device_info(const struct
> > sseu_dev_info *sseu)
> >   	return value;
> >   }
> >  =20
> > -static inline unsigned int
> > -intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice)
> > -{
> > -	return hweight8(sseu->subslice_mask[slice]);
> > -}
> > +unsigned int
> > +intel_sseu_subslice_total(const struct sseu_dev_info *sseu);
> > +
> > +unsigned int
> > +intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu,
> > u8 slice);
> >  =20
> >   u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >   			 const struct intel_sseu *req_sseu);
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > b/drivers/gpu/drm/i915/i915_debugfs.c
> > index dceb32a16c5c..fce3ccd87f76 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -4160,7 +4160,7 @@ static void
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
> > @@ -4184,7 +4184,7 @@ static void i915_print_sseu_info(struct
> > seq_file *m, bool is_available_info,
> >   	seq_printf(m, "  %s Slice Total: %u\n", type,
> >   		   hweight8(sseu->slice_mask));
> >   	seq_printf(m, "  %s Subslice Total: %u\n", type,
> > -		   sseu_subslice_total(sseu));
> > +		   intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> >   		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
> >   			   s, intel_sseu_subslices_per_slice(sseu, s));
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > b/drivers/gpu/drm/i915/i915_drv.c
> > index dcc872f9c676..c2ea3f0992b2 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -382,7 +382,7 @@ static int i915_getparam_ioctl(struct
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
> > index 9d6b9c45bc5e..689702b28e80 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -90,7 +90,7 @@ static void sseu_dump(const struct sseu_dev_info
> > *sseu, struct drm_printer *p)
> >  =20
> >   	drm_printf(p, "slice total: %u, mask=3D%04x\n",
> >   		   hweight8(sseu->slice_mask), sseu->slice_mask);
> > -	drm_printf(p, "subslice total: %u\n",
> > sseu_subslice_total(sseu));
> > +	drm_printf(p, "subslice total: %u\n",
> > intel_sseu_subslice_total(sseu));
> >   	for (s =3D 0; s < sseu->max_slices; s++) {
> >   		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> >   			   s, intel_sseu_subslices_per_slice(sseu, s),
> > @@ -114,6 +114,43 @@ void intel_device_info_dump_runtime(const
> > struct intel_runtime_info *info,
> >   		   info->cs_timestamp_frequency_khz);
> >   }
> >  =20
> > +static int intel_sseu_eu_idx(const struct sseu_dev_info *sseu, int
> > slice,
>=20
> No need for intel_ prefix for these functions if they're static
> (which=20
> also helps reducing the diff).
>=20
> > +			     int subslice)
> > +{
> > +	int subslice_stride =3D DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > +					   BITS_PER_BYTE);
>=20
> This was GEN_SSEU_STRIDE in the deleted code (other occurrences below
> as=20
> well).
>=20
> With these addressed:

Nice catch, I obviously missed this case. Will address both of these in
the next revision.

Thanks for the review!

-Stuart

>=20
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>=20
> Daniele
>=20
> > +	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > +
> > +	return slice * slice_stride + subslice * subslice_stride;
> > +}
> > +
> > +static u16 intel_sseu_get_eus(const struct sseu_dev_info *sseu,
> > int slice,
> > +			      int subslice)
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
> > +static void intel_sseu_set_eus(struct sseu_dev_info *sseu, int
> > slice,
> > +			       int subslice, u16 eu_mask)
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
> >   void intel_device_info_dump_topology(const struct sseu_dev_info
> > *sseu,
> >   				     struct drm_printer *p)
> >   {
> > @@ -130,7 +167,7 @@ void intel_device_info_dump_topology(const
> > struct sseu_dev_info *sseu,
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
> > @@ -180,7 +217,7 @@ static void gen11_sseu_info_init(struct
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
> > @@ -222,32 +259,32 @@ static void gen10_sseu_info_init(struct
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
> > @@ -260,9 +297,10 @@ static void gen10_sseu_info_init(struct
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
> > @@ -290,7 +328,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> >  =20
> >   		sseu->subslice_mask[0] |=3D BIT(0);
> > -		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> > +		intel_sseu_set_eus(sseu, 0, 0, ~disabled_mask);
> >   	}
> >  =20
> >   	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
> > @@ -301,7 +339,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
> >  =20
> >   		sseu->subslice_mask[0] |=3D BIT(1);
> > -		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> > +		intel_sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> >   	}
> >  =20
> >   	sseu->eu_total =3D compute_eu_total(sseu);
> > @@ -310,8 +348,9 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * CHV expected to always have a uniform distribution of EU
> >   	 * across subslices.
> >   	*/
> > -	sseu->eu_per_subslice =3D sseu_subslice_total(sseu) ?
> > -				sseu->eu_total /
> > sseu_subslice_total(sseu) :
> > +	sseu->eu_per_subslice =3D intel_sseu_subslice_total(sseu) ?
> > +				sseu->eu_total /
> > +					intel_sseu_subslice_total(sseu)
> > :
> >   				0;
> >   	/*
> >   	 * CHV supports subslice power gating on devices with more than
> > @@ -319,7 +358,7 @@ static void cherryview_sseu_info_init(struct
> > drm_i915_private *dev_priv)
> >   	 * more than one EU pair per subslice.
> >   	*/
> >   	sseu->has_slice_pg =3D 0;
> > -	sseu->has_subslice_pg =3D sseu_subslice_total(sseu) > 1;
> > +	sseu->has_subslice_pg =3D intel_sseu_subslice_total(sseu) > 1;
> >   	sseu->has_eu_pg =3D (sseu->eu_per_subslice > 2);
> >   }
> >  =20
> > @@ -369,7 +408,7 @@ static void gen9_sseu_info_init(struct
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
> > @@ -393,9 +432,10 @@ static void gen9_sseu_info_init(struct
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
> > @@ -407,7 +447,7 @@ static void gen9_sseu_info_init(struct
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
> > @@ -477,7 +517,7 @@ static void broadwell_sseu_info_init(struct
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
> > @@ -496,9 +536,10 @@ static void broadwell_sseu_info_init(struct
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
> > @@ -561,8 +602,8 @@ static void haswell_sseu_info_init(struct
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
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 9d43f7edfd63..6412a9c72898 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -218,50 +218,6 @@ struct intel_driver_caps {
> >   	bool has_logical_contexts:1;
> >   };
> >  =20
> > -static inline unsigned int sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> > -{
> > -	unsigned int i, total =3D 0;
> > -
> > -	for (i =3D 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
> > -		total +=3D hweight8(sseu->subslice_mask[i]);
> > -
> > -	return total;
> > -}
> > -
> > -static inline int sseu_eu_idx(const struct sseu_dev_info *sseu,
> > -			      int slice, int subslice)
> > -{
> > -	int subslice_stride =3D GEN_SSEU_STRIDE(sseu-
> > >max_eus_per_subslice);
> > -	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > -
> > -	return slice * slice_stride + subslice * subslice_stride;
> > -}
> > -
> > -static inline u16 sseu_get_eus(const struct sseu_dev_info *sseu,
> > -			       int slice, int subslice)
> > -{
> > -	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > -	u16 eu_mask =3D 0;
> > -
> > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > i++) {
> > -		eu_mask |=3D ((u16) sseu->eu_mask[offset + i]) <<
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
> > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > i++) {
> > -		sseu->eu_mask[offset + i] =3D
> > -			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > -	}
> > -}
> > -
> >   const char *intel_platform_name(enum intel_platform platform);
> >  =20
> >   void intel_device_info_subplatform_init(struct drm_i915_private
> > *dev_priv);
> >=20

--=-dSiSpmAxRbXCe2yWL6JR
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDcxODIxNTBaMCMGCSqGSIb3DQEJ
BDEWBBTZTOlABoGMqRfgkqGv0S33WoO0ITANBgkqhkiG9w0BAQEFAASCAQAq80MJxwq3CwiJU6nS
GdTB7fOv4oFI4SvexWNFQqy4sJZycoViXbgRqm21NTREay/8PCs8iwqSQl33LP61O1ffqe0gJobs
T+wH1lJtBNUQkAHuSqTzBD/bHSDRWBWO9pOikI+8vDCriWw/IlErQSu1kEWoRjZZ6WGE4OYdLyFi
dkxdUxCHHR4tNI9XvDPLCqB30oP8xokjzC9ZjJ3KGMzXV4g9qxRc1LPOOB84HGHYr01TL+7H8VoE
kPBtkElo0cANIS0fbqqxyMtwLooyEEP/0m80nkih8aL9E+ZDa7kx5xcXuYKO0qkvJXUAVZuzMTq+
/elE9jCv/tWSafnJIYsyAAAAAAAA


--=-dSiSpmAxRbXCe2yWL6JR--

--===============0516354088==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0516354088==--
