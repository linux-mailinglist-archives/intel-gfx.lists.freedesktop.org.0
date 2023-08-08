Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF5E773BA5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 17:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8565110E1FB;
	Tue,  8 Aug 2023 15:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B44010E1F4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 15:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691510031; x=1723046031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BqGA3ipujTuf27nXzHM/+zunVbJ/g+FZ1KM9LFYMT3s=;
 b=XlvP5PK/W0om3Y3jNO+FmkXyt0YhK4+wpOitq9DeskQZObslKm8w3l7z
 sw+fgs5/kd2AcKhOuDyGhk0ZitNDAV3YsE68iSfGyqCe6eTjjIHxZuF83
 F5+Vj0h0k+8emVg+dyeAJFD3EeOw89rX40rDUA6g3T2iumkmuN0UGELRA
 +2k6SoigyAyaCia+a0RuzbceF1RaS94h4x+b9Hai8qpkRWfQp5U/IWSXM
 4CgNH/DIBnhNttKYBmCh+BP/f9djMIVUeWvIhyMw9PYVyCAQHJBif6L2N
 zZ6CQ2TeI1NIrXPEiH2LFpDFUZvdNthyBy21H+fNHPW6QyYM+1oKODAkn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="457249970"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="457249970"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="1062069835"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="1062069835"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 18:53:31 +0300
Message-Id: <fe51744aec9e2f465caf0d699b8a15591859f89e.1691509966.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1691509966.git.jani.nikula@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/irq: move all PCH irq postinstall
 calls to display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unify on making the calls from display code. Need to add an if ladder in
gen8_de_irq_postinstall() for now, but the function looks like it could
be overall be better split by platform. Something for the future.

The display version check for mtp seems a bit suspect, but this matches
current code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 19 ++++++++++++-------
 .../gpu/drm/i915/display/intel_display_irq.h  |  2 --
 drivers/gpu/drm/i915/i915_irq.c               |  8 --------
 3 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a697e0b32c34..62ce55475554 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1537,7 +1537,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
  * to avoid races with the irq handler, assuming we have MSI. Shared legacy
  * interrupts could still race.
  */
-void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
+static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 mask;
@@ -1624,6 +1624,9 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 		      display_mask | extra_mask);
 }
 
+static void mtp_irq_postinstall(struct drm_i915_private *i915);
+static void icp_irq_postinstall(struct drm_i915_private *i915);
+
 void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -1641,6 +1644,13 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtp_irq_postinstall(dev_priv);
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		icp_irq_postinstall(dev_priv);
+	else if (HAS_PCH_SPLIT(dev_priv))
+		ibx_irq_postinstall(dev_priv);
+
 	if (DISPLAY_VER(dev_priv) <= 10)
 		de_misc_masked |= GEN8_DE_MISC_GSE;
 
@@ -1721,7 +1731,7 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
 	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
 }
 
-void icp_irq_postinstall(struct drm_i915_private *dev_priv)
+static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 mask = SDE_GMBUS_ICP;
@@ -1745,11 +1755,6 @@ void dg1_de_irq_postinstall(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	if (DISPLAY_VER(i915) >= 14)
-		mtp_irq_postinstall(i915);
-	else
-		icp_irq_postinstall(i915);
-
 	gen8_de_irq_postinstall(i915);
 	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
 			   GEN11_DISPLAY_IRQ_ENABLE);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 2ccc3e53cec3..2a090dd6abd7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -58,9 +58,7 @@ void vlv_display_irq_reset(struct drm_i915_private *i915);
 void gen8_display_irq_reset(struct drm_i915_private *i915);
 void gen11_display_irq_reset(struct drm_i915_private *i915);
 
-void ibx_irq_postinstall(struct drm_i915_private *i915);
 void vlv_display_irq_postinstall(struct drm_i915_private *i915);
-void icp_irq_postinstall(struct drm_i915_private *i915);
 void ilk_de_irq_postinstall(struct drm_i915_private *i915);
 void gen8_de_irq_postinstall(struct drm_i915_private *i915);
 void gen11_de_irq_postinstall(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d63f79259637..1bfcfbe6e30b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -792,11 +792,6 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		icp_irq_postinstall(dev_priv);
-	else if (HAS_PCH_SPLIT(dev_priv))
-		ibx_irq_postinstall(dev_priv);
-
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 	gen8_de_irq_postinstall(dev_priv);
 
@@ -809,9 +804,6 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		icp_irq_postinstall(dev_priv);
-
 	gen11_gt_irq_postinstall(gt);
 	gen11_de_irq_postinstall(dev_priv);
 
-- 
2.39.2

