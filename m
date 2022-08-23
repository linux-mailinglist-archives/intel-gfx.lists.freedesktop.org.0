Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E63259DAD9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 13:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C481120B6;
	Tue, 23 Aug 2022 11:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5B310EF53;
 Tue, 23 Aug 2022 11:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661253022; x=1692789022;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=msu/BPjUeSQNP1gL8BEelaviyi2J2c2JBz7CtRJmMNM=;
 b=OeZQaECLZYUkgLR+aUIDedtmoT5G/HYlQE3KmR8kh/RQ1PwCIQjichJ1
 YeltYasuEyrNAvNXGG58StYxvxjpIvqVkZ2pVK8R50NvdtrlZrbUm2vsE
 W9e+PiAlZKTmMHn0+b5QzHFqU741EAfJFf8lVUembLaHupwGAagimGP6P
 /xq71pCYyTT7jlCwM4AZjOE25BMmEWOAm9i/weUFzMoW7jCBOTAIK1Tpm
 RSo7cHwEzk5lXLELC1PpoL/vo6mDqzoAl0+SyMYUN2BJy6rVSG9xDbKdy
 zwverPYI9Tne8uVV3EcMi432B6Y0f3qw0U0BcK9FJ1tok4aF5jTud5hUW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="274047168"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="274047168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:10:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638615139"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:10:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220819225335.3947346-12-daniele.ceraolospurio@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
 <20220819225335.3947346-12-daniele.ceraolospurio@intel.com>
