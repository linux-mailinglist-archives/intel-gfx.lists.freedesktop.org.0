Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33206A74D2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795D110E260;
	Wed,  1 Mar 2023 20:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9396A10E241
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677701507; x=1709237507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5sGa7LAGlem+bVCdii936+v3BBXEjpH+IFVq6XgT2kA=;
 b=TwMLaleyFSc3Lf5L2q3IOMdP2ei4drreZnPl4GNeoMPacYuMPb7iHd9Y
 0RE1GS3WUadz21vTXX5XAB1VPMu2JVPxJbFop1V2mO4F3TA7OqECYVwr7
 18XhC2ZM5SlEEcORmCPx5eN2ysmTlisXqIRxKW3QwE9k6ZMXUS6rILXWn
 SDXfwWh4ksC7k11oeQprTXnjoFPyr6zzRDPc/+sa+WjhaXg92n+RCqArz
 bcjEI4iWUFlmaBMaYABk6xUFbEwXiIcjuI2xmj+QGf8ynRqrJzErkc+TI
 Ph9+QcIwGYN0PJkNO9E5Use46Ste5qDmM06YnreYwhcFLcNvI+KcauVFE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314933484"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="314933484"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674691940"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674691940"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:45 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 12:10:51 -0800
Message-Id: <20230301201053.928709-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Irq reset and post install are to be made multi-gt aware for the
interrupts to work for the media tile on Meteorlake. Iterate through
all the gts to process irq reset for each gt.

Based on original version by Paulo and Tvrtko

Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 417c981e4968..9377f59c1ac2 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2759,16 +2759,19 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = to_gt(dev_priv);
-	struct intel_uncore *uncore = gt->uncore;
+	struct intel_gt *gt;
+	unsigned int i;
 
 	dg1_master_intr_disable(dev_priv->uncore.regs);
 
-	gen11_gt_irq_reset(gt);
-	gen11_display_irq_reset(dev_priv);
+	for_each_gt(gt, dev_priv, i) {
+		gen11_gt_irq_reset(gt);
 
-	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
-	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+		GEN3_IRQ_RESET(gt->uncore, GEN11_GU_MISC_);
+		GEN3_IRQ_RESET(gt->uncore, GEN8_PCU_);
+	}
+
+	gen11_display_irq_reset(dev_priv);
 }
 
 void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
@@ -3422,13 +3425,16 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = to_gt(dev_priv);
-	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
+	struct intel_gt *gt;
+	unsigned int i;
 
-	gen11_gt_irq_postinstall(gt);
+	for_each_gt(gt, dev_priv, i) {
+		gen11_gt_irq_postinstall(gt);
 
-	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
+		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_, ~gu_misc_masked,
+			      gu_misc_masked);
+	}
 
 	if (HAS_DISPLAY(dev_priv)) {
 		icp_irq_postinstall(dev_priv);
@@ -3437,8 +3443,8 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 				   GEN11_DISPLAY_IRQ_ENABLE);
 	}
 
-	dg1_master_intr_enable(uncore->regs);
-	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
+	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
+	intel_uncore_posting_read(to_gt(dev_priv)->uncore, DG1_MSTR_TILE_INTR);
 }
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
-- 
2.34.1

