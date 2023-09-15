Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC27A1B37
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 11:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC5710E60A;
	Fri, 15 Sep 2023 09:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A30910E60A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 09:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694771451; x=1726307451;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=r7wrMOF8kMOwg8GjaypPaGvoDRQJrt9+bGTrDevfYjA=;
 b=nszAQmiz/tJLwsdPQOTx3ArG1F6avHFJVFks+M/5TFOr5Mq0P0ymgmyY
 UsUSjEZCP2h9mkCsHlXH8aNX0TcXDBspDql83a/fUiHHoyWfpoPzHUIxg
 Iu1zii5yd7XzFc7dpCvX4+Tjtx6Yfe5KgEFt7IhR6dZreHYQ3Alr7cvRo
 rsMoIYNDaiKGQJpPyN78C66BksD8NJlQKQumrRwK6O0xNHjTHwa9mHace
 yre1VBaAmSKSrPzIcZGW4Q+omAN1lawh7EmUI1PL7qwxSUs8yfm+SWY09
 XW6xcQjr4bJr1I5uogOOYt7i7ZZVzm2C9jmngo2tvliU2Vqu0g4OSI+Qx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="410149420"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="410149420"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 02:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694671175"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694671175"
Received: from azafrani-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.177])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 02:50:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230915083412.4572-7-nirmoy.das@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-7-nirmoy.das@intel.com>
Date: Fri, 15 Sep 2023 12:50:08 +0300
Message-ID: <87o7i3vk8f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Toggle binder context ready
 status
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 15 Sep 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
> Toggle binder context ready status when needed.
>
> To issue gpu commands, the driver must be primed to receive
> requests. Maintain binder-based GGTT update disablement until driver
> probing completes. Moreover, implement a temporary disablement
> of blitter prior to entering suspend, followed by re-enablement
> post-resume. This is acceptable as those transition periods are
> mostly single threaded.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>

Not a fan of adding more gt (or gem, or display) specific details at the
top level driver hooks. The direction should be to remove stuff from
there, and move to lower levels.

The top level functions have become really hard to understand because we
don't know the ordering constraints. This adds more constraints, and
looks like very specific and complicated ones too.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_driver.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..8cc289acdb39 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_welcome_messages(i915);
>  
>  	i915->do_release = true;
> +	intel_gt_bind_context_set_ready(to_gt(i915), true);
>  
>  	return 0;
>  
> @@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> +	intel_gt_bind_context_set_ready(to_gt(i915), false);
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);
> @@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
>  
> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), false);
> +
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	/* We do a lot of poking in a lot of registers, make sure they work
> @@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_gvt_resume(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), true);
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel
