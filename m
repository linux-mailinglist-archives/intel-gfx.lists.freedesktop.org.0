Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81445872127
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550C6112AE1;
	Tue,  5 Mar 2024 14:11:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bhrluycd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6840F112AE1
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709647899; x=1741183899;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9A/D8A8ee3vVZaVBOtwliVQXqvW+EdeWufwN3ZDihzE=;
 b=BhrluycdWAvBGanvEAbaCXQrX/+Im+NqHWcBt4p4ZsuYSOuFBd3ff76X
 Ic8FZy1AXsqbCEY7w/XSDbGPIB0KPpolBHb8aAXWzNYUJUDqpS2PFrRp9
 qRTB4ZDfhiW3aRMps+bjNzrVjkXfQSFlFbfA7UKLiGtD74AWgFCL6FoxX
 v29DtdI2hn15MqwtUTTLP/3Dvdvp/vr837kuerAhEIG+3jeI9yj42/wW4
 R5h/jHNSAUyQ6cO9iaVAz+KcsR8QwOTyE5glE3ZTyBfuNw4hYY/ezQTYc
 UmOHZKeX64LKELCR5MviBBYmpZuzPpZVbL85dIZkUpxpsrV8hlnE4cEog A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="21725262"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="21725262"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:11:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9551887"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:11:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dsi: Go back to the previous
 INIT_OTP/DISPLAY_ON order, mostly
In-Reply-To: <20240305083659.8396-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240305083659.8396-1-ville.syrjala@linux.intel.com>
Date: Tue, 05 Mar 2024 16:11:33 +0200
Message-ID: <87plw822ga.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 05 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reinstate commit 88b065943cb5 ("drm/i915/dsi: Do display on
> sequence later on icl+"), for the most part. Turns out some
> machines (eg. Chuwi Minibook X) really do need that updated order.
> It is also the order the Windows driver uses.
>
> However we can't just undo the revert since that would again
> break Lenovo 82TQ. After staring at the VBT sequences for both
> machines I've concluded that the Lenovo 82TQ sequences look
> somewhat broken:
>  - INIT_OTP is not present at all
>  - what should be in INIT_OTP is found in DISPLAY_ON
>  - what should be in DISPLAY_ON is found in BACKLIGHT_ON
>    (along with the actual backlight stuff)
>
> The Chuwi Minibook X on the other hand has a full complement
> of sequences in its VBT.
>
> So let's try to deal with the broken sequences in the
> Lenovo 82TQ VBT by simply swapping the (non-existent)
> INIT_OTP sequence with the DISPLAY_ON sequence. Thus we
> execute DISPLAY_ON when intending to execute INIT_OTP,
> and execute nothing at all when intending to execute
> DISPLAY_ON. That should be 100% equivalent to the
> revert, for such broken VBTs.
>
> Cc: stable@vger.kernel.org
> Fixes: dc524d05974f ("Revert "drm/i915/dsi: Do display on sequence later =
on icl+"")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/10071
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10334
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yuck.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  3 +-
>  drivers/gpu/drm/i915/display/intel_bios.c | 43 +++++++++++++++++++----
>  2 files changed, 39 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index eda4a8b88590..ac456a2275db 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1155,7 +1155,6 @@ static void gen11_dsi_powerup_panel(struct intel_en=
coder *encoder)
>  	}
>=20=20
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
>=20=20
>  	/* ensure all panel commands dispatched before enabling transcoder */
>  	wait_for_cmds_dispatched_to_panel(encoder);
> @@ -1256,6 +1255,8 @@ static void gen11_dsi_enable(struct intel_atomic_st=
ate *state,
>  	/* step6d: enable dsi transcoder */
>  	gen11_dsi_enable_transcoder(encoder);
>=20=20
> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
> +
>  	/* step7: enable backlight */
>  	intel_backlight_enable(crtc_state, conn_state);
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 343726de9aa7..373291d10af9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1955,16 +1955,12 @@ static int get_init_otp_deassert_fragment_len(str=
uct drm_i915_private *i915,
>   * these devices we split the init OTP sequence into a deassert sequence=
 and
>   * the actual init OTP part.
>   */
> -static void fixup_mipi_sequences(struct drm_i915_private *i915,
> -				 struct intel_panel *panel)
> +static void vlv_fixup_mipi_sequences(struct drm_i915_private *i915,
> +				     struct intel_panel *panel)
>  {
>  	u8 *init_otp;
>  	int len;
>=20=20
> -	/* Limit this to VLV for now. */
> -	if (!IS_VALLEYVIEW(i915))
> -		return;
> -
>  	/* Limit this to v1 vid-mode sequences */
>  	if (panel->vbt.dsi.config->is_cmd_mode ||
>  	    panel->vbt.dsi.seq_version !=3D 1)
> @@ -2000,6 +1996,41 @@ static void fixup_mipi_sequences(struct drm_i915_p=
rivate *i915,
>  	panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] =3D init_otp + len - 1;
>  }
>=20=20
> +/*
> + * Some machines (eg. Lenovo 82TQ) appear to have broken
> + * VBT sequences:
> + * - INIT_OTP is not present at all
> + * - what should be in INIT_OTP is in DISPLAY_ON
> + * - what should be in DISPLAY_ON is in BACKLIGHT_ON
> + *   (along with the actual backlight stuff)
> + *
> + * To make those work we simply swap DISPLAY_ON and INIT_OTP.
> + *
> + * TODO: Do we need to limit this to specific machines,
> + *       or examine the contents of the sequences to
> + *       avoid false positives?
> + */
> +static void icl_fixup_mipi_sequences(struct drm_i915_private *i915,
> +				     struct intel_panel *panel)
> +{
> +	if (!panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP] &&
> +	    panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]) {
> +		drm_dbg_kms(&i915->drm, "Broken VBT: Swapping INIT_OTP and DISPLAY_ON =
sequences\n");
> +
> +		swap(panel->vbt.dsi.sequence[MIPI_SEQ_INIT_OTP],
> +		     panel->vbt.dsi.sequence[MIPI_SEQ_DISPLAY_ON]);
> +	}
> +}
> +
> +static void fixup_mipi_sequences(struct drm_i915_private *i915,
> +				 struct intel_panel *panel)
> +{
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		icl_fixup_mipi_sequences(i915, panel);
> +	else if (IS_VALLEYVIEW(i915))
> +		vlv_fixup_mipi_sequences(i915, panel);
> +}
> +
>  static void
>  parse_mipi_sequence(struct drm_i915_private *i915,
>  		    struct intel_panel *panel)

--=20
Jani Nikula, Intel
