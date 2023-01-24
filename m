Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A426C679E43
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 17:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFA010E6BC;
	Tue, 24 Jan 2023 16:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA1210E6BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 16:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674576650; x=1706112650;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xn8cATOscIrieqO4m6ftgw0xrGIOo/Ou82SJxB7pYlc=;
 b=V60P0S5yO1Sd4A5NwdpFog/ZQWx6dxY0GW00M8L4UoMkSKlJJH8XhjJn
 MZPQTn6vADq/LhC0xIwGwfBPqrzGy10H3GfsrYM6yKbYSBGxwNJCMEs50
 tIeYuRWrIPVmShQCrv/0dvPetTKxrCY/ErYcSFlMxrs/PD+si0OV2ESwF
 VaPRnh+GzNQKH5yOSp8TcaOVRUYY3crtqYUZxpruRPYLUdYIfNIxMDaAP
 RBjq7cOsRw0U3lkQ16XdmO2rj2CP6d7/8gZN1cBd5MfztMSaftwb7Bi7d
 my1O2NkWGbQiVLzRuTlcfhqP+ITsyqWILbSx/F9jWz4yA4kqJbmsNvWUx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="305990991"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="305990991"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 08:10:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="750872639"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="750872639"
Received: from nmalinin-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.56.132])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 08:10:24 -0800
Date: Tue, 24 Jan 2023 17:10:22 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9AC7hp6JFMe+w/J@ashyti-mobl2.lan>
References: <20230124142212.18498-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124142212.18498-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xehpsdv/selftests: Flush all tiles
 on test exit
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Tue, Jan 24, 2023 at 03:22:12PM +0100, Nirmoy Das wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We want to idle all tiles when exiting selftests.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

...

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

I'm just wondering if it makes sense to check if the gt is
wedged.

Andi

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
