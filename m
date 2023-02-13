Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C586946AD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 14:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543A810E5B0;
	Mon, 13 Feb 2023 13:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2273310E5B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 13:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676293890; x=1707829890;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=to7z90QZRFYrFpo59lO7mF2zBn9gp/Gj62FAKEM4LA4=;
 b=mfxEY9hJ9UufQay7i8dST5wBXyoaMXESBlfVlgEvr3e/Fep7IADrJp90
 wtwxhkv4Bj4L6GYOvOZeIXT1MduPTikT4iMAqvnuNx36JNzaIWzYpmmJl
 bG50cUjij6IL2vj08gG+L7rLMPdy56RWjtaYw0DyJ4y8n1rNW03HYwxMO
 xHH+ZvVyBlwYPa/nVZZqHNW9o7lpYky2U+PokIoLcz/BNLRx0eEudQ29q
 9LVsHw7ImJEZx5eXQxgJzqzzQyx/hBmr1sF7Omc8bV13Y26Opp5Ew9uWY
 tGpOIexK7Tq5K+NawQ1b2CJq+Yy1llK1t6j1tp+ylUPoGOe9XvAX1GTDC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="417109652"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417109652"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 05:11:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="997687597"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="997687597"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.50.140])
 ([10.252.50.140])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 05:11:28 -0800
