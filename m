Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2970B213B50
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 15:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE70D6E149;
	Fri,  3 Jul 2020 13:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BAD46E149
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 13:48:27 +0000 (UTC)
IronPort-SDR: cZ4kdBQg2Mrk4Cz7CmVMeFGADRGaH3wEh45OZbxSFj3CyUu/mPIwDdPeBvP0DmCJAB/WJ57yYB
 i6i8E4GonddQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="135422186"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="135422186"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:48:26 -0700
IronPort-SDR: 8XRkBnsEA4poav4YG+2JMQLE4imbdrLS5gPvKfGVIKL/trtrr+rkNjKRhGjZCWFWpCjLu8hlkl
 sjfb1z082Cjw==
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="455905767"
Received: from rbendor-mobl1.ger.corp.intel.com (HELO [10.214.211.147])
 ([10.214.211.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:48:25 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-19-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <017ac78c-8cfb-0d30-a686-91e34e5ecd14@linux.intel.com>
Date: Fri, 3 Jul 2020 14:48:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703122221.591656-19-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Dirty hack to fix selftests
 locking inversion
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/07/2020 13:22, Maarten Lankhorst wrote:
> Some i915 selftests still use i915_vma_lock() as inner lock, and
> intel_context_create_request() intel_timeline->mutex as outer lock.
> Fortunately for selftests this is not an issue, they should be fixed
> but we can move ahead and cleanify lockdep now.

Mentions and existence of "dirty hacks" will hopefully be removed from 
the series before it can be considered merge ready?

Regards,

Tvrtko

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 64948386630f..fe9fff5a63b1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -459,6 +459,18 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
>   	rq = i915_request_create(ce);
>   	intel_context_unpin(ce);
>   
> +	if (IS_ERR(rq))
> +		return rq;
> +
> +	/*
> +	 * timeline->mutex should be the inner lock, but is used as outer lock.
> +	 * Hack around this to shut up lockdep in selftests..
> +	 */
> +	lockdep_unpin_lock(&ce->timeline->mutex, rq->cookie);
> +	mutex_release(&ce->timeline->mutex.dep_map, _RET_IP_);
> +	mutex_acquire(&ce->timeline->mutex.dep_map, SINGLE_DEPTH_NESTING, 0, _RET_IP_);
> +	rq->cookie = lockdep_pin_lock(&ce->timeline->mutex);
> +
>   	return rq;
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
