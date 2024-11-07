Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A749C0114
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE6E10E7D9;
	Thu,  7 Nov 2024 09:23:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYiIUiDd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0EB10E7D9;
 Thu,  7 Nov 2024 09:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971423; x=1762507423;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OBUD/204qlj6bzQRg79Gn2Ndm493ntuSBndlDDRNH5k=;
 b=YYiIUiDdW/APQqw5zWmarUXsLQnasM1/jNJYibEUR059SjxMGt7JO+nb
 +SicwFQbmrDCmYpiHBvvLF3wEpf4HywdwD1jW2nvqQa3JLRoMhL46ifNU
 D1fO0TLuLCzu05AWhV1Ckd0IStlD7V49odaRerCJS9iszFdghh96eCJmK
 YE/pRRtC2M0+mMia2qoozt9fTiugQUjT+88l8L6hmYupBUVI5v5IPpCnt
 I0/ucZpdCrwZV8EBbo9BdKFkprTwpC4gVCelDUlgbj/r0VajqtBd4cYPP
 WTYl2DTqnimIGbOkQ4dPPqh3hYoECMbVEd1k51qR/zKJl6jDBNm6j2r72 A==;
X-CSE-ConnectionGUID: tEfegkR8Q52aJFNw/O74GA==
X-CSE-MsgGUID: 5p5iuWwnQy6OphjQiRA3QQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41356526"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41356526"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:23:43 -0800
X-CSE-ConnectionGUID: q16qvZvQSSiT7HQOiOokIw==
X-CSE-MsgGUID: AhpkYlsKR5qDmdqo6fiB2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="84557207"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:23:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 01/17] drm/i915/dmc_wl: Use i915_mmio_reg_offset()
 instead of reg.reg
In-Reply-To: <20241106215231.103474-2-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
 <20241106215231.103474-2-gustavo.sousa@intel.com>
Date: Thu, 07 Nov 2024 11:23:37 +0200
Message-ID: <87ttcje6sm.fsf@intel.com>
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

On Wed, 06 Nov 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> The macro i915_mmio_reg_offset() is the proper interface to get a
> register's offset. Use that instead of looking directly at reg.reg.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 5634ff07269d..05892a237d3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -91,14 +91,15 @@ static void intel_dmc_wl_work(struct work_struct *work)
>  	spin_unlock_irqrestore(&wl->lock, flags);
>  }
>  
> -static bool intel_dmc_wl_check_range(u32 address)
> +static bool intel_dmc_wl_check_range(i915_reg_t reg)
>  {
>  	int i;
>  	bool wl_needed = false;
> +	u32 offset = i915_mmio_reg_offset(reg);
>  
>  	for (i = 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
> -		if (address >= lnl_wl_range[i].start &&
> -		    address <= lnl_wl_range[i].end) {
> +		if (offset >= lnl_wl_range[i].start &&
> +		    offset <= lnl_wl_range[i].end) {
>  			wl_needed = true;
>  			break;
>  		}
> @@ -191,7 +192,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
> -	if (!intel_dmc_wl_check_range(reg.reg))
> +	if (!intel_dmc_wl_check_range(reg))
>  		return;
>  
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -239,7 +240,7 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
>  	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
> -	if (!intel_dmc_wl_check_range(reg.reg))
> +	if (!intel_dmc_wl_check_range(reg))
>  		return;
>  
>  	spin_lock_irqsave(&wl->lock, flags);

-- 
Jani Nikula, Intel
