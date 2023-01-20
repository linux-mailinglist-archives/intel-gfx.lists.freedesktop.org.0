Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C6B67537C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 12:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BF510EA07;
	Fri, 20 Jan 2023 11:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AFB10EA07
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 11:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674214621; x=1705750621;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nlj5vIQnyOQEdlDqmUB1Eef0sDqX9ZctctK9eEW8Wtc=;
 b=Ai2l12DFhyHBIWGs1Y8kC4N6S+B+0x68LKLDRwtfQ5xr3B+TPanbMN8L
 ZTV6ASKqtP5cF0cTdzJVqWpX43zSXkMbH2LwY7JTqH9AxQiqJtMPeNdJ4
 fH9dZJcEHLOoJadOdyUmnbRm6+zEpiMTsUvNNoJd77Ki0BVZuIhU6wiqg
 +yPPcF3zjA6dSWPpeuP3UiAy36338GNl+brfhfi8/iL61QNSk99EAmVTM
 i1BJd2E7y93jV6O2H0sc4Y3MfQ3PG5F406jCvElRaSiBp0cFn3TlwuIEM
 NTLlQaYjJieR3FmM3eUyQvx059hHW1hXlicpkUhjTrOOa9idDfO6QN6hA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324242181"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="324242181"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:37:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="660559490"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="660559490"
Received: from melsaid-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.199])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:36:59 -0800
Date: Fri, 20 Jan 2023 12:36:56 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y8p82F28dGpDzPvU@ashyti-mobl2.lan>
References: <20230120110658.1083757-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230120110658.1083757-1-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Get rid of single use
 macros.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 20, 2023 at 06:06:58AM -0500, Rodrigo Vivi wrote:
> No good reason for these indirection cases.

Agree! One time use definitions should be avoided, they just add
complexity.

> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks
Andi

> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 51ba9a8369c5..45773ce1deac 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -649,15 +649,13 @@ i915_drop_caches_get(void *data, u64 *val)
>  	return 0;
>  }
>  
> -#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> -
>  static int
>  gt_drop_caches(struct intel_gt *gt, u64 val)
>  {
>  	int ret;
>  
>  	if (val & DROP_RESET_ACTIVE &&
> -	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
> +	    wait_for(intel_engines_are_idle(gt), 200))
>  		intel_gt_set_wedged(gt);
>  
>  	if (val & DROP_RETIRE)
> @@ -765,7 +763,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
>  	{"i915_sseu_status", i915_sseu_status, 0},
>  	{"i915_rps_boost_info", i915_rps_boost_info, 0},
>  };
> -#define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
>  
>  static const struct i915_debugfs_files {
>  	const char *name;
> @@ -798,6 +795,6 @@ void i915_debugfs_register(struct drm_i915_private *dev_priv)
>  	}
>  
>  	drm_debugfs_create_files(i915_debugfs_list,
> -				 I915_DEBUGFS_ENTRIES,
> +				 ARRAY_SIZE(i915_debugfs_list),
>  				 minor->debugfs_root, minor);
>  }
> -- 
> 2.39.0
