Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5980613634B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E3C6E071;
	Thu,  9 Jan 2020 22:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E26B6E071
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 22:37:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 14:37:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="246811414"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jan 2020 14:37:32 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 14:37:27 -0800
Message-Id: <20200109223727.5630-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add Wa_1409825376 to tgl
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

Workaround database indicates we should disable VRH clockgating
in pre-production hardware.

V2:
 - Use REG_BIT macro
 - Update reference in commit message(Matt)

Bspec: 52890
Bspec: 49424
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 +++
 drivers/gpu/drm/i915/intel_pm.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cc55c103f67..a023166ca7b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4124,6 +4124,9 @@ enum {
 #define   PWM2_GATING_DIS		(1 << 14)
 #define   PWM1_GATING_DIS		(1 << 13)
 
+#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
+#define   TGL_VRH_GATING_DIS		REG_BIT(31)
+
 #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
 #define   BXT_GMBUS_GATING_DIS		(1 << 14)
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 148ac455dfa7..0d71fc19d0ee 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6630,6 +6630,11 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	I915_WRITE(POWERGATE_ENABLE,
 		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
+
+	/* Wa_1409825376:tgl (pre-prod)*/
+	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
+		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
+			   TGL_VRH_GATING_DIS);
 }
 
 static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