Date: Tue, 23 Aug 2022 14:10:16 +0300
Message-ID: <875yijkyg7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 11/15] drm/i915/huc: track delayed HuC
 load with a fence
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Aug 2022, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> Given that HuC load is delayed on DG2, this patch adds support for a fence
> that can be used to wait for load completion. No waiters are added in this
> patch (they're coming up in the next one), to keep the focus of the
> patch on the tracking logic.
>
> The full HuC loading flow on boot DG2 is as follows:
> 1) i915 exports the GSC as an aux device;
> 2) the mei-gsc driver is loaded on the aux device;
> 3) the mei-pxp component is loaded;
> 4) mei-pxp calls back into i915 and we load the HuC.
>
> Between steps 1 and 2 there can be several seconds of gap, mainly due to
> the kernel doing other work during the boot.
> The resume flow is slightly different, because we don't need to
> re-expose or re-probe the aux device, so we go directly to step 3 once
> i915 and mei-gsc have completed their resume flow.
>
> Here's an example of the boot timing, captured with some logs added to
> i915:
>
> [   17.908307] [drm] adding GSC device
> [   17.915717] [drm] i915 probe done
> [   22.282917] [drm] mei-gsc bound
> [   22.938153] [drm] HuC authenticated
>
> Also to note is that if something goes wrong during GSC HW init the
> mei-gsc driver will still bind, but steps 3 and 4 will not happen.
>
> The status tracking is done by registering a bus_notifier to receive a
> callback when the mei-gsc driver binds, with a large enough timeout to
> account for delays. Once mei-gsc is bound, we switch to a smaller
> timeout to wait for the mei-pxp component to load.
> The fence is signalled on HuC load complete or if anything goes wrong in
> any of the tracking steps. Timeout are enforced via hrtimer callbacks.
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gsc.c    |  22 ++-
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 198 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_huc.h |  19 +++
>  3 files changed, 236 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 162bea57fbb5..bc9db728cdc8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -154,8 +154,14 @@ static void gsc_destroy_one(struct drm_i915_private *i915,
>  	struct intel_gsc_intf *intf = &gsc->intf[intf_id];
>  
>  	if (intf->adev) {
> -		auxiliary_device_delete(&intf->adev->aux_dev);
> -		auxiliary_device_uninit(&intf->adev->aux_dev);
> +		struct auxiliary_device *aux_dev = &intf->adev->aux_dev;
> +
> +		if (intf_id == 0)
> +			intel_huc_unregister_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
> +							  aux_dev->dev.bus);
> +
> +		auxiliary_device_delete(aux_dev);
> +		auxiliary_device_uninit(aux_dev);
>  		intf->adev = NULL;
>  	}
>  
> @@ -254,14 +260,24 @@ static void gsc_init_one(struct drm_i915_private *i915, struct intel_gsc *gsc,
>  		goto fail;
>  	}
>  
> +	intf->adev = adev; /* needed by the notifier */
> +
> +	if (intf_id == 0)
> +		intel_huc_register_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
> +						aux_dev->dev.bus);
> +
>  	ret = auxiliary_device_add(aux_dev);
>  	if (ret < 0) {
>  		drm_err(&i915->drm, "gsc aux add failed %d\n", ret);
> +		if (intf_id == 0)
> +			intel_huc_unregister_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
> +							  aux_dev->dev.bus);
> +		intf->adev = NULL;
> +
>  		/* adev will be freed with the put_device() and .release sequence */
>  		auxiliary_device_uninit(aux_dev);
>  		goto fail;
>  	}
> -	intf->adev = adev;
>  
>  	return;
>  fail:
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index 40217fb69824..9a97b8cc90c7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -10,6 +10,8 @@
>  #include "intel_huc.h"
>  #include "i915_drv.h"
>  
> +#include <linux/mei_aux.h>
> +
>  /**
>   * DOC: HuC
>   *
> @@ -42,6 +44,164 @@
>   * HuC-specific commands.
>   */
>  
> +/*
> + * MEI-GSC load is an async process. The probing of the exposed aux device
> + * (see intel_gsc.c) usually happens a few seconds after i915 probe, depending
> + * on when the kernel schedules it. Unless something goes terribly wrong, we're
> + * guaranteed for this to happen during boot, so the big timeout is a safety net
> + * that we never expect to need.
> + * MEI-PXP + HuC load usually takes ~300ms, but if the GSC needs to be resumed
> + * and/or reset, this can take longer.
> + */
> +#define GSC_INIT_TIMEOUT_MS 10000
> +#define PXP_INIT_TIMEOUT_MS 2000
> +
> +static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
> +				 enum i915_sw_fence_notify state)
> +{
> +	return NOTIFY_DONE;
> +}
> +
> +static void __delayed_huc_load_complete(struct intel_huc *huc)
> +{
> +	if (!i915_sw_fence_done(&huc->delayed_load.fence))
> +		i915_sw_fence_complete(&huc->delayed_load.fence);
> +}
> +
> +static void delayed_huc_load_complete(struct intel_huc *huc)
> +{
> +	hrtimer_cancel(&huc->delayed_load.timer);
> +	__delayed_huc_load_complete(huc);
> +}
> +
> +static void __gsc_init_error(struct intel_huc *huc)
> +{
> +	huc->delayed_load.status = INTEL_HUC_DELAYED_LOAD_ERROR;
> +	__delayed_huc_load_complete(huc);
> +}
> +
> +static void gsc_init_error(struct intel_huc *huc)
> +{
> +	hrtimer_cancel(&huc->delayed_load.timer);
> +	__gsc_init_error(huc);
> +}
> +
> +static void gsc_init_done(struct intel_huc *huc)
> +{
> +	hrtimer_cancel(&huc->delayed_load.timer);
> +
> +	/* MEI-GSC init is done, now we wait for MEI-PXP to bind */
> +	huc->delayed_load.status = INTEL_HUC_WAITING_ON_PXP;
> +	if (!i915_sw_fence_done(&huc->delayed_load.fence))
> +		hrtimer_start(&huc->delayed_load.timer,
> +			      ms_to_ktime(PXP_INIT_TIMEOUT_MS),
> +			      HRTIMER_MODE_REL);
> +}
> +
> +static enum hrtimer_restart huc_delayed_load_timer_callback(struct hrtimer *hrtimer)
> +{
> +	struct intel_huc *huc = container_of(hrtimer, struct intel_huc, delayed_load.timer);
> +
> +	if (!intel_huc_is_authenticated(huc)) {
> +		drm_err(&huc_to_gt(huc)->i915->drm,
> +			"timed out waiting for GSC init to load HuC\n");
> +
> +		__gsc_init_error(huc);
> +	}
> +
> +	return HRTIMER_NORESTART;
> +}
> +
> +static void huc_delayed_load_start(struct intel_huc *huc)
> +{
> +	ktime_t delay;
> +
> +	GEM_BUG_ON(intel_huc_is_authenticated(huc));
> +
> +	/*
> +	 * On resume we don't have to wait for MEI-GSC to be re-probed, but we
> +	 * do need to wait for MEI-PXP to reset & re-bind
> +	 */
> +	switch (huc->delayed_load.status) {
> +	case INTEL_HUC_WAITING_ON_GSC:
> +		delay = ms_to_ktime(GSC_INIT_TIMEOUT_MS);
> +		break;
> +	case INTEL_HUC_WAITING_ON_PXP:
> +		delay = ms_to_ktime(PXP_INIT_TIMEOUT_MS);
> +		break;
> +	default:
> +		gsc_init_error(huc);
> +		return;
> +	}
> +
> +	/*
> +	 * This fence is always complete unless we're waiting for the
> +	 * GSC device to come up to load the HuC. We arm the fence here
> +	 * and complete it when we confirm that the HuC is loaded from
> +	 * the PXP bind callback.
> +	 */
> +	GEM_BUG_ON(!i915_sw_fence_done(&huc->delayed_load.fence));
> +	i915_sw_fence_fini(&huc->delayed_load.fence);
> +	i915_sw_fence_reinit(&huc->delayed_load.fence);
> +	i915_sw_fence_await(&huc->delayed_load.fence);
> +	i915_sw_fence_commit(&huc->delayed_load.fence);
> +
> +	hrtimer_start(&huc->delayed_load.timer, delay, HRTIMER_MODE_REL);
> +}
> +
> +static int gsc_notifier(struct notifier_block *nb, unsigned long action, void *data)
> +{
> +	struct device *dev = data;
> +	struct intel_huc *huc = container_of(nb, struct intel_huc, delayed_load.nb);
> +	struct intel_gsc_intf *intf = &huc_to_gt(huc)->gsc.intf[0];
> +
> +	if (!intf->adev || (&intf->adev->aux_dev.dev != dev))
> +		return 0;
> +
> +	switch (action) {
> +	case BUS_NOTIFY_BOUND_DRIVER: /* mei driver bound to aux device */
> +		gsc_init_done(huc);
> +		break;
> +
> +	case BUS_NOTIFY_DRIVER_NOT_BOUND: /* mei driver fails to be bound */
> +	case BUS_NOTIFY_UNBIND_DRIVER: /* mei driver about to be unbound */
> +		drm_info(&huc_to_gt(huc)->i915->drm,
> +			 "mei driver not bound, disabling HuC load\n");
> +		gsc_init_error(huc);
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +void intel_huc_register_gsc_notifier(struct intel_huc *huc, struct bus_type *bus)
> +{
> +	int ret;
> +
> +	if (!intel_huc_is_loaded_by_gsc(huc))
> +		return;
> +
> +	huc->delayed_load.nb.notifier_call = gsc_notifier;
> +	ret = bus_register_notifier(bus, &huc->delayed_load.nb);
> +	if (ret) {
> +		drm_err(&huc_to_gt(huc)->i915->drm,
> +			"failed to register GSC notifier\n");
> +		huc->delayed_load.nb.notifier_call = NULL;
> +		gsc_init_error(huc);
> +	}
> +}
> +
> +void intel_huc_unregister_gsc_notifier(struct intel_huc *huc, struct bus_type *bus)
> +{
> +	if (!huc->delayed_load.nb.notifier_call)
> +		return;
> +
> +	delayed_huc_load_complete(huc);
> +
> +	bus_unregister_notifier(bus, &huc->delayed_load.nb);
> +	huc->delayed_load.nb.notifier_call = NULL;
> +}
> +
>  void intel_huc_init_early(struct intel_huc *huc)
>  {
>  	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
> @@ -57,6 +217,17 @@ void intel_huc_init_early(struct intel_huc *huc)
>  		huc->status.mask = HUC_FW_VERIFIED;
>  		huc->status.value = HUC_FW_VERIFIED;
>  	}
> +
> +	/*
> +	 * Initialize fence to be complete as this is expected to be complete
> +	 * unless there is a delayed HuC reload in progress.
> +	 */
> +	i915_sw_fence_init(&huc->delayed_load.fence,
> +			   sw_fence_dummy_notify);
> +	i915_sw_fence_commit(&huc->delayed_load.fence);
> +
> +	hrtimer_init(&huc->delayed_load.timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> +	huc->delayed_load.timer.function = huc_delayed_load_timer_callback;
>  }
>  
>  #define HUC_LOAD_MODE_STRING(x) (x ? "GSC" : "legacy")
> @@ -122,9 +293,25 @@ void intel_huc_fini(struct intel_huc *huc)
>  	if (!intel_uc_fw_is_loadable(&huc->fw))
>  		return;
>  
> +	delayed_huc_load_complete(huc);
> +
> +	i915_sw_fence_fini(&huc->delayed_load.fence);
>  	intel_uc_fw_fini(&huc->fw);
>  }
>  
> +void intel_huc_suspend(struct intel_huc *huc)
> +{
> +	if (!intel_uc_fw_is_loadable(&huc->fw))
> +		return;
> +
> +	/*
> +	 * in the unlikely case that we're suspending before the GSC has
> +	 * completed its loading sequence, just stop waiting. We'll restart
> +	 * on resume.
> +	 */
> +	delayed_huc_load_complete(huc);
> +}
> +
>  int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
>  {
>  	struct intel_gt *gt = huc_to_gt(huc);
> @@ -136,6 +323,9 @@ int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
>  					huc->status.value,
>  					2, 50, NULL);
>  
> +	/* mark the load process as complete even if the wait failed */
> +	delayed_huc_load_complete(huc);
> +
>  	if (ret) {
>  		drm_err(&gt->i915->drm,"HuC: Firmware not verified %d\n", ret);
>  		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
> @@ -239,6 +429,12 @@ int intel_huc_check_status(struct intel_huc *huc)
>  	return intel_huc_is_authenticated(huc);
>  }
>  
> +static bool huc_has_delayed_load(struct intel_huc *huc)
> +{
> +	return intel_huc_is_loaded_by_gsc(huc) &&
> +	       (huc->delayed_load.status != INTEL_HUC_DELAYED_LOAD_ERROR);
> +}
> +
>  void intel_huc_update_auth_status(struct intel_huc *huc)
>  {
>  	if (!intel_uc_fw_is_loadable(&huc->fw))
> @@ -247,6 +443,8 @@ void intel_huc_update_auth_status(struct intel_huc *huc)
>  	if (intel_huc_is_authenticated(huc))
>  		intel_uc_fw_change_status(&huc->fw,
>  					  INTEL_UC_FIRMWARE_RUNNING);
> +	else if (huc_has_delayed_load(huc))
> +		huc_delayed_load_start(huc);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> index 51f9d96a3ca3..49374f306a7f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> @@ -10,6 +10,14 @@
>  #include "intel_uc_fw.h"
>  #include "intel_huc_fw.h"
>  
> +#include <linux/device/bus.h>

struct bus_type;

is enough.

BR,
Jani.

> +
> +enum intel_huc_delayed_load_status {
> +	INTEL_HUC_WAITING_ON_GSC = 0,
> +	INTEL_HUC_WAITING_ON_PXP,
> +	INTEL_HUC_DELAYED_LOAD_ERROR,
> +};
> +
>  struct intel_huc {
>  	/* Generic uC firmware management */
>  	struct intel_uc_fw fw;
> @@ -20,17 +28,28 @@ struct intel_huc {
>  		u32 mask;
>  		u32 value;
>  	} status;
> +
> +	struct {
> +		struct i915_sw_fence fence;
> +		struct hrtimer timer;
> +		struct notifier_block nb;
> +		enum intel_huc_delayed_load_status status;
> +	} delayed_load;
>  };
>  
>  void intel_huc_init_early(struct intel_huc *huc);
>  int intel_huc_init(struct intel_huc *huc);
>  void intel_huc_fini(struct intel_huc *huc);
> +void intel_huc_suspend(struct intel_huc *huc);
>  int intel_huc_auth(struct intel_huc *huc);
>  int intel_huc_wait_for_auth_complete(struct intel_huc *huc);
>  int intel_huc_check_status(struct intel_huc *huc);
>  void intel_huc_update_auth_status(struct intel_huc *huc);
>  bool intel_huc_is_authenticated(struct intel_huc *huc);
>  
> +void intel_huc_register_gsc_notifier(struct intel_huc *huc, struct bus_type *bus);
> +void intel_huc_unregister_gsc_notifier(struct intel_huc *huc, struct bus_type *bus);
> +
>  static inline int intel_huc_sanitize(struct intel_huc *huc)
>  {
>  	intel_uc_fw_sanitize(&huc->fw);

-- 
Jani Nikula, Intel Open Source Graphics Center
