Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F103F0166
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 12:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEB46E51C;
	Wed, 18 Aug 2021 10:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2847E6E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 10:11:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="216022651"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="216022651"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="520891347"
Received: from mdbadill-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 18 Aug 2021 13:11:05 +0300
Message-Id: <594f628740717cda5ef407a26ea03129c22ddc12.1629281426.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629281426.git.jani.nikula@intel.com>
References: <cover.1629281426.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/irq: reduce inlines to reduce
 header dependencies
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

Presumably if the compiler is smart, it does not generate an extra
function call to the update functions that are now static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 50 +++++++++++++++++++++++++-------
 drivers/gpu/drm/i915/i915_irq.h | 51 +++++++--------------------------
 2 files changed, 50 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9bc4f4a8e12e..58a452c3f086 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -359,9 +359,8 @@ void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void ilk_update_display_irq(struct drm_i915_private *dev_priv,
-			    u32 interrupt_mask,
-			    u32 enabled_irq_mask)
+static void ilk_update_display_irq(struct drm_i915_private *dev_priv,
+				   u32 interrupt_mask, u32 enabled_irq_mask)
 {
 	u32 new_val;
 
@@ -380,6 +379,16 @@ void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 	}
 }
 
+void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits)
+{
+	ilk_update_display_irq(i915, bits, bits);
+}
+
+void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
+{
+	ilk_update_display_irq(i915, bits, 0);
+}
+
 /**
  * bdw_update_port_irq - update DE port interrupt
  * @dev_priv: driver private
@@ -419,10 +428,9 @@ static void bdw_update_port_irq(struct drm_i915_private *dev_priv,
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
-			 enum pipe pipe,
-			 u32 interrupt_mask,
-			 u32 enabled_irq_mask)
+static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
+				enum pipe pipe, u32 interrupt_mask,
+				u32 enabled_irq_mask)
 {
 	u32 new_val;
 
@@ -444,15 +452,27 @@ void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 	}
 }
 
+void bdw_enable_pipe_irq(struct drm_i915_private *i915,
+			 enum pipe pipe, u32 bits)
+{
+	bdw_update_pipe_irq(i915, pipe, bits, bits);
+}
+
+void bdw_disable_pipe_irq(struct drm_i915_private *i915,
+			  enum pipe pipe, u32 bits)
+{
+	bdw_update_pipe_irq(i915, pipe, bits, 0);
+}
+
 /**
  * ibx_display_interrupt_update - update SDEIMR
  * @dev_priv: driver private
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
-				  u32 interrupt_mask,
-				  u32 enabled_irq_mask)
+static void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
+					 u32 interrupt_mask,
+					 u32 enabled_irq_mask)
 {
 	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
 	sdeimr &= ~interrupt_mask;
@@ -469,6 +489,16 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 	intel_uncore_posting_read(&dev_priv->uncore, SDEIMR);
 }
 
+void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+{
+	ibx_display_interrupt_update(i915, bits, bits);
+}
+
+void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
+{
+	ibx_display_interrupt_update(i915, bits, 0);
+}
+
 u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 			      enum pipe pipe)
 {
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index e43b6734f21b..0eb90d271fa7 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -9,9 +9,9 @@
 #include <linux/ktime.h>
 #include <linux/types.h>
 
-#include "display/intel_display.h"
 #include "i915_reg.h"
 
+enum pipe;
 struct drm_crtc;
 struct drm_device;
 struct drm_display_mode;
@@ -40,46 +40,15 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
 void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
 				   u32 mask,
 				   u32 bits);
-void ilk_update_display_irq(struct drm_i915_private *dev_priv,
-			    u32 interrupt_mask,
-			    u32 enabled_irq_mask);
-static inline void
-ilk_enable_display_irq(struct drm_i915_private *dev_priv, u32 bits)
-{
-	ilk_update_display_irq(dev_priv, bits, bits);
-}
-static inline void
-ilk_disable_display_irq(struct drm_i915_private *dev_priv, u32 bits)
-{
-	ilk_update_display_irq(dev_priv, bits, 0);
-}
-void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
-			 enum pipe pipe,
-			 u32 interrupt_mask,
-			 u32 enabled_irq_mask);
-static inline void bdw_enable_pipe_irq(struct drm_i915_private *dev_priv,
-				       enum pipe pipe, u32 bits)
-{
-	bdw_update_pipe_irq(dev_priv, pipe, bits, bits);
-}
-static inline void bdw_disable_pipe_irq(struct drm_i915_private *dev_priv,
-					enum pipe pipe, u32 bits)
-{
-	bdw_update_pipe_irq(dev_priv, pipe, bits, 0);
-}
-void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
-				  u32 interrupt_mask,
-				  u32 enabled_irq_mask);
-static inline void
-ibx_enable_display_interrupt(struct drm_i915_private *dev_priv, u32 bits)
-{
-	ibx_display_interrupt_update(dev_priv, bits, bits);
-}
-static inline void
-ibx_disable_display_interrupt(struct drm_i915_private *dev_priv, u32 bits)
-{
-	ibx_display_interrupt_update(dev_priv, bits, 0);
-}
+
+void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
+void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
+
+void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
+void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
+
+void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits);
+void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
 
 void gen5_enable_gt_irq(struct drm_i915_private *dev_priv, u32 mask);
 void gen5_disable_gt_irq(struct drm_i915_private *dev_priv, u32 mask);
-- 
2.20.1

