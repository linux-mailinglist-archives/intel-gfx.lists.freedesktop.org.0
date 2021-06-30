Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED723B816D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 13:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7944A6E99C;
	Wed, 30 Jun 2021 11:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5806E9A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 11:44:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="208372739"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="208372739"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 04:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="558271353"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 30 Jun 2021 04:44:27 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 04:44:26 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 17:14:24 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Wed, 30 Jun 2021 17:14:24 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [RFC v3 1/2] drm/i915/dg1: Adjust the AUDIO power domain
Thread-Index: AQHXVs9slRS/634PrUiErCiVmQGR+aspgAwAgAMcjMA=
Date: Wed, 30 Jun 2021 11:44:24 +0000
Message-ID: <18bcc7849b1e43b5b811b6c483a906dd@intel.com>
References: <20210601100228.6064-1-anshuman.gupta@intel.com>
 <20210601100228.6064-2-anshuman.gupta@intel.com>
 <20210628174216.GD2494908@ideak-desk.fi.intel.com>
In-Reply-To: <20210628174216.GD2494908@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v3 1/2] drm/i915/dg1: Adjust the AUDIO power
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
> Sent: Monday, June 28, 2021 11:12 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4 <ville.syrjala@lin=
ux.intel.com>;
> Kai Vehmanen <kai.vehmanen@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [RFC v3 1/2] drm/i915/dg1: Adjust the AUDIO power domain
> =

> On Tue, Jun 01, 2021 at 03:32:27PM +0530, Anshuman Gupta wrote:
> > DG1 and XE_PLD platforms has Audio MMIO/VERBS lies in PG0 power well.
> > Adjusting the power domain accordingly to POWER_DOMAIN_AUDIO_VERBS
> for
> > audio detection and POWER_DOMAIN_AUDIO for audio playback.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 382 +++++++++++++++++-
> >  .../drm/i915/display/intel_display_power.h    |   1 +
> >  2 files changed, 382 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 2f7d1664c473..da5894138e8b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -106,6 +106,8 @@ intel_display_power_domain_str(enum
> intel_display_power_domain domain)
> >  		return "PORT_OTHER";
> >  	case POWER_DOMAIN_VGA:
> >  		return "VGA";
> > +	case POWER_DOMAIN_AUDIO_VERBS:
> > +		return "AUDIO_VERBS";
> =

> Maybe better named AUDIO_MMIO, as VERBS are a subset of that imo.
> =

> >  	case POWER_DOMAIN_AUDIO:
> >  		return "AUDIO";
> =

> Let's also rename this to AUDIO_PLAYBACK for clarity.
> =

> >  	case POWER_DOMAIN_AUX_A:
> > @@ -2499,6 +2501,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > @@ -2549,6 +2552,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> >  	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |		\
> > @@ -2582,6 +2586,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > @@ -2598,6 +2603,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_PORT_CRT) | /* DDI E */	\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > @@ -2616,6 +2622,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> > @@ -2651,6 +2658,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> > @@ -2684,6 +2692,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |                       \
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> > @@ -2739,6 +2748,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |				\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> > @@ -2821,6 +2831,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  	/*
> > @@ -2913,6 +2924,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > @@ -2983,6 +2995,7 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	RKL_PW_4_POWER_DOMAINS |			\
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO_VERBS) |		\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> >  	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > @@ -3020,6 +3033,42 @@ intel_display_power_put_mask_in_set(struct
> drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >
> > +/*
> > + * DG1 Audio MMIO/VERBS lies in PG0 power well.
> > + */
> > +
> > +#define DG1_PW_2_POWER_DOMAINS (			\
> > +	DG1_PW_3_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
> > +	BIT_ULL(POWER_DOMAIN_INIT))
> =

> Let's keep the order for other platforms and move DG1_PW_2 after the
> DG1_PW_3 definition.
> =

> > +
> > +#define DG1_PW_3_POWER_DOMAINS (			\
> > +	TGL_PW_4_POWER_DOMAINS |			\
> > +	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> > +	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > +	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
> =

> DG1 has only TC1/2 DDIs.
> =

> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
> =

> Only AUX_USBC1/2.
> =

> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
> =

> No TBT on DG1.
> =

> > +	BIT_ULL(POWER_DOMAIN_VGA) |			\
> > +	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> > +	BIT_ULL(POWER_DOMAIN_INIT))
> > +
> =

> =

> What about DC3co? I read about this change on HSD 1407435623:
> "DC3 clock off mode is not possible with this mode since cdclk cannot be =
turned
> off."
> =

> Will DMC take care of this?
> =

> Could you please open a ticket to clarify the "Audio codec idle and disab=
led."
> DC3co requirement text wrt. this change on the BSpec/49196 page?
Thanks Imre for Review, have raised a ticket for above issue =

