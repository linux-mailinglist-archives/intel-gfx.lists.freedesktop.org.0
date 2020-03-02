Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C257175C8A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B1A6E2B1;
	Mon,  2 Mar 2020 14:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50FBC6E2B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:05:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="286627611"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2020 06:05:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9E0805C1DA2; Mon,  2 Mar 2020 16:04:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200302085812.4172450-12-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-12-chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 16:04:23 +0200
Message-ID: <87r1ya7t08.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/22] drm/i915/execlists: Check the
 sentinel is alone in the ELSP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We only use sentinel requests for "preempt-to-idle" passes, so assert
> that they are the only request in a new submission.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

From other thread,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 15d56cd3937e..b9b3f78f1324 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1448,6 +1448,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  {
>  	struct i915_request * const *port, *rq;
>  	struct intel_context *ce = NULL;
> +	bool sentinel = false;
>  
>  	trace_ports(execlists, msg, execlists->pending);
>  
> @@ -1481,6 +1482,26 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  		}
>  		ce = rq->context;
>  
> +		/*
> +		 * Sentinels are supposed to be lonely so they flush the
> +		 * current exection off the HW. Check that they are the
> +		 * only request in the pending submission.
> +		 */
> +		if (sentinel) {
> +			GEM_TRACE_ERR("context:%llx after sentinel in pending[%zd]\n",
> +				      ce->timeline->fence_context,
> +				      port - execlists->pending);
> +			return false;
> +		}
> +
> +		sentinel = i915_request_has_sentinel(rq);
> +		if (sentinel && port != execlists->pending) {
> +			GEM_TRACE_ERR("sentinel context:%llx not in prime position[%zd]\n",
> +				      ce->timeline->fence_context,
> +				      port - execlists->pending);
> +			return false;
> +		}
> +
>  		/* Hold tightly onto the lock to prevent concurrent retires! */
>  		if (!spin_trylock_irqsave(&rq->lock, flags))
>  			continue;
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
