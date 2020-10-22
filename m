Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA972963CD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 19:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9608D6F5FE;
	Thu, 22 Oct 2020 17:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E296F5FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 17:34:05 +0000 (UTC)
IronPort-SDR: +FQIrqm3Wgl6fNDkZ5fYa15wOEAYkhceiif52SpqemSwdA5p9E1AlxIVxIYI+qD8Appz/VC6Pa
 l9KLDG7vt6hA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="146858945"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="146858945"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 10:31:04 -0700
IronPort-SDR: UliNlfLY09awj0Z71bJMgL6EuuFVgOE+ffmdkW1JYOUiYI3AzHxRqPaNUf8SDJcSP6Dc701jRb
 f0ypZah0utLA==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="359330041"
Received: from gtax-ubuntu-2004.fm.intel.com ([10.105.23.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 10:31:04 -0700
Date: Thu, 22 Oct 2020 17:30:59 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20201022173059.GA36422@gtax-ubuntu-2004.fm.intel.com>
References: <20201021191454.13418-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021191454.13418-1-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: skip disabling CTBs before
 sanitizing the GuC
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 12:14:54PM -0700, Daniele Ceraolo Spurio wrote:
> If we're about to sanitize the GuC, something might have gone wrong
> beforehand, so we should avoid trying to talk to it. Even if GuC is
> still running fine, the sanitize will reset its internal state and clear
> the CTB registration, so there is still no need to explicitly do so.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2469
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Looks good to me.
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 4e6070e95fe9..309eef9313e8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -486,7 +486,7 @@ static int __uc_init_hw(struct intel_uc *uc)
>  
>  	ret = intel_guc_sample_forcewake(guc);
>  	if (ret)
> -		goto err_communication;
> +		goto err_log_capture;
>  
>  	if (intel_uc_uses_guc_submission(uc))
>  		intel_guc_submission_enable(guc);
> @@ -511,8 +511,6 @@ static int __uc_init_hw(struct intel_uc *uc)
>  	/*
>  	 * We've failed to load the firmware :(
>  	 */
> -err_communication:
> -	guc_disable_communication(guc);
>  err_log_capture:
>  	__uc_capture_load_err_log(uc);
>  err_out:
> @@ -540,9 +538,6 @@ static void __uc_fini_hw(struct intel_uc *uc)
>  	if (intel_uc_uses_guc_submission(uc))
>  		intel_guc_submission_disable(guc);
>  
> -	if (guc_communication_enabled(guc))
> -		guc_disable_communication(guc);
> -
>  	__uc_sanitize(uc);
>  }
>  
> @@ -559,7 +554,6 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
>  	if (!intel_guc_is_ready(guc))
>  		return;
>  
> -	guc_disable_communication(guc);
>  	__uc_sanitize(uc);
>  }
>  
> -- 
> 2.24.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
