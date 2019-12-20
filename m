Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58341281C7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 19:01:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795846EC85;
	Fri, 20 Dec 2019 18:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01ED16EC85
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 18:01:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 10:01:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="222534569"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 10:01:28 -0800
Date: Fri, 20 Dec 2019 10:01:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191220180119.gm7ixioure475rhe@ldmartin-desk1>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
 <20191220172754.3773-2-lucas.demarchi@intel.com>
 <20191220174538.GW1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220174538.GW1208@intel.com>
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 07:45:38PM +0200, Ville Syrj=E4l=E4 wrote:
>On Fri, Dec 20, 2019 at 09:27:45AM -0800, Lucas De Marchi wrote:
>> Drop the intel prefix since all these structs are static and prefer
>> using the 3-letter prefix for each platform.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pci.c | 230 ++++++++++++++++----------------
>>  1 file changed, 115 insertions(+), 115 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index 9571611b4b16..4cd25a83e6f1 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -193,23 +193,23 @@
>>  	GEN_DEFAULT_PAGE_SIZES, \
>>  	GEN_DEFAULT_REGIONS
>>
>> -static const struct intel_device_info intel_i830_info =3D {
>> +static const struct intel_device_info i830_info =3D {
>>  	I830_FEATURES,
>>  	PLATFORM(INTEL_I830),
>>  };
>>
>> -static const struct intel_device_info intel_i845g_info =3D {
>> +static const struct intel_device_info i845g_info =3D {
>>  	I845_FEATURES,
>>  	PLATFORM(INTEL_I845G),
>>  };
>>
>> -static const struct intel_device_info intel_i85x_info =3D {
>> +static const struct intel_device_info i85x_info =3D {
>>  	I830_FEATURES,
>>  	PLATFORM(INTEL_I85X),
>>  	.display.has_fbc =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_i865g_info =3D {
>> +static const struct intel_device_info i865g_info =3D {
>>  	I845_FEATURES,
>>  	PLATFORM(INTEL_I865G),
>>  };
>> @@ -228,7 +228,7 @@ static const struct intel_device_info intel_i865g_in=
fo =3D {
>>  	GEN_DEFAULT_PAGE_SIZES, \
>>  	GEN_DEFAULT_REGIONS
>>
>> -static const struct intel_device_info intel_i915g_info =3D {
>> +static const struct intel_device_info i915g_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_I915G),
>>  	.has_coherent_ggtt =3D false,
>> @@ -239,7 +239,7 @@ static const struct intel_device_info intel_i915g_in=
fo =3D {
>>  	.unfenced_needs_alignment =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_i915gm_info =3D {
>> +static const struct intel_device_info i915gm_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_I915GM),
>>  	.is_mobile =3D 1,
>> @@ -252,7 +252,7 @@ static const struct intel_device_info intel_i915gm_i=
nfo =3D {
>>  	.unfenced_needs_alignment =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_i945g_info =3D {
>> +static const struct intel_device_info i945g_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_I945G),
>>  	.display.has_hotplug =3D 1,
>> @@ -263,7 +263,7 @@ static const struct intel_device_info intel_i945g_in=
fo =3D {
>>  	.unfenced_needs_alignment =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_i945gm_info =3D {
>> +static const struct intel_device_info i945gm_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_I945GM),
>>  	.is_mobile =3D 1,
>> @@ -277,21 +277,21 @@ static const struct intel_device_info intel_i945gm=
_info =3D {
>>  	.unfenced_needs_alignment =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_g33_info =3D {
>> +static const struct intel_device_info g33_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_G33),
>>  	.display.has_hotplug =3D 1,
>>  	.display.has_overlay =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_pineview_g_info =3D {
>> +static const struct intel_device_info pnv_g_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_PINEVIEW),
>>  	.display.has_hotplug =3D 1,
>>  	.display.has_overlay =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_pineview_m_info =3D {
>> +static const struct intel_device_info pnv_m_info =3D {
>>  	GEN3_FEATURES,
>>  	PLATFORM(INTEL_PINEVIEW),
>>  	.is_mobile =3D 1,
>> @@ -314,7 +314,7 @@ static const struct intel_device_info intel_pineview=
_m_info =3D {
>>  	GEN_DEFAULT_PAGE_SIZES, \
>>  	GEN_DEFAULT_REGIONS
>>
>> -static const struct intel_device_info intel_i965g_info =3D {
>> +static const struct intel_device_info i965g_info =3D {
>>  	GEN4_FEATURES,
>>  	PLATFORM(INTEL_I965G),
>>  	.display.has_overlay =3D 1,
>> @@ -322,7 +322,7 @@ static const struct intel_device_info intel_i965g_in=
fo =3D {
>>  	.has_snoop =3D false,
>>  };
>>
>> -static const struct intel_device_info intel_i965gm_info =3D {
>> +static const struct intel_device_info i965gm_info =3D {
>>  	GEN4_FEATURES,
>>  	PLATFORM(INTEL_I965GM),
>>  	.is_mobile =3D 1,
>> @@ -333,14 +333,14 @@ static const struct intel_device_info intel_i965gm=
_info =3D {
>>  	.has_snoop =3D false,
>>  };
>>
>> -static const struct intel_device_info intel_g45_info =3D {
>> +static const struct intel_device_info g45_info =3D {
>>  	GEN4_FEATURES,
>>  	PLATFORM(INTEL_G45),
>>  	.engine_mask =3D BIT(RCS0) | BIT(VCS0),
>>  	.gpu_reset_clobbers_display =3D false,
>>  };
>>
>> -static const struct intel_device_info intel_gm45_info =3D {
>> +static const struct intel_device_info gm45_info =3D {
>>  	GEN4_FEATURES,
>>  	PLATFORM(INTEL_GM45),
>>  	.is_mobile =3D 1,
>> @@ -365,12 +365,12 @@ static const struct intel_device_info intel_gm45_i=
nfo =3D {
>>  	GEN_DEFAULT_PAGE_SIZES, \
>>  	GEN_DEFAULT_REGIONS
>>
>> -static const struct intel_device_info intel_ironlake_d_info =3D {
>> +static const struct intel_device_info ilk_d_info =3D {
>>  	GEN5_FEATURES,
>>  	PLATFORM(INTEL_IRONLAKE),
>>  };
>>
>> -static const struct intel_device_info intel_ironlake_m_info =3D {
>> +static const struct intel_device_info ilk_m_info =3D {
>>  	GEN5_FEATURES,
>>  	PLATFORM(INTEL_IRONLAKE),
>>  	.is_mobile =3D 1,
>> @@ -400,12 +400,12 @@ static const struct intel_device_info intel_ironla=
ke_m_info =3D {
>>  	GEN6_FEATURES, \
>>  	PLATFORM(INTEL_SANDYBRIDGE)
>>
>> -static const struct intel_device_info intel_sandybridge_d_gt1_info =3D {
>> +static const struct intel_device_info snb_d_gt1_info =3D {
>>  	SNB_D_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_sandybridge_d_gt2_info =3D {
>> +static const struct intel_device_info snb_d_gt2_info =3D {
>>  	SNB_D_PLATFORM,
>>  	.gt =3D 2,
>>  };
>> @@ -416,12 +416,12 @@ static const struct intel_device_info intel_sandyb=
ridge_d_gt2_info =3D {
>>  	.is_mobile =3D 1
>>
>>
>> -static const struct intel_device_info intel_sandybridge_m_gt1_info =3D {
>> +static const struct intel_device_info snb_m_gt1_info =3D {
>>  	SNB_M_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_sandybridge_m_gt2_info =3D {
>> +static const struct intel_device_info snb_m_gt2_info =3D {
>>  	SNB_M_PLATFORM,
>>  	.gt =3D 2,
>>  };
>> @@ -450,12 +450,12 @@ static const struct intel_device_info intel_sandyb=
ridge_m_gt2_info =3D {
>>  	PLATFORM(INTEL_IVYBRIDGE), \
>>  	.has_l3_dpf =3D 1
>>
>> -static const struct intel_device_info intel_ivybridge_d_gt1_info =3D {
>> +static const struct intel_device_info ivb_d_gt1_info =3D {
>>  	IVB_D_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_ivybridge_d_gt2_info =3D {
>> +static const struct intel_device_info ivb_d_gt2_info =3D {
>>  	IVB_D_PLATFORM,
>>  	.gt =3D 2,
>>  };
>> @@ -466,17 +466,17 @@ static const struct intel_device_info intel_ivybri=
dge_d_gt2_info =3D {
>>  	.is_mobile =3D 1, \
>>  	.has_l3_dpf =3D 1
>>
>> -static const struct intel_device_info intel_ivybridge_m_gt1_info =3D {
>> +static const struct intel_device_info ivb_m_gt1_info =3D {
>>  	IVB_M_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_ivybridge_m_gt2_info =3D {
>> +static const struct intel_device_info ivb_m_gt2_info =3D {
>>  	IVB_M_PLATFORM,
>>  	.gt =3D 2,
>>  };
>>
>> -static const struct intel_device_info intel_ivybridge_q_info =3D {
>> +static const struct intel_device_info ivb_q_info =3D {
>>  	GEN7_FEATURES,
>>  	PLATFORM(INTEL_IVYBRIDGE),
>>  	.gt =3D 2,
>> @@ -484,7 +484,7 @@ static const struct intel_device_info intel_ivybridg=
e_q_info =3D {
>>  	.has_l3_dpf =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_valleyview_info =3D {
>> +static const struct intel_device_info vlv_info =3D {
>>  	PLATFORM(INTEL_VALLEYVIEW),
>>  	GEN(7),
>>  	.is_lp =3D 1,
>> @@ -523,17 +523,17 @@ static const struct intel_device_info intel_valley=
view_info =3D {
>>  	PLATFORM(INTEL_HASWELL), \
>>  	.has_l3_dpf =3D 1
>>
>> -static const struct intel_device_info intel_haswell_gt1_info =3D {
>> +static const struct intel_device_info hsw_gt1_info =3D {
>>  	HSW_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_haswell_gt2_info =3D {
>> +static const struct intel_device_info hsw_gt2_info =3D {
>>  	HSW_PLATFORM,
>>  	.gt =3D 2,
>>  };
>>
>> -static const struct intel_device_info intel_haswell_gt3_info =3D {
>> +static const struct intel_device_info hsw_gt3_info =3D {
>>  	HSW_PLATFORM,
>>  	.gt =3D 3,
>>  };
>> @@ -551,17 +551,17 @@ static const struct intel_device_info intel_haswel=
l_gt3_info =3D {
>>  	GEN8_FEATURES, \
>>  	PLATFORM(INTEL_BROADWELL)
>>
>> -static const struct intel_device_info intel_broadwell_gt1_info =3D {
>> +static const struct intel_device_info bdw_gt1_info =3D {
>>  	BDW_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_broadwell_gt2_info =3D {
>> +static const struct intel_device_info bdw_gt2_info =3D {
>>  	BDW_PLATFORM,
>>  	.gt =3D 2,
>>  };
>>
>> -static const struct intel_device_info intel_broadwell_rsvd_info =3D {
>> +static const struct intel_device_info bdw_rsvd_info =3D {
>>  	BDW_PLATFORM,
>>  	.gt =3D 3,
>>  	/* According to the device ID those devices are GT3, they were
>> @@ -569,14 +569,14 @@ static const struct intel_device_info intel_broadw=
ell_rsvd_info =3D {
>>  	 */
>>  };
>>
>> -static const struct intel_device_info intel_broadwell_gt3_info =3D {
>> +static const struct intel_device_info bdw_gt3_info =3D {
>>  	BDW_PLATFORM,
>>  	.gt =3D 3,
>>  	.engine_mask =3D
>>  		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
>>  };
>>
>> -static const struct intel_device_info intel_cherryview_info =3D {
>> +static const struct intel_device_info chv_info =3D {
>>  	PLATFORM(INTEL_CHERRYVIEW),
>>  	GEN(8),
>>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>> @@ -621,12 +621,12 @@ static const struct intel_device_info intel_cherry=
view_info =3D {
>>  	GEN9_FEATURES, \
>>  	PLATFORM(INTEL_SKYLAKE)
>>
>> -static const struct intel_device_info intel_skylake_gt1_info =3D {
>> +static const struct intel_device_info skl_gt1_info =3D {
>>  	SKL_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_skylake_gt2_info =3D {
>> +static const struct intel_device_info skl_gt2_info =3D {
>>  	SKL_PLATFORM,
>>  	.gt =3D 2,
>>  };
>> @@ -637,12 +637,12 @@ static const struct intel_device_info intel_skylak=
e_gt2_info =3D {
>>  		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
>>
>>
>> -static const struct intel_device_info intel_skylake_gt3_info =3D {
>> +static const struct intel_device_info skl_gt3_info =3D {
>>  	SKL_GT3_PLUS_PLATFORM,
>>  	.gt =3D 3,
>>  };
>>
>> -static const struct intel_device_info intel_skylake_gt4_info =3D {
>> +static const struct intel_device_info skl_gt4_info =3D {
>>  	SKL_GT3_PLUS_PLATFORM,
>>  	.gt =3D 4,
>>  };
>> @@ -679,13 +679,13 @@ static const struct intel_device_info intel_skylak=
e_gt4_info =3D {
>>  	GEN9_DEFAULT_PAGE_SIZES, \
>>  	GEN_DEFAULT_REGIONS
>>
>> -static const struct intel_device_info intel_broxton_info =3D {
>> +static const struct intel_device_info bxt_info =3D {
>>  	GEN9_LP_FEATURES,
>>  	PLATFORM(INTEL_BROXTON),
>>  	.ddb_size =3D 512,
>>  };
>>
>> -static const struct intel_device_info intel_geminilake_info =3D {
>> +static const struct intel_device_info glk_info =3D {
>>  	GEN9_LP_FEATURES,
>>  	PLATFORM(INTEL_GEMINILAKE),
>>  	.ddb_size =3D 1024,
>> @@ -696,17 +696,17 @@ static const struct intel_device_info intel_gemini=
lake_info =3D {
>>  	GEN9_FEATURES, \
>>  	PLATFORM(INTEL_KABYLAKE)
>>
>> -static const struct intel_device_info intel_kabylake_gt1_info =3D {
>> +static const struct intel_device_info kbl_gt1_info =3D {
>>  	KBL_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_kabylake_gt2_info =3D {
>> +static const struct intel_device_info kbl_gt2_info =3D {
>>  	KBL_PLATFORM,
>>  	.gt =3D 2,
>>  };
>>
>> -static const struct intel_device_info intel_kabylake_gt3_info =3D {
>> +static const struct intel_device_info kbl_gt3_info =3D {
>>  	KBL_PLATFORM,
>>  	.gt =3D 3,
>>  	.engine_mask =3D
>> @@ -717,17 +717,17 @@ static const struct intel_device_info intel_kabyla=
ke_gt3_info =3D {
>>  	GEN9_FEATURES, \
>>  	PLATFORM(INTEL_COFFEELAKE)
>>
>> -static const struct intel_device_info intel_coffeelake_gt1_info =3D {
>> +static const struct intel_device_info cfl_gt1_info =3D {
>>  	CFL_PLATFORM,
>>  	.gt =3D 1,
>>  };
>>
>> -static const struct intel_device_info intel_coffeelake_gt2_info =3D {
>> +static const struct intel_device_info cfl_gt2_info =3D {
>>  	CFL_PLATFORM,
>>  	.gt =3D 2,
>>  };
>>
>> -static const struct intel_device_info intel_coffeelake_gt3_info =3D {
>> +static const struct intel_device_info cfl_gt3_info =3D {
>>  	CFL_PLATFORM,
>>  	.gt =3D 3,
>>  	.engine_mask =3D
>> @@ -742,7 +742,7 @@ static const struct intel_device_info intel_coffeela=
ke_gt3_info =3D {
>>  	.has_coherent_ggtt =3D false, \
>>  	GLK_COLORS
>>
>> -static const struct intel_device_info intel_cannonlake_info =3D {
>> +static const struct intel_device_info cnl_info =3D {
>>  	GEN10_FEATURES,
>>  	PLATFORM(INTEL_CANNONLAKE),
>>  	.gt =3D 2,
>> @@ -777,14 +777,14 @@ static const struct intel_device_info intel_cannon=
lake_info =3D {
>>  	.has_logical_ring_elsq =3D 1, \
>>  	.color =3D { .degamma_lut_size =3D 33, .gamma_lut_size =3D 262145 }
>>
>> -static const struct intel_device_info intel_icelake_11_info =3D {
>> +static const struct intel_device_info icl_11_info =3D {
>
>Why isn't that just icl_info ?

it should be, yes... I had a separate commit to remove the gen from the
device_info, I guess I dropped it instead of squashing.

Lucas De Marchi

>
>>  	GEN11_FEATURES,
>>  	PLATFORM(INTEL_ICELAKE),
>>  	.engine_mask =3D
>>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
>>  };
>>
>> -static const struct intel_device_info intel_elkhartlake_info =3D {
>> +static const struct intel_device_info ehl_info =3D {
>>  	GEN11_FEATURES,
>>  	PLATFORM(INTEL_ELKHARTLAKE),
>>  	.require_force_probe =3D 1,
>> @@ -815,7 +815,7 @@ static const struct intel_device_info intel_elkhartl=
ake_info =3D {
>>  	.has_global_mocs =3D 1, \
>>  	.display.has_dsb =3D 1
>>
>> -static const struct intel_device_info intel_tigerlake_12_info =3D {
>> +static const struct intel_device_info tgl_12_info =3D {
>>  	GEN12_FEATURES,
>>  	PLATFORM(INTEL_TIGERLAKE),
>>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>> @@ -840,70 +840,70 @@ static const struct intel_device_info intel_tigerl=
ake_12_info =3D {
>>   * PCI ID matches, otherwise we'll use the wrong info struct above.
>>   */
>>  static const struct pci_device_id pciidlist[] =3D {
>> -	INTEL_I830_IDS(&intel_i830_info),
>> -	INTEL_I845G_IDS(&intel_i845g_info),
>> -	INTEL_I85X_IDS(&intel_i85x_info),
>> -	INTEL_I865G_IDS(&intel_i865g_info),
>> -	INTEL_I915G_IDS(&intel_i915g_info),
>> -	INTEL_I915GM_IDS(&intel_i915gm_info),
>> -	INTEL_I945G_IDS(&intel_i945g_info),
>> -	INTEL_I945GM_IDS(&intel_i945gm_info),
>> -	INTEL_I965G_IDS(&intel_i965g_info),
>> -	INTEL_G33_IDS(&intel_g33_info),
>> -	INTEL_I965GM_IDS(&intel_i965gm_info),
>> -	INTEL_GM45_IDS(&intel_gm45_info),
>> -	INTEL_G45_IDS(&intel_g45_info),
>> -	INTEL_PINEVIEW_G_IDS(&intel_pineview_g_info),
>> -	INTEL_PINEVIEW_M_IDS(&intel_pineview_m_info),
>> -	INTEL_IRONLAKE_D_IDS(&intel_ironlake_d_info),
>> -	INTEL_IRONLAKE_M_IDS(&intel_ironlake_m_info),
>> -	INTEL_SNB_D_GT1_IDS(&intel_sandybridge_d_gt1_info),
>> -	INTEL_SNB_D_GT2_IDS(&intel_sandybridge_d_gt2_info),
>> -	INTEL_SNB_M_GT1_IDS(&intel_sandybridge_m_gt1_info),
>> -	INTEL_SNB_M_GT2_IDS(&intel_sandybridge_m_gt2_info),
>> -	INTEL_IVB_Q_IDS(&intel_ivybridge_q_info), /* must be first IVB */
>> -	INTEL_IVB_M_GT1_IDS(&intel_ivybridge_m_gt1_info),
>> -	INTEL_IVB_M_GT2_IDS(&intel_ivybridge_m_gt2_info),
>> -	INTEL_IVB_D_GT1_IDS(&intel_ivybridge_d_gt1_info),
>> -	INTEL_IVB_D_GT2_IDS(&intel_ivybridge_d_gt2_info),
>> -	INTEL_HSW_GT1_IDS(&intel_haswell_gt1_info),
>> -	INTEL_HSW_GT2_IDS(&intel_haswell_gt2_info),
>> -	INTEL_HSW_GT3_IDS(&intel_haswell_gt3_info),
>> -	INTEL_VLV_IDS(&intel_valleyview_info),
>> -	INTEL_BDW_GT1_IDS(&intel_broadwell_gt1_info),
>> -	INTEL_BDW_GT2_IDS(&intel_broadwell_gt2_info),
>> -	INTEL_BDW_GT3_IDS(&intel_broadwell_gt3_info),
>> -	INTEL_BDW_RSVD_IDS(&intel_broadwell_rsvd_info),
>> -	INTEL_CHV_IDS(&intel_cherryview_info),
>> -	INTEL_SKL_GT1_IDS(&intel_skylake_gt1_info),
>> -	INTEL_SKL_GT2_IDS(&intel_skylake_gt2_info),
>> -	INTEL_SKL_GT3_IDS(&intel_skylake_gt3_info),
>> -	INTEL_SKL_GT4_IDS(&intel_skylake_gt4_info),
>> -	INTEL_BXT_IDS(&intel_broxton_info),
>> -	INTEL_GLK_IDS(&intel_geminilake_info),
>> -	INTEL_KBL_GT1_IDS(&intel_kabylake_gt1_info),
>> -	INTEL_KBL_GT2_IDS(&intel_kabylake_gt2_info),
>> -	INTEL_KBL_GT3_IDS(&intel_kabylake_gt3_info),
>> -	INTEL_KBL_GT4_IDS(&intel_kabylake_gt3_info),
>> -	INTEL_AML_KBL_GT2_IDS(&intel_kabylake_gt2_info),
>> -	INTEL_CFL_S_GT1_IDS(&intel_coffeelake_gt1_info),
>> -	INTEL_CFL_S_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_CFL_H_GT1_IDS(&intel_coffeelake_gt1_info),
>> -	INTEL_CFL_H_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_CFL_U_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_CFL_U_GT3_IDS(&intel_coffeelake_gt3_info),
>> -	INTEL_WHL_U_GT1_IDS(&intel_coffeelake_gt1_info),
>> -	INTEL_WHL_U_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_AML_CFL_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_WHL_U_GT3_IDS(&intel_coffeelake_gt3_info),
>> -	INTEL_CML_GT1_IDS(&intel_coffeelake_gt1_info),
>> -	INTEL_CML_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_CML_U_GT1_IDS(&intel_coffeelake_gt1_info),
>> -	INTEL_CML_U_GT2_IDS(&intel_coffeelake_gt2_info),
>> -	INTEL_CNL_IDS(&intel_cannonlake_info),
>> -	INTEL_ICL_11_IDS(&intel_icelake_11_info),
>> -	INTEL_EHL_IDS(&intel_elkhartlake_info),
>> -	INTEL_TGL_12_IDS(&intel_tigerlake_12_info),
>> +	INTEL_I830_IDS(&i830_info),
>> +	INTEL_I845G_IDS(&i845g_info),
>> +	INTEL_I85X_IDS(&i85x_info),
>> +	INTEL_I865G_IDS(&i865g_info),
>> +	INTEL_I915G_IDS(&i915g_info),
>> +	INTEL_I915GM_IDS(&i915gm_info),
>> +	INTEL_I945G_IDS(&i945g_info),
>> +	INTEL_I945GM_IDS(&i945gm_info),
>> +	INTEL_I965G_IDS(&i965g_info),
>> +	INTEL_G33_IDS(&g33_info),
>> +	INTEL_I965GM_IDS(&i965gm_info),
>> +	INTEL_GM45_IDS(&gm45_info),
>> +	INTEL_G45_IDS(&g45_info),
>> +	INTEL_PINEVIEW_G_IDS(&pnv_g_info),
>> +	INTEL_PINEVIEW_M_IDS(&pnv_m_info),
>> +	INTEL_IRONLAKE_D_IDS(&ilk_d_info),
>> +	INTEL_IRONLAKE_M_IDS(&ilk_m_info),
>> +	INTEL_SNB_D_GT1_IDS(&snb_d_gt1_info),
>> +	INTEL_SNB_D_GT2_IDS(&snb_d_gt2_info),
>> +	INTEL_SNB_M_GT1_IDS(&snb_m_gt1_info),
>> +	INTEL_SNB_M_GT2_IDS(&snb_m_gt2_info),
>> +	INTEL_IVB_Q_IDS(&ivb_q_info), /* must be first IVB */
>> +	INTEL_IVB_M_GT1_IDS(&ivb_m_gt1_info),
>> +	INTEL_IVB_M_GT2_IDS(&ivb_m_gt2_info),
>> +	INTEL_IVB_D_GT1_IDS(&ivb_d_gt1_info),
>> +	INTEL_IVB_D_GT2_IDS(&ivb_d_gt2_info),
>> +	INTEL_HSW_GT1_IDS(&hsw_gt1_info),
>> +	INTEL_HSW_GT2_IDS(&hsw_gt2_info),
>> +	INTEL_HSW_GT3_IDS(&hsw_gt3_info),
>> +	INTEL_VLV_IDS(&vlv_info),
>> +	INTEL_BDW_GT1_IDS(&bdw_gt1_info),
>> +	INTEL_BDW_GT2_IDS(&bdw_gt2_info),
>> +	INTEL_BDW_GT3_IDS(&bdw_gt3_info),
>> +	INTEL_BDW_RSVD_IDS(&bdw_rsvd_info),
>> +	INTEL_CHV_IDS(&chv_info),
>> +	INTEL_SKL_GT1_IDS(&skl_gt1_info),
>> +	INTEL_SKL_GT2_IDS(&skl_gt2_info),
>> +	INTEL_SKL_GT3_IDS(&skl_gt3_info),
>> +	INTEL_SKL_GT4_IDS(&skl_gt4_info),
>> +	INTEL_BXT_IDS(&bxt_info),
>> +	INTEL_GLK_IDS(&glk_info),
>> +	INTEL_KBL_GT1_IDS(&kbl_gt1_info),
>> +	INTEL_KBL_GT2_IDS(&kbl_gt2_info),
>> +	INTEL_KBL_GT3_IDS(&kbl_gt3_info),
>> +	INTEL_KBL_GT4_IDS(&kbl_gt3_info),
>> +	INTEL_AML_KBL_GT2_IDS(&kbl_gt2_info),
>> +	INTEL_CFL_S_GT1_IDS(&cfl_gt1_info),
>> +	INTEL_CFL_S_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_CFL_H_GT1_IDS(&cfl_gt1_info),
>> +	INTEL_CFL_H_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_CFL_U_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_CFL_U_GT3_IDS(&cfl_gt3_info),
>> +	INTEL_WHL_U_GT1_IDS(&cfl_gt1_info),
>> +	INTEL_WHL_U_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_AML_CFL_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_WHL_U_GT3_IDS(&cfl_gt3_info),
>> +	INTEL_CML_GT1_IDS(&cfl_gt1_info),
>> +	INTEL_CML_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_CML_U_GT1_IDS(&cfl_gt1_info),
>> +	INTEL_CML_U_GT2_IDS(&cfl_gt2_info),
>> +	INTEL_CNL_IDS(&cnl_info),
>> +	INTEL_ICL_11_IDS(&icl_11_info),
>> +	INTEL_EHL_IDS(&ehl_info),
>> +	INTEL_TGL_12_IDS(&tgl_12_info),
>>  	{0, 0, 0}
>>  };
>>  MODULE_DEVICE_TABLE(pci, pciidlist);
>> --
>> 2.24.0
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
