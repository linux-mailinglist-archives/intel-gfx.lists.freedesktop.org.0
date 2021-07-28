Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71033D8FF2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 15:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAE76EAC6;
	Wed, 28 Jul 2021 13:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA496EAC6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 13:59:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="298249818"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="298249818"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 06:59:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="634760658"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2021 06:59:29 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 28 Jul 2021 06:59:28 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 28 Jul 2021 19:29:26 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Wed, 28 Jul 2021 19:29:26 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 1/3] drm/i915/dg1: Adjust the AUDIO power domain
Thread-Index: AQHXbnouPgrKoDWGEE6sntRrxPVQjKtYFN0AgAAbvoCAAGMDsA==
Date: Wed, 28 Jul 2021 13:59:26 +0000
Message-ID: <78695ed4285241dbbe6238f230038e18@intel.com>
References: <20210701125346.10005-2-anshuman.gupta@intel.com>
 <20210728115216.1797-1-anshuman.gupta@intel.com>
 <20210728133133.GA129487@ideak-desk.fi.intel.com>
In-Reply-To: <20210728133133.GA129487@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dg1: Adjust the AUDIO power
 domain
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, July 28, 2021 7:02 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4 <ville.syrjala@lin=
ux.intel.com>;
> Kai Vehmanen <kai.vehmanen@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/3] drm/i915/dg1: Adjust the AUDIO power domain
> =

> On Wed, Jul 28, 2021 at 05:22:16PM +0530, Anshuman Gupta wrote:
> > DG1 and XE_PLD platforms has Audio MMIO/VERBS lies in PG0 power well.
> > Adjusting the power domain accordingly to POWER_DOMAIN_AUDIO_VERBS
> for
> > audio detection and POWER_DOMAIN_AUDIO for audio playback.
> >
> > v1: Changes since RFC
> > - changed power domain names. [Imre]
> > - Removed TC{3,6}, AUX_USBC{3,6} and TBT from DG1
> >   power well and PW_3 power domains. [Imre]
> > - Fixed the order of powe wells , power domains and its
> >   registration. [Imre]
> >
> > v2:
> > - Not allowe DC states when AUDIO_MMIO domain enabled. [Imre]
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> =

> On the patchset:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
Thanks Imre for providing RB. =

Does RB on patchset means RB for all three patches in the series?
Br,
Anshuman Gupta.
 =

> =