https://gfxspecs.intel.com/Predator/Issue/27828
I will fix all  the review comments in next revision.
Br,
Anshuman Gupta.
> =

> >  /*
> >   * XE_LPD Power Domains
> >   *
> =

> What about the D13 platform? Looks like it has the same split between the
> MMIO and playback audio functionality.
> =

> =

> > @@ -4497,6 +4546,335 @@ static const struct i915_power_well_desc
> tgl_power_wells[] =3D {
> >  	},
> >  };
> >
> > +static const struct i915_power_well_desc dg1_power_wells[] =3D {
> =

> Let's follow the order of platform definitions and move this after the rk=
l power
> well list.
> =

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
> > +		.domains =3D TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
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
> > +		.name =3D "DDI C IO",
> > +		.domains =3D ICL_DDI_IO_C_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_C,
> > +		}
> > +	},
> =

> No DDI C on DG1.
> =

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
> > +		.name =3D "DDI IO TC3",
> > +		.domains =3D TGL_DDI_IO_TC3_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC3,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DDI IO TC4",
> > +		.domains =3D TGL_DDI_IO_TC4_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC4,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DDI IO TC5",
> > +		.domains =3D TGL_DDI_IO_TC5_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC5,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "DDI IO TC6",
> > +		.domains =3D TGL_DDI_IO_TC6_POWER_DOMAINS,
> > +		.ops =3D &hsw_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_ddi_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC6,
> > +		},
> > +	},
> =

> Only DDI TC1/2 on DG1.
> =

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
> > +		.name =3D "AUX C",
> > +		.domains =3D TGL_AUX_C_IO_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_C,
> > +		},
> > +	},
> =

> No AUX C on DG1.
> =

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
> > +		.name =3D "AUX USBC3",
> > +		.domains =3D TGL_AUX_IO_USBC3_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX USBC4",
> > +		.domains =3D TGL_AUX_IO_USBC4_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX USBC5",
> > +		.domains =3D TGL_AUX_IO_USBC5_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC5,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX USBC6",
> > +		.domains =3D TGL_AUX_IO_USBC6_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC6,
> > +			.hsw.is_tc_tbt =3D false,
> > +		},
> > +	},
> =

> Only AUX USBC1/2 on DG1.
> =

> > +	{
> > +		.name =3D "AUX TBT1",
> > +		.domains =3D TGL_AUX_IO_TBT1_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX TBT2",
> > +		.domains =3D TGL_AUX_IO_TBT2_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT2,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX TBT3",
> > +		.domains =3D TGL_AUX_IO_TBT3_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT3,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX TBT4",
> > +		.domains =3D TGL_AUX_IO_TBT4_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT4,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX TBT5",
> > +		.domains =3D TGL_AUX_IO_TBT5_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT5,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> > +	{
> > +		.name =3D "AUX TBT6",
> > +		.domains =3D TGL_AUX_IO_TBT6_POWER_DOMAINS,
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.id =3D DISP_PW_ID_NONE,
> > +		{
> > +			.hsw.regs =3D &icl_aux_power_well_regs,
> > +			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT6,
> > +			.hsw.is_tc_tbt =3D true,
> > +		},
> > +	},
> =

> No TBT on DG1.
> =

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
> >  static const struct i915_power_well_desc rkl_power_wells[] =3D {
> >  	{
> >  		.name =3D "always-on",
> > @@ -5110,9 +5488,11 @@ int intel_power_domains_init(struct
> drm_i915_private *dev_priv)
> >  		err =3D 0;
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 13) {
> >  		err =3D set_power_wells(power_domains, xelpd_power_wells);
> > -	} else if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
> > +	} else if (IS_ALDERLAKE_S(dev_priv)) {
> >  		err =3D set_power_wells_mask(power_domains, tgl_power_wells,
> >
> BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
> > +	} else if (IS_DG1(dev_priv)) {
> > +		err =3D set_power_wells(power_domains, dg1_power_wells);
> =

> Let's move this after the D13 case.
> =

> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> >  		err =3D set_power_wells(power_domains, rkl_power_wells);
> >  	} else if (DISPLAY_VER(dev_priv) =3D=3D 12) { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 4f0917df4375..d9c824264ac9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -76,6 +76,7 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_PORT_CRT,
> >  	POWER_DOMAIN_PORT_OTHER,
> >  	POWER_DOMAIN_VGA,
> > +	POWER_DOMAIN_AUDIO_VERBS,
> >  	POWER_DOMAIN_AUDIO,
> >  	POWER_DOMAIN_AUX_A,
> >  	POWER_DOMAIN_AUX_B,
> > --
> > 2.26.2
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
