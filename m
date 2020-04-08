Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BED1A1D92
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112716E209;
	Wed,  8 Apr 2020 08:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00A86E209
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:49:55 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id y24so466227wma.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=lZmov27QH5lvMvSvM28yeximE0N51ZO4XTT4+m/nqGw=;
 b=nfs9eJHJvhENqJambQG1MzMsX9uP866fCrL4OCVz8nGD40VjU4EauveaHiwCXKGYeD
 uVWddV2K+paOP8LxTaFGGPbj3DUEvoB63OjZD/lpceFsFkE2JIFyA38tomdOGARBDQyH
 2oe25H7OL6dJK1lHSpYD4BHdLqfpiIDVPWF/hXZzn0TsgcbCKsotdXlARqP8ejB3WMdz
 m1zobGka+bA2xVjahVUIKjBKUSIHZC7TRoXL/GtRyjJz57YoioleCd/KfydO0KqgO4RY
 UoDkyYv5pymDQq5nUojpESV7D7VbbWAPBqYxGxjriHHQXyWhftZ3nr1/FwriFfCowmDP
 8IAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=lZmov27QH5lvMvSvM28yeximE0N51ZO4XTT4+m/nqGw=;
 b=sH6LgctzcTrwkUFivVMh7lU52ea0F+EfyPg3CNekX2ZOmWTk5S6UwpSKqjyyiR8+qg
 LHdtT1d9QzmOjRINzChouw3khA+i5eTo8kdyHDNslhEE+7VSS2RkVjWE0drPpS2x30G8
 rQyVFBfZlfKFtLTQyPApfYYoVoNjhWSuE93TjKXMAYb5XhC/qkzF6QLfBgKEHe1QAPhG
 3ZD79VEPRGs9CW/UGliK24OqiKiuVHMyU1vcza2g2NBC12KXdWTLkzCosO1LGowbDMno
 2xoIkSirxDRQMxh4HWpn5d95W97m1jxbJWJ0jrCbwDGsl9EiaQpY9+hfGVPwB2COpvD6
 kK/g==
X-Gm-Message-State: AGi0PuYwzFGk+Fz6Msu/XiwYCg7ULErhj9EX3zgiySnt4lEXCuK6OnB+
 10003QPsmnnQxZuh1TdaQHWG6r8t
X-Google-Smtp-Source: APiQypI5fTaqHweQBscuMCSVXS/e5wXd9D3K3oUgA0RDX0o57/qq1Y9V6DC+C5w/61bTdSSENtVc4A==
X-Received: by 2002:a1c:307:: with SMTP id 7mr3435326wmd.126.1586335794396;
 Wed, 08 Apr 2020 01:49:54 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id x11sm33942499wru.62.2020.04.08.01.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:49:53 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:49:50 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-16-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081149190.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-16-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/17] drm/i915/gt: prefer struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Prefer struct drm_device based logging over struct device based logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/gt/intel_ggtt.c  |  4 ++--
