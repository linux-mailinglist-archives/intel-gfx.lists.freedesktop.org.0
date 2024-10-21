Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DB99A6907
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C5D10E4DF;
	Mon, 21 Oct 2024 12:49:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cqWeYCmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5848810E4E0;
 Mon, 21 Oct 2024 12:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729514960; x=1761050960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e77ql+f/Q6G3lNiB2bgusNIkQUGPGIgLHvfLiVlSK3U=;
 b=cqWeYCmHJJJT5BTxgN67HporU9h8Klq0Yl/NjCrfrr3ITf0wW/DI8IGt
 7d5LVaCgaQKtVqqvbdISWY916JUVkG1/gO9PFd97PHk8J0m7jh5nnHlaT
 TCZBwEVF6Rhq25NgcmkwJp6KLGzDB9yJrZcpA/uoJbXpFtKZVo3wg8WM5
 NTqbltQ3Ir94qDuC23PwT5O3z/ncWMooviqv68x2RGUmrLNj21XDl2GPZ
 PJy1QBEQ3rGHkaWg2C2F6u3mc1A676zSVzM0fHzJ6D6KxUe2sNB+LYtef
 K3jcClRcBp8Ba9F64iQ13Bjp+uweB60SDqKARxNOphQ9MdVa4nJYlXmjE g==;
X-CSE-ConnectionGUID: 00iw0I2gS2uDXJW+fWdSKQ==
X-CSE-MsgGUID: wGE2gGfzSqCYhrzMg+0pLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40121308"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40121308"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:49:20 -0700
X-CSE-ConnectionGUID: QomQMmcPRWur3qQG9aAMQQ==
X-CSE-MsgGUID: O+lHQI04SSSrp3FjmKPFBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="83529715"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:49:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
In-Reply-To: <20241021123414.3993899-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-9-ankit.k.nautiyal@intel.com>
Date: Mon, 21 Oct 2024 15:49:14 +0300
Message-ID: <87ttd5y62d.fsf@intel.com>
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

On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add macro for Pixel replication support with DSC.

Add blank line here.

> Bspec: 49259, 68912.
>

Remove blank line here.

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..a21b910879df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -149,6 +149,9 @@ enum intel_display_subplatform {
>  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
>  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
> +#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
> +					 (DISPLAY_VER(i915) >= 20 || \
> +					  DISPLAY_VER_FULL(i915) == IP_VER(14, 1)))
>  #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
>  #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)

-- 
Jani Nikula, Intel
