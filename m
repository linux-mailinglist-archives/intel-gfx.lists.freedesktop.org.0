Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003A8AEA604
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C8710E089;
	Thu, 26 Jun 2025 19:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHMSDkmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D22E10E089;
 Thu, 26 Jun 2025 19:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750964620; x=1782500620;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=mM6Q2g6ysy1rfWPp/uupfmr3+NsoLMMnWDaYNpw5Dx8=;
 b=HHMSDkmp8AWboUD03qB6rJl6zr4HzWtRQjSpMK+/ZrE9Z4pJCvG/J12d
 0AkFovBmzjlicKRkOJmU4koADpi0b6NQhV9l4OcrBPOMFu2/c9zNc9srC
 DNyJ2WmX2FJDyrBDILaKrrSRdDrUcP3aasyhFjSQEVtVM5IQX0ONYtYBu
 8jseBgXyDj8TIPJPJIhUXLKwmD2j763AmcqPEQNv0DCqPaOAaPu2FzQiy
 skfG29VmQOlnaL0QJgSSxN03Wl4oxw/Cg+33TFpyYrTDKN5ZZInxmtj7d
 X0q5i8NRWm1jE4isIboQGwooNnXshqEIBKfjxcXdegCIk47j7mIk7qVrT A==;
X-CSE-ConnectionGUID: pWvMXiI1QmW020HQHNozzQ==
X-CSE-MsgGUID: X1X0HoYSRMeXduuXdwrefA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="57082492"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="57082492"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:03:40 -0700
X-CSE-ConnectionGUID: cJLzZSoRQWu5dypA9e5Ghw==
X-CSE-MsgGUID: FP/1qbf0QieF4qi7+n52NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="156974222"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:03:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915/ddi: use intel_de_wait_custom() instead of
 wait_for_us()
In-Reply-To: <0fe50db94bae5e5c52daae59d754fb80733ed9bc.1750959689.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1750959689.git.jani.nikula@intel.com>
 <0fe50db94bae5e5c52daae59d754fb80733ed9bc.1750959689.git.jani.nikula@intel.com>
Date: Thu, 26 Jun 2025 22:03:32 +0300
Message-ID: <745560429502f0007f136611cd5ff67cbb0de05d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 26 Jun 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Prefer the register read specific wait function over i915 wait_for_us().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0405396c7750..39613f86f1ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2561,6 +2561,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  	enum port port = encoder->port;
>  	i915_reg_t reg;
>  	u32 set_bits, wait_bits;
> +	int ret;
>  
>  	if (DISPLAY_VER(display) < 14)
>  		return;
> @@ -2576,7 +2577,11 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  	}
>  
>  	intel_de_rmw(display, reg, 0, set_bits);
> -	if (wait_for_us(intel_de_read(display, reg) & wait_bits, 100)) {
> +
> +	ret = intel_de_wait_custom(display, reg,
> +				   wait_bits, wait_bits,
> +				   100, 0, NULL);
> +	if (ret) {
>  		drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
>  			port_name(port));
>  	}
> @@ -3058,6 +3063,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>  	enum port port = encoder->port;
>  	i915_reg_t reg;
>  	u32 clr_bits, wait_bits;
> +	int ret;
>  
>  	if (DISPLAY_VER(display) < 14)
>  		return;
> @@ -3073,7 +3079,11 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
>  	}
>  
>  	intel_de_rmw(display, reg, clr_bits, 0);
> -	if (wait_for_us(!(intel_de_read(display, reg) & wait_bits), 100))
> +
> +	ret = intel_de_wait_custom(display, reg,
> +				   wait_bits, wait_bits,

As reported by Xe BAT, this should be "wait_bits, 0,". Missed the ! in
the original.

> +				   100, 0, NULL);
> +	if (ret)
>  		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
>  			port_name(port));
>  }

-- 
Jani Nikula, Intel
