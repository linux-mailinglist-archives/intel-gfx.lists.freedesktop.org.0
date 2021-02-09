Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD460315041
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 14:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF106EAD0;
	Tue,  9 Feb 2021 13:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC876EAD0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 13:34:13 +0000 (UTC)
IronPort-SDR: L1Cl3Yp7VGVnxtbWMr32KinzVkoCSTIp75ZN1r2yMEu0ueGi48kIcRnyc9F0P8f7tJq0ElI4OS
 K+RdXnxLmjWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="243373326"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="243373326"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 05:34:12 -0800
IronPort-SDR: Hy2c/+OE5xq8yeRozPZsPf8Aivzm55DKUU+xLl4ZkLokDKJd6ek2KFRTcKgkg1y13ZSpTFH5g0
 kX42MnVQ8Jnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="412207740"
Received: from linux-2012-client-platform.iind.intel.com ([10.223.34.3])
 by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2021 05:34:10 -0800
From: Saichandana S <saichandana.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 19:01:54 +0530
Message-Id: <20210209133154.31115-1-saichandana.s@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210115130110.2650-1-saichandana.s@intel.com>
References: <20210115130110.2650-1-saichandana.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES
 registers
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This debugfs provides the display PM debug information like Time
to Next VBI and Time to Next Fill from Display Engine <-> PCU Mailbox.

V2:
Added a functional print to debugfs. [Jani Nikula]

V3:
Used separate variables to store the register values and also
used REG_GENMASK and REG_BIT for mask preparation. [Anshuman Gupta]

Removed reading of register contents. Replaced local variable with yesno().
Placed register macros separately, distinguishing from other
macros. [Jani Nikula]

V4 : Used i915 as local variable. [Anshuman Gupta, Jani Nikula]

V5 : Added wakeref to wakeup device. [Chris Wilson]
Signed-off-by: Saichandana S <saichandana.s@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d6e4a9237bda..29aaa41fdeec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -591,6 +591,29 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_pcu_pm_req_res_info(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_csr *csr = &i915->csr;
+	intel_wakeref_t wakeref;
+
+	if (!HAS_CSR(i915))
+		return -ENODEV;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	if (!csr->dmc_payload)
+		return 0;
+	seq_printf(m, "Time to Next Fill : 0x%08x\n",
+		   intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNF_MASK);
+	seq_printf(m, "Time to Next VBI : 0x%08x\n",
+		   (intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNVBI_MASK) >> 16);
+	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
+		   intel_de_read(i915, PM_RSP_DBG_1) & PM_RESP_SEL_EXIT_LATENCY_MASK);
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	return 0;
+}
+
 static void intel_seq_print_mode(struct seq_file *m, int tabs,
 				 const struct drm_display_mode *mode)
 {
@@ -2128,6 +2151,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_edp_psr_status", i915_edp_psr_status, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_dmc_info", i915_dmc_info, 0},
+	{"i915_pcu_pm_req_res_info", i915_pcu_pm_req_res_info, 0},
 	{"i915_display_info", i915_display_info, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 224ad897af34..93d319bf80fd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12525,4 +12525,13 @@ enum skl_power_gate {
 #define TGL_ROOT_DEVICE_SKU_ULX		0x2
 #define TGL_ROOT_DEVICE_SKU_ULT		0x4
 
+/*These registers are of functional registers for PM debug request and response registers*/
+#define PM_REQ_DBG_0				_MMIO(0x45284)
+#define PM_REQ_DBG_1				_MMIO(0x45288)
+#define PM_RSP_DBG_0				_MMIO(0x4528C)
+#define   PM_RESP_TTNF_MASK			REG_GENMASK(15, 0)
+#define   PM_RESP_TTNVBI_MASK			REG_GENMASK(31, 16)
+#define PM_RSP_DBG_1				_MMIO(0x45290)
+#define   PM_RESP_SEL_EXIT_LATENCY_MASK		REG_GENMASK(2, 0)
+
 #endif /* _I915_REG_H_ */
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
