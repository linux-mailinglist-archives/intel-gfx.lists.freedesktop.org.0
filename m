Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255B64F81CB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 16:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3A310EA60;
	Thu,  7 Apr 2022 14:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE42310EA60
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 14:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649342031; x=1680878031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2FkSXSjsNHHLJtBL1tX+SIwXlugYSe6uGachD5zPCwU=;
 b=Sz1WAM2upcbaEPfMl4iRBnOdbG27KM4hNlFNjsEpjZVLSvvdz+9ynabr
 qNvS3LFjK0oRe9zIrumvD3SSwbtE0dHkFdPUl7ex51ip8nlSxCmwZN0/C
 uBZADfr0SnG4piSSwPhuqRcstIR6LOqZssC5vRa+gBPUweRCHqawXzbQ8
 DZgUPPRM3D44BlG1zHzY4t6C61dNEGrrvalX8nc6n5kwVBFDByTd1BzCH
 o7Wed12zoi/f97556uOCMfMGhBwEcYoDDsreQA/xKbET+bk2Kj0ntlVzV
 Ig+rup5Lj4bbBE9tjVq/OmE4TH8ZhBniJNl/HnImwxZJ9koVOCUTSsaX2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="261515658"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261515658"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 07:33:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="792755861"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2022 07:33:47 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 07:33:46 -0700
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85]) by
 fmsmsx605.amr.corp.intel.com ([10.18.126.85]) with mapi id 15.01.2308.027;
 Thu, 7 Apr 2022 07:33:46 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear color
 compression
Thread-Index: AQHYSClXzKx0lAnPV0aVXrAFHUGOX6zj8lPQgAD5lAD//5ulkA==
Date: Thu, 7 Apr 2022 14:33:46 +0000
Message-ID: <2cc4cb6249ad4a5bb27a865918ff107a@intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
 <20220404133846.131401-5-imre.deak@intel.com>
 <ddee94f605e54ac39b815360e6d8fc2f@intel.com>
 <Yk7nHNRBPmMh/GPk@ideak-desk.fi.intel.com>
