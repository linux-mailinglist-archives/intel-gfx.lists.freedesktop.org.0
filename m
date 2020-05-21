Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CA1DCEA5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 15:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763C56E21C;
	Thu, 21 May 2020 13:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9D96E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 13:54:53 +0000 (UTC)
IronPort-SDR: J4EAfnfLI/fTfZdFBKf3MFGRUnFI4MMvgCA55mZQogqimXccm9n1vndUukvHd6l+BvVeSQ7tKV
 YW03AF8N/X0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 06:54:53 -0700
IronPort-SDR: bB3W45TBixXGkxFu1yyo53dNsYv1QhGMMTAf8+fYahRF32+WV1LSjWlG5js8BC39KF06MDPzq/
 jw0HZDhHzqCw==
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="412398442"
Received: from cpinhasx-mobl.ger.corp.intel.com (HELO [10.254.152.79])
 ([10.254.152.79])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 06:54:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200521124304.3157692-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2fb55543-c9fe-2b90-386e-4f98367f60aa@linux.intel.com>
Date: Thu, 21 May 2020 14:54:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521124304.3157692-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the submission,
 not cancel it!
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


On 21/05/2020 13:43, Chris Wilson wrote:
> Use intel_engine_flush_submission() when we want to ensure that the
> tasklet is run. tasklet_kill(), while it may ensure that an ongoing
> tasklet is completed, also prevents the tasklet from running if it's
> already scheduled and hasn't yet been run.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1874
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index ef38dd52945c..66f710b1b61e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -332,7 +332,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
>   		i915_request_put(rq[0]);
>   
>   err_ce:
> -		tasklet_kill(&engine->execlists.tasklet); /* flush submission */
> +		intel_engine_flush_submission(engine);
>   		igt_spinner_end(&spin);
>   		for (n = 0; n < ARRAY_SIZE(ce); n++) {
>   			if (IS_ERR_OR_NULL(ce[n]))
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
