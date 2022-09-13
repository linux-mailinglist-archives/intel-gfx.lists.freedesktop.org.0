Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7443B5B64C9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 02:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1844210E4E3;
	Tue, 13 Sep 2022 00:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF85510E4B6;
 Tue, 13 Sep 2022 00:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663030685; x=1694566685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZH4I4DfxnDf4+x2Hs/uOI30GrukEBMUYUQHbGzNQKc=;
 b=ZjCGK8MiHrmxuS+/iG4TrtEXFb19qPYVWiiB4LthmA5MjLac1ThEbr0T
 S6KL+6p+jKYOhukht3V8KxEYlK4uczYy7hX8jUyt524hdoAhR87dbByNE
 fqD//WbNlvr0TYBnZfyEwLBmFCghDBG/2aBtayH12R07mWS5ICa7aHEGP
 zhOs8KaX2vxQPahiNMRKI2O1fTRIlVxQ4OP8ETqY7qM+3hUm+2PEo5beC
 ULCdXERRsAInc2grV5gaa/K6uPloJeFu8ugjr2d7mdIlJvO816mUXN8Sc
 vRTv7fW2cmWAS53fttHgkM3TfK3fhk3yrEWNzuwnGJtyAh7IWjOwrb1QB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="295592203"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="295592203"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 17:58:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="758593570"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 17:58:05 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 17:57:35 -0700
Message-Id: <20220913005739.798337-12-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
References: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Given that HuC load is delayed on DG2, this patch adds support for a fence
that can be used to wait for load completion. No waiters are added in this
patch (they're coming up in the next one), to keep the focus of the
patch on the tracking logic.

The full HuC loading flow on boot DG2 is as follows:
1) i915 exports the GSC as an aux device;
2) the mei-gsc driver is loaded on the aux device;
3) the mei-pxp component is loaded;
4) mei-pxp calls back into i915 and we load the HuC.

Between steps 1 and 2 there can be several seconds of gap, mainly due to
the kernel doing other work during the boot.
The resume flow is slightly different, because we don't need to
re-expose or re-probe the aux device, so we go directly to step 3 once
i915 and mei-gsc have completed their resume flow.

Here's an example of the boot timing, captured with some logs added to
i915:

[   17.908307] [drm] adding GSC device
[   17.915717] [drm] i915 probe done
[   22.282917] [drm] mei-gsc bound
[   22.938153] [drm] HuC authenticated

Also to note is that if something goes wrong during GSC HW init the
mei-gsc driver will still bind, but steps 3 and 4 will not happen.

The status tracking is done by registering a bus_notifier to receive a
callback when the mei-gsc driver binds, with a large enough timeout to
account for delays. Once mei-gsc is bound, we switch to a smaller
timeout to wait for the mei-pxp component to load.
The fence is signalled on HuC load complete or if anything goes wrong in
any of the tracking steps. Timeout are enforced via hrtimer callbacks.

v2: fix includes (Jani)
v5: gsc_notifier() remove unneeded ()

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c    |  22 ++-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 199 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_huc.h |  23 +++
 3 files changed, 241 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 7af6db3194dd..f544f70401f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -142,8 +142,14 @@ static void gsc_destroy_one(struct drm_i915_private *i915,
 	struct intel_gsc_intf *intf = &gsc->intf[intf_id];
 
 	if (intf->adev) {
-		auxiliary_device_delete(&intf->adev->aux_dev);
-		auxiliary_device_uninit(&intf->adev->aux_dev);
+		struct auxiliary_device *aux_dev = &intf->adev->aux_dev;
+
+		if (intf_id == 0)
+			intel_huc_unregister_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
+							  aux_dev->dev.bus);
+
+		auxiliary_device_delete(aux_dev);
+		auxiliary_device_uninit(aux_dev);
 		intf->adev = NULL;
 	}
 
@@ -242,14 +248,24 @@ static void gsc_init_one(struct drm_i915_private *i915, struct intel_gsc *gsc,
 		goto fail;
 	}
 
