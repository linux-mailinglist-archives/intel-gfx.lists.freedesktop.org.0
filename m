Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7201280AC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 17:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607116EC73;
	Fri, 20 Dec 2019 16:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397426EC73
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 16:30:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="390914991"
Received: from speedy.fi.intel.com (HELO [10.237.72.184]) ([10.237.72.184])
 by orsmga005.jf.intel.com with ESMTP; 20 Dec 2019 08:29:56 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191219164551.9402-1-chris@chris-wilson.co.uk>
From: Eero Tamminen <eero.t.tamminen@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <5ad0762d-7df3-1ebf-e930-8c2665a0659a@intel.com>
Date: Fri, 20 Dec 2019 18:30:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191219164551.9402-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only disable powergating
 around rcs activity
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

Hi,

According to quick testing I did, this clearly helps with low-power 
Media transcoding on BXT, and a bit on some other cases both on BXT & 
KBL GT3e.

However, it also seems to regress some cases.  They have too much 
variance to say for sure though (and because I can't build exactly same 
commit due to drm-tip getting rebased all the time).

Cases that may have regressed are similar to low-power ones, just using 
MediaSDK sample application and compute for encoding. For example:
sample_multi_transcode -i::h264 720x480p_30.00_4mb_h264_cabac_180s.264 
-o::h264 output.h264 -b 2000 -u 4 -n 4800 -async 4 -hw

(Chris, MediaSDK build installs sample_multi_transcode to 
share/mfx/samples/ directory.)


	- Eero

On 19.12.2019 18.45, Chris Wilson wrote:
> References: https://gitlab.freedesktop.org/drm/intel/issues/846
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c |  4 ++
>   drivers/gpu/drm/i915/gt/intel_rc6.c       | 46 +++++++++++++++++++----
>   drivers/gpu/drm/i915/gt/intel_rc6.h       |  3 ++
>   drivers/gpu/drm/i915/gt/intel_rc6_types.h |  6 +++
>   4 files changed, 52 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 8fb7b34fc5a6..1886d604f1ad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -36,6 +36,8 @@ static int __engine_unpark(struct intel_wakeref *wf)
>   	if (engine->unpark)
>   		engine->unpark(engine);
>   
> +	intel_rc6_unpark_engine(&engine->gt->rc6, engine);
> +
>   	intel_engine_unpark_heartbeat(engine);
>   	return 0;
>   }
> @@ -232,6 +234,8 @@ static int __engine_park(struct intel_wakeref *wf)
>   	intel_engine_disarm_breadcrumbs(engine);
>   	intel_engine_pool_park(&engine->pool);
>   
> +	intel_rc6_park_engine(&engine->gt->rc6, engine);
> +
>   	/* Must be reset upon idling, or we may miss the busy wakeup. */
>   	GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 9e303c29d6e3..7024c34917a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -175,13 +175,7 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>   		GEN6_RC_CTL_RC6_ENABLE |
>   		rc6_mode;
>   
> -	/*
> -	 * WaRsDisableCoarsePowerGating:skl,cnl
> -	 *   - Render/Media PG need to be disabled with RC6.
> -	 */
> -	if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)))
> -		set(uncore, GEN9_PG_ENABLE,
> -		    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
> +	rc6->engines[RENDER_CLASS].pg_enable = GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE;
>   }
>   
>   static void gen8_rc6_enable(struct intel_rc6 *rc6)
> @@ -601,6 +595,44 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>   	set(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>   }
>   
> +void intel_rc6_unpark_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine)
> +{
> +	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> +	struct intel_pg_engine *e = &rc6->engines[engine->class];
> +
> +	if (!rc6->enabled)
> +		return;
> +
> +	if (!e->pg_enable)
> +		return;
> +
> +	spin_lock_irq(&uncore->lock);
> +	if (!e->active++) {
> +		rc6->pg_enable &= ~e->pg_enable;
> +		set(uncore, GEN9_PG_ENABLE, rc6->pg_enable);
> +	}
> +	spin_unlock_irq(&uncore->lock);
> +}
> +
> +void intel_rc6_park_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine)
> +{
> +	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> +	struct intel_pg_engine *e = &rc6->engines[engine->class];
> +
> +	if (!rc6->enabled)
> +		return;
> +
> +	if (!e->pg_enable)
> +		return;
> +
> +	spin_lock_irq(&uncore->lock);
> +	if (e->active > 0 && !--e->active) {
> +		rc6->pg_enable |= e->pg_enable;
> +		set(uncore, GEN9_PG_ENABLE, rc6->pg_enable);
> +	}
> +	spin_unlock_irq(&uncore->lock);
> +}
> +
>   void intel_rc6_park(struct intel_rc6 *rc6)
>   {
>   	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
> index 9f0f23fca8af..d4e422038866 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
> @@ -18,6 +18,9 @@ void intel_rc6_fini(struct intel_rc6 *rc6);
>   void intel_rc6_unpark(struct intel_rc6 *rc6);
>   void intel_rc6_park(struct intel_rc6 *rc6);
>   
> +void intel_rc6_unpark_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine);
> +void intel_rc6_park_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine);
> +
>   void intel_rc6_sanitize(struct intel_rc6 *rc6);
>   void intel_rc6_enable(struct intel_rc6 *rc6);
>   void intel_rc6_disable(struct intel_rc6 *rc6);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> index bfbb623f7a4f..e6fce9e7b34e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> @@ -22,6 +22,12 @@ struct intel_rc6 {
>   
>   	struct drm_i915_gem_object *pctx;
>   
> +	u32 pg_enable;
> +	struct intel_pg_engine {
> +		unsigned int active;
> +		u32 pg_enable;
> +	} engines[4];
> +
>   	bool supported : 1;
>   	bool enabled : 1;
>   	bool manual : 1;
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
