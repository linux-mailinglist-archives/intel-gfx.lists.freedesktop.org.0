Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAF167B4BA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 15:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F1E10E104;
	Wed, 25 Jan 2023 14:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B6910E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 14:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674657394; x=1706193394;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MMpzFQcWdstS4jgeWu4LDwB89/wpbQKJZ5AmsyN4YaI=;
 b=a8uhgZ2eNJuw5tgF29YqNJoefv3WD3jWn46a3ucb8EoGDse45Shyyc9m
 nfr/2Gr6vHS48L385AenNC+cs2L5ttRQUG1ZqHTQzjplkZgZaRQTe32j8
 pdPrwOJ3KEChUW9ldMVGZbAnddG01e8Mi4BPprq7UFaaS50Km9J6AEcVA
 /tN3PVJ5NOkTdJH0h6dlOkDYZhhBSH6TxYq0nhH9s93eULZoaz+Npefin
 +Du4Ubg8fF/4cQ2ItmLCnABJZrMRNzUX0iasRAquLiNJjvWTVOzTmZbUX
 400yVYH3wGICpEAr5i+0rToV1LXfi1YGZeO2PIDfjAphkRR4yaygFfrrE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="324268712"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="324268712"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 06:36:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="805017592"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="805017592"
Received: from sjuberti-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.92])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 06:36:32 -0800
Date: Wed, 25 Jan 2023 15:36:30 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9E+bqC2uSuXetNK@ashyti-mobl2.lan>
References: <20230125100003.18243-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125100003.18243-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl/selftests: Flush all tiles on
 test exit
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

Hi Nirmoy,

On Wed, Jan 25, 2023 at 11:00:03AM +0100, Nirmoy Das wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We want to idle all tiles when exiting selftests.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

except from the tag list and the title I guess this is the same
patch as the previous one, right? Can you please add some
versioning next time?

If it's the same this patch then it's good to be pushed. Just a
little failure that is independent from this change.

BTW, why is there a "mtl" prfix in the title while in the
previous version it was "xehpsdv"? I can understand the latter 
because originally xehpsdv was a synonymous with multi-gt. But
it's not the case anymore. If you don't mind I would remove it
before pushing.

Andi

> ---
>  .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
>  1 file changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> index b484e12df417..29110abb4fe0 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> @@ -14,21 +14,27 @@
>  
>  int igt_flush_test(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = to_gt(i915);
> -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret = 0;
>  
> -	cond_resched();
> +	for_each_gt(gt, i915, i) {
> +		if (intel_gt_is_wedged(gt))
> +			ret = -EIO;
>  
> -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> -		pr_err("%pS timed out, cancelling all further testing.\n",
> -		       __builtin_return_address(0));
> +		cond_resched();
>  
> -		GEM_TRACE("%pS timed out.\n",
> -			  __builtin_return_address(0));
> -		GEM_TRACE_DUMP();
> +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> +			pr_err("%pS timed out, cancelling all further testing.\n",
> +			       __builtin_return_address(0));
>  
> -		intel_gt_set_wedged(gt);
> -		ret = -EIO;
> +			GEM_TRACE("%pS timed out.\n",
> +				  __builtin_return_address(0));
> +			GEM_TRACE_DUMP();
> +
> +			intel_gt_set_wedged(gt);
> +			ret = -EIO;
> +		}
>  	}
>  
>  	return ret;
> -- 
> 2.39.0
