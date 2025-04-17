Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C3AA91CE6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 14:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2699410EAF9;
	Thu, 17 Apr 2025 12:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S0qNsZmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6623310EAF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 12:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744894242; x=1776430242;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=B64HxpJ0AhqLwwLlPgO1VhkNNXX1I8PGF0tuO+IhmF8=;
 b=S0qNsZmbeZuXJKy2vMZkcJYUouIVgeuv4X+hpihSRcwtKTlDw4GSm3rU
 j6yZpAjUHQGSXTCxz7cCysLV0lkAxVhdJ4Zi+PF2XWcqGVuuGCygndsdP
 ysoxLpJUX5K0RIXEM4wubIB8g9diTNDRYgMOjzIWEn/wjVf/uAM3jgS1S
 k6o5KrQJ211a31vEyuHnv85eA702+UenhdVALJ6RHVB5obIYYuHSxlQRJ
 P/PmFz8nsf/49iVTMN1U23P+NhcZvBFDemQc9upsTjlpkgJKqOWoIm3c5
 7DQxp8L9iQV/VGsS3E+3nyQ5G46bihkdgb8SVU9Y3XZdjKwsA6Sbk47p6 w==;
X-CSE-ConnectionGUID: 97wB0kcBQIuLr+J3em6uAw==
X-CSE-MsgGUID: kqZUCW96Qt6C9AlApfpsSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="64016018"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="64016018"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:50:42 -0700
X-CSE-ConnectionGUID: nIfteg0RS9qeP37BqFVUNQ==
X-CSE-MsgGUID: AwCXyvs6TI651YVTgm2iBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135611287"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:50:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/vga: Add more VGACNTRL bits
In-Reply-To: <20250417114454.12836-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-3-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 15:50:38 +0300
Message-ID: <87o6wvne8x.fsf@intel.com>
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

On Thu, 17 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define a pile of extra VGACNTRL bits. We don't really have
> any real use for most of these but nicer to have them all
> in one place rather than trawling the specs when one wants
> to know what's in there.
>
> I will have some real use for the CHV pipe select bits later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I didn't go through *all* the platforms, but seems good enough. ;)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  drivers/gpu/drm/i915/i915_reg.h | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 81765f27b258..a533889c2793 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1815,9 +1815,26 @@
>  /* VBIOS regs */
>  #define VGACNTRL		_MMIO(0x71400)
>  #define   VGA_DISP_DISABLE			REG_BIT(31)
> -#define   VGA_2X_MODE				REG_BIT(30)
> -#define   VGA_PIPE_SEL_MASK			REG_BIT(29)
> +#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
> +#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
>  #define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
> +#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
> +#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, =
(pipe))
> +#define   VGA_BORDER_ENABLE			REG_BIT(26)
> +#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
> +#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
> +#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
> +#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
> +#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
> +#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
> +#define   VGA_PALETTE_BYPASS			REG_BIT(19)
> +#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
> +#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
> +#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
> +#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
> +#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
> +#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
> +#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
>=20=20
>  #define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)

--=20
Jani Nikula, Intel
