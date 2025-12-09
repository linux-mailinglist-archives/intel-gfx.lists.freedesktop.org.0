Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB734CAFA4F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDAA10E4F5;
	Tue,  9 Dec 2025 10:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ay/XU7Bp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117E610E4F2;
 Tue,  9 Dec 2025 10:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276372; x=1796812372;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kTBLCk6ZUWZkLATlnKRUlQWTqTmpbCbJDgq80425/fU=;
 b=ay/XU7Bp816rgqAJHr+6WmhING8aTz6BhjVMjiZu6sxVMfhnzCP7uKJI
 9beuzYX2IdPBUrvAEjJgTeM8T3aubuo9WcU8Fqscr/aA1DFj9HiaWLVgD
 /lrVX6bxZtGOt5atPD66LFhCHOIhSQI8etyHh9d/HX/3dkokTnjrnkB3S
 S4ohpJ1GJMYbZyt6Kphet1YiQPS7C0NjqApaYPbLGRbG4FHFIQMyZZFze
 cYcOItz/2ZY1jkBdL0QWFOQgVSHA8EwV82oZJuS+viXLmYtJuNUH31IUv
 ONN3IY2jhPJH14jNx4RXvxQoFjHsBq1K6gT/IEEzc/KtH9BB1HZebE6gl A==;
X-CSE-ConnectionGUID: QJF42inYRROn9iM9420R9Q==
X-CSE-MsgGUID: Y5i8Lq1mTTWVVf/yzcRDqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="92704637"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="92704637"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:32:51 -0800
X-CSE-ConnectionGUID: tKL8PT59RH2YDVGalHV/OA==
X-CSE-MsgGUID: 0qtCtu0WRXu48dgs47khLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196207143"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:32:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/19] drm/i915/vga: Clean up VGA registers even if VGA
 plane is disabled
In-Reply-To: <20251208182637.334-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-7-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:32:27 +0200
Message-ID: <d3e52fc4a566ce7722ea55886022c2da16681aff@intel.com>
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
> Turns out at least some systems (eg. HSW Lenovo ThinKCentre E73)

*ThinkCentre

> confgiure the VGA registers even when booting in UEFI mode. So

*configure

> in order to avoid any issues with the MSR register we should
> clean up the VGA registers anyway.
>
> For now this mostly avoids the potential for unclaimed register
> acceses due to the power well vs. MDA/CGA selection. But this

*accesses

> will become more important soon as we'll start to rely on the
> MSR register to control VGA memory decode as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 40 ++++++++++++++++--------
>  1 file changed, 27 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 744812260ae3..6a19fb242248 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -63,7 +63,6 @@ void intel_vga_disable(struct intel_display *display)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  	i915_reg_t vga_reg =3D intel_vga_cntrl_reg(display);
> -	enum pipe pipe;
>  	u8 msr, sr1;
>  	u32 tmp;
>=20=20
> @@ -79,18 +78,33 @@ void intel_vga_disable(struct intel_display *display)
>  	}
>=20=20
>  	tmp =3D intel_de_read(display, vga_reg);
> -	if (tmp & VGA_DISP_DISABLE)
> -		return;
> -
> -	if (display->platform.cherryview)
> -		pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
> -	else if (has_vga_pipe_sel(display))
> -		pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
> -	else
> -		pipe =3D PIPE_A;
> -
> -	drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
> -		    pipe_name(pipe));
> +
> +	if ((tmp & VGA_DISP_DISABLE) =3D=3D 0) {
> +		enum pipe pipe;
> +
> +		if (display->platform.cherryview)
> +			pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
> +		else if (has_vga_pipe_sel(display))
> +			pipe =3D REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
> +		else
> +			pipe =3D PIPE_A;
> +
> +		drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
> +			    pipe_name(pipe));
> +	} else {
> +		drm_dbg_kms(display->drm, "VGA plane is disabled\n");
> +
> +		/*
> +		 * Unfortunately at least some BIOSes (eg. HSW Lenovo
> +		 * ThinkCentre E73) set up the VGA registers even when
> +		 * in UEFI mode with the VGA plane disabled. So we need to
> +		 * always clean up the mess for iGPUs. For discrete GPUs we
> +		 * don't really care about the state of the VGA registers
> +		 * since all VGA accesses can be blocked via the bridge.
> +		 */
> +		if (display->platform.dgfx)
> +			goto reset_vgacntr;
> +	}
>=20=20
>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);

--=20
Jani Nikula, Intel