In-Reply-To: <Yk7nHNRBPmMh/GPk@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear
 color compression
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, April 7, 2022 6:59 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kahola, Mika <mika.kahola@intel.com>=
;
> Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; C, Ramalingam
> <ramalingam.c@intel.com>
> Subject: Re: [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear color
> compression
>=20
> On Thu, Apr 07, 2022 at 08:47:13AM +0300, Gupta, Anshuman wrote:
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Monday, April 4, 2022 7:09 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Kahola, Mika
> > > <mika.kahola@intel.com>; Heikkila, Juha-pekka <juha-
> > > pekka.heikkila@intel.com>; C, Ramalingam <ramalingam.c@intel.com>
> > > Subject: [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear color
> > > compression
> > >
> > > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > >
> > > DG2 onwards discrete gfx has support for new flat CCS mapping, which
> > > brings in display feature in to avoid Aux walk for compressed
> > > surface. This support build on top of Flat CCS support added in
> > > XEHPSDV.  FLAT CCS surface base address should be 64k aligned,
> > > Compressed displayable surfaces must use tile4 format.
> >
> > IMHO commit log should also describe a bit of description for DG2
> > Clear color. Original patch was meant to add FLAT_CCS support, commit
> > log not fully aligns with commit header.
> >
> > May be it would be good if patch authorship changes to the DG2
> > original clear color author for any required follow-up later ?
>=20
> I kept your authorship based on
> https://patchwork.freedesktop.org/patch/471775/?series=3D95686&rev=3D5
>=20
> and then an Ack from you. But yes, there's been some changes since the su=
pport
> for DG2 CCS was originally added, with multiple people involved, so the
> authorship may be not accurate. I can update that along with the commit
> message.
Yes, earlier I overlooked the authorship part as, but with above.
Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>

>=20
> > > HAS: 1407880786
> > > B.Spec : 7655
> > > B.Spec : 53902
> > >
> > > v2: Merge all bits required for the support of functionality into thi=
s
> > >     patch from the patch adding the corresponding modifier.
> > >
> > > Cc: Mika Kahola <mika.kahola@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Signed-off-by: Juha-Pekka Heikkil=E4 <juha-pekka.heikkila@intel.com>
> > > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
> > >  drivers/gpu/drm/i915/display/intel_fb.c       | 40 ++++++++++++++---=
--
> > >  .../drm/i915/display/skl_universal_plane.c    | 25 ++++++++----
> > >  3 files changed, 52 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index eee185ed41c3e..ca997a0a05174 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -8477,7 +8477,9 @@ static void
> > > intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
> > >
> > >  		/*
> > >  		 * The layout of the fast clear color value expected by HW
> > > -		 * (the DRM ABI requiring this value to be located in fb at offset
> > > 0 of plane#2):
> > > +		 * (the DRM ABI requiring this value to be located in fb at
> > > +		 * offset 0 of cc plane, plane #2 previous generations or
> > > +		 * plane #1 for flat ccs):
> > >  		 * - 4 x 4 bytes per-channel value
> > >  		 *   (in surface type specific float/int format provided by the fb
> > > user)
> > >  		 * - 8 bytes native color value used by the display diff --git
> > > a/drivers/gpu/drm/i915/display/intel_fb.c
> > > b/drivers/gpu/drm/i915/display/intel_fb.c
> > > index 447003a91160e..9f5a6b79e95b5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > @@ -107,6 +107,21 @@ static const struct drm_format_info
> > > gen12_ccs_cc_formats[] =3D {
> > >  	  .hsub =3D 1, .vsub =3D 1, .has_alpha =3D true },  };
> > >
> > > +static const struct drm_format_info gen12_flat_ccs_cc_formats[] =3D =
{
> > > +	{ .format =3D DRM_FORMAT_XRGB8888, .depth =3D 24, .num_planes =3D 2=
,
> > > +	  .char_per_block =3D { 4, 0 }, .block_w =3D { 1, 2 }, .block_h =3D=
 { 1, 1 },
> > > +	  .hsub =3D 1, .vsub =3D 1, },
> > > +	{ .format =3D DRM_FORMAT_XBGR8888, .depth =3D 24, .num_planes =3D 2=
,
> > > +	  .char_per_block =3D { 4, 0 }, .block_w =3D { 1, 2 }, .block_h =3D=
 { 1, 1 },
> > > +	  .hsub =3D 1, .vsub =3D 1, },
> > > +	{ .format =3D DRM_FORMAT_ARGB8888, .depth =3D 32, .num_planes =3D 2=
,
> > > +	  .char_per_block =3D { 4, 0 }, .block_w =3D { 1, 2 }, .block_h =3D=
 { 1, 1 },
> > > +	  .hsub =3D 1, .vsub =3D 1, .has_alpha =3D true },
> > > +	{ .format =3D DRM_FORMAT_ABGR8888, .depth =3D 32, .num_planes =3D 2=
,
> > > +	  .char_per_block =3D { 4, 0 }, .block_w =3D { 1, 2 }, .block_h =3D=
 { 1, 1 },
> > > +	  .hsub =3D 1, .vsub =3D 1, .has_alpha =3D true }, };
> > > +
> > >  struct intel_modifier_desc {
> > >  	u64 modifier;
> > >  	struct {
> > > @@ -144,6 +159,14 @@ static const struct intel_modifier_desc
> > > intel_modifiers[] =3D {
> > >  		.modifier =3D I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
> > >  		.display_ver =3D { 13, 13 },
> > >  		.plane_caps =3D INTEL_PLANE_CAP_TILING_4 |
> INTEL_PLANE_CAP_CCS_MC,
> > > +	}, {
> > > +		.modifier =3D I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
> > > +		.display_ver =3D { 13, 13 },
> > > +		.plane_caps =3D INTEL_PLANE_CAP_TILING_4 |
> > > INTEL_PLANE_CAP_CCS_RC_CC,
> > > +
> > > +		.ccs.cc_planes =3D BIT(1),
> > > +
> > > +		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
> > >  	}, {
> > >  		.modifier =3D I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
> > >  		.display_ver =3D { 13, 13 },
> > > @@ -393,17 +416,13 @@ bool intel_fb_plane_supports_modifier(struct
> > > intel_plane *plane, u64 modifier)  static bool
> > > format_is_yuv_semiplanar(const struct intel_modifier_desc *md,
> > >  				     const struct drm_format_info *info)  {
> > > -	int yuv_planes;
> > > -
> > >  	if (!info->is_yuv)
> > >  		return false;
> > >
> > > -	if (plane_caps_contain_any(md->plane_caps,
> > > INTEL_PLANE_CAP_CCS_MASK))
> > > -		yuv_planes =3D 4;
> > > +	if (hweight8(md->ccs.planar_aux_planes) =3D=3D 2)
> > > +		return info->num_planes =3D=3D 4;
> > >  	else
> > > -		yuv_planes =3D 2;
> > > -
> > > -	return info->num_planes =3D=3D yuv_planes;
> > > +		return info->num_planes =3D=3D 2;
> > >  }
> > >
> > >  /**
> > > @@ -528,12 +547,13 @@ static unsigned int
> > > gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_p
> > >
> > >  int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int
> > > main_plane)  {
> > > +	const struct intel_modifier_desc *md =3D
> > > +lookup_modifier(fb->modifier);
> > >  	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> > >
> > > -	if (intel_fb_is_ccs_modifier(fb->modifier))
> > > +	if (md->ccs.packed_aux_planes | md->ccs.planar_aux_planes)
> > >  		return main_to_ccs_plane(fb, main_plane);
> > >  	else if (DISPLAY_VER(i915) < 11 &&
> > > -		 intel_format_info_is_yuv_semiplanar(fb->format, fb-
> > > >modifier))
> > > +		 format_is_yuv_semiplanar(md, fb->format))
> > >  		return 1;
> > >  	else
> > >  		return 0;
> > > @@ -559,6 +579,7 @@ intel_tile_width_bytes(const struct
> > > drm_framebuffer *fb, int color_plane)
> > >  		else
> > >  			return 512;
> > >  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> > >  	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> > >  	case I915_FORMAT_MOD_4_TILED:
> > >  		/*
> > > @@ -763,6 +784,7 @@ unsigned int intel_surf_alignment(const struct
> > > drm_framebuffer *fb,
> > >  	case I915_FORMAT_MOD_Yf_TILED:
> > >  		return 1 * 1024 * 1024;
> > >  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> > >  	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> > >  		return 16 * 1024;
> > >  	default:
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index b939c503bc6ff..caa03324a733a 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -781,6 +781,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> > >  		return PLANE_CTL_TILED_4 |
> > >  			PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE |
> > >  			PLANE_CTL_CLEAR_COLOR_DISABLE;
> > > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> > > +		return PLANE_CTL_TILED_4 |
> > > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> > >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> > >  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > >  		return PLANE_CTL_TILED_Y |
> > > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> > > @@ -1228,8 +1230,10 @@ icl_plane_update_noarm(struct intel_plane
> *plane,
> > >  				  upper_32_bits(plane_state->ccval));
> > >  	}
> > >
> > > -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> > > -			  skl_plane_aux_dist(plane_state, color_plane));
> > > +	/* FLAT CCS doesn't need to program AUX_DIST */
> > > +	if (!HAS_FLAT_CCS(dev_priv))
> > > +		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> > > +				  skl_plane_aux_dist(plane_state, color_plane));
> > >
> > >  	if (icl_is_hdr_plane(dev_priv, plane_id))
> > >  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
> @@
> > > -1629,9 +1633,10 @@ static int skl_check_main_surface(struct
> > > intel_plane_state *plane_state)
> > >
> > >  	/*
> > >  	 * CCS AUX surface doesn't have its own x/y offsets, we must make s=
ure
> > > -	 * they match with the main surface x/y offsets.
> > > +	 * they match with the main surface x/y offsets. On DG2
> > > +	 * there's no aux plane on fb so skip this checking.
> > >  	 */
> > > -	if (intel_fb_is_ccs_modifier(fb->modifier)) {
> > > +	if (intel_fb_is_ccs_modifier(fb->modifier) && aux_plane) {
> > >  		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> > >  						       offset, aux_plane)) {
> > >  			if (offset =3D=3D 0)
> > > @@ -1675,6 +1680,8 @@ static int skl_check_nv12_aux_surface(struct
> > > intel_plane_state *plane_state)
> > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > >  	unsigned int rotation =3D plane_state->hw.rotation;
> > >  	int uv_plane =3D 1;
> > > +	int ccs_plane =3D intel_fb_is_ccs_modifier(fb->modifier) ?
> > > +			skl_main_to_aux_plane(fb, uv_plane) : 0;
> > >  	int max_width =3D intel_plane_max_width(plane, fb, uv_plane, rotati=
on);
> > >  	int max_height =3D intel_plane_max_height(plane, fb, uv_plane, rota=
tion);
> > >  	int x =3D plane_state->uapi.src.x1 >> 17; @@ -1695,8 +1702,7 @@
> > > static int skl_check_nv12_aux_surface(struct intel_plane_state *plane=
_state)
> > >  	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> > >  						    plane_state, uv_plane);
> > >
> > > -	if (intel_fb_is_ccs_modifier(fb->modifier)) {
> > > -		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> > > +	if (ccs_plane) {
> > >  		u32 aux_offset =3D plane_state-
> > > >view.color_plane[ccs_plane].offset;
> > >  		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
> > >
> > > @@ -2438,10 +2444,15 @@ skl_get_initial_plane_config(struct intel_crt=
c
> *crtc,
> > >  		break;
> > >  	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> > >  		if (HAS_4TILE(dev_priv)) {
> > > -			if (val &
> > > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > > +			u32 rc_mask =3D
> > > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> > > +				      PLANE_CTL_CLEAR_COLOR_DISABLE;
> > > +
> > > +			if ((val & rc_mask) =3D=3D rc_mask)
> > >  				fb->modifier =3D
> > > I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
> > >  			else if (val &
> > > PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> > >  				fb->modifier =3D
> > > I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
> > > +			else if (val &
> > > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > > +				fb->modifier =3D
> > > I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> > >  			else
> > >  				fb->modifier =3D I915_FORMAT_MOD_4_TILED;
> > >  		} else {
> > > --
> > > 2.30.2
> >
