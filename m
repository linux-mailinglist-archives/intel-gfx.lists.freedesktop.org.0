Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71168AB525A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 12:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A16810E56E;
	Tue, 13 May 2025 10:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A4910E375;
 Tue, 13 May 2025 10:27:16 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uEmqv-00000007MXs-2YYM; Tue, 13 May 2025 13:27:14 +0300
Message-ID: <1f121d56b38fe1306a7f5dcf1a7495fc90123da9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 13 May 2025 13:27:12 +0300
In-Reply-To: <20250512103358.15724-4-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=no
 autolearn_force=no version=4.0.1-pre1
Subject: Re: [PATCH 3/7] drm/i915/dmc: Define all DMC event IDs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2025-05-12 at 13:33 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Define all the DMC event IDs to make life less misrable when
> having to deal with these.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  12 +-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 271 +++++++++++++++++-
>  2 files changed, 272 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index f9cadeaff893..49cbb83b2bbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -427,7 +427,7 @@ static void disable_event_handler(struct intel_displa=
y *display,
>  		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
>  				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
>  		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				      DMC_EVT_CTL_EVENT_ID_FALSE));
> +				      DMC_EVENT_FALSE));
>  	intel_de_write(display, htp_reg, 0);
>  }
> =20
> @@ -573,10 +573,10 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelaye=
d_vblank(struct intel_display
>  			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
>  				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
>  			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				       DMC_EVT_CTL_EVENT_ID_VBLANK_A);
> +				       PIPEDMC_EVENT_VBLANK);
>  	else
>  		val =3D REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				     DMC_EVT_CTL_EVENT_ID_FALSE) |
> +				     DMC_EVENT_FALSE) |
>  			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
>  				       DMC_EVT_CTL_TYPE_EDGE_0_1);
> =20
> @@ -617,12 +617,12 @@ static bool disable_dmc_evt(struct intel_display *d=
isplay,
> =20
>  	/* also disable the flip queue event on the main DMC on TGL */
>  	if (display->platform.tigerlake &&
> -	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D DMC_EVT_CTL_E=
VENT_ID_CLK_MSEC)
> +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D MAINDMC_EVENT=
_CLK_MSEC)
>  		return true;
> =20
>  	/* also disable the HRR event on the main DMC on TGL/ADLS */
>  	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
> -	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D DMC_EVT_CTL_E=
VENT_ID_VBLANK_A)
> +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D MAINDMC_EVENT=
_VBLANK_A)
>  		return true;
> =20
>  	return false;
> @@ -638,7 +638,7 @@ static u32 dmc_mmiodata(struct intel_display *display=
,
>  		return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
>  				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
>  			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				       DMC_EVT_CTL_EVENT_ID_FALSE);
> +				       DMC_EVENT_FALSE);
>  	else
>  		return dmc->dmc_info[dmc_id].mmiodata[i];
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/=
drm/i915/display/intel_dmc_regs.h
> index e8ac0e1be764..edd4e69319b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -8,6 +8,272 @@
> =20
>  #include "i915_reg_defs.h"
> =20
> +enum dmc_event_id {
> +	DMC_EVENT_TRUE =3D 0x0,
> +	DMC_EVENT_FALSE =3D 0x1,
> +};
> +
> +enum maindmc_event_id {
> +	MAINDMC_EVENT_CMP_ZERO =3D 0x8,
> +	MAINDMC_EVENT_CMP_ODD =3D 0x9,
> +	MAINDMC_EVENT_CMP_NEG =3D 0xa,
> +	MAINDMC_EVENT_CMP_CARRY =3D 0xb,
> +
> +	MAINDMC_EVENT_TMR0_DONE =3D 0x14,
> +	MAINDMC_EVENT_TMR1_DONE =3D 0x15,
> +	MAINDMC_EVENT_TMR2_DONE =3D 0x16,
> +	MAINDMC_EVENT_COUNT0_DONE =3D 0x17,
> +	MAINDMC_EVENT_COUNT1_DONE =3D 0x18,
> +	MAINDMC_EVENT_PERF_CNTR_DARBF =3D 0x19,
> +
> +	MAINDMC_EVENT_SCANLINE_INRANGE_FQ_A_TRIGGER =3D 0x22,
> +	MAINDMC_EVENT_SCANLINE_INRANGE_FQ_B_TRIGGER =3D 0x23,
> +	MAINDMC_EVENT_SCANLINE_INRANGE_FQ_C_TRIGGER =3D 0x24,
> +	MAINDMC_EVENT_SCANLINE_INRANGE_FQ_D_TRIGGER =3D 0x25,
> +	MAINDMC_EVENT_1KHZ_FQ_A_TRIGGER =3D 0x26,
> +	MAINDMC_EVENT_1KHZ_FQ_B_TRIGGER =3D 0x27,
> +	MAINDMC_EVENT_1KHZ_FQ_C_TRIGGER =3D 0x28,
> +	MAINDMC_EVENT_1KHZ_FQ_D_TRIGGER =3D 0x29,
> +	MAINDMC_EVENT_SCANLINE_COMP_A =3D 0x2a,
> +	MAINDMC_EVENT_SCANLINE_COMP_B =3D 0x2b,
> +	MAINDMC_EVENT_SCANLINE_COMP_C =3D 0x2c,
> +	MAINDMC_EVENT_SCANLINE_COMP_D =3D 0x2d,
> +	MAINDMC_EVENT_VBLANK_DELAYED_A =3D 0x2e,
> +	MAINDMC_EVENT_VBLANK_DELAYED_B =3D 0x2f,
> +	MAINDMC_EVENT_VBLANK_DELAYED_C =3D 0x30,
> +	MAINDMC_EVENT_VBLANK_DELAYED_D =3D 0x31,
> +	MAINDMC_EVENT_VBLANK_A =3D 0x32,
> +	MAINDMC_EVENT_VBLANK_B =3D 0x33,
> +	MAINDMC_EVENT_VBLANK_C =3D 0x34,
> +	MAINDMC_EVENT_VBLANK_D =3D 0x35,
> +	MAINDMC_EVENT_HBLANK_A =3D 0x36,
> +	MAINDMC_EVENT_HBLANK_B =3D 0x37,
> +	MAINDMC_EVENT_HBLANK_C =3D 0x38,
> +	MAINDMC_EVENT_HBLANK_D =3D 0x39,
> +	MAINDMC_EVENT_VSYNC_A =3D 0x3a,
> +	MAINDMC_EVENT_VSYNC_B =3D 0x3b,
> +	MAINDMC_EVENT_VSYNC_C =3D 0x3c,
> +	MAINDMC_EVENT_VSYNC_D =3D 0x3d,
> +	MAINDMC_EVENT_SCANLINE_A =3D 0x3e,
> +	MAINDMC_EVENT_SCANLINE_B =3D 0x3f,
> +	MAINDMC_EVENT_SCANLINE_C =3D 0x40,
> +	MAINDMC_EVENT_SCANLINE_D =3D 0x41,
> +
> +	MAINDMC_EVENT_PLANE1_FLIP_A =3D 0x42,
> +	MAINDMC_EVENT_PLANE2_FLIP_A =3D 0x43,
> +	MAINDMC_EVENT_PLANE3_FLIP_A =3D 0x44,
> +	MAINDMC_EVENT_PLANE4_FLIP_A =3D 0x45,
> +	MAINDMC_EVENT_PLANE5_FLIP_A =3D 0x46,
> +	MAINDMC_EVENT_PLANE6_FLIP_A =3D 0x47,
> +	MAINDMC_EVENT_PLANE7_FLIP_A =3D 0x48,
> +	MAINDMC_EVENT_PLANE1_FLIP_B =3D 0x49,
> +	MAINDMC_EVENT_PLANE2_FLIP_B =3D 0x4a,
> +	MAINDMC_EVENT_PLANE3_FLIP_B =3D 0x4b,
> +	MAINDMC_EVENT_PLANE4_FLIP_B =3D 0x4c,
> +	MAINDMC_EVENT_PLANE5_FLIP_B =3D 0x4d,
> +	MAINDMC_EVENT_PLANE6_FLIP_B =3D 0x4e,
> +	MAINDMC_EVENT_PLANE7_FLIP_B =3D 0x4f,
> +	MAINDMC_EVENT_PLANE1_FLIP_C =3D 0x50,
> +	MAINDMC_EVENT_PLANE2_FLIP_C =3D 0x51,
> +	MAINDMC_EVENT_PLANE3_FLIP_C =3D 0x52,
> +	MAINDMC_EVENT_PLANE4_FLIP_C =3D 0x53,
> +	MAINDMC_EVENT_PLANE5_FLIP_C =3D 0x54,
> +	MAINDMC_EVENT_PLANE6_FLIP_C =3D 0x55,
> +	MAINDMC_EVENT_PLANE7_FLIP_C =3D 0x56,
> +	MAINDMC_EVENT_PLANE1_FLIP_D =3D 0x57,
> +	MAINDMC_EVENT_PLANE2_FLIP_D =3D 0x58,
> +	MAINDMC_EVENT_PLANE3_FLIP_D =3D 0x59,
> +	MAINDMC_EVENT_PLANE4_FLIP_D =3D 0x5a,
> +	MAINDMC_EVENT_PLANE5_FLIP_D =3D 0x5b,
> +	MAINDMC_EVENT_PLANE6_FLIP_D =3D 0x5c,
> +	MAINDMC_EVENT_PLANE7_FLIP_D =3D 0x5d,
> +	MAINDMC_EVENT_PLANE1_FLIP_DONE_A =3D 0x5e,
> +	MAINDMC_EVENT_PLANE2_FLIP_DONE_A =3D 0x5f,
> +	MAINDMC_EVENT_PLANE3_FLIP_DONE_A =3D 0x60,
> +	MAINDMC_EVENT_PLANE4_FLIP_DONE_A =3D 0x61,
> +	MAINDMC_EVENT_PLANE5_FLIP_DONE_A =3D 0x62,
> +	MAINDMC_EVENT_PLANE6_FLIP_DONE_A =3D 0x63,
> +	MAINDMC_EVENT_PLANE7_FLIP_DONE_A =3D 0x64,
> +	MAINDMC_EVENT_PLANE1_FLIP_DONE_B =3D 0x65,
> +	MAINDMC_EVENT_PLANE2_FLIP_DONE_B =3D 0x66,
> +	MAINDMC_EVENT_PLANE3_FLIP_DONE_B =3D 0x67,
> +	MAINDMC_EVENT_PLANE4_FLIP_DONE_B =3D 0x68,
> +	MAINDMC_EVENT_PLANE5_FLIP_DONE_B =3D 0x69,
> +	MAINDMC_EVENT_PLANE6_FLIP_DONE_B =3D 0x6a,
> +	MAINDMC_EVENT_PLANE7_FLIP_DONE_B =3D 0x6b,
> +	MAINDMC_EVENT_PLANE1_FLIP_DONE_C =3D 0x6c,
> +	MAINDMC_EVENT_PLANE2_FLIP_DONE_C =3D 0x6d,
> +	MAINDMC_EVENT_PLANE3_FLIP_DONE_C =3D 0x6e,
> +	MAINDMC_EVENT_PLANE4_FLIP_DONE_C =3D 0x6f,
> +	MAINDMC_EVENT_PLANE5_FLIP_DONE_C =3D 0x70,
> +	MAINDMC_EVENT_PLANE6_FLIP_DONE_C =3D 0x71,
> +	MAINDMC_EVENT_PLANE7_FLIP_DONE_C =3D 0x72,
> +	MAINDMC_EVENT_PLANE1_FLIP_DONE_D =3D 0x73,
> +	MAINDMC_EVENT_PLANE2_FLIP_DONE_D =3D 0x74,
> +	MAINDMC_EVENT_PLANE3_FLIP_DONE_D =3D 0x75,
> +	MAINDMC_EVENT_PLANE4_FLIP_DONE_D =3D 0x76,
> +	MAINDMC_EVENT_PLANE5_FLIP_DONE_D =3D 0x77,
> +	MAINDMC_EVENT_PLANE6_FLIP_DONE_D =3D 0x78,
> +	MAINDMC_EVENT_PLANE7_FLIP_DONE_D =3D 0x79,
> +
> +	MAINDMC_EVENT_WIDI_GTT_FAULT_SL1 =3D 0x7d,
> +	MAINDMC_EVENT_WIDI_GTT_FAULT_SL2 =3D 0x7e,
> +	MAINDMC_EVENT_WIDI_CAP_ACTIVE_SL1 =3D 0x7f,
> +	MAINDMC_EVENT_WIDI_CAP_ACTIVE_SL2 =3D 0x80,
> +
> +	MAINDMC_EVENT_RENUKE_A =3D 0x85,
> +	MAINDMC_EVENT_RENUKE_B =3D 0x86,
> +	MAINDMC_EVENT_RENUKE_C =3D 0x87,
> +	MAINDMC_EVENT_RENUKE_D =3D 0x88,
> +	MAINDMC_EVENT_DPFC_FIFO_FULL_A =3D 0x89,
> +	MAINDMC_EVENT_DPFC_FIFO_FULL_B =3D 0x8a,
> +	MAINDMC_EVENT_DPFC_FIFO_FULL_C =3D 0x8b,
> +	MAINDMC_EVENT_DPFC_FIFO_FULL_D =3D 0x8c,
> +	MAINDMC_EVENT_DPFC_PIXEL_CNT_MISMATCH_A =3D 0x8d,
> +	MAINDMC_EVENT_DPFC_PIXEL_CNT_MISMATCH_B =3D 0x8e,
> +	MAINDMC_EVENT_DPFC_PIXEL_CNT_MISMATCH_C =3D 0x8f,
> +	MAINDMC_EVENT_DPFC_PIXEL_CNT_MISMATCH_D =3D 0x90,
> +	MAINDMC_EVENT_DPFC_COMPTAG_UNDERRUN_A =3D 0x91,
> +	MAINDMC_EVENT_DPFC_COMPTAG_UNDERRUN_B =3D 0x92,
> +	MAINDMC_EVENT_DPFC_COMPTAG_UNDERRUN_C =3D 0x93,
> +	MAINDMC_EVENT_DPFC_COMPTAG_UNDERRUN_D =3D 0x94,
> +	MAINDMC_EVENT_DPFC_FIFO_NOT_EMPTY_A =3D 0x95,
> +	MAINDMC_EVENT_DPFC_FIFO_NOT_EMPTY_B =3D 0x96,
> +	MAINDMC_EVENT_DPFC_FIFO_NOT_EMPTY_C =3D 0x97,
> +	MAINDMC_EVENT_DPFC_FIFO_NOT_EMPTY_D =3D 0x98,
> +	MAINDMC_EVENT_DPFC_COMPTAG_MISMATCH_A =3D 0x99,
> +	MAINDMC_EVENT_DPFC_COMPTAG_MISMATCH_B =3D 0x9a,
> +	MAINDMC_EVENT_DPFC_COMPTAG_MISMATCH_C =3D 0x9b,
> +	MAINDMC_EVENT_DPFC_COMPTAG_MISMATCH_D =3D 0x9c,
> +	MAINDMC_EVENT_DISP_PCH_INT =3D 0x9d,
> +	MAINDMC_EVENT_GTT_ERR =3D 0x9e,
> +	MAINDMC_EVENT_VTD_ERR =3D 0x9f,
> +	MAINDMC_EVENT_FULL_FQ_WAKE_TRIGGER_A =3D 0xa0,
> +	MAINDMC_EVENT_FULL_FQ_WAKE_TRIGGER_B =3D 0xa1,
> +	MAINDMC_EVENT_FULL_FQ_WAKE_TRIGGER_C =3D 0xa2,
> +	MAINDMC_EVENT_FULL_FQ_WAKE_TRIGGER_D =3D 0xa3,
> +	MAINDMC_EVENT_PIPEDMC_CHICKEN_FW_EVENT_A =3D 0xa4,
> +	MAINDMC_EVENT_PIPEDMC_CHICKEN_FW_EVENT_B =3D 0xa5,
> +	MAINDMC_EVENT_PIPEDMC_CHICKEN_FW_EVENT_C =3D 0xa6,
> +	MAINDMC_EVENT_PIPEDMC_CHICKEN_FW_EVENT_D =3D 0xa7,
> +
> +	MAINDMC_EVENT_DC_CLOCK_OFF_START_EDP =3D 0xb2,
> +	MAINDMC_EVENT_DC_CLOCK_OFF_START_DSI =3D 0xb3,
> +	MAINDMC_EVENT_DCPR_DMC_CSR_START =3D 0xb4,
> +	MAINDMC_EVENT_IN_PSR =3D 0xb5,
> +
> +	MAINDMC_EVENT_IN_MEMUP =3D 0xb7,
> +	MAINDMC_EVENT_IN_VGA =3D 0xb8,
> +
> +	MAINDMC_EVENT_IN_KVM_SESSION =3D 0xba,
> +	MAINDMC_EVENT_DEWAKE =3D 0xbb,
> +
> +	MAINDMC_EVENT_TRAP_HIT =3D 0xbd,
> +	MAINDMC_EVENT_CLK_USEC =3D 0xbe,
> +	MAINDMC_EVENT_CLK_MSEC =3D 0xbf,
> +
> +	MAINDMC_EVENT_CHICKEN1 =3D 0xc8,
> +	MAINDMC_EVENT_CHICKEN2 =3D 0xc9,
> +	MAINDMC_EVENT_CHICKEN3 =3D 0xca,
> +	MAINDMC_EVENT_DDT_UBP =3D 0xcb,
> +
> +	MAINDMC_EVENT_HP_LATENCY =3D 0xcd,
> +	MAINDMC_EVENT_LP_LATENCY =3D 0xce,
> +	MAINDMC_EVENT_WIDI_LP_REQ_SL1 =3D 0xcf,
> +	MAINDMC_EVENT_WIDI_LP_REQ_SL2 =3D 0xd0,
> +
> +	MAINDMC_EVENT_DG_DMC_EVT_0 =3D 0xd3,
> +	MAINDMC_EVENT_DG_DMC_EVT_1 =3D 0xd4,
> +	MAINDMC_EVENT_DG_DMC_EVT_2 =3D 0xd5,
> +	MAINDMC_EVENT_DG_DMC_EVT_3 =3D 0xd6,
> +	MAINDMC_EVENT_DG_DMC_EVT_4 =3D 0xd7,
> +	MAINDMC_EVENT_DACFE_CLK_STOP =3D 0xd8,
> +	MAINDMC_EVENT_DACFE_AZILIA_SDI_WAKE =3D 0xd9,
> +	MAINDMC_EVENT_AUDIO_DOUBLE_FUNC_GRP_RST =3D 0xda,
> +	MAINDMC_EVENT_AUDIO_CMD_VALID =3D 0xdb,
> +	MAINDMC_EVENT_AUDIO_FRM_SYNC_BCLK =3D 0xdc,
> +	MAINDMC_EVENT_AUDIO_FRM_SYNC_CDCLK =3D 0xdd,
> +	MAINDMC_EVENT_AUDIO_PRESENCE_DETECT_A =3D 0xde,
> +	MAINDMC_EVENT_AUDIO_PRESENCE_DETECT_B =3D 0xdf,
> +	MAINDMC_EVENT_AUDIO_PRESENCE_DETECT_C =3D 0xe0,
> +	MAINDMC_EVENT_AUDIO_PRESENCE_DETECT_E =3D 0xe1,
> +	MAINDMC_EVENT_CMTG_SCANLINE_IN_GB_DC6v =3D 0xe2,
> +	MAINDMC_EVENT_DCPR_CMTG_SCANLINE_OUTSIDE_GB =3D 0xe3,
> +	MAINDMC_EVENT_DC6v_BACKWARD_COMPAT =3D 0xe4,
> +	MAINDMC_EVENT_DPMA_PM_ABORT =3D 0xe5,
> +
> +	MAINDMC_EVENT_STACK_OVF =3D 0xfc,
> +	MAINDMC_EVENT_NO_CLAIM =3D 0xfd,
> +	MAINDMC_EVENT_UNK_CMD =3D 0xfe,
> +	MAINDMC_EVENT_HTP_MOD =3D 0xff,
> +};
> +
> +enum pipedmc_event_id {
> +	PIPEDMC_EVENT_TMR0_DONE =3D 0x14,
> +	PIPEDMC_EVENT_TMR1_DONE =3D 0x15,
> +	PIPEDMC_EVENT_TMR2_DONE =3D 0x16,
> +	PIPEDMC_EVENT_COUNT0_DONE =3D 0x17,
> +	PIPEDMC_EVENT_COUNT1_DONE =3D 0x18,
> +	PIPEDMC_EVENT_PGA_PGB_RESTORE_DONE =3D 0x19,
> +	PIPEDMC_EVENT_PG1_PG2_RESTORE_DONE =3D 0x1a,
> +	PIPEDMC_EVENT_PGA_PGB_SAVE_DONE =3D 0x1b,
> +	PIPEDMC_EVENT_PG1_PG2_SAVE_DONE =3D 0x1c,
> +
> +	PIPEDMC_EVENT_FULL_FQ_WAKE_TRIGGER =3D 0x2b,
> +	PIPEDMC_EVENT_1KHZ_FQ_TRIGGER =3D 0x2c,
> +	PIPEDMC_EVENT_SCANLINE_INRANGE_FQ_TRIGGER =3D 0x2d,
> +	PIPEDMC_EVENT_SCANLINE_INRANGE =3D 0x2e,
> +	PIPEDMC_EVENT_SCANLINE_OUTRANGE =3D 0x2f,
> +	PIPEDMC_EVENT_SCANLINE_EQUAL =3D 0x30,
> +	PIPEDMC_EVENT_DELAYED_VBLANK =3D 0x31,
> +	PIPEDMC_EVENT_VBLANK =3D 0x32,
> +	PIPEDMC_EVENT_HBLANK =3D 0x33,
> +	PIPEDMC_EVENT_VSYNC =3D 0x34,
> +	PIPEDMC_EVENT_SCANLINE_FROM_DMUX =3D 0x35,
> +	PIPEDMC_EVENT_PLANE1_FLIP =3D 0x36,
> +	PIPEDMC_EVENT_PLANE2_FLIP =3D 0x37,
> +	PIPEDMC_EVENT_PLANE3_FLIP =3D 0x38,
> +	PIPEDMC_EVENT_PLANE4_FLIP =3D 0x39,
> +	PIPEDMC_EVENT_PLANE5_FLIP =3D 0x3a,
> +	PIPEDMC_EVENT_PLANE6_FLIP =3D 0x3b,
> +	PIPEDMC_EVENT_PLANE7_FLIP =3D 0x3c,
> +	PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER =3D 0x3d,
> +
> +	PIPEDMC_EVENT_PLANE1_FLIP_DONE =3D 0x56,
> +	PIPEDMC_EVENT_PLANE2_FLIP_DONE =3D 0x57,
> +	PIPEDMC_EVENT_PLANE3_FLIP_DONE =3D 0x58,
> +	PIPEDMC_EVENT_PLANE4_FLIP_DONE =3D 0x59,
> +	PIPEDMC_EVENT_PLANE5_FLIP_DONE =3D 0x5a,
> +	PIPEDMC_EVENT_PLANE6_FLIP_DONE =3D 0x5b,
> +	PIPEDMC_EVENT_PLANE7_FLIP_DONE =3D 0x5c,
> +
> +	PIPEDMC_EVENT_GTT_ERR =3D 0x9b,
> +
> +	PIPEDMC_EVENT_IN_PSR =3D 0xb5,
> +	PIPEDMC_EVENT_DSI_DMC_IDLE =3D 0xb6,
> +	PIPEDMC_EVENT_PSR2_DMC_IDLE =3D 0xb7,
> +	PIPEDMC_EVENT_IN_VGA =3D 0xb8,
> +
> +	PIPEDMC_EVENT_TRAP_HIT =3D 0xbd,
> +	PIPEDMC_EVENT_CLK_USEC =3D 0xbe,
> +	PIPEDMC_EVENT_CLK_MSEC =3D 0xbf,
> +
> +	PIPEDMC_EVENT_CHICKEN1 =3D 0xc8,
> +	PIPEDMC_EVENT_CHICKEN2 =3D 0xc9,
> +	PIPEDMC_EVENT_CHICKEN3 =3D 0xca,
> +	PIPEDMC_EVENT_DDT_UBP =3D 0xcb,
> +
> +	PIPEDMC_EVENT_LP_LATENCY =3D 0xce,
> +
> +	PIPEDMC_EVENT_LACE_PART_A_HIST_TRIGGER =3D 0xdf,
> +	PIPEDMC_EVENT_LACE_PART_B_HIST_TRIGGER =3D 0xe0,
> +
> +	PIPEDMC_EVENT_STACK_OVF =3D 0xfc,
> +	PIPEDMC_EVENT_NO_CLAIM =3D 0xfd,
> +	PIPEDMC_EVENT_UNK_CMD =3D 0xfe,
> +	PIPEDMC_EVENT_HTP_MOD =3D 0xff,
> +};
> +
>  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
>  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> =20
> @@ -93,12 +359,7 @@
>  #define DMC_EVT_CTL_TYPE_LEVEL_1	1
>  #define DMC_EVT_CTL_TYPE_EDGE_1_0	2
>  #define DMC_EVT_CTL_TYPE_EDGE_0_1	3
> -
>  #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> -#define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> -#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
> -/* An event handler scheduled to run at a 1 kHz frequency. */
> -#define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> =20
>  #define DMC_HTP_ADDR_SKL	0x00500034
>  #define DMC_SSP_BASE		_MMIO(0x8F074)

I'll trust that all these definitions came from some specs and that
there are no typos. ;)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
