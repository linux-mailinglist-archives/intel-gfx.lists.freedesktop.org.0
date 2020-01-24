Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E511148EEA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 20:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F5372B98;
	Fri, 24 Jan 2020 19:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33E472B98
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 19:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 11:54:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="228403907"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 24 Jan 2020 11:54:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 11:53:51 -0800
Message-Id: <20200124195351.534551-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/tgl: Suppress DC5/DC6 around DSB usage
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are reports of unexpected DSB busy/timeout happening after IGT
tests finish running that apparently go away when the DMC firmware isn't
loaded.  The bspec doesn't say anything specific about DSB needing us to
exit DC5/DC6, but let's try adding DSB usage to the "DC off" list and
see if that changes the behavior.

Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 drivers/gpu/drm/i915/display/intel_dsb.c           | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dsb.h           | 1 +
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 761be9fcaf10..99e6afda2db9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -150,6 +150,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "GT_IRQ";
 	case POWER_DOMAIN_DPLL_DC_OFF:
 		return "DPLL_DC_OFF";
+	case POWER_DOMAIN_DSB:
+		return "DSB";
 	default:
 		MISSING_CASE(domain);
 		return "?";
@@ -2679,6 +2681,7 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
 	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
 	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
+	BIT_ULL(POWER_DOMAIN_DSB) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 
 #define TGL_DDI_IO_D_TC1_POWER_DOMAINS (	\
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 2608a65af7fa..5e8136c65e02 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -77,6 +77,7 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_GT_IRQ,
 	POWER_DOMAIN_DPLL_DC_OFF,
 	POWER_DOMAIN_INIT,
+	POWER_DOMAIN_DSB,
 
 	POWER_DOMAIN_NUM,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ada006a690df..156a94a1be05 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -103,7 +103,6 @@ intel_dsb_get(struct intel_crtc *crtc)
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *buf;
-	intel_wakeref_t wakeref;
 
 	if (!HAS_DSB(i915))
 		return dsb;
@@ -111,7 +110,7 @@ intel_dsb_get(struct intel_crtc *crtc)
 	if (dsb->refcount++ != 0)
 		return dsb;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	dsb->wakeref = intel_display_power_get(i915, POWER_DOMAIN_DSB);
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
 	if (IS_ERR(obj)) {
@@ -144,7 +143,7 @@ intel_dsb_get(struct intel_crtc *crtc)
 	 * already be logged above.
 	 */
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_DSB, dsb->wakeref);
 
 	return dsb;
 }
@@ -174,6 +173,8 @@ void intel_dsb_put(struct intel_dsb *dsb)
 		dsb->free_pos = 0;
 		dsb->ins_start_offset = 0;
 	}
+
+	intel_display_power_put(i915, POWER_DOMAIN_DSB, dsb->wakeref);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 395ef9ce558e..b7ea6e24a78c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -26,6 +26,7 @@ struct intel_dsb {
 	enum dsb_id id;
 	u32 *cmd_buf;
 	struct i915_vma *vma;
+	intel_wakeref_t wakeref;
 
 	/*
 	 * free_pos will point the first free entry position
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
