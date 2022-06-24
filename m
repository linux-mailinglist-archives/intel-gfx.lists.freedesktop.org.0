Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3F7559DEC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA0910E731;
	Fri, 24 Jun 2022 16:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69CE10E731
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086407; x=1687622407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VjCGbkZeFFKtMXZiDY208GOI9zrEI4Q8GEU5R+yAEX0=;
 b=I+L6l7SVsUE/qOkwtCuDg2/bK8XeAEbcqAtksJEJPsy5VtnyDhWklKEm
 DhExL0pCwycgqsacU1iYd1+THKiWQeypfMoeOc1O6zIQb1xjZgTSn44St
 XUlCYyhrwvA7uHiOADCQdH+ggVR2ci1GBLKvb8MaPZWtWxKhEFsP2vWcp
 +MO3bAcIRffiDB2NCHOzpRG6+I/Enh6fkkQlvkM7XZ2yh+l+mFOjRHtaR
 6sz8ajxbLOjbfAr96xFXz7DiFOXQ6tLAwrSE/FnqfESWQY+aFl97lu9J6
 UN4dJCeGnKrWq28t/DJt5XGlb1h4EV5EclowXrzkWRYvk3bEZRkGrDwNK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762370"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762370"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 09:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170502"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 09:00:04 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:22 +0530
Message-Id: <20220624155922.7435-10-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/rpm: d3cold Policy
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add d3cold_sr_lmem_threshold modparam to choose between
d3cold-off zero watt and d3cold-VRAM Self Refresh.
i915 requires to evict the lmem objects to smem in order to
support d3cold-Off. if platform does not supports vram_sr
feature then fall back to d3hot by disabling d3cold to
avoid the rpm suspend/resume latency.
Extend the d3cold_sr_lmem_threshold modparam to debugfs
i915_params so that, it can be used by igt test.

If gfx root port is not capable of sending PME from d3cold
or doesn't have _PR3 power resources then only d3hot state
can be supported.

Adding intel_pm_prepare_targeted_d3_state() to choose the
correct target d3 state and cache it to intel_runtime_pm
structure, it can be used in rpm suspend/resume callback
accordingly.

FIXME: Eviction of lmem objects in case of D3Cold off is wip.

v2:
- Proivded abstraction to prepare the target d3 state. [Jani]

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 11 ++----
 drivers/gpu/drm/i915/i915_params.c      |  4 ++
 drivers/gpu/drm/i915/i915_params.h      |  1 +
 drivers/gpu/drm/i915/intel_pm.c         | 50 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h         |  1 +
 drivers/gpu/drm/i915/intel_runtime_pm.h |  7 ++++
 6 files changed, 67 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7357639456b5..bbc141acd7f3 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1578,20 +1578,14 @@ static int intel_runtime_idle(struct device *kdev)
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	int ret = 1;
 
-	if (!HAS_LMEM_SR(i915)) {
-		/*TODO: Prepare for D3Cold-Off */
-		goto out;
-	}
-
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
-	ret = intel_pm_vram_sr(i915, true);
+	ret = intel_pm_prepare_targeted_d3_state(i915);
 	if (!ret)
 		ret = 1;
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
-out:
 	pm_runtime_mark_last_busy(kdev);
 	pm_runtime_autosuspend(kdev);
 
@@ -1703,6 +1697,9 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
+	if (rpm->d3_state == INTEL_D3COLD_VRAM_SR)
+		ret = intel_pm_vram_sr(dev_priv, false);
+
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
 	rpm->suspended = false;
 	pci_d3cold_enable(pdev);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 701fbc98afa0..29ed3992d1ed 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -197,6 +197,10 @@ i915_param_named(enable_gvt, bool, 0400,
 	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
 #endif
 
+i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
+	"Enable Vidoe RAM Self refresh when size of lmem is greater to this threshold. "
+	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
+
 #if CONFIG_DRM_I915_REQUEST_TIMEOUT
 i915_param_named_unsafe(request_timeout_ms, uint, 0600,
 			"Default request/fence/batch buffer expiration timeout.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index b5e7ea45d191..a6be36001ded 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -74,6 +74,7 @@ struct drm_printer;
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
+	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 44ea336e1d51..72d9a4b3622a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8332,6 +8332,56 @@ int intel_pm_vram_sr(struct drm_i915_private *i915, bool enable)
 	return ret;
 }
 
+int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915)
+{
+	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u64 lmem_total, lmem_avail, lmem_used;
+	struct pci_dev *root_pdev;
+	int ret = 0;
+
+	/* igfx will return from here */
+	root_pdev = pcie_find_root_port(pdev);
+	if (!root_pdev)
+		return ret;
+
+	/* D3Cold requires PME capability and _PR3 power resource */
+	if (!pci_pme_capable(root_pdev, PCI_D3cold) || !pci_pr3_present(root_pdev))
+		return ret;
+
+	lmem_total = to_gt(i915)->lmem->total;
+	lmem_avail = to_gt(i915)->lmem->avail;
+	lmem_used = lmem_total - lmem_avail;
+
+	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 * 1024) {
+		ret = intel_pm_vram_sr(i915, false);
+		if (!ret) {
+			rpm->d3_state = INTEL_D3COLD_OFF;
+			drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
+		} else {
+			rpm->d3_state = INTEL_D3HOT;
+		}
+	} else if (!HAS_LMEM_SR(i915)) {
+		/* Disable D3Cold to reduce the eviction latency */
+		rpm->d3_state = INTEL_D3HOT;
+	} else {
+		ret = intel_pm_vram_sr(i915, true);
+		if (!ret) {
+			rpm->d3_state = INTEL_D3COLD_VRAM_SR;
+			drm_dbg(&i915->drm, "Prepared for VRAM Self Refresh\n");
+		} else {
+			rpm->d3_state = INTEL_D3HOT;
+		}
+	}
+
+	if (rpm->d3_state == INTEL_D3HOT)
+		pci_d3cold_disable(root_pdev);
+	else
+		pci_d3cold_enable(root_pdev);
+
+	return ret;
+}
+
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
 {
 	struct intel_dbuf_state *dbuf_state;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index ffab65431c6c..6644271e6c42 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -33,6 +33,7 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
 void intel_pm_vram_sr_setup(struct drm_i915_private *i915);
 int intel_pm_vram_sr(struct drm_i915_private *i915, bool enable);
+int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915);
 void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d9160e3ff4af..49bcd2366609 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -22,6 +22,12 @@ enum i915_drm_suspend_mode {
 	I915_DRM_SUSPEND_HIBERNATE,
 };
 
+enum intel_gfx_d3_state {
+	INTEL_D3HOT,
+	INTEL_D3COLD_OFF,
+	INTEL_D3COLD_VRAM_SR,
+};
+
 /*
  * This struct helps tracking the state needed for runtime PM, which puts the
  * device in PCI D3 state. Notice that when this happens, nothing on the
@@ -52,6 +58,7 @@ struct intel_runtime_pm {
 	bool suspended;
 	bool irqs_enabled;
 	bool no_wakeref_tracking;
+	enum intel_gfx_d3_state d3_state;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	/*
-- 
2.26.2

