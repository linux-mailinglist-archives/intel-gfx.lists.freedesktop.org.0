Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC61281EE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 19:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EABE6EC86;
	Fri, 20 Dec 2019 18:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 191BE6EC86
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 18:08:54 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 10:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="206610838"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Dec 2019 10:08:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 20:08:50 +0200
Date: Fri, 20 Dec 2019 20:08:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191220180850.GX1208@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
 <20191220172754.3773-2-lucas.demarchi@intel.com>
 <20191220174538.GW1208@intel.com>
 <20191220180119.gm7ixioure475rhe@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220180119.gm7ixioure475rhe@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: simplify prefixes on
 device_info
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 10:01:19AM -0800, Lucas De Marchi wrote:
> On Fri, Dec 20, 2019 at 07:45:38PM +0200, Ville Syrj=E4l=E4 wrote:
> >On Fri, Dec 20, 2019 at 09:27:45AM -0800, Lucas De Marchi wrote:
> >> Drop the intel prefix since all these structs are static and prefer
> >> using the 3-letter prefix for each platform.
> >>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_pci.c | 230 ++++++++++++++++----------------
> >>  1 file changed, 115 insertions(+), 115 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i9=
15_pci.c
> >> index 9571611b4b16..4cd25a83e6f1 100644
> >> --- a/drivers/gpu/drm/i915/i915_pci.c
> >> +++ b/drivers/gpu/drm/i915/i915_pci.c
> >> @@ -193,23 +193,23 @@
> >>  	GEN_DEFAULT_PAGE_SIZES, \
> >>  	GEN_DEFAULT_REGIONS
> >>
> >> -static const struct intel_device_info intel_i830_info =3D {
> >> +static const struct intel_device_info i830_info =3D {
> >>  	I830_FEATURES,
> >>  	PLATFORM(INTEL_I830),
> >>  };
> >>
> >> -static const struct intel_device_info intel_i845g_info =3D {
> >> +static const struct intel_device_info i845g_info =3D {
> >>  	I845_FEATURES,
> >>  	PLATFORM(INTEL_I845G),
> >>  };
> >>
> >> -static const struct intel_device_info intel_i85x_info =3D {
> >> +static const struct intel_device_info i85x_info =3D {
> >>  	I830_FEATURES,
> >>  	PLATFORM(INTEL_I85X),
> >>  	.display.has_fbc =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_i865g_info =3D {
> >> +static const struct intel_device_info i865g_info =3D {
> >>  	I845_FEATURES,
> >>  	PLATFORM(INTEL_I865G),
> >>  };
> >> @@ -228,7 +228,7 @@ static const struct intel_device_info intel_i865g_=
info =3D {
> >>  	GEN_DEFAULT_PAGE_SIZES, \
> >>  	GEN_DEFAULT_REGIONS
> >>
> >> -static const struct intel_device_info intel_i915g_info =3D {
> >> +static const struct intel_device_info i915g_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_I915G),
> >>  	.has_coherent_ggtt =3D false,
> >> @@ -239,7 +239,7 @@ static const struct intel_device_info intel_i915g_=
info =3D {
> >>  	.unfenced_needs_alignment =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_i915gm_info =3D {
> >> +static const struct intel_device_info i915gm_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_I915GM),
> >>  	.is_mobile =3D 1,
> >> @@ -252,7 +252,7 @@ static const struct intel_device_info intel_i915gm=
_info =3D {
> >>  	.unfenced_needs_alignment =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_i945g_info =3D {
> >> +static const struct intel_device_info i945g_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_I945G),
> >>  	.display.has_hotplug =3D 1,
> >> @@ -263,7 +263,7 @@ static const struct intel_device_info intel_i945g_=
info =3D {
> >>  	.unfenced_needs_alignment =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_i945gm_info =3D {
> >> +static const struct intel_device_info i945gm_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_I945GM),
> >>  	.is_mobile =3D 1,
> >> @@ -277,21 +277,21 @@ static const struct intel_device_info intel_i945=
gm_info =3D {
> >>  	.unfenced_needs_alignment =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_g33_info =3D {
> >> +static const struct intel_device_info g33_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_G33),
> >>  	.display.has_hotplug =3D 1,
> >>  	.display.has_overlay =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_pineview_g_info =3D {
> >> +static const struct intel_device_info pnv_g_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_PINEVIEW),
> >>  	.display.has_hotplug =3D 1,
> >>  	.display.has_overlay =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_pineview_m_info =3D {
> >> +static const struct intel_device_info pnv_m_info =3D {
> >>  	GEN3_FEATURES,
> >>  	PLATFORM(INTEL_PINEVIEW),
> >>  	.is_mobile =3D 1,
> >> @@ -314,7 +314,7 @@ static const struct intel_device_info intel_pinevi=
ew_m_info =3D {
> >>  	GEN_DEFAULT_PAGE_SIZES, \
> >>  	GEN_DEFAULT_REGIONS
> >>
> >> -static const struct intel_device_info intel_i965g_info =3D {
> >> +static const struct intel_device_info i965g_info =3D {
> >>  	GEN4_FEATURES,
> >>  	PLATFORM(INTEL_I965G),
> >>  	.display.has_overlay =3D 1,
> >> @@ -322,7 +322,7 @@ static const struct intel_device_info intel_i965g_=
info =3D {
> >>  	.has_snoop =3D false,
> >>  };
> >>
> >> -static const struct intel_device_info intel_i965gm_info =3D {
> >> +static const struct intel_device_info i965gm_info =3D {
> >>  	GEN4_FEATURES,
> >>  	PLATFORM(INTEL_I965GM),
> >>  	.is_mobile =3D 1,
> >> @@ -333,14 +333,14 @@ static const struct intel_device_info intel_i965=
gm_info =3D {
> >>  	.has_snoop =3D false,
> >>  };
> >>
> >> -static const struct intel_device_info intel_g45_info =3D {
> >> +static const struct intel_device_info g45_info =3D {
> >>  	GEN4_FEATURES,
> >>  	PLATFORM(INTEL_G45),
> >>  	.engine_mask =3D BIT(RCS0) | BIT(VCS0),
> >>  	.gpu_reset_clobbers_display =3D false,
> >>  };
> >>
> >> -static const struct intel_device_info intel_gm45_info =3D {
> >> +static const struct intel_device_info gm45_info =3D {
> >>  	GEN4_FEATURES,
> >>  	PLATFORM(INTEL_GM45),
> >>  	.is_mobile =3D 1,
> >> @@ -365,12 +365,12 @@ static const struct intel_device_info intel_gm45=
_info =3D {
> >>  	GEN_DEFAULT_PAGE_SIZES, \
> >>  	GEN_DEFAULT_REGIONS
> >>
> >> -static const struct intel_device_info intel_ironlake_d_info =3D {
> >> +static const struct intel_device_info ilk_d_info =3D {
> >>  	GEN5_FEATURES,
> >>  	PLATFORM(INTEL_IRONLAKE),
> >>  };
> >>
> >> -static const struct intel_device_info intel_ironlake_m_info =3D {
> >> +static const struct intel_device_info ilk_m_info =3D {
> >>  	GEN5_FEATURES,
> >>  	PLATFORM(INTEL_IRONLAKE),
> >>  	.is_mobile =3D 1,
> >> @@ -400,12 +400,12 @@ static const struct intel_device_info intel_iron=
lake_m_info =3D {
> >>  	GEN6_FEATURES, \
> >>  	PLATFORM(INTEL_SANDYBRIDGE)
> >>
> >> -static const struct intel_device_info intel_sandybridge_d_gt1_info =
=3D {
> >> +static const struct intel_device_info snb_d_gt1_info =3D {
> >>  	SNB_D_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_sandybridge_d_gt2_info =
=3D {
> >> +static const struct intel_device_info snb_d_gt2_info =3D {
> >>  	SNB_D_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >> @@ -416,12 +416,12 @@ static const struct intel_device_info intel_sand=
ybridge_d_gt2_info =3D {
> >>  	.is_mobile =3D 1
> >>
> >>
> >> -static const struct intel_device_info intel_sandybridge_m_gt1_info =
=3D {
> >> +static const struct intel_device_info snb_m_gt1_info =3D {
> >>  	SNB_M_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_sandybridge_m_gt2_info =
=3D {
> >> +static const struct intel_device_info snb_m_gt2_info =3D {
> >>  	SNB_M_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >> @@ -450,12 +450,12 @@ static const struct intel_device_info intel_sand=
ybridge_m_gt2_info =3D {
> >>  	PLATFORM(INTEL_IVYBRIDGE), \
> >>  	.has_l3_dpf =3D 1
> >>
> >> -static const struct intel_device_info intel_ivybridge_d_gt1_info =3D {
> >> +static const struct intel_device_info ivb_d_gt1_info =3D {
> >>  	IVB_D_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_ivybridge_d_gt2_info =3D {
> >> +static const struct intel_device_info ivb_d_gt2_info =3D {
> >>  	IVB_D_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >> @@ -466,17 +466,17 @@ static const struct intel_device_info intel_ivyb=
ridge_d_gt2_info =3D {
> >>  	.is_mobile =3D 1, \
> >>  	.has_l3_dpf =3D 1
> >>
> >> -static const struct intel_device_info intel_ivybridge_m_gt1_info =3D {
> >> +static const struct intel_device_info ivb_m_gt1_info =3D {
> >>  	IVB_M_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_ivybridge_m_gt2_info =3D {
> >> +static const struct intel_device_info ivb_m_gt2_info =3D {
> >>  	IVB_M_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >>
> >> -static const struct intel_device_info intel_ivybridge_q_info =3D {
> >> +static const struct intel_device_info ivb_q_info =3D {
> >>  	GEN7_FEATURES,
> >>  	PLATFORM(INTEL_IVYBRIDGE),
> >>  	.gt =3D 2,
> >> @@ -484,7 +484,7 @@ static const struct intel_device_info intel_ivybri=
dge_q_info =3D {
> >>  	.has_l3_dpf =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_valleyview_info =3D {
> >> +static const struct intel_device_info vlv_info =3D {
> >>  	PLATFORM(INTEL_VALLEYVIEW),
> >>  	GEN(7),
> >>  	.is_lp =3D 1,
> >> @@ -523,17 +523,17 @@ static const struct intel_device_info intel_vall=
eyview_info =3D {
> >>  	PLATFORM(INTEL_HASWELL), \
> >>  	.has_l3_dpf =3D 1
> >>
> >> -static const struct intel_device_info intel_haswell_gt1_info =3D {
> >> +static const struct intel_device_info hsw_gt1_info =3D {
> >>  	HSW_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_haswell_gt2_info =3D {
> >> +static const struct intel_device_info hsw_gt2_info =3D {
> >>  	HSW_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >>
> >> -static const struct intel_device_info intel_haswell_gt3_info =3D {
> >> +static const struct intel_device_info hsw_gt3_info =3D {
> >>  	HSW_PLATFORM,
> >>  	.gt =3D 3,
> >>  };
> >> @@ -551,17 +551,17 @@ static const struct intel_device_info intel_hasw=
ell_gt3_info =3D {
> >>  	GEN8_FEATURES, \
> >>  	PLATFORM(INTEL_BROADWELL)
> >>
> >> -static const struct intel_device_info intel_broadwell_gt1_info =3D {
> >> +static const struct intel_device_info bdw_gt1_info =3D {
> >>  	BDW_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_broadwell_gt2_info =3D {
> >> +static const struct intel_device_info bdw_gt2_info =3D {
> >>  	BDW_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >>
> >> -static const struct intel_device_info intel_broadwell_rsvd_info =3D {
> >> +static const struct intel_device_info bdw_rsvd_info =3D {
> >>  	BDW_PLATFORM,
> >>  	.gt =3D 3,
> >>  	/* According to the device ID those devices are GT3, they were
> >> @@ -569,14 +569,14 @@ static const struct intel_device_info intel_broa=
dwell_rsvd_info =3D {
> >>  	 */
> >>  };
> >>
> >> -static const struct intel_device_info intel_broadwell_gt3_info =3D {
> >> +static const struct intel_device_info bdw_gt3_info =3D {
> >>  	BDW_PLATFORM,
> >>  	.gt =3D 3,
> >>  	.engine_mask =3D
> >>  		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
> >>  };
> >>
> >> -static const struct intel_device_info intel_cherryview_info =3D {
> >> +static const struct intel_device_info chv_info =3D {
> >>  	PLATFORM(INTEL_CHERRYVIEW),
> >>  	GEN(8),
> >>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> >> @@ -621,12 +621,12 @@ static const struct intel_device_info intel_cher=
ryview_info =3D {
> >>  	GEN9_FEATURES, \
> >>  	PLATFORM(INTEL_SKYLAKE)
> >>
> >> -static const struct intel_device_info intel_skylake_gt1_info =3D {
> >> +static const struct intel_device_info skl_gt1_info =3D {
> >>  	SKL_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_skylake_gt2_info =3D {
> >> +static const struct intel_device_info skl_gt2_info =3D {
> >>  	SKL_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >> @@ -637,12 +637,12 @@ static const struct intel_device_info intel_skyl=
ake_gt2_info =3D {
> >>  		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
> >>
> >>
> >> -static const struct intel_device_info intel_skylake_gt3_info =3D {
> >> +static const struct intel_device_info skl_gt3_info =3D {
> >>  	SKL_GT3_PLUS_PLATFORM,
> >>  	.gt =3D 3,
> >>  };
> >>
> >> -static const struct intel_device_info intel_skylake_gt4_info =3D {
> >> +static const struct intel_device_info skl_gt4_info =3D {
> >>  	SKL_GT3_PLUS_PLATFORM,
> >>  	.gt =3D 4,
> >>  };
> >> @@ -679,13 +679,13 @@ static const struct intel_device_info intel_skyl=
ake_gt4_info =3D {
> >>  	GEN9_DEFAULT_PAGE_SIZES, \
> >>  	GEN_DEFAULT_REGIONS
> >>
> >> -static const struct intel_device_info intel_broxton_info =3D {
> >> +static const struct intel_device_info bxt_info =3D {
> >>  	GEN9_LP_FEATURES,
> >>  	PLATFORM(INTEL_BROXTON),
> >>  	.ddb_size =3D 512,
> >>  };
> >>
> >> -static const struct intel_device_info intel_geminilake_info =3D {
> >> +static const struct intel_device_info glk_info =3D {
> >>  	GEN9_LP_FEATURES,
> >>  	PLATFORM(INTEL_GEMINILAKE),
> >>  	.ddb_size =3D 1024,
> >> @@ -696,17 +696,17 @@ static const struct intel_device_info intel_gemi=
nilake_info =3D {
> >>  	GEN9_FEATURES, \
> >>  	PLATFORM(INTEL_KABYLAKE)
> >>
> >> -static const struct intel_device_info intel_kabylake_gt1_info =3D {
> >> +static const struct intel_device_info kbl_gt1_info =3D {
> >>  	KBL_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_kabylake_gt2_info =3D {
> >> +static const struct intel_device_info kbl_gt2_info =3D {
> >>  	KBL_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >>
> >> -static const struct intel_device_info intel_kabylake_gt3_info =3D {
> >> +static const struct intel_device_info kbl_gt3_info =3D {
> >>  	KBL_PLATFORM,
> >>  	.gt =3D 3,
> >>  	.engine_mask =3D
> >> @@ -717,17 +717,17 @@ static const struct intel_device_info intel_kaby=
lake_gt3_info =3D {
> >>  	GEN9_FEATURES, \
> >>  	PLATFORM(INTEL_COFFEELAKE)
> >>
> >> -static const struct intel_device_info intel_coffeelake_gt1_info =3D {
> >> +static const struct intel_device_info cfl_gt1_info =3D {
> >>  	CFL_PLATFORM,
> >>  	.gt =3D 1,
> >>  };
> >>
> >> -static const struct intel_device_info intel_coffeelake_gt2_info =3D {
> >> +static const struct intel_device_info cfl_gt2_info =3D {
> >>  	CFL_PLATFORM,
> >>  	.gt =3D 2,
> >>  };
> >>
> >> -static const struct intel_device_info intel_coffeelake_gt3_info =3D {
> >> +static const struct intel_device_info cfl_gt3_info =3D {
> >>  	CFL_PLATFORM,
> >>  	.gt =3D 3,
> >>  	.engine_mask =3D
> >> @@ -742,7 +742,7 @@ static const struct intel_device_info intel_coffee=
lake_gt3_info =3D {
> >>  	.has_coherent_ggtt =3D false, \
> >>  	GLK_COLORS
> >>
> >> -static const struct intel_device_info intel_cannonlake_info =3D {
> >> +static const struct intel_device_info cnl_info =3D {
> >>  	GEN10_FEATURES,
> >>  	PLATFORM(INTEL_CANNONLAKE),
> >>  	.gt =3D 2,
> >> @@ -777,14 +777,14 @@ static const struct intel_device_info intel_cann=
onlake_info =3D {
> >>  	.has_logical_ring_elsq =3D 1, \
> >>  	.color =3D { .degamma_lut_size =3D 33, .gamma_lut_size =3D 262145 }
> >>
> >> -static const struct intel_device_info intel_icelake_11_info =3D {
> >> +static const struct intel_device_info icl_11_info =3D {
> >
> >Why isn't that just icl_info ?
> =

> it should be, yes... I had a separate commit to remove the gen from the
> device_info, I guess I dropped it instead of squashing.

You also seem to have dropped Jani's acks.

Anyways, cursory scan seemed good so ack for the seris from me as well.
Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
