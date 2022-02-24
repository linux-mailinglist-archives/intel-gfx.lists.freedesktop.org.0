Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 157A64C28F5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 11:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8448B10F894;
	Thu, 24 Feb 2022 10:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5262D10F894
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 10:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645697548; x=1677233548;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wTwIacDW9EoKPQ2l03EF8EhrDK3c33x3B/fTJ1Uy5oM=;
 b=NOOYct3bj2UuDZmnmOC1CECw3hY3k1y/vB0kfF6AQOQ1llRsVyt3+3Ax
 Z5UhA5xXY0o8K+MxrNLKKcRy89CVE76JjAr/DBa7agzMpKLE4VZrBW3Ta
 aqmDSWVdiwC0KkeZXe7PLgcvWAyQjx1ocK3SkXhqm7lk1eBgJvw/rFvCg
 LeblUfBSYZH6He2r7hfKLx3Y+t0QW77TBnbeifEd/jYxxv0WC8zbT5k00
 U6CQojKgauSuiymZKHAATQPoBIz39N0eksJrDkn5SDIgb39IGjR+4JojR
 3Mw6pN8Q4RTUb6MX4IfbYGt+kRISVdp4iEujufc3+uYzC7i6AGjgPzgV4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232173698"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="232173698"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 02:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="543656554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 24 Feb 2022 02:12:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 12:12:19 +0200
Date: Thu, 24 Feb 2022 12:12:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YhdaA6hbK0bhjWsQ@intel.com>
References: <20220223194103.715109-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223194103.715109-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable
 PSR2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 23, 2022 at 11:41:03AM -0800, José Roberto de Souza wrote:
> Some users are suffering with PSR2 issues that are under debug or
> issues that were root caused to panel firmware, to make life of those
> users easier here adding a option to disable PSR1 with kernel
> parameter.
> 
> Using the same enable_psr that is current used to turn PSR1 and PSR2
> off or on and adding a new value to only disable PSR2.
> The previous valid values did not had their behavior changed.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/4951
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
>  drivers/gpu/drm/i915/i915_params.c       | 2 +-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2e0b092f4b6be..fc6b684bb7bec 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -100,11 +100,15 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
>  
>  static bool psr2_global_enabled(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> +		if (i915->params.enable_psr == 2)
> +			return false;
>  		return true;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index eea355c2fc28a..a9b97e6eb3df0 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -94,7 +94,7 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
>  
>  i915_param_named_unsafe(enable_psr, int, 0400,
>  	"Enable PSR "
> -	"(0=disabled, 1=enabled) "
> +	"(0=disabled, 1=enable up to PSR2 if supported, 2=enable up to PSR1) "

That seems very unintuitive. I would just make it 1==PSR1 and 2==PSR2.

>  	"Default: -1 (use per-chip default)");
>  
>  i915_param_named(psr_safest_params, bool, 0400,
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