+	intf->adev = adev; /* needed by the notifier */
+
+	if (intf_id == 0)
+		intel_huc_register_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
+						aux_dev->dev.bus);
+
 	ret = auxiliary_device_add(aux_dev);
 	if (ret < 0) {
 		drm_err(&i915->drm, "gsc aux add failed %d\n", ret);
+		if (intf_id == 0)
+			intel_huc_unregister_gsc_notifier(&gsc_to_gt(gsc)->uc.huc,
+							  aux_dev->dev.bus);
+		intf->adev = NULL;
+
 		/* adev will be freed with the put_device() and .release sequence */
 		auxiliary_device_uninit(aux_dev);
 		goto fail;
 	}
-	intf->adev = adev;
 
 	return;
 fail:
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index f0188931d8e4..5f2144c78f8a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -10,6 +10,9 @@
 #include "intel_huc.h"
 #include "i915_drv.h"
 
+#include <linux/device/bus.h>
+#include <linux/mei_aux.h>
+
 /**
  * DOC: HuC
  *
@@ -42,6 +45,164 @@
  * HuC-specific commands.
  */
 
+/*
+ * MEI-GSC load is an async process. The probing of the exposed aux device
+ * (see intel_gsc.c) usually happens a few seconds after i915 probe, depending
+ * on when the kernel schedules it. Unless something goes terribly wrong, we're
+ * guaranteed for this to happen during boot, so the big timeout is a safety net
+ * that we never expect to need.
+ * MEI-PXP + HuC load usually takes ~300ms, but if the GSC needs to be resumed
+ * and/or reset, this can take longer.
+ */
+#define GSC_INIT_TIMEOUT_MS 10000
+#define PXP_INIT_TIMEOUT_MS 2000
+
+static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
+				 enum i915_sw_fence_notify state)
+{
+	return NOTIFY_DONE;
+}
+
+static void __delayed_huc_load_complete(struct intel_huc *huc)
+{
+	if (!i915_sw_fence_done(&huc->delayed_load.fence))
+		i915_sw_fence_complete(&huc->delayed_load.fence);
+}
+
+static void delayed_huc_load_complete(struct intel_huc *huc)
+{
+	hrtimer_cancel(&huc->delayed_load.timer);
+	__delayed_huc_load_complete(huc);
+}
+
+static void __gsc_init_error(struct intel_huc *huc)
+{
+	huc->delayed_load.status = INTEL_HUC_DELAYED_LOAD_ERROR;
+	__delayed_huc_load_complete(huc);
+}
+
+static void gsc_init_error(struct intel_huc *huc)
+{
+	hrtimer_cancel(&huc->delayed_load.timer);
+	__gsc_init_error(huc);
+}
+
+static void gsc_init_done(struct intel_huc *huc)
+{
+	hrtimer_cancel(&huc->delayed_load.timer);
+
+	/* MEI-GSC init is done, now we wait for MEI-PXP to bind */
+	huc->delayed_load.status = INTEL_HUC_WAITING_ON_PXP;
+	if (!i915_sw_fence_done(&huc->delayed_load.fence))
+		hrtimer_start(&huc->delayed_load.timer,
+			      ms_to_ktime(PXP_INIT_TIMEOUT_MS),
+			      HRTIMER_MODE_REL);
+}
+
+static enum hrtimer_restart huc_delayed_load_timer_callback(struct hrtimer *hrtimer)
+{
+	struct intel_huc *huc = container_of(hrtimer, struct intel_huc, delayed_load.timer);
+
+	if (!intel_huc_is_authenticated(huc)) {
+		drm_err(&huc_to_gt(huc)->i915->drm,
+			"timed out waiting for GSC init to load HuC\n");
+
+		__gsc_init_error(huc);
+	}
+
+	return HRTIMER_NORESTART;
+}
+
+static void huc_delayed_load_start(struct intel_huc *huc)
+{
+	ktime_t delay;
+
+	GEM_BUG_ON(intel_huc_is_authenticated(huc));
+
+	/*
+	 * On resume we don't have to wait for MEI-GSC to be re-probed, but we
+	 * do need to wait for MEI-PXP to reset & re-bind
+	 */
+	switch (huc->delayed_load.status) {
+	case INTEL_HUC_WAITING_ON_GSC:
+		delay = ms_to_ktime(GSC_INIT_TIMEOUT_MS);
+		break;
+	case INTEL_HUC_WAITING_ON_PXP:
+		delay = ms_to_ktime(PXP_INIT_TIMEOUT_MS);
+		break;
+	default:
+		gsc_init_error(huc);
+		return;
+	}
+
+	/*
+	 * This fence is always complete unless we're waiting for the
+	 * GSC device to come up to load the HuC. We arm the fence here
+	 * and complete it when we confirm that the HuC is loaded from
+	 * the PXP bind callback.
+	 */
+	GEM_BUG_ON(!i915_sw_fence_done(&huc->delayed_load.fence));
+	i915_sw_fence_fini(&huc->delayed_load.fence);
+	i915_sw_fence_reinit(&huc->delayed_load.fence);
+	i915_sw_fence_await(&huc->delayed_load.fence);
+	i915_sw_fence_commit(&huc->delayed_load.fence);
+
+	hrtimer_start(&huc->delayed_load.timer, delay, HRTIMER_MODE_REL);
+}
+
+static int gsc_notifier(struct notifier_block *nb, unsigned long action, void *data)
+{
+	struct device *dev = data;
+	struct intel_huc *huc = container_of(nb, struct intel_huc, delayed_load.nb);
+	struct intel_gsc_intf *intf = &huc_to_gt(huc)->gsc.intf[0];
+
+	if (!intf->adev || &intf->adev->aux_dev.dev != dev)
+		return 0;
+
+	switch (action) {
+	case BUS_NOTIFY_BOUND_DRIVER: /* mei driver bound to aux device */
+		gsc_init_done(huc);
+		break;
+
+	case BUS_NOTIFY_DRIVER_NOT_BOUND: /* mei driver fails to be bound */
+	case BUS_NOTIFY_UNBIND_DRIVER: /* mei driver about to be unbound */
+		drm_info(&huc_to_gt(huc)->i915->drm,
+			 "mei driver not bound, disabling HuC load\n");
+		gsc_init_error(huc);
+		break;
+	}
+
+	return 0;
+}
+
+void intel_huc_register_gsc_notifier(struct intel_huc *huc, struct bus_type *bus)
+{
+	int ret;
+
+	if (!intel_huc_is_loaded_by_gsc(huc))
+		return;
+
+	huc->delayed_load.nb.notifier_call = gsc_notifier;
+	ret = bus_register_notifier(bus, &huc->delayed_load.nb);
+	if (ret) {
+		drm_err(&huc_to_gt(huc)->i915->drm,
+			"failed to register GSC notifier\n");
+		huc->delayed_load.nb.notifier_call = NULL;
+		gsc_init_error(huc);
+	}
+}
+
+void intel_huc_unregister_gsc_notifier(struct intel_huc *huc, struct bus_type *bus)
+{
+	if (!huc->delayed_load.nb.notifier_call)
+		return;
+
+	delayed_huc_load_complete(huc);
+
+	bus_unregister_notifier(bus, &huc->delayed_load.nb);
+	huc->delayed_load.nb.notifier_call = NULL;
+}
+
 void intel_huc_init_early(struct intel_huc *huc)
 {
 	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
@@ -57,6 +218,17 @@ void intel_huc_init_early(struct intel_huc *huc)
 		huc->status.mask = HUC_FW_VERIFIED;
 		huc->status.value = HUC_FW_VERIFIED;
 	}
