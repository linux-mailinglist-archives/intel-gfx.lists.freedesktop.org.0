Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFFD1B498C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51F66EA27;
	Wed, 22 Apr 2020 16:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9E06EA27
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 16:06:10 +0000 (UTC)
IronPort-SDR: +jVzbf3C9iDmREXjjefYeaNpaE5kP/sr2NcXEXjgW4Sa7YgJ5o2j/tGZo/aBApI6koz56zAxDL
 k+i2x2DzpSCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 09:06:10 -0700
IronPort-SDR: I5dh/yKx+L7KCsosplI3YCmK0thgLz92zDtl+YcsZf1W/sXnkDJ4ntbPrnaiYR6XUHsNBkvXs4
 LqKXWyMLnmVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,303,1583222400"; d="scan'208";a="429971821"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 22 Apr 2020 09:06:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A2C7F5C1D8E; Wed, 22 Apr 2020 19:04:13 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200422141749.28709-1-chris@chris-wilson.co.uk>
References: <20200422141749.28709-1-chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 19:04:13 +0300
Message-ID: <87sggvld6q.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Drop request-before-CS
 assertion
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

> When we migrated to execlists, one of the conditions we wanted to test
> for was whether the breadcrumb seqno was being written before the
> breadcumb interrupt was delivered. This was following on from issues
> observed on previous generations which were not so strong ordered. With

strongly?

> the removal of the missed interrupt detection, we have not reliable
> means of detecting the out-of-order seqno/interupt but instead tried to
interrupt

> assert that the relationship between the CS event interrupt and the
> breadwrite should be strongly ordered. However, Icelake proves it is
> possible for the HW implementation to forget about minor little details
> such as write ordering and so we the order between *processing* the CS

s/we//

> event and the breadcrumb is unreliable.
>
> Remove the unreliable assertion, but leave a debug telltale in case we
> have reason to suspect.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1658
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 27 ++-------------------------
>  1 file changed, 2 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d42a9d6767d4..eb0d6f1964f4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2384,13 +2384,6 @@ gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
>  	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
>  }
>  
> -static inline void flush_hwsp(const struct i915_request *rq)
> -{
> -	mb();
> -	clflush((void *)READ_ONCE(rq->hwsp_seqno));
> -	mb();
> -}
> -
>  static void process_csb(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists * const execlists = &engine->execlists;
> @@ -2506,19 +2499,8 @@ static void process_csb(struct intel_engine_cs *engine)
>  				const u32 *regs __maybe_unused =
>  					rq->context->lrc_reg_state;
>  

The comment above this scope is quite strong about
strong ordering so that might need amending too.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>


> -				/*
> -				 * Flush the breadcrumb before crying foul.
> -				 *
> -				 * Since we have hit this on icl and seen the
> -				 * breadcrumb advance as we print out the debug
> -				 * info (so the problem corrected itself without
> -				 * lasting damage), and we know that icl suffers
> -				 * from missing global observation points in
> -				 * execlists, presume that affects even more
> -				 * coherency.
> -				 */
> -				flush_hwsp(rq);
> -
> +				ENGINE_TRACE(engine,
> +					     "context completed before request!\n");
>  				ENGINE_TRACE(engine,
>  					     "ring:{start:0x%08x, head:%04x, tail:%04x, ctl:%08x, mode:%08x}\n",
>  					     ENGINE_READ(engine, RING_START),
> @@ -2538,11 +2520,6 @@ static void process_csb(struct intel_engine_cs *engine)
>  					     regs[CTX_RING_START],
>  					     regs[CTX_RING_HEAD],
>  					     regs[CTX_RING_TAIL]);
> -
> -				/* Still? Declare it caput! */
> -				if (!i915_request_completed(rq) &&
> -				    !reset_in_progress(execlists))
> -					GEM_BUG_ON("context completed before request");
>  			}
>  
>  			execlists_schedule_out(*execlists->active++);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
