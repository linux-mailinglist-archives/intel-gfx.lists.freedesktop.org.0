Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E53136409
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 00:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83636E97E;
	Thu,  9 Jan 2020 23:51:53 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E5E6E97C
 for <intel-gfx@freedesktop.org>; Thu,  9 Jan 2020 23:51:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 15:51:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="224027562"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.14.155])
 by orsmga003.jf.intel.com with ESMTP; 09 Jan 2020 15:51:51 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@freedesktop.org
Date: Fri, 10 Jan 2020 03:51:49 -0500
Message-Id: <20200110085149.843-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: add Wa_14010594013: icl,ehl
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

The bspec tells us we need to set this bit to avoid potential underruns.

Bspec: 33450
Bspec: 33451
Bspec: 33452

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 drivers/gpu/drm/i915/intel_pm.c | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cf770793be54..b9dc5e2ea606 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7785,6 +7785,7 @@ enum {
 
 #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
+#define   CNL_DELAY_PMRSP		(1 << 22)
 #define   MASK_WAKEMEM			(1 << 13)
 #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 148ac455dfa7..10714d43e8a3 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6610,6 +6610,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 	/* Wa_1407352427:icl,ehl */
 	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			 0, PSDUNIT_CLKGATE_DIS);
+
+	/*Wa_14010594013:icl, ehl */
+	I915_WRITE(GEN8_CHICKEN_DCPR_1,
+		   I915_READ(GEN8_CHICKEN_DCPR_1) | CNL_DELAY_PMRSP);
 }
 
 static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
