Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676DD1A1CF9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 09:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0FC26E995;
	Wed,  8 Apr 2020 07:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CC86E995
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 07:58:50 +0000 (UTC)
IronPort-SDR: Z05GTDcej9AfPmggWXj6YbhnZYoUbDZUiGwEWepDdc+fCqn3wTO5MuzUUvRCSA18/wSV41K3ow
 hcp6gj84wo0w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 00:58:50 -0700
IronPort-SDR: Og0/mj82OH5zVLNqC4RqnECkL2l6Bpu9M8xcUb/2rZf5D/BHNyfgQDwWp3QSvyqiCFws0ytfXq
 fIk0F8HMXJpg==
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="425051274"
Received: from drosner-mobl1.ger.corp.intel.com (HELO [10.214.202.120])
 ([10.214.202.120])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 00:58:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200407222625.15542-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c4970550-f56a-221d-413a-5c8bd2718522@linux.intel.com>
Date: Wed, 8 Apr 2020 08:58:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407222625.15542-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Drop vestigal
 timeslicing assert
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


On 07/04/2020 23:26, Chris Wilson wrote:
> Since the semaphore interrupt may cause us to yield the timeslice
> immediately, we may cancel the timer before we notice the submission is
> complete. The assertion is no longer valid due to the race with the
> interrupt.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 43362b8a5855..57db3d0ffaf2 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1073,7 +1073,6 @@ static int live_timeslice_rewind(void *arg)
>   			       engine->name);
>   			goto err;
>   		}
> -		GEM_BUG_ON(!timer_pending(&engine->execlists.timer));
>   
>   		/* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
>   		if (i915_request_is_active(rq[A2])) { /* semaphore yielded! */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
