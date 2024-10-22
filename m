Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130869A9E98
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0018610E13A;
	Tue, 22 Oct 2024 09:34:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aY7slCtI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9466F10E13A;
 Tue, 22 Oct 2024 09:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729589690; x=1761125690;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MdIH63WXreV8jRQQroMtck9ZrETS7F/PLz8PkfLbhpI=;
 b=aY7slCtIS5cRI4B65XzEWWgm4/J4zlrncMRq04BOIPHsMYT6/s3v3cb5
 f1R6h8mpsTqT4yJtfqksaXQUxVX2I5FkzMN5X30dLJlF5ukzlwwEOKZZN
 cwtAUFDc6W4AZlTmBc1CIZ7j8VdbGAUaaYVtspH5P+EFl3Tk7YpggCV5l
 bXTls6/hcCDXWtdY5eTQdzHw9QlMroEvYJFJt/EHaC+mtPWaXVdaH1dQi
 Rgv1q9qdqcTNYfaEF+EnuuW/0lLuhdAljq/kZPmvKFyjpTXj30EkSsjqV
 ccUrOn89egauEt9FAbjf3Wc8zd/tl0V2qdiOf385QX2zPb6pTaduJ7MTd Q==;
X-CSE-ConnectionGUID: IYnfAggRTP6iWxllpjNsbQ==
X-CSE-MsgGUID: 2a/8Ki2qRCKf2WQpWWsx3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28543783"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28543783"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:34:50 -0700
X-CSE-ConnectionGUID: Q9A6209kTQW+PRTDWtS50w==
X-CSE-MsgGUID: oTA3sOTVRXOxEAKXC3+qvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79876382"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:34:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 02/13] drm/i915/dmc_wl: Use non-sleeping variant of MMIO
 wait
In-Reply-To: <20241021222744.294371-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-3-gustavo.sousa@intel.com>
Date: Tue, 22 Oct 2024 12:34:44 +0300
Message-ID: <87wmi0v5u3.fsf@intel.com>
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

On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Some display MMIO transactions for offsets in the range that requires
> the DMC wakelock happen in atomic context (this has been confirmed
> during tests on PTL). That means that we need to use a non-sleeping
> variant of MMIO waiting function.
>
> Implement __intel_de_wait_for_register_atomic_nowl() and use it when
> waiting for acknowledgment of acquire/release.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_de.h     | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 20 ++++++++++++--------
>  2 files changed, 23 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index e017cd4a8168..4116783a62dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -121,6 +121,17 @@ ____intel_de_wait_for_register_nowl(struct intel_display *display,
>  }
>  #define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
>  
> +static inline int
> +____intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
> +					   i915_reg_t reg,
> +					   u32 mask, u32 value,
> +					   unsigned int fast_timeout_us)
> +{
> +	return __intel_wait_for_register(__to_uncore(display), reg, mask,
> +					 value, fast_timeout_us, 0, NULL);
> +}
> +#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wait_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)
> +

There's no need to add the wrapper when all users pass struct
intel_display. And we don't want new users that pass i915.

And why are we adding new stuff and users with double underscores?

>  static inline int
>  __intel_de_wait(struct intel_display *display, i915_reg_t reg,
>  		u32 mask, u32 value, unsigned int timeout)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 5634ff07269d..8056a3c8666c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -39,7 +39,7 @@
>   * potential future use.
>   */
>  
> -#define DMC_WAKELOCK_CTL_TIMEOUT 5
> +#define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
>  #define DMC_WAKELOCK_HOLD_TIME 50
>  
>  struct intel_dmc_wl_range {
> @@ -78,9 +78,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
>  
>  	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
>  
> -	if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
> -					      DMC_WAKELOCK_CTL_ACK, 0,
> -					      DMC_WAKELOCK_CTL_TIMEOUT)) {
> +	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
> +						     DMC_WAKELOCK_CTL_ACK, 0,
> +						     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
>  		WARN_RATELIMIT(1, "DMC wakelock release timed out");
>  		goto out_unlock;
>  	}
> @@ -216,10 +216,14 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  		__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
>  				    DMC_WAKELOCK_CTL_REQ);
>  
> -		if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
> -						      DMC_WAKELOCK_CTL_ACK,
> -						      DMC_WAKELOCK_CTL_ACK,
> -						      DMC_WAKELOCK_CTL_TIMEOUT)) {
> +		/*
> +		 * We need to use the atomic variant of the waiting routine
> +		 * because the DMC wakelock is also taken in atomic context.
> +		 */
> +		if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
> +							     DMC_WAKELOCK_CTL_ACK,
> +							     DMC_WAKELOCK_CTL_ACK,
> +							     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
>  			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
>  			goto out_unlock;
>  		}

-- 
Jani Nikula, Intel
