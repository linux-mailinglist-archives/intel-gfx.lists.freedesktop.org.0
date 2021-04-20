Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DD5365A92
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB3F6E82A;
	Tue, 20 Apr 2021 13:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726926E82A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 13:50:06 +0000 (UTC)
IronPort-SDR: oGeU+Yq2N/x2uGvfI8RuiIxi4rb0NA1on83zAafMgOk2Z2eyrSWL/X8TbI8aLHlR4YewHJvsrN
 z1Rhn5O1QKkA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="182639251"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="182639251"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:49:57 -0700
IronPort-SDR: 3wGu17utNBZu44E4SWXWv7Wsjpur/jhtzOCGUio8ktZCBuiFrEmqxWjtctAUSThxfnIyK/exdr
 hjsHtRApeMRQ==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="452493654"
Received: from jyick-mobl.amr.corp.intel.com (HELO intel.com) ([10.212.57.228])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:49:56 -0700
Date: Tue, 20 Apr 2021 09:49:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YH7cAx8cE4nszX7+@intel.com>
References: <20210420130853.10573-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210420130853.10573-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Rename pm_ prefixed
 functions names
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
Cc: intel-gfx@lists.freedesktop.org, Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 20, 2021 at 04:08:53PM +0300, Jani Nikula wrote:
> From: Hsin-Yi Wang <hsinyi@chromium.org>
> 
> pm_resume and pm_suspend might be conflict with the ones defined in
> include/linux/suspend.h. Rename all pm_* to igt_pm_* in selftests since
> they are only used here.
> 
> v2 by Jani:
> - Use igt_ prefix instead of i915_ to avoid colliding with existing
>   i915_pm_* functions

what about i915_st_pm?!

> - Rename all pm_ prefixed functions in the file
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index dc394fb7ccfa..152d9ab135b1 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -87,14 +87,14 @@ static void simulate_hibernate(struct drm_i915_private *i915)
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  }
>  
> -static int pm_prepare(struct drm_i915_private *i915)
> +static int igt_pm_prepare(struct drm_i915_private *i915)
>  {
>  	i915_gem_suspend(i915);
>  
>  	return 0;
>  }
>  
> -static void pm_suspend(struct drm_i915_private *i915)
> +static void igt_pm_suspend(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -104,7 +104,7 @@ static void pm_suspend(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pm_hibernate(struct drm_i915_private *i915)
> +static void igt_pm_hibernate(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pm_resume(struct drm_i915_private *i915)
> +static void igt_pm_resume(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -148,16 +148,16 @@ static int igt_gem_suspend(void *arg)
>  	if (err)
>  		goto out;
>  
> -	err = pm_prepare(i915);
> +	err = igt_pm_prepare(i915);
>  	if (err)
>  		goto out;
>  
> -	pm_suspend(i915);
> +	igt_pm_suspend(i915);
>  
>  	/* Here be dragons! Note that with S3RST any S3 may become S4! */
>  	simulate_hibernate(i915);
>  
> -	pm_resume(i915);
> +	igt_pm_resume(i915);
>  
>  	err = switch_to_context(ctx);
>  out:
> @@ -183,16 +183,16 @@ static int igt_gem_hibernate(void *arg)
>  	if (err)
>  		goto out;
>  
> -	err = pm_prepare(i915);
> +	err = igt_pm_prepare(i915);
>  	if (err)
>  		goto out;
>  
> -	pm_hibernate(i915);
> +	igt_pm_hibernate(i915);
>  
>  	/* Here be dragons! */
>  	simulate_hibernate(i915);
>  
> -	pm_resume(i915);
> +	igt_pm_resume(i915);
>  
>  	err = switch_to_context(ctx);
>  out:
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