+
+	/*
+	 * Initialize fence to be complete as this is expected to be complete
+	 * unless there is a delayed HuC reload in progress.
+	 */
+	i915_sw_fence_init(&huc->delayed_load.fence,
+			   sw_fence_dummy_notify);
+	i915_sw_fence_commit(&huc->delayed_load.fence);
+
+	hrtimer_init(&huc->delayed_load.timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	huc->delayed_load.timer.function = huc_delayed_load_timer_callback;
 }
 
 #define HUC_LOAD_MODE_STRING(x) (x ? "GSC" : "legacy")
@@ -122,9 +294,25 @@ void intel_huc_fini(struct intel_huc *huc)
 	if (!intel_uc_fw_is_loadable(&huc->fw))
 		return;
 
+	delayed_huc_load_complete(huc);
+
+	i915_sw_fence_fini(&huc->delayed_load.fence);
 	intel_uc_fw_fini(&huc->fw);
 }
 
+void intel_huc_suspend(struct intel_huc *huc)
+{
+	if (!intel_uc_fw_is_loadable(&huc->fw))
+		return;
+
+	/*
+	 * in the unlikely case that we're suspending before the GSC has
+	 * completed its loading sequence, just stop waiting. We'll restart
+	 * on resume.
+	 */
+	delayed_huc_load_complete(huc);
+}
+
 int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
 {
 	struct intel_gt *gt = huc_to_gt(huc);
@@ -136,6 +324,9 @@ int intel_huc_wait_for_auth_complete(struct intel_huc *huc)
 					huc->status.value,
 					2, 50, NULL);
 
