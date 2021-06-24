Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0D53B2BCC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 11:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B4B6EB42;
	Thu, 24 Jun 2021 09:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20BA6EB42
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 09:49:00 +0000 (UTC)
IronPort-SDR: LMten/0ieALgA0UGcBcx8rIQaP7GCxLWaF7JOVXPug3OwCuCwoa7+WX9gYXi5qsKCmxuvXfzyO
 CCqcRS5ZQzIQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207254803"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207254803"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 02:48:45 -0700
IronPort-SDR: 9OJO/olZh+ZvjlM6WBOFBTizjuqerqKqgt4msGuSNDhoYaExxzvgpfIkonzpTJeShWNGY9NW87
 Iv+hM7tnc98w==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="454999611"
Received: from akaluza-mobl.ger.corp.intel.com (HELO [10.213.220.199])
 ([10.213.220.199])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 02:48:44 -0700
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210623072144.890147-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <67246d0b-bc74-7b5b-23ae-a1895acea8bb@linux.intel.com>
Date: Thu, 24 Jun 2021 10:48:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210623072144.890147-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Extend ctx_timestamp ICL
 workaround to GEN11
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


On 23/06/2021 08:21, Tejas Upadhyay wrote:
> EHL and JSL are also observing requirement for 80ns interval for
> CTX_TIMESTAMP thus extending it to GEN11.

If testing confirms this:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

You only may need to change that INTEL_GEN to GRAPHICS_VER since I think 
that's the new thing now.

Regards,

Tvrtko

> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index 72cca3f0da21..d0afadf34649 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -173,8 +173,8 @@ static int __live_engine_timestamps(struct intel_engine_cs *engine)
>   	d_ctx = trifilter(s_ctx);
>   
>   	d_ctx *= engine->gt->clock_frequency;
> -	if (IS_ICELAKE(engine->i915))
> -		d_ring *= 12500000; /* Fixed 80ns for icl ctx timestamp? */
> +	if (IS_GEN(engine->i915, 11))
> +		d_ring *= 12500000; /* Fixed 80ns for GEN11 ctx timestamp? */
>   	else
>   		d_ring *= engine->gt->clock_frequency;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
