Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A618DCAFA2E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4417F10E213;
	Tue,  9 Dec 2025 10:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTmTZ5B8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E7DC10E1C7;
 Tue,  9 Dec 2025 10:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276191; x=1796812191;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=L+KF5LaHdK4Y5ipDShD/QBmaPP/We/poBfVCSYInPEQ=;
 b=hTmTZ5B8vOnUqrmnYX3iymYHhIsA38FNiTv+FlICoZVqzV93WFTgHpex
 nuAsMGuLtgKaOGymQC++4TA8yDXWm5IPzNbEOZJTw49HzHeb7gN7tKqJN
 st9R9kXL9qzJPS80V/C3M6vNIdibJYtjL3VNTdoKdcNbA3NPWf8Sp1bxX
 V88yVYVZVtvoDKJuDzSLGkmUtMX8y6G847O7ajTkFCwhDS2/dSSyKgW91
 Ap10My5PqYBW8LpljMI6xLOR74yGZtUINti+shvZZS9V3U9v5fGgbvy7R
 b0KTyUzPppOgC1T+PTyZ0+hQUBcj9Og9droOH5SZkELmzRFUvDLOi7dJg g==;
X-CSE-ConnectionGUID: UtEHKr7ZTyiLVOJVyaWw5g==
X-CSE-MsgGUID: vYfBP6y2S6W5O2P9dxANNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67124100"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67124100"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:29:50 -0800
X-CSE-ConnectionGUID: UDDckRcaShSC3IKZcvcyyA==
X-CSE-MsgGUID: ieMUuz4tT++J96z9RcbIjg==
X-ExtLoop1: 1
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:29:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/19] drm/i915/vga: Don't touch VGA registers if VGA
 decode is fully disabled
In-Reply-To: <20251208182637.334-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-6-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:29:45 +0200
Message-ID: <b08f05b7fa5ebafc91a5e626473a4078a0befdfd@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On some systems the BIOS will disable the VGA decode logic in the
> iGPU (via GMCH_CTRL) when an external GPU is used as the primary
> VGA device. In that case the iGPU will never claim any VGA register
> accesses, and any access we do will in fact end up on the external
> GPU. Don't go poking around in the other GPUs registers.
>
> Note that (at least on the g4x board where I tested this) the BIOS
> forgets to set the VGACNTR VGA_DISP_DISABLE bit, and the reset
> value for said bit is 0. That apparently prevents the pipes from
> running, so we must still remember to set the bit, despite the VGA
> plane was never actually enabled. On more modern platforms (hsw+
> maybe?) the reset value for VGACNTR was changed to have
> VGA_DISP_DISABLE already set.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 84fd5475d336..744812260ae3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -23,6 +23,18 @@ static unsigned int intel_gmch_ctrl_reg(struct intel_d=
isplay *display)
>  	return DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
>  }
>=20=20
> +static bool intel_vga_decode_is_enabled(struct intel_display *display)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> +	u16 gmch_ctrl =3D 0;
> +
> +	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
> +				     intel_gmch_ctrl_reg(display), &gmch_ctrl))
> +		return false;
> +
> +	return !(gmch_ctrl & INTEL_GMCH_VGA_DISABLE);
> +}
> +
>  static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
>  {
>  	if (display->platform.valleyview || display->platform.cherryview)
> @@ -55,6 +67,17 @@ void intel_vga_disable(struct intel_display *display)
>  	u8 msr, sr1;
>  	u32 tmp;
>=20=20
> +	if (!intel_vga_decode_is_enabled(display)) {
> +		drm_dbg_kms(display->drm, "VGA decode is disabled\n");
> +
> +		/*
> +		 * On older hardware VGA_DISP_DISABLE defaults to 0, but
> +		 * it *must* be set or else the pipe will be completely
> +		 * stuck (at least on g4x).
> +		 */
> +		goto reset_vgacntr;
> +	}
> +
>  	tmp =3D intel_de_read(display, vga_reg);
>  	if (tmp & VGA_DISP_DISABLE)
>  		return;
> @@ -96,6 +119,7 @@ void intel_vga_disable(struct intel_display *display)
>=20=20
>  	udelay(300);
>=20=20
> +reset_vgacntr:
>  	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
>  	intel_de_posting_read(display, vga_reg);
>  }

--=20
Jani Nikula, Intel
