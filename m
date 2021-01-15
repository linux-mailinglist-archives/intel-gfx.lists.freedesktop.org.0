Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1735F2F7B6E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 14:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB106E3DB;
	Fri, 15 Jan 2021 13:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C08F6E3DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 13:02:18 +0000 (UTC)
IronPort-SDR: 9QFxLcI6f8p8IKI3nP4TgSSYzgn5WqdI48hy5ufPrh23pMc0Ub4Td1nxbVirhC78UL99CVj8/e
 SQ7QFT5SVg5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="166213538"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="166213538"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 05:02:12 -0800
IronPort-SDR: Dqhk6LPVH/4dAJ/4PiFiB3uqSSWmih0nMEBz1q/wA1ZAjmTkulxGLtH+eMV9kdcKRVjnJ1R4Ge
 q1+q8NNxxS8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="382655265"
Received: from linux-2012-client-platform.iind.intel.com ([10.223.34.3])
 by orsmga008.jf.intel.com with ESMTP; 15 Jan 2021 05:02:10 -0800
From: Saichandana S <saichandana.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 18:31:10 +0530
Message-Id: <20210115130110.2650-1-saichandana.s@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210104103036.1443-1-saichandana.s@intel.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and PM_RES
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
Cc: jani.nikula@intel.com, saichandana.s@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PM_REQ register provides the value of the last PM request, response
from PCU to PM_DBG_{REQ,RSP} . This debugfs provides DC9 Ready
status but will also be used by DC9 IGT test . It will also print
the useful debug information from Display Engine to PCU mailbox register.

B.Spec : 49501, 49502

V2:
Added a functional print to debugfs. [Jani Nikula]

V3:
Used separate variables to store the register values and
also used REG_GENMASK and REG_BIT for mask preparation. [Anshuman Gupta]

Removed reading of register contents. Replaced local variable
with yesno(). Placed register macros separately, distinguishing from
other macros. [Jani Nikula]

V4 : Used i915 as a local variable. [Anshuman Gupta, Jani Nikula]

Signed-off-by: Saichandana S <saichandana.s@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index cd7e5519ee7d..afed22903ac7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -559,6 +559,28 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_pm_req_res_info(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_csr *csr = &i915->csr;
+	u32 DC9_status;
+
+	if (!HAS_CSR(i915))
+		return -ENODEV;
+	if (!csr->dmc_payload)
+		return 0;
+	DC9_status = intel_de_read(i915, PM_RSP_DBG_1) & PM_RESP_DC9_READY;
+
+	seq_printf(m, "Time to Next Fill : 0x%08x\n",
+		   intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNF_MASK);
+	seq_printf(m, "Time to Next VBI : 0x%08x\n",
+		   (intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNVBI_MASK) >> 16);
+	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
+		   intel_de_read(i915, PM_RSP_DBG_1) & PM_RESP_SEL_EXIT_LATENCY_MASK);
+	seq_printf(m, "DC9 Ready : %s\n", yesno(DC9_status));
+	return 0;
+}
+
 static void intel_seq_print_mode(struct seq_file *m, int tabs,
 				 const struct drm_display_mode *mode)
 {
@@ -2100,6 +2122,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_edp_psr_status", i915_edp_psr_status, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_dmc_info", i915_dmc_info, 0},
+	{"i915_pm_req_res_info", i915_pm_req_res_info, 0},
 	{"i915_display_info", i915_display_info, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0023c023f472..8c91d598dc29 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12423,4 +12423,14 @@ enum skl_power_gate {
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
+#define   PM_RESP_DC9_READY			REG_BIT(15)
+
 #endif /* _I915_REG_H_ */
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
