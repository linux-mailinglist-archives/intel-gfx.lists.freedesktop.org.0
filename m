Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB891ADCF2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 14:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E036EBC9;
	Fri, 17 Apr 2020 12:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733B46EBC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 12:09:56 +0000 (UTC)
IronPort-SDR: 40eHIxGU4QmvJ+4qFg7cBQm6OorzhfZE6Q1vqmyVtftJcLTjUArUh/cj9TyPdzx5zO4rWxWTYy
 XuRxVbnKW3wA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 05:09:56 -0700
IronPort-SDR: PKu4jcNOqYmdNZjdBaovxDg2PryoFhEYGm6j4Gb6Nl9I6NriRow0zNKXPDOlQSctrgn7QKtkmh
 7fk8V93ECfsg==
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="428209513"
Received: from clroth-mobl2.ger.corp.intel.com (HELO [10.249.43.16])
 ([10.249.43.16])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 05:09:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200416114117.3460-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3a6ec509-055a-8dde-4daf-d168eb12e548@linux.intel.com>
Date: Fri, 17 Apr 2020 13:09:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200416114117.3460-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Scrub execlists state on resume
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/04/2020 12:41, Chris Wilson wrote:
> Before we resume, we reset the HW so we restart from a known good state.
> However, as a part of the reset process, we drain our pending CS event
> queue -- and if we are resuming that does not correspond to internal
> state. On setup, we are scrubbing the CS pointers, but alas only on
> setup.
> 
> Apply the sanitization not just to setup, but to all resumes.
> 
> Reported-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c        |  4 ++
>   drivers/gpu/drm/i915/gt/intel_lrc.c          | 72 +++++++++++---------
>   3 files changed, 43 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index f3c9d302ecf8..ebe20de7eb70 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -411,6 +411,7 @@ struct intel_engine_cs {
>   	void		(*irq_enable)(struct intel_engine_cs *engine);
>   	void		(*irq_disable)(struct intel_engine_cs *engine);
>   
> +	void		(*sanitize)(struct intel_engine_cs *engine);
>   	int		(*resume)(struct intel_engine_cs *engine);
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 3e8a56c7d818..6bdb74892a1e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -147,6 +147,10 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>   	if (intel_gt_is_wedged(gt))
>   		intel_gt_unset_wedged(gt);
>   
> +	for_each_engine(engine, gt, id)
> +		if (engine->sanitize)
> +			engine->sanitize(engine);
> +
>   	intel_uc_sanitize(&gt->uc);
>   
>   	for_each_engine(engine, gt, id)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 6fbad5e2343f..34f67eb9bfa1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3615,6 +3615,43 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
>   	return ret;
>   }
>   
> +static void reset_csb_pointers(struct intel_engine_cs *engine)
> +{
> +	struct intel_engine_execlists * const execlists = &engine->execlists;
> +	const unsigned int reset_value = execlists->csb_size - 1;
> +
> +	ring_set_paused(engine, 0);
> +
> +	/*
> +	 * After a reset, the HW starts writing into CSB entry [0]. We
> +	 * therefore have to set our HEAD pointer back one entry so that
> +	 * the *first* entry we check is entry 0. To complicate this further,
> +	 * as we don't wait for the first interrupt after reset, we have to
> +	 * fake the HW write to point back to the last entry so that our
> +	 * inline comparison of our cached head position against the last HW
> +	 * write works even before the first interrupt.
> +	 */
> +	execlists->csb_head = reset_value;
> +	WRITE_ONCE(*execlists->csb_write, reset_value);
> +	wmb(); /* Make sure this is visible to HW (paranoia?) */
> +
> +	/*
> +	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
> +	 * Bludgeon them with a mmio update to be sure.
> +	 */
> +	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
> +		     reset_value << 8 | reset_value);
> +	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
> +
> +	invalidate_csb_entries(&execlists->csb_status[0],
> +			       &execlists->csb_status[reset_value]);
> +}
> +
> +static void execlists_sanitize(struct intel_engine_cs *engine)
> +{
> +	reset_csb_pointers(engine);
> +}
> +
>   static void enable_error_interrupt(struct intel_engine_cs *engine)
>   {
>   	u32 status;
> @@ -3754,38 +3791,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>   	intel_engine_stop_cs(engine);
>   }
>   
> -static void reset_csb_pointers(struct intel_engine_cs *engine)
> -{
> -	struct intel_engine_execlists * const execlists = &engine->execlists;
> -	const unsigned int reset_value = execlists->csb_size - 1;
> -
> -	ring_set_paused(engine, 0);
> -
> -	/*
> -	 * After a reset, the HW starts writing into CSB entry [0]. We
> -	 * therefore have to set our HEAD pointer back one entry so that
> -	 * the *first* entry we check is entry 0. To complicate this further,
> -	 * as we don't wait for the first interrupt after reset, we have to
> -	 * fake the HW write to point back to the last entry so that our
> -	 * inline comparison of our cached head position against the last HW
> -	 * write works even before the first interrupt.
> -	 */
> -	execlists->csb_head = reset_value;
> -	WRITE_ONCE(*execlists->csb_write, reset_value);
> -	wmb(); /* Make sure this is visible to HW (paranoia?) */
> -
> -	/*
> -	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
> -	 * Bludgeon them with a mmio update to be sure.
> -	 */
> -	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
> -		     reset_value << 8 | reset_value);
> -	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
> -
> -	invalidate_csb_entries(&execlists->csb_status[0],
> -			       &execlists->csb_status[reset_value]);
> -}
> -
>   static void __reset_stop_ring(u32 *regs, const struct intel_engine_cs *engine)
>   {
>   	int x;
> @@ -4545,6 +4550,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   {
>   	/* Default vfuncs which can be overriden by each engine. */
>   
> +	engine->sanitize = execlists_sanitize;
>   	engine->resume = execlists_resume;
>   
>   	engine->cops = &execlists_context_ops;
> @@ -4659,8 +4665,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>   	else
>   		execlists->csb_size = GEN11_CSB_ENTRIES;
>   
> -	reset_csb_pointers(engine);
> -
>   	/* Finally, take ownership and responsibility for cleanup! */
>   	engine->release = execlists_release;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
