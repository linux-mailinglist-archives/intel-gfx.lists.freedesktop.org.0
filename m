Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9499146AB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 11:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A448A10E246;
	Mon, 24 Jun 2024 09:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5PgtbPn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5852710E246;
 Mon, 24 Jun 2024 09:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719222639; x=1750758639;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8TpeBC2spTgB7R58824osVKSErUtdwKFYKIG2wtQN30=;
 b=U5PgtbPn8dgPVrvGh9RZnfbLV+br62Ckwuq5NizlM+o41L5W1kYHg7J3
 DDBrMLA0IJde39VUmlpl3gutXjBLGCwo+zSk8CrRmR4rZ9YcSKPNd29b7
 Xochno6yiYS2sjz+2zR/Uc1/KhhkC/aCapDNq6u9k7Pcp5CW7evXK9CHc
 VetVwTdxSU5dS5QEVceGLzRPGGBC95kWXJ1nHE6uxncta+xGO/hyKCiLF
 aJOTNsux//5SLM+wHivKQ8Xw37aRvkfKIHlrPUeNehu2QO3TtU1MKD9kl
 MbLOajr1yVTtTXEG6q5w5WjOUTBIEqnUU2tu6XWHyk9bo0DiSQtioWY/N Q==;
X-CSE-ConnectionGUID: bCOtehgmRzCEmGraLPNOTw==
X-CSE-MsgGUID: 21UZaixNR8mQOKbFi0EcnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="19085282"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="19085282"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 02:50:38 -0700
X-CSE-ConnectionGUID: SnmHYhCkT4e9ovfhRZoJ8A==
X-CSE-MsgGUID: ar7mU5X/SLawnayKwsyRYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="80772849"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 02:50:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com,
 suraj.kandpal@intel.com, ankit.k.nautiyal@intel.com, nathan@kernel.org
Subject: Re: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
In-Reply-To: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 24 Jun 2024 12:50:20 +0300
Message-ID: <87pls6ekkj.fsf@intel.com>
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

On Fri, 21 Jun 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Consider adjusted_pixel_rate to be a u64 to match the return
> type of mul_u32_u32() and avoid any compiler dependency for
> do_div.

You should mention this fixes 32-bit builds. Might also want to give a
link to the actual build failure, and give credit to the reporter:

Closes: https://lore.kernel.org/r/20240619154207.GA1125704@thelio-3990X
Reported-by: Nathan Chancellor <nathan@kernel.org>

>
> Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: intel-xe@lists.freedesktop.org
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6430da25957d..5a0da64c7db3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -137,7 +137,7 @@ static unsigned int
>  cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>  {
>  	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
> -	long long adjusted_pixel_rate;
> +	u64 adjusted_pixel_rate;
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
>  	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);

-- 
Jani Nikula, Intel
