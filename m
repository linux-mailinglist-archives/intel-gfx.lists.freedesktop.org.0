Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA23F617C86
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 13:28:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E112810E288;
	Thu,  3 Nov 2022 12:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EBDA10E288
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 12:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667478529; x=1699014529;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=fyN+UGP4p4UBiAyiDTifEISWIxY5MH3ukgAU93BcVZc=;
 b=Dn85e89XEPYU7zYGlesB+UTeSNjv0hcgeZgP2NuU12qllVkLRhJ+c7BS
 6Iu06yESQqCmeiVZUaowaTZwNkrJ17mTK4t7Qhg99dEQjhtfcl+kcoDUC
 DnPYY9cyyepcr3+dDM+K1v7s1dhTykEoP4FHYI/wXFEL9UGVJGMTUQ0Ok
 petIKCKrbsYr3SdaKeAvizOY3zNyG7SH6+a9B+3R1xDaY4l9b38j/Lh8v
 LDAYVWa/PptQawu3DWX3Y2O+Oc1nvF9NrDTS8IR7EwmHfMEp89yTYAoYT
 yf7T52ce3M1q/Acyig01KwYKuYzK6Mxf+701ouBktbA2WLoGSbUTvHBr+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309662857"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="309662857"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 05:28:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="723928371"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="723928371"
Received: from khogan-mobl1.ger.corp.intel.com (HELO [10.213.226.17])
 ([10.213.226.17])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 05:28:48 -0700
Message-ID: <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
Date: Thu, 3 Nov 2022 12:28:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/11/2022 00:11, Umesh Nerlige Ramappa wrote:
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

Do I read this right - that the latency of a 64 bit timestamp register 
read is 0.9 - 1.5ms? That would be the read in guc_update_pm_timestamp?

Regards,

Tvrtko

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
