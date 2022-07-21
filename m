Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEEB57C806
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A158CFA0;
	Thu, 21 Jul 2022 09:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DCE8CFA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396903; x=1689932903;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B40sf06Askigx4Z2lI9R5+ITH2/OhAnqkSTTrq2XSwY=;
 b=hXycSZgAN4/CAfK4eqPhhqUqmviYWx6hQfKDwQQI7Yh3hG/NjZMRQcwq
 JH2APVteEVhiu5QrZY1JRNUB4V0WK+cgUTCGQ2dwPqUW4xsF6lH9dVDnG
 ESjMJwHzwT5e/GYthxeIWSx+MjPfoa3ra10vzLTjawi7Jdd/7F7p6Y4CY
 lNhK0DQVIfrQnUnv3frlyWlps0d9pd7iv8/sGGjR5i6fHItHEJ28z+UzL
 /7hB+yTgeMe2pJjIC3gP8iSRu1MP7SeC54Ec7Wg8SlSZD5oQ2roXgLON/
 O/x5P8JGuJenXA7iklQwaISpMjgMfRVWRwJw/ZG4rj9GeqxK65xRTIbh1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="288167864"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="288167864"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="687846973"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2022 02:48:20 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwX026833; Thu, 21 Jul 2022 10:48:16 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:53 +0530
Message-Id: <20220721095955.3986943-7-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/rpm: d3cold Policy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tilak Tangudu <tilak.tangudu@intel.com>

Add d3cold_sr_lmem_threshold modparam to choose between
d3cold-off zero watt and  d3hot/d3cold-VRAM Self Refresh.
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

v2: lmem->avail stopped tracking lmem usage since ttm is
introduced, so removed lmem->avail usage in policy.
FIXME here, lmem usage is not added, need to be added
by using query functions.
FIXME, Forcing the policy to enter D3COLD_OFF for
validation purpose.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      |  6 +++++
 drivers/gpu/drm/i915/i915_params.c      |  5 ++++
 drivers/gpu/drm/i915/i915_params.h      |  1 +
 drivers/gpu/drm/i915/intel_pm.c         | 35 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h         |  1 +
 drivers/gpu/drm/i915/intel_runtime_pm.h |  7 +++++
 6 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4c36554567fd..2b2e9563f149 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1581,6 +1581,12 @@ static int intel_runtime_idle(struct device *kdev)
 	struct drm_i915_private *i915 = kdev_to_i915(kdev);
 	int ret = 1;
 
+	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	ret = intel_pm_prepare_targeted_d3_state(i915);
+	if (!ret)
+		ret = 1;
+
+	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 	pm_runtime_mark_last_busy(kdev);
 	pm_runtime_autosuspend(kdev);
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 6fc475a5db61..4603f5c2ed77 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -197,6 +197,11 @@ i915_param_named(enable_gvt, bool, 0400,
 	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
 #endif
 
+i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
+	"Enable VRAM Self refresh when size of lmem is greater to this threshold. "
+	"If VRAM Self Refresh is not available then fall back to d3cold. "
+	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
+
 #if CONFIG_DRM_I915_REQUEST_TIMEOUT
 i915_param_named_unsafe(request_timeout_ms, uint, 0600,
 			"Default request/fence/batch buffer expiration timeout.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 2733cb6cfe09..1a86711038da 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -75,6 +75,7 @@ struct drm_printer;
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
 	param(unsigned int, lmem_bar_size, 0, 0400) \
+	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f06babdb3a8c..20b0638ecd5c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8287,6 +8287,41 @@ void intel_pm_setup(struct drm_i915_private *dev_priv)
 	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
 }
 
+int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915)
+{
+	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u64 lmem_used = 0;
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
+	/* FXME query the LMEM usage and fill lmem_used */
+	/* Trigger D3COLD_OFF always to validate with all tests */
+	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 * 1024) {
+		rpm->d3_state = INTEL_D3COLD_OFF;
+		drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
+	} else {
+		/* Disable D3Cold to reduce the eviction latency */
+		rpm->d3_state = INTEL_D3HOT;
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
index 945503ae493e..7827b0c1a2f3 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -31,6 +31,7 @@ int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
+int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915);
 void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 99418c3a934a..568559b71b70 100644
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
2.25.1

