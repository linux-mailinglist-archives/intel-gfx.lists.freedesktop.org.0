Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B182CF055
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 16:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EF96E198;
	Fri,  4 Dec 2020 15:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F106E17F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 15:06:11 +0000 (UTC)
IronPort-SDR: Ab8NTo1jBTg5dD7Jlrm8Tzc/hmMrT7ajkGakhSFwG4niZWSxEcG4u4J1tlwJ4Pizx6c7fnnz8Y
 +NhYGoMOMovg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="258101234"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="258101234"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 07:06:11 -0800
IronPort-SDR: 0KzdOnQ7FIoGWUkp9EIe1QfBgOSIa8vPp30LlDyfNEKYpdmmelWBtA9Hq3PbjNNhite2sfiC6+
 v0oKmWMif8JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="346630844"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 04 Dec 2020 07:06:09 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D2B6E5C2069; Fri,  4 Dec 2020 17:03:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201204140315.24341-2-chris@chris-wilson.co.uk>
References: <20201204140315.24341-1-chris@chris-wilson.co.uk>
 <20201204140315.24341-2-chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 17:03:57 +0200
Message-ID: <877dpx395u.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/24] drm/i915/gt: Ignore repeated attempts
 to suspend request flow across reset
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Before reseting the engine, we suspend the execution of the guilty
> request, so that we can continue execution with a new context while we
> slowly compress the captured error state for the guilty context. However,
> if the reset fails, we will promptly attempt to reset the same request
> again, and discover the ongoing capture. Ignore the second attempt to
> suspend and capture the same request.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1168
> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v5.7+

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 43703efb36d1..1d209a8a95e8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2823,6 +2823,9 @@ static void __execlists_hold(struct i915_request *rq)
>  static bool execlists_hold(struct intel_engine_cs *engine,
>  			   struct i915_request *rq)
>  {
> +	if (i915_request_on_hold(rq))
> +		return false;
> +
>  	spin_lock_irq(&engine->active.lock);
>  
>  	if (i915_request_completed(rq)) { /* too late! */
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
