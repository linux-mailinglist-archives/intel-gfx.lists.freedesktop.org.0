Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB07502BD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 11:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7262D10E3D4;
	Wed, 12 Jul 2023 09:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 070DD10E3D4;
 Wed, 12 Jul 2023 09:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689153553; x=1720689553;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KvDCyUxkc8vO2liTj88FRR6tcaf/Wvbh4o5o9gk6U34=;
 b=Txp0ZsZTP0U51iD/O0dVt0RK/RTyfLCKcmGE2VARZYonvrQ4wuYhrSLP
 fodZFQGi0bcYq9gBvfzU77Z1AqlW0GPfEZysd53iAvM8G2jOZtisYMP2C
 dWl5+8luS2H+uEWghUyBX3RnLJINJpYKc5TXSM7g4Rj37LuOwafYRJLDd
 N8kjO7IFC04rdbITDy8MRelnH5Cem1vG12JsXmZpQ9cF7yiKXiBiHNk9i
 zatViRjwVX1IL2NlNTDtQIQh4manj6YFEefG8d02zFWnFaq/qlmqBWdDM
 l9BvYPXkl28BGpcG5S9QBz6suKdSiRmdf29emyMZBjcCedBBrEDmbxs+M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="349698244"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="349698244"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="866046507"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="866046507"
Received: from eamonnob-mobl1.ger.corp.intel.com (HELO [10.213.237.202])
 ([10.213.237.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:19:12 -0700
Message-ID: <564e2cfd-4597-9f90-d8df-bf028519e689@linux.intel.com>
Date: Wed, 12 Jul 2023 10:19:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230711220204.2085513-1-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230711220204.2085513-1-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/selftest/gsc: Ensure GSC Proxy
 init completes before selftests
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/07/2023 23:02, Alan Previn wrote:
> On MTL, if the GSC Proxy init flows haven't completed, submissions to the
> GSC engine will fail. Those init flows are dependent on the mei's
> gsc_proxy component that is loaded in parallel with i915 and a
> worker that could potentially start after i915 driver init is done.
> 
> That said, all subsytems that access the GSC engine today does check
> for such init flow completion before using the GSC engine. However,
> selftests currently don't wait on anything before starting.
> 
> To fix this, add a waiter function at the start of __run_selftests
> that waits for gsc-proxy init flows to complete.
> 
> Difference from prior versions:
>     v4: - Remove generalized waiters function table framework (Tvrtko).
>         - Remove mention of CI-framework-timeout from comments (Tvrtko).
>     v3: - Rebase to latest drm-tip.
>     v2: - Based on internal testing, increase the timeout for gsc-proxy
>           specific case to 8 seconds.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/selftests/i915_selftest.c    | 25 +++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index 39da0fb0d6d2..bbfaaaeef505 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -24,6 +24,8 @@
>   #include <linux/random.h>
>   
>   #include "gt/intel_gt_pm.h"
> +#include "gt/uc/intel_gsc_fw.h"
> +
>   #include "i915_driver.h"
>   #include "i915_drv.h"
>   #include "i915_selftest.h"
> @@ -127,6 +129,26 @@ static void set_default_test_all(struct selftest *st, unsigned int count)
>   		st[i].enabled = true;
>   }
>   
> +static void
> +__wait_gsc_proxy_completed(struct drm_i915_private *i915)
> +{
> +	bool need_to_wait = (IS_ENABLED(CONFIG_INTEL_MEI_GSC_PROXY) &&
> +			     i915->media_gt &&
> +			     HAS_ENGINE(i915->media_gt, GSC0) &&
> +			     intel_uc_fw_is_loadable(&i915->media_gt->uc.gsc.fw));
> +	/*
> +	 * The gsc proxy component depends on the kernel component driver load ordering
> +	 * and in corner cases (the first time after an IFWI flash), init-completion
> +	 * firmware flows take longer.
> +	 */
> +	unsigned long timeout_ms = 8000;
> +
> +	if (need_to_wait &&
> +	    (wait_for(intel_gsc_uc_fw_proxy_init_done(&i915->media_gt->uc.gsc, true),
> +	    timeout_ms)))
> +		pr_info(DRIVER_NAME "Timed out waiting for gsc_proxy_completion!\n");

Would it make sense to error out here? Or at least upgrade to pr_warn or 
something?

I didn't quite understand the points Daniele raised about engine loops 
and resets - in my mind GSC engine is this special thing exercised for 
highly specialized operations and not touched in random for_each_engine 
loop tests, but I also did not really look so might be totally wrong.

In any case, v4 reads clear - no confusing comments and not 
over-engineered so is acceptable to me.

Regards,

Tvrtko

P.S. Maybe the check *could* be moved to i915_live_selftests, where hw 
dependencies conceptually fit better, and maybe i915_perf_selftests 
would need it too then (?), but it is up to you.

Maybe even in the array selftests/i915_live_selftests.h if we could add 
a facility to make unskippable tests and add this one after the sanity 
check. Which would then achieve the same generalized thing you had in 
the previous version without needing to add a new array/loop.

> +}
> +
>   static int __run_selftests(const char *name,
>   			   struct selftest *st,
>   			   unsigned int count,
> @@ -134,6 +156,9 @@ static int __run_selftests(const char *name,
>   {
>   	int err = 0;
>   
> +	if (data)
> +		__wait_gsc_proxy_completed(data);
> +
>   	while (!i915_selftest.random_seed)
>   		i915_selftest.random_seed = get_random_u32();
>   
> 
> base-commit: 01c4678ab6c623c621a1dea438133e39711291d4