+	/* mark the load process as complete even if the wait failed */
+	delayed_huc_load_complete(huc);
+
 	if (ret) {
 		drm_err(&gt->i915->drm, "HuC: Firmware not verified %d\n", ret);
 		intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
@@ -239,6 +430,12 @@ int intel_huc_check_status(struct intel_huc *huc)
 	return intel_huc_is_authenticated(huc);
 }
 
+static bool huc_has_delayed_load(struct intel_huc *huc)
+{
+	return intel_huc_is_loaded_by_gsc(huc) &&
+	       (huc->delayed_load.status != INTEL_HUC_DELAYED_LOAD_ERROR);
+}
+
 void intel_huc_update_auth_status(struct intel_huc *huc)
 {
 	if (!intel_uc_fw_is_loadable(&huc->fw))
@@ -247,6 +444,8 @@ void intel_huc_update_auth_status(struct intel_huc *huc)
 	if (intel_huc_is_authenticated(huc))
 		intel_uc_fw_change_status(&huc->fw,
 					  INTEL_UC_FIRMWARE_RUNNING);
+	else if (huc_has_delayed_load(huc))
+		huc_delayed_load_start(huc);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index 51f9d96a3ca3..915d281c1c72 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -7,9 +7,21 @@
 #define _INTEL_HUC_H_
 
 #include "i915_reg_defs.h"
+#include "i915_sw_fence.h"
 #include "intel_uc_fw.h"
 #include "intel_huc_fw.h"
 
+#include <linux/notifier.h>
+#include <linux/hrtimer.h>
+
+struct bus_type;
+
+enum intel_huc_delayed_load_status {
+	INTEL_HUC_WAITING_ON_GSC = 0,
+	INTEL_HUC_WAITING_ON_PXP,
+	INTEL_HUC_DELAYED_LOAD_ERROR,
+};
+
 struct intel_huc {
 	/* Generic uC firmware management */
 	struct intel_uc_fw fw;
@@ -20,17 +32,28 @@ struct intel_huc {
 		u32 mask;
 		u32 value;
 	} status;
+
+	struct {
+		struct i915_sw_fence fence;
+		struct hrtimer timer;
+		struct notifier_block nb;
+		enum intel_huc_delayed_load_status status;
+	} delayed_load;
 };
 
 void intel_huc_init_early(struct intel_huc *huc);
 int intel_huc_init(struct intel_huc *huc);
 void intel_huc_fini(struct intel_huc *huc);
+void intel_huc_suspend(struct intel_huc *huc);
 int intel_huc_auth(struct intel_huc *huc);
 int intel_huc_wait_for_auth_complete(struct intel_huc *huc);
 int intel_huc_check_status(struct intel_huc *huc);
 void intel_huc_update_auth_status(struct intel_huc *huc);
 bool intel_huc_is_authenticated(struct intel_huc *huc);
 
+void intel_huc_register_gsc_notifier(struct intel_huc *huc, struct bus_type *bus);
+void intel_huc_unregister_gsc_notifier(struct intel_huc *huc, struct bus_type *bus);
+
 static inline int intel_huc_sanitize(struct intel_huc *huc)
 {
 	intel_uc_fw_sanitize(&huc->fw);
-- 
2.37.2