> > ---
> >  .../drm/i915/display/intel_display_power.c    | 234 ++++++++++++++++--
> >  .../drm/i915/display/intel_display_power.h    |   3 +-
> >  2 files changed, 221 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 81efc77bada0..2675b48d707e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -106,8 +106,10 @@ intel_display_power_domain_str(enum
> intel_display_power_domain domain)
> >  		return "PORT_OTHER";
> >  	case POWER_DOMAIN_VGA:
> >  		return "VGA";
> > -	case POWER_DOMAIN_AUDIO:
> > -		return "AUDIO";
> > +	case POWER_DOMAIN_AUDIO_MMIO:
> > +		return "AUDIO_MMIO";
> > +	case POWER_DOMAIN_AUDIO_PLAYBACK:
> > +		return "AUDIO_PLAYBAK";
> >  	case POWER_DOMAIN_AUX_A:
> >  		return "AUX_A";
> >  	case POWER_DOMAIN_AUX_B:
> > @@ -2519,7 +2521,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> >  	BIT_ULL(POWER_DOMAIN_GMBUS) |		\
> > @@ -2569,7 +2572,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
> > @@ -2602,7 +2606,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> >  #define BDW_DISPLAY_POWER_DOMAINS (			\
> > @@ -2618,7 +2623,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> >  #define SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS (		\
> > @@ -2636,7 +2642,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS (		\
> > @@ -2671,7 +2678,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define BXT_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > @@ -2704,7 +2712,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS (		\
> > @@ -2759,7 +2768,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  #define CNL_DISPLAY_DDI_A_IO_POWER_DOMAINS (		\
> > @@ -2841,7 +2851,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  	/*
> >  	 * - transcoder WD
> > @@ -2933,7 +2944,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> >  #define TGL_PW_2_POWER_DOMAINS (			\
> > @@ -3003,7 +3015,8 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	RKL_PW_4_POWER_DOMAINS |			\
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> >  	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > @@ -3040,6 +3053,35 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > +/*
> > + * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
> > + */
> > +#define DG1_PW_3_POWER_DOMAINS (			\
> > +	TGL_PW_4_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > +	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > +	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> > +	BIT_ULL(POWER_DOMAIN_INIT))
> > +
> > +#define DG1_PW_2_POWER_DOMAINS (			\
> > +	DG1_PW_3_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
> > +	BIT_ULL(POWER_DOMAIN_INIT))
> > +
> > +#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > +	DG1_PW_3_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> > +	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > +	BIT_ULL(POWER_DOMAIN_INIT))
> > +
> >  /*
> >   * XE_LPD Power Domains
> >   *
> > @@ -3085,7 +3127,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	XELPD_PW_B_POWER_DOMAINS |			\
> >  	XELPD_PW_C_POWER_DOMAINS |			\
> >  	XELPD_PW_D_POWER_DOMAINS |			\
> > -	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_PLAYBACK) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_D_XELPD) |	\
> > @@ -3126,6 +3168,7 @@ intel_display_power_put_mask_in_set(struct
> > drm_i915_private *i915,
> >
> >  #define XELPD_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> >  	XELPD_PW_2_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_MMIO) |		\
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > @@ -4654,6 +4697,165 @@ static const struct i915_power_well_desc
> rkl_power_wells[] =3D {
> >  	},
> >  };
> >
> > +static const struct i915_power_well_desc dg1_power_wells[] =3D {
> > +	{
> > +		.name =3D "always-on",
> > +		.always_on =3D true,
> > +		.domains =3D POWER_DOMAIN_MASK,
> > +		.ops =3D &i9xx_always_on_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +	},
> > +	{
> > +		.name =3D "power well 1",
> > +		/* Handled by the DMC firmware */
> > +		.always_on =3D true,
> > +		.domains =3D 0,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D SKL_DISP_PW_1,
> > +		{
> > +			.hsw.regs =3D &hsw_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_PW_1,
> > +			.hsw.has_fuses =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DC off",
> > +		.domains =3D DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
> > +		.ops =3D &gen9_dc_off_power_well_ops,
> > +		.id =3D SKL_DISP_DC_OFF,
> > +	},
> > +	{
> > +		.name =3D "power well 2",
> > +		.domains =3D DG1_PW_2_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D SKL_DISP_PW_2,
> > +		{
> > +			.hsw.regs =3D &hsw_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
> > +			.hsw.has_fuses =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "power well 3",
> > +		.domains =3D DG1_PW_3_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D ICL_DISP_PW_3,
> > +		{
> > +			.hsw.regs =3D &hsw_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_PW_3,
> > +			.hsw.irq_pipe_mask =3D BIT(PIPE_B),
> > +			.hsw.has_vga =3D true,
> > +			.hsw.has_fuses =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DDI A IO",
> > +		.domains =3D ICL_DDI_IO_A_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_A,
> > +		}
> > +	},
> > +	{
> > +		.name =3D "DDI B IO",
> > +		.domains =3D ICL_DDI_IO_B_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_B,
> > +		}
> > +	},
> > +	{
> > +		.name =3D "DDI IO TC1",
> > +		.domains =3D TGL_DDI_IO_TC1_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC1,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DDI IO TC2",
> > +		.domains =3D TGL_DDI_IO_TC2_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC2,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX A",
> > +		.domains =3D TGL_AUX_A_IO_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_A,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX B",
> > +		.domains =3D TGL_AUX_B_IO_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_B,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX USBC1",
> > +		.domains =3D TGL_AUX_IO_USBC1_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX USBC2",
> > +		.domains =3D TGL_AUX_IO_USBC2_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "power well 4",
> > +		.domains =3D TGL_PW_4_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &hsw_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_PW_4,
> > +			.hsw.has_fuses =3D true,
> > +			.hsw.irq_pipe_mask =3D BIT(PIPE_C),
> > +		}
> > +	},
> > +	{
> > +		.name =3D "power well 5",
> > +		.domains =3D TGL_PW_5_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &hsw_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_PW_5,
> > +			.hsw.has_fuses =3D true,
> > +			.hsw.irq_pipe_mask =3D BIT(PIPE_D),
> > +		},
> > +	},
> > +};
> > +
> >  static const struct i915_power_well_desc xelpd_power_wells[] =3D {
> >  	{
> >  		.name =3D "always-on",
> > @@ -5138,7 +5340,9 @@ int intel_power_domains_init(struct
> drm_i915_private *dev_priv)
> >  		err =3D 0;
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 13) {
> >  		err =3D set_power_wells(power_domains, xelpd_power_wells);
> > -	} else if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
> > +	} else if (IS_DG1(dev_priv)) {
> > +		err =3D set_power_wells(power_domains, dg1_power_wells);
> > +	} else if (IS_ALDERLAKE_S(dev_priv)) {
> >  		err =3D set_power_wells_mask(power_domains, tgl_power_wells,
> >
> BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
> >  	} else if (IS_ROCKETLAKE(dev_priv)) { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index ad788bbd727d..521072be412c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -76,7 +76,8 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_PORT_CRT,
> >  	POWER_DOMAIN_PORT_OTHER,
> >  	POWER_DOMAIN_VGA,
> > -	POWER_DOMAIN_AUDIO,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_AUDIO_PLAYBACK,
> >  	POWER_DOMAIN_AUX_A,
> >  	POWER_DOMAIN_AUX_B,
> >  	POWER_DOMAIN_AUX_C,
> > --
> > 2.26.2
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
