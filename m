Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D675ABB6F
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC42E10E94D;
	Fri,  2 Sep 2022 23:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FEC10E95C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 23:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662162789; x=1693698789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a3npPAdokQwys5dyPtAJ6QB7GUDYglIaH7yTiUnsqiY=;
 b=PSsqo6RlRR/BdM/oZu8/PNO5W0b5kSxj6abBH5O+141B8BlNd6iBu5YO
 wn+12doI89bG349Pz1jf/bidXChDiqZv5bKRa84YWjvXYzfa0BkWt7B6u
 bx69+RbJLbEcDqyOSkF3rxxYrpkPcaGRUQ07MKTi8BqJ363XRrDvuiWn3
 eeKvErJ4iKypLOCBq06IPpTDVpV5yA+5JPQ17X+nq2U7VeVj8CmfcbuQB
 GmHBDM6VF5+GbpFy93E01f/iie9z3veu4pDBIAZbh5Dsq3k8yGZwH+0+R
 4Gm3C3LUzNCtAnAEPp0fZt+iIueNjlLlUo/WdQF7v5aCFEDz1aIjIOXz7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279125069"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="279125069"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="564135561"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:53:02 -0700
Message-Id: <20220902235302.1112388-7-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/rps: Freq caps for MTL
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

For MTL, when reading from HW, RP0, RP1 (actuall RPe) and RPn freq use an
entirely different set of registers with different fields, bitwidths and
units.

Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h     |  9 +++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 579ae9ac089c..e7ab172698e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1085,6 +1085,23 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
 }
 
+static void
+mtl_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 rp_state_cap = rps_to_gt(rps)->type == GT_MEDIA ?
+				intel_uncore_read(uncore, MTL_MEDIAP_STATE_CAP) :
+				intel_uncore_read(uncore, MTL_RP_STATE_CAP);
+	u32 rpe = rps_to_gt(rps)->type == GT_MEDIA ?
+			intel_uncore_read(uncore, MTL_MPE_FREQUENCY) :
+			intel_uncore_read(uncore, MTL_GT_RPE_FREQUENCY);
+
+	/* MTL values are in units of 16.67 MHz */
+	caps->rp0_freq = REG_FIELD_GET(MTL_RP0_CAP_MASK, rp_state_cap);
+	caps->min_freq = REG_FIELD_GET(MTL_RPN_CAP_MASK, rp_state_cap);
+	caps->rp1_freq = REG_FIELD_GET(MTL_RPE_MASK, rpe);
+}
+
 /**
  * gen6_rps_get_freq_caps - Get freq caps exposed by HW
  * @rps: the intel_rps structure
@@ -1098,6 +1115,9 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 rp_state_cap;
 
+	if (IS_METEORLAKE(i915))
+		return mtl_get_freq_caps(rps, caps);
+
 	rp_state_cap = intel_rps_read_state_cap(rps);
 
 	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 06d555321651..d78f9675aa57 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1792,6 +1792,15 @@
 #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 #define PVC_RP_STATE_CAP	_MMIO(0x281014)
 
+#define MTL_RP_STATE_CAP	_MMIO(0x138000)
+#define MTL_MEDIAP_STATE_CAP	_MMIO(0x138020)
+#define   MTL_RP0_CAP_MASK	REG_GENMASK(8, 0)
+#define   MTL_RPN_CAP_MASK	REG_GENMASK(24, 16)
+
+#define MTL_GT_RPE_FREQUENCY	_MMIO(0x13800c)
+#define MTL_MPE_FREQUENCY	_MMIO(0x13802c)
+#define   MTL_RPE_MASK		REG_GENMASK(8, 0)
+
 #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
 #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
 #define   PROCHOT_MASK			REG_BIT(1)
-- 
2.34.1