Message-ID: <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
Date: Mon, 13 Feb 2023 14:11:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use i915 instead of dev_priv
 as name for the private device
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/10/2023 4:03 PM, Andi Shyti wrote:
> It is becoming a strong habit to call the drm_i915_private
> structures "i915", but there are still many left that are called
> dev_priv.
>
> Sometimes this makes grepping a bit challenging and anyway it
> keeps a coherent style.
>
> Rename all the "dev_priv" structures in the gt/* directory to
> "i915".
>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
> Hi,
>
> just checking if we want something similar. I have this same
> replicated patch for the rest of i915 but I want to make sure we
> actually want it.

I might be lacking historical context here but I assumption is we are 
moving towards replacing dev_priv with i915 everywhere.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


>
> Andi
>
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c      | 18 +++++++++---------
>   drivers/gpu/drm/i915/gt/intel_gsc.h            |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c         |  2 +-
>   drivers/gpu/drm/i915/gt/intel_reset_types.h    |  2 +-
>   .../gpu/drm/i915/gt/intel_ring_submission.c    |  4 ++--
>   drivers/gpu/drm/i915/gt/intel_rps_types.h      |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c     | 18 +++++++++---------
>   7 files changed, 24 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index d4e29da74612d..c6271440afbd3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1939,13 +1939,13 @@ static const char *repr_timer(const struct timer_list *t)
>   static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   					 struct drm_printer *m)
>   {
> -	struct drm_i915_private *dev_priv = engine->i915;
> +	struct drm_i915_private *i915 = engine->i915;
>   	struct intel_engine_execlists * const execlists = &engine->execlists;
>   	u64 addr;
>   
> -	if (engine->id == RENDER_CLASS && IS_GRAPHICS_VER(dev_priv, 4, 7))
> +	if (engine->id == RENDER_CLASS && IS_GRAPHICS_VER(i915, 4, 7))
>   		drm_printf(m, "\tCCID: 0x%08x\n", ENGINE_READ(engine, CCID));
> -	if (HAS_EXECLISTS(dev_priv)) {
> +	if (HAS_EXECLISTS(i915)) {
>   		drm_printf(m, "\tEL_STAT_HI: 0x%08x\n",
>   			   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI));
>   		drm_printf(m, "\tEL_STAT_LO: 0x%08x\n",
> @@ -1966,7 +1966,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   			   ENGINE_READ(engine, RING_MI_MODE) & (MODE_IDLE) ? " [idle]" : "");
>   	}
>   
> -	if (GRAPHICS_VER(dev_priv) >= 6) {
> +	if (GRAPHICS_VER(i915) >= 6) {
>   		drm_printf(m, "\tRING_IMR:   0x%08x\n",
>   			   ENGINE_READ(engine, RING_IMR));
>   		drm_printf(m, "\tRING_ESR:   0x%08x\n",
> @@ -1983,15 +1983,15 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   	addr = intel_engine_get_last_batch_head(engine);
>   	drm_printf(m, "\tBBADDR: 0x%08x_%08x\n",
>   		   upper_32_bits(addr), lower_32_bits(addr));
> -	if (GRAPHICS_VER(dev_priv) >= 8)
> +	if (GRAPHICS_VER(i915) >= 8)
>   		addr = ENGINE_READ64(engine, RING_DMA_FADD, RING_DMA_FADD_UDW);
> -	else if (GRAPHICS_VER(dev_priv) >= 4)
> +	else if (GRAPHICS_VER(i915) >= 4)
>   		addr = ENGINE_READ(engine, RING_DMA_FADD);
>   	else
>   		addr = ENGINE_READ(engine, DMA_FADD_I8XX);
>   	drm_printf(m, "\tDMA_FADDR: 0x%08x_%08x\n",
>   		   upper_32_bits(addr), lower_32_bits(addr));
> -	if (GRAPHICS_VER(dev_priv) >= 4) {
> +	if (GRAPHICS_VER(i915) >= 4) {
>   		drm_printf(m, "\tIPEIR: 0x%08x\n",
>   			   ENGINE_READ(engine, RING_IPEIR));
>   		drm_printf(m, "\tIPEHR: 0x%08x\n",
> @@ -2001,7 +2001,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
>   	}
>   
> -	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
> +	if (HAS_EXECLISTS(i915) && !intel_engine_uses_guc(engine)) {
>   		struct i915_request * const *port, *rq;
>   		const u32 *hws =
>   			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
> @@ -2067,7 +2067,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   		}
>   		rcu_read_unlock();
>   		i915_sched_engine_active_unlock_bh(engine->sched_engine);
> -	} else if (GRAPHICS_VER(dev_priv) > 6) {
> +	} else if (GRAPHICS_VER(i915) > 6) {
>   		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
>   			   ENGINE_READ(engine, RING_PP_DIR_BASE));
>   		drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.h b/drivers/gpu/drm/i915/gt/intel_gsc.h
> index fcac1775e9c39..7ab3ca0f9f268 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.h
> @@ -33,7 +33,7 @@ struct intel_gsc {
>   	} intf[INTEL_GSC_NUM_INTERFACES];
>   };
>   
> -void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *dev_priv);
> +void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *i915);
>   void intel_gsc_fini(struct intel_gsc *gsc);
>   void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index a4a8b8bc5737e..53e6396b53eeb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -35,7 +35,7 @@
>    * ignored.
>    */
>   
> -#define HAS_MSLICE_STEERING(dev_priv)	(INTEL_INFO(dev_priv)->has_mslice_steering)
> +#define HAS_MSLICE_STEERING(i915)	(INTEL_INFO(i915)->has_mslice_steering)
>   
>   static const char * const intel_steering_types[] = {
>   	"L3BANK",
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
> index 9312b29f5a97b..80351f0a856c9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
> @@ -51,7 +51,7 @@ struct intel_reset {
>   
>   	/**
>   	 * Waitqueue to signal when the reset has completed. Used by clients
> -	 * that wait for dev_priv->mm.wedged to settle.
> +	 * that wait for i915->mm.wedged to settle.
>   	 */
>   	wait_queue_head_t queue;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 827adb0cfaea6..3fd795c3263fd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1052,9 +1052,9 @@ static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
>   
>   static void ring_release(struct intel_engine_cs *engine)
>   {
> -	struct drm_i915_private *dev_priv = engine->i915;
> +	struct drm_i915_private *i915 = engine->i915;
>   
> -	drm_WARN_ON(&dev_priv->drm, GRAPHICS_VER(dev_priv) > 2 &&
> +	drm_WARN_ON(&i915->drm, GRAPHICS_VER(i915) > 2 &&
>   		    (ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);
>   
>   	intel_engine_cleanup_common(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> index 9173ec75f2b87..6507fa3f6d1e8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> @@ -57,7 +57,7 @@ struct intel_rps {
>   
>   	/*
>   	 * work, interrupts_enabled and pm_iir are protected by
> -	 * dev_priv->irq_lock
> +	 * i915->irq_lock
>   	 */
>   	struct timer_list timer;
>   	struct work_struct work;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 818e9e0e66a83..195db8c9d4200 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -520,7 +520,7 @@ void intel_guc_log_init_early(struct intel_guc_log *log)
>   static int guc_log_relay_create(struct intel_guc_log *log)
>   {
>   	struct intel_guc *guc = log_to_guc(log);
> -	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	struct rchan *guc_log_relay_chan;
>   	size_t n_subbufs, subbuf_size;
>   	int ret;
> @@ -543,9 +543,9 @@ static int guc_log_relay_create(struct intel_guc_log *log)
>   	n_subbufs = 8;
>   
>   	guc_log_relay_chan = relay_open("guc_log",
> -					dev_priv->drm.primary->debugfs_root,
> +					i915->drm.primary->debugfs_root,
>   					subbuf_size, n_subbufs,
> -					&relay_callbacks, dev_priv);
> +					&relay_callbacks, i915);
>   	if (!guc_log_relay_chan) {
>   		guc_err(guc, "Couldn't create relay channel for logging\n");
>   
> @@ -570,7 +570,7 @@ static void guc_log_relay_destroy(struct intel_guc_log *log)
>   static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
>   {
>   	struct intel_guc *guc = log_to_guc(log);
> -	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	intel_wakeref_t wakeref;
>   
>   	_guc_log_copy_debuglogs_for_relay(log);
> @@ -579,7 +579,7 @@ static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
>   	 * Generally device is expected to be active only at this
>   	 * time, so get/put should be really quick.
>   	 */
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
>   		guc_action_flush_log_complete(guc);
>   }
>   
> @@ -661,7 +661,7 @@ void intel_guc_log_destroy(struct intel_guc_log *log)
>   int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   {
>   	struct intel_guc *guc = log_to_guc(log);
> -	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>   	intel_wakeref_t wakeref;
>   	int ret = 0;
>   
> @@ -675,12 +675,12 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
>   		return -EINVAL;
>   
> -	mutex_lock(&dev_priv->drm.struct_mutex);
> +	mutex_lock(&i915->drm.struct_mutex);
>   
>   	if (log->level == level)
>   		goto out_unlock;
>   
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
>   		ret = guc_action_control_log(guc,
>   					     GUC_LOG_LEVEL_IS_VERBOSE(level),
>   					     GUC_LOG_LEVEL_IS_ENABLED(level),
> @@ -693,7 +693,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   	log->level = level;
>   
>   out_unlock:
> -	mutex_unlock(&dev_priv->drm.struct_mutex);
> +	mutex_unlock(&i915->drm.struct_mutex);
>   
>   	return ret;
>   }
