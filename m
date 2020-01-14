Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B71221399E2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 20:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA05B6E139;
	Mon, 13 Jan 2020 19:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5066F6E139
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 19:11:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 11:11:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="424406823"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.14.212])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jan 2020 11:11:28 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 23:11:28 -0500
Message-Id: <20200114041128.11211-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: add Wa_14010594013: icl,ehl
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

v2: use new register write convention (Anshuman) add bspec 7386 ref.

Bspec: 7386
Bspec: 33450
Bspec: 33451

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
index 148ac455dfa7..de585e670496 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6610,6 +6610,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 	/* Wa_1407352427:icl,ehl */
 	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			 0, PSDUNIT_CLKGATE_DIS);
+
+	/*Wa_14010594013:icl, ehl */
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+			 0, CNL_DELAY_PMRSP);
 }
 
 static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
