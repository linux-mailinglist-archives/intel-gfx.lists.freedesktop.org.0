Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B643BCB278B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 09:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4762B10E26B;
	Wed, 10 Dec 2025 08:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AR1kwe3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2DD10E251;
 Wed, 10 Dec 2025 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765357013; x=1796893013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=V92MC9DyB2bQFS5RAWBRegLesK4X1P62l+UlMR1cI8I=;
 b=AR1kwe3/AV2hjkPqZ5hGS6X6RbmLdwXPAeO/kTz79Ggktto8l0ks2xbF
 0rZbskiaM8PlRe+i4H2W1KnMe/zMABOjOxD3/ZemwkY9CPiHmTxqk4xGz
 CDY5URgQsdv3qNfOOwZj19gHHzZXi8DLZbgwbfD6Dyr8C95CQO714DAvz
 BtPiS8xZPiLfLKJ424ADfUT8bCKeRFJb4aemgao8Xyrg6hab/9fFmksSD
 hrQY99sTOTrhGxk/FUU01UP8sw0NVTLuFiGXbMosKI9WT1R2foEBX3MfY
 HqkbiJUf00jjAyjJ05EdGo7SJOggMuotJ1CXrlQcqpvTIrdM+sMbgnqEy w==;
X-CSE-ConnectionGUID: JQEVjxNkQA65iWaKCKs0TA==
X-CSE-MsgGUID: R5bl0SVHQfKO/tOSFjLp5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="89974902"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="89974902"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:56:53 -0800
X-CSE-ConnectionGUID: NpLKL/90TQCDr6Vi32YASw==
X-CSE-MsgGUID: wQKW7M8SRPSnjpwP+f93qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="200954196"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:56:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
In-Reply-To: <20251209151319.494640-4-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
Date: Wed, 10 Dec 2025 10:56:47 +0200
Message-ID: <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
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

On Tue, 09 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> No need for backporting, this is only useful for i915,
> and it doesn't compile with I915 enabled.

Please elaborate. There's just riddles here.

BR,
Jani.

>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 5b41abe1c64d5..172c0062237eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>  	if (!HAS_LPE_AUDIO(display))
>  		return;
>  
> -	ret = generic_handle_irq(display->audio.lpe.irq);
> +	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
>  				    "error handling LPE audio irq: %d\n", ret);

-- 
Jani Nikula, Intel
