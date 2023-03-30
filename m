Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF546D04A9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 14:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4AB10EDF9;
	Thu, 30 Mar 2023 12:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A083510EDF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 12:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680179246; x=1711715246;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NujmrGxdxjqdbU1nw3n9OV/5pl3Ave48MPj2aqvh9ug=;
 b=AP/iUnFnN81bJttUw+ckxVnZrdyhNP9DX6wLOjrfoyTCcSnW1DtozSd9
 eZSxEfPeI9J0MJyjY0k2wsd7fI8SPka21gZCMalQ19F/EZq+BB708IUYw
 5Ow++cApeq0tbrmE0civpnnMMBRDCkJnAW7jcXOGkCOyzah1vz4GiedpQ
 R54DoMzV9ikr8vhXEaC5Gz508V+wkf7pGzpFoJG7wAxuJoLHEEs7ln/nR
 NSofG1vmQFEgEpoveqyfGXJ1WVbSEZrUsE/WA+H5jhIa3qYxK2PjiIu4w
 bwLBkgpPxvhZjNSNYcCthNgWC7N7V74jDq99wVUCV/wHYnjxzkTSWMJfB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="320803482"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="320803482"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 05:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="858899483"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="858899483"
Received: from bjmcgrat-mobl.amr.corp.intel.com (HELO [10.213.215.205])
 ([10.213.215.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 05:27:24 -0700
Message-ID: <e9cfa10b-3892-a197-0df8-bd4f96310201@linux.intel.com>
Date: Thu, 30 Mar 2023 13:27:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-2-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230330004103.1295413-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/pmu: Support PMU for all
 engines
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


On 30/03/2023 01:40, Umesh Nerlige Ramappa wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Given how the metrics are already exported, we also need to run sampling
> over engines from all GTs.
> 
> Problem of GT frequencies is left for later.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Just a reminder to add your s-o-b while moving patches from internal to 
upstream.

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 7ece883a7d95..e274dba58629 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -10,6 +10,7 @@
>   #include "gt/intel_engine_pm.h"
>   #include "gt/intel_engine_regs.h"
>   #include "gt/intel_engine_user.h"
> +#include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_rc6.h"
> @@ -414,8 +415,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>   	struct drm_i915_private *i915 =
>   		container_of(hrtimer, struct drm_i915_private, pmu.timer);
>   	struct i915_pmu *pmu = &i915->pmu;
> -	struct intel_gt *gt = to_gt(i915);
>   	unsigned int period_ns;
> +	struct intel_gt *gt;
> +	unsigned int i;
>   	ktime_t now;
>   
>   	if (!READ_ONCE(pmu->timer_enabled))
> @@ -431,8 +433,14 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>   	 * grabbing the forcewake. However the potential error from timer call-
>   	 * back delay greatly dominates this so we keep it simple.
>   	 */
> -	engines_sample(gt, period_ns);
> -	frequency_sample(gt, period_ns);
> +
> +	for_each_gt(gt, i915, i) {
> +		engines_sample(gt, period_ns);
> +
> +		/* Sample only gt0 until gt support is added for frequency */
> +		if (i == 0)
> +			frequency_sample(gt, period_ns);
> +	}
>   
>   	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>   
