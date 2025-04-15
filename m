Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC73AA894B0
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 09:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDED10E2AC;
	Tue, 15 Apr 2025 07:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCHtd7iK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47CE10E36E;
 Tue, 15 Apr 2025 07:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744701431; x=1776237431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SfqplkzMKHmvAml6eQ8xHN2tknxcnoULWNX6BN16ZbE=;
 b=dCHtd7iK8m5+nmTy75n3WhKi5xd5nC5nqMeZ0IaqeBDGYHC40GUz3HF8
 8Lm9r96DNpItR8n6zTTej9i3M8YOh1R0JiO/Iu81y+ioJHw9XrUmlbR0P
 I9TXEiWKwzcXZfe8C5VD4vwdRfAvOzlX6/EPGS82rwzr2coblWnX28IGf
 75uc/Oy4qY6SoJxTvNdfZw/Y9usr4BtIbCJ6XR/5dTk05KSO9/9Fwk4Zc
 Yk2YLE1YCgaZzPEGUsxwXQlQmKMoiLi0rqucDBCfivnbZk0JUM2EZ0kiE
 00fBpEDZ/Nkd2ZAu17tqfajLunlXxtQoPgH/y6/I0NroUIczaj5P4ovdN w==;
X-CSE-ConnectionGUID: zLRd15tHQtC2geWKuFwlAA==
X-CSE-MsgGUID: mO97WBXGQKOpjVCyNefdMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="45428705"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45428705"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 00:17:10 -0700
X-CSE-ConnectionGUID: T8Acfdg3SrOmB5Ed2zeN5w==
X-CSE-MsgGUID: RGlFWzX+T5KB9x6RrIw8rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130363869"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 00:17:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, stable@vger.kernel.org, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
In-Reply-To: <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
 <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
Date: Tue, 15 Apr 2025 10:17:04 +0300
Message-ID: <87y0w1sxlb.fsf@intel.com>
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

On Mon, 14 Apr 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> 3 DSC engines per pipe is currently supported only for BMG.
> Add a macro to check whether a platform supports 3 DSC engines per pipe.

Nitpick, feels like a macro returning the number of DSC engines per pipe
would be more generic. Like, would you also add HAS_DSC_2ENGINES() and
HAS_DSC_4ENGINES() if you needed to know that? But I guess we can go
with what you have for the immediate fix.

However, adding the tiniest macro and its only user in separate patches,
for something that needs to be backported to stable, seems like erring
on the side of splitting up patches too much.

BR,
Jani.


>
> v2:Fix Typo in macro argument. (Suraj).
> Added fixes tag.
>
> Bspec: 50175
> Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: <stable@vger.kernel.org> # v6.14+
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 368b0d3417c2..87c666792c0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>  #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>  #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
> +#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)

-- 
Jani Nikula, Intel
