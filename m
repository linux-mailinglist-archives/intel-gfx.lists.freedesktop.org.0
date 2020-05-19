Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1D1D98BC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 16:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D209489F9F;
	Tue, 19 May 2020 14:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1F189F9F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 14:00:32 +0000 (UTC)
IronPort-SDR: hfcMhROlqYJwWNVoZsEG5vJqnUO9tRy1nx0c9UjkpR2aEf649S/H6VkXTd9RHu+azat97rg7hx
 Xn4vbPpfR0vw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 07:00:30 -0700
IronPort-SDR: VOj1zGfc/7yUhfwE4vrg8hJxwEpY7CQensnf/J+fTTv2Z/FCedElbBcNzdHkJDN5jvP0/Yzxn8
 P/18kMd8kHYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="343143099"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2020 07:00:28 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9FF285C03F7; Tue, 19 May 2020 16:58:09 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200519063123.20673-2-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
 <20200519063123.20673-2-chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 16:58:09 +0300
Message-ID: <87k11858ni.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/selftests: Change priority
 overflow detection
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Check for integer overflow in the priority chain, rather than against a
> type-constricted max-priority check.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 94854a467e66..3e042fa4b94b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2735,12 +2735,12 @@ static int live_preempt_gang(void *arg)
>  			/* Submit each spinner at increasing priority */
>  			engine->schedule(rq, &attr);
>  
> +			if (prio < attr.priority)
> +				break;
> +
>  			if (prio <= I915_PRIORITY_MAX)
>  				continue;
>  
> -			if (prio > (INT_MAX >> I915_USER_PRIORITY_SHIFT))
> -				break;
> -
>  			if (__igt_timeout(end_time, NULL))
>  				break;
>  		} while (1);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
