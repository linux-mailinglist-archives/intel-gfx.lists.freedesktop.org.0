Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EAE1B2A72
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69AA6E99F;
	Tue, 21 Apr 2020 14:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC46F6E99F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:47:19 +0000 (UTC)
IronPort-SDR: w+nJjcTFn5JNVuX4T9APKQCkxfW7y3PZP2lH93uUG4S6782YAH7Ru0lsqP8Kz2y0t5ogBY9iIH
 wBVrMXpaDZ+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:47:13 -0700
IronPort-SDR: r7Jd9zm51s5hnBZRDGK4WvL4mFVW2jiEwnzmFFQeuiQG6BPBnAsf4XkWP/6ROckNHULemFIqGY
 UpZFSlR9dQrg==
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="429551833"
Received: from wwojtkie-mobl.ger.corp.intel.com (HELO [10.252.50.229])
 ([10.252.50.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:47:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200421085939.31410-1-chris@chris-wilson.co.uk>
 <20200421092504.7416-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3aa1e192-02cc-107d-f0f6-a78d6f08a0e4@linux.intel.com>
Date: Tue, 21 Apr 2020 15:47:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421092504.7416-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: Poison residual state
 [HWSP] across resume.
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


On 21/04/2020 10:25, Chris Wilson wrote:
> Since we may lose the content of any buffer when we relinquish control
> of the system (e.g. suspend/resume), we have to be careful not to rely
> on regaining control. A good method to detect when we might be using
> garbage is by always injecting that garbage prior to first use on
> load/resume/etc.
> 
> v2: Drop sanitize callback on cleanup
> v3: Move seqno reset to timeline enter, so we reset all timelines.
> However, this is done on every activation during runtime and not reset.
> The similar level of paranoia we apply to correcting context state after
> a period of inactivity.
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
> Reset in sanitize, for we may attempt to park the engine before using
> any timelines.
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c      | 23 ++++++++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_timeline.c | 17 ++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_timeline.h |  2 ++
>   3 files changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 34f67eb9bfa1..d42a9d6767d4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3649,7 +3649,26 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>   
>   static void execlists_sanitize(struct intel_engine_cs *engine)
>   {
> +	/*
> +	 * Poison residual state on resume, in case the suspend didn't!
> +	 *
> +	 * We have to assume that across suspend/resume (or other loss
> +	 * of control) that the contents of our pinned buffers has been
> +	 * lost, replaced by garbage. Since this doesn't always happen,
> +	 * let's poison such state so that we more quickly spot when
> +	 * we falsely assume it has been preserved.
> +	 */
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		memset(engine->status_page.addr, POISON_INUSE, PAGE_SIZE);
> +
>   	reset_csb_pointers(engine);
> +
> +	/*
> +	 * The kernel_context HWSP is stored in the status_page. As above,
> +	 * that may be lost on resume/initialisation, and so we need to
> +	 * reset the value in the HWSP.
> +	 */
> +	intel_timeline_reset_seqno(engine->kernel_context->timeline);
>   }
>   
>   static void enable_error_interrupt(struct intel_engine_cs *engine)
> @@ -4539,6 +4558,8 @@ static void execlists_shutdown(struct intel_engine_cs *engine)
>   
>   static void execlists_release(struct intel_engine_cs *engine)
>   {
> +	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
> +
>   	execlists_shutdown(engine);
>   
>   	intel_engine_cleanup_common(engine);
> @@ -4550,7 +4571,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   {
>   	/* Default vfuncs which can be overriden by each engine. */
>   
> -	engine->sanitize = execlists_sanitize;
>   	engine->resume = execlists_resume;
>   
>   	engine->cops = &execlists_context_ops;
> @@ -4666,6 +4686,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>   		execlists->csb_size = GEN11_CSB_ENTRIES;
>   
>   	/* Finally, take ownership and responsibility for cleanup! */
> +	engine->sanitize = execlists_sanitize;
>   	engine->release = execlists_release;
>   
>   	return 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 3779c2ae0d65..29a39e44fa36 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -337,6 +337,13 @@ int intel_timeline_pin(struct intel_timeline *tl)
>   	return 0;
>   }
>   
> +void intel_timeline_reset_seqno(const struct intel_timeline *tl)
> +{
> +	/* Must be pinned to be writable, and no requests in flight. */
> +	GEM_BUG_ON(!atomic_read(&tl->pin_count));
> +	WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
> +}
> +
>   void intel_timeline_enter(struct intel_timeline *tl)
>   {
>   	struct intel_gt_timelines *timelines = &tl->gt->timelines;
> @@ -365,8 +372,16 @@ void intel_timeline_enter(struct intel_timeline *tl)
>   		return;
>   
>   	spin_lock(&timelines->lock);
> -	if (!atomic_fetch_inc(&tl->active_count))
> +	if (!atomic_fetch_inc(&tl->active_count)) {
> +		/*
> +		 * The HWSP is volatile, and may have been lost while inactive,
> +		 * e.g. across suspend/resume. Be paranoid, and ensure that
> +		 * the HWSP value matches our seqno so we don't proclaim
> +		 * the next request as already complete.
> +		 */
> +		intel_timeline_reset_seqno(tl);
>   		list_add_tail(&tl->link, &timelines->active_list);
> +	}
>   	spin_unlock(&timelines->lock);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
> index f5b7eade3809..c8e59a333182 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.h
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
> @@ -84,6 +84,8 @@ int intel_timeline_get_seqno(struct intel_timeline *tl,
>   void intel_timeline_exit(struct intel_timeline *tl);
>   void intel_timeline_unpin(struct intel_timeline *tl);
>   
> +void intel_timeline_reset_seqno(const struct intel_timeline *tl);
> +
>   int intel_timeline_read_hwsp(struct i915_request *from,
>   			     struct i915_request *until,
>   			     u32 *hwsp_offset);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