> drivers/gpu/drm/i915/gt/intel_gt_pm.c |  4 ++--
> drivers/gpu/drm/i915/gt/intel_lrc.c   |  4 ++--
> drivers/gpu/drm/i915/gt/intel_rc6.c   |  4 ++--
> drivers/gpu/drm/i915/gt/intel_reset.c | 14 +++++++-------
> 5 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index ae07bcd7c226..eebd1190506f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1080,7 +1080,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
> 	ggtt->vm.vma_ops.clear_pages = clear_pages;
>
> 	if (unlikely(ggtt->do_idle_maps))
> -		dev_notice(i915->drm.dev,
> +		drm_notice(&i915->drm,
> 			   "Applying Ironlake quirks for intel_iommu\n");
>
> 	return 0;
> @@ -1145,7 +1145,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
> 		return ret;
>
> 	if (intel_vtd_active())
> -		dev_info(i915->drm.dev, "VT-d active for gfx access\n");
> +		drm_info(&i915->drm, "VT-d active for gfx access\n");
>
> 	return 0;
> }
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 2e40400d1ecd..3e8a56c7d818 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -204,7 +204,7 @@ int intel_gt_resume(struct intel_gt *gt)
> 	/* Only when the HW is re-initialised, can we replay the requests */
> 	err = intel_gt_init_hw(gt);
> 	if (err) {
> -		dev_err(gt->i915->drm.dev,
> +		drm_err(&gt->i915->drm,
> 			"Failed to initialize GPU, declaring it wedged!\n");
> 		goto err_wedged;
> 	}
> @@ -220,7 +220,7 @@ int intel_gt_resume(struct intel_gt *gt)
>
> 		intel_engine_pm_put(engine);
> 		if (err) {
> -			dev_err(gt->i915->drm.dev,
> +			drm_err(&gt->i915->drm,
> 				"Failed to restart %s (%d)\n",
> 				engine->name, err);
> 			goto err_wedged;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3479cda37fdc..21164bc691c7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3062,7 +3062,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
> 	vaddr += engine->context_size;
>
> 	if (memchr_inv(vaddr, CONTEXT_REDZONE, I915_GTT_PAGE_SIZE))
> -		dev_err_once(engine->i915->drm.dev,
> +		drm_err_once(&engine->i915->drm,
> 			     "%s context redzone overwritten!\n",
> 			     engine->name);
> }
> @@ -3558,7 +3558,7 @@ static void enable_error_interrupt(struct intel_engine_cs *engine)
>
> 	status = ENGINE_READ(engine, RING_ESR);
> 	if (unlikely(status)) {
> -		dev_err(engine->i915->drm.dev,
> +		drm_err(&engine->i915->drm,
> 			"engine '%s' resumed still in error: %08x\n",
> 			engine->name, status);
> 		__intel_gt_reset(engine->gt, engine->mask);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 09d3e5a45397..1c1923ec8be7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -468,7 +468,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
> 		return false;
>
> 	if (IS_GEN9_LP(i915) && !bxt_check_bios_rc6_setup(rc6)) {
> -		dev_notice(i915->drm.dev,
> +		drm_notice(&i915->drm,
> 			   "RC6 and powersaving disabled by BIOS\n");
> 		return false;
> 	}
> @@ -500,7 +500,7 @@ static bool pctx_corrupted(struct intel_rc6 *rc6)
> 	if (intel_uncore_read(rc6_to_uncore(rc6), GEN8_RC6_CTX_INFO))
> 		return false;
>
> -	dev_notice(i915->drm.dev,
> +	drm_notice(&i915->drm,
> 		   "RC6 context corruption, disabling runtime power management\n");
> 	return true;
> }
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 003f26b42998..39070b514e65 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -109,7 +109,7 @@ static bool mark_guilty(struct i915_request *rq)
> 		goto out;
> 	}
>
> -	dev_notice(ctx->i915->drm.dev,
> +	drm_notice(&ctx->i915->drm,
> 		   "%s context reset due to GPU hang\n",
> 		   ctx->name);
>
> @@ -1031,7 +1031,7 @@ void intel_gt_reset(struct intel_gt *gt,
> 		goto unlock;
>
> 	if (reason)
> -		dev_notice(gt->i915->drm.dev,
> +		drm_notice(&gt->i915->drm,
> 			   "Resetting chip for %s\n", reason);
> 	atomic_inc(&gt->i915->gpu_error.reset_count);
>
> @@ -1039,7 +1039,7 @@ void intel_gt_reset(struct intel_gt *gt,
>
> 	if (!intel_has_gpu_reset(gt)) {
> 		if (i915_modparams.reset)
> -			dev_err(gt->i915->drm.dev, "GPU reset not supported\n");
> +			drm_err(&gt->i915->drm, "GPU reset not supported\n");
> 		else
> 			drm_dbg(&gt->i915->drm, "GPU reset disabled\n");
> 		goto error;
> @@ -1049,7 +1049,7 @@ void intel_gt_reset(struct intel_gt *gt,
> 		intel_runtime_pm_disable_interrupts(gt->i915);
>
> 	if (do_reset(gt, stalled_mask)) {
> -		dev_err(gt->i915->drm.dev, "Failed to reset chip\n");
> +		drm_err(&gt->i915->drm, "Failed to reset chip\n");
> 		goto taint;
> 	}
>
> @@ -1111,7 +1111,7 @@ static inline int intel_gt_reset_engine(struct intel_engine_cs *engine)
> /**
>  * intel_engine_reset - reset GPU engine to recover from a hang
>  * @engine: engine to reset
> - * @msg: reason for GPU reset; or NULL for no dev_notice()
> + * @msg: reason for GPU reset; or NULL for no drm_notice()
>  *
>  * Reset a specific GPU engine. Useful if a hang is detected.
>  * Returns zero on successful reset or otherwise an error code.
> @@ -1136,7 +1136,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
> 	reset_prepare_engine(engine);
>
> 	if (msg)
> -		dev_notice(engine->i915->drm.dev,
> +		drm_notice(&engine->i915->drm,
> 			   "Resetting %s for %s\n", engine->name, msg);
> 	atomic_inc(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);
>
> @@ -1381,7 +1381,7 @@ static void intel_wedge_me(struct work_struct *work)
> {
> 	struct intel_wedge_me *w = container_of(work, typeof(*w), work.work);
>
> -	dev_err(w->gt->i915->drm.dev,
> +	drm_err(&w->gt->i915->drm,
> 		"%s timed out, cancelling all in-flight rendering.\n",
> 		w->name);
> 	intel_gt_set_wedged(w->gt);
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
