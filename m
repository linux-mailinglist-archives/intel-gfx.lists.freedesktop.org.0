Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A9618588
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 18:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E555C10E604;
	Thu,  3 Nov 2022 17:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855A410E604
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 17:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667494916; x=1699030916;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=V1QJSU0BNipeGwqNFnfa1rxhhHQR5sqDxvjMAMpZ1zE=;
 b=NZRDpCL99cB46403CvV+5ZsrpIJFifMS3+NIDQ/q/HdhMaWf1ktRLz73
 NktG0VnqtwJQSS1Sm6IZq4jyASn0hlD91v1+a6Y90h4viENE1XM4NpktA
 ypmxR6LtHjKw3OzbgF0/HzcF0VpDAGi0s020BhtCx56vPumHxzl7xdz64
 wulSN87QuvsZN/EJ5CGMcKhpawaTzxeCI1aKwPeXleZgO/qRhqssisEgw
 7UFeKTFdV10RjWIyRinFFoeZqXuvBwiGExmUOMFcWAZNKENN4cWWR80BB
 amuv82qJu1hgieSrmKRNmXgU3DbtvpDMx5vE/K6oZy5MhcnyAvadmT064 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307360427"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="307360427"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 10:01:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="585867391"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="585867391"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.164.187])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 10:01:52 -0700
Date: Thu, 03 Nov 2022 10:01:11 -0700
Message-ID: <87zgd8km5k.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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

On Wed, 02 Nov 2022 17:11:49 -0700, Umesh Nerlige Ramappa wrote:
>
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
>
> One solution tried was to reduce the latency between reg read and
> CPU timestamp capture, but such optimization does not add value to user
> since the CPU timestamp obtained here is only used for (1) selftest and
> (2) i915 rps implementation specific to execlist scheduler. Also, this
> solution only reduces the frequency of failure and does not eliminate
> it.
>
> In order to make the selftest more robust and account for such
> latencies, increase the sample period to 100 ms.

Does it make sense, and also by way of documenting, to use 10 ms for
execlists and 100 ms for GuC? Maybe a comment in the code would be nice
too. Thanks.

>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index 0dcb3ed44a73..87c94314cf67 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>		ENGINE_TRACE(engine, "measuring busy time\n");
>		preempt_disable();
>		de = intel_engine_get_busy_time(engine, &t[0]);
> -		mdelay(10);
> +		mdelay(100);
>		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>		preempt_enable();
>		dt = ktime_sub(t[1], t[0]);
> --
> 2.36.1
>
