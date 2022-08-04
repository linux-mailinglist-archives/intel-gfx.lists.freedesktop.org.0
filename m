Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 985C7589977
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 10:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7694211B19A;
	Thu,  4 Aug 2022 08:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C0491589
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 08:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659602797; x=1691138797;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lfk292G/1JDseWmvutRh2/shDgU0WTyul/aA1TPWQ0A=;
 b=el9WJyLiz4GczIsRnREDB8eiTX5a0eeZAQfaSJzXvmiT8+TqjR3beZCC
 giecsDbgq+UlTh5UiAW+3YEdtLeyavqpEjqXbh8o39a/Ti07rXbXgrWZf
 i/BRZWPl8TTKWi9sKRwkt071zmaUhFS2BuJx1hibYrbEzTmxm9CEBLFQ+
 x/+R1KcPnGx/j4OHMtCdu3fSVcTPKah48VJGtXIBshnMMxReufWc6BttE
 3doM5oCWi2rIxmqn10SsHE6CxAJJZNbvE+097QRJZmNhfTFEqo9EJeqbo
 DRghgnHv1DQhVYF5tqOH0kdpjL0jya4yHS8U++K4vhTrZfOQAioCUTmki w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="351592906"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="351592906"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 01:46:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="603145550"
Received: from fzoltan-mobl1.ger.corp.intel.com (HELO [10.213.220.160])
 ([10.213.220.160])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 01:46:35 -0700
Message-ID: <e5e6bd39-de83-63bf-4798-8a58a5328720@linux.intel.com>
Date: Thu, 4 Aug 2022 09:46:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Stuart Summers <stuart.summers@intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
 <20220803230325.137593-2-stuart.summers@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220803230325.137593-2-stuart.summers@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Only disable PMU on stop if
 not already closed
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


On 04/08/2022 00:03, Stuart Summers wrote:
> There can be a race in the PMU process teardown vs the
> time when the driver is unbound in which the user attempts
> to stop the PMU process, but the actual data structure
> in the kernel is no longer available. Avoid this use-after-free
> by skipping the PMU disable in i915_pmu_event_stop() when
> the PMU has already been closed/unregistered by the driver.
> 
> Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 958b37123bf12..0d02f338118e4 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -760,9 +760,17 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>   
>   static void i915_pmu_event_stop(struct perf_event *event, int flags)
>   {
> +	struct drm_i915_private *i915 =
> +		container_of(event->pmu, typeof(*i915), pmu.base);
> +	struct i915_pmu *pmu = &i915->pmu;
> +
> +	if (pmu->closed)
> +		goto out;
> +
>   	if (flags & PERF_EF_UPDATE)
>   		i915_pmu_event_read(event);
>   	i915_pmu_disable(event);
> +out:
>   	event->hw.state = PERF_HES_STOPPED;
>   }
>   

LGTM, although I am not sure who feels comfortable to r-b since we all 
kind of suggested the same fix. :)

FWIW:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
