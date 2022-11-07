Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF7A61F012
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 11:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6915389CFA;
	Mon,  7 Nov 2022 10:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7A289CFA
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 10:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667816184; x=1699352184;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rtUSuxmnRnecC0YiD0fwFG+R3NNyLBVKSbQYjmQ9/X4=;
 b=AtptsTsDAHhbT0p3wAyvA1u9nG234AWxsAxLG9dr+54w0CfEFWi8Pw33
 eDL4RE5tb/MHQoCdtAML5vZ5bzzcPZ8k4zRUwpt4A/HoZfXeUKq3FSAWh
 5OpOMBF9bplJ+YsHji/dndHlDzAkAEM4ZUMpOS4yMyQEi0MQp+vD43U5j
 0RLbn/ox4WHIVD+CxBM+mFTCP3qUpH6elww+bthDMy2oSoT1G6ju2r/Ji
 gWYViYY86NDTeK+LJPW8+dErkVhT3RGygaE04clj8XvvUvJmD/8+le7mC
 eIafBfAxsn7IwaJJwYg1U+Q2xwCTl538B3OLCfelLJ7oKLOQeoElaKZk1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="312141928"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="312141928"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 02:16:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="630433873"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="630433873"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO [10.213.226.227])
 ([10.213.226.227])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 02:16:22 -0800
Message-ID: <01a58f9d-2c9f-1e7c-344b-989ec429a0df@linux.intel.com>
Date: Mon, 7 Nov 2022 10:16:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
 <20221105003235.1717908-3-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221105003235.1717908-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: Bump up sample
 period for busy stats selftest
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


On 05/11/2022 00:32, Umesh Nerlige Ramappa wrote:
> Engine busyness samples around a 10ms period is failing with busyness
> ranging approx. from 87% to 115%. The expected range is +/- 5% of the
> sample period.
> 
> When determining busyness of active engine, the GuC based engine
> busyness implementation relies on a 64 bit timestamp register read. The
> latency incurred by this register read causes the failure.
> 
> On DG1, when the test fails, the observed latencies range from 900us -
> 1.5ms.

Is it at all faster with the locked 2x32 or still the same unexplained 
display related latencies can happen?

> One solution tried was to reduce the latency between reg read and
> CPU timestamp capture, but such optimization does not add value to user
> since the CPU timestamp obtained here is only used for (1) selftest and
> (2) i915 rps implementation specific to execlist scheduler. Also, this
> solution only reduces the frequency of failure and does not eliminate
> it.
> 
> In order to make the selftest more robust and account for such
> latencies, increase the sample period to 100 ms.
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index 0dcb3ed44a73..87c94314cf67 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>   		ENGINE_TRACE(engine, "measuring busy time\n");
>   		preempt_disable();
>   		de = intel_engine_get_busy_time(engine, &t[0]);
> -		mdelay(10);
> +		mdelay(100);
>   		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>   		preempt_enable();
>   		dt = ktime_sub(t[1], t[0]);

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
