Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7DF8FB710
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A3110E4CF;
	Tue,  4 Jun 2024 15:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlIZe3iE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A99210E4E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514895; x=1749050895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PRIWDykf9britUwpaI8jCWPCwAlSOB9lIiZGxx2SJpE=;
 b=PlIZe3iEmxkYqIAlN4DWJES9ICvh7zrYQUt1kkhyCCyE/f2IMNjh4kDn
 Ecjm4p3FA3LvX8U1CImoRcsBXFF05JuZx3JpKOUpwgNAmLxfg7OSG6QKU
 U+jAi3gzTq2qxCfKF28IIvKrR2XDgtJsUpfreyuXwDCd2FXFFKhRwNlle
 rsuhLBQo09YyVLovWKkFuB7YfTWNXT3IiTTiEbUaL3mgyRFu/eo/+YDbR
 ZL57zBpQeK+W9HUErybb4ODI3uNvM8T4IYhQ9miMVT0D5Adex8I2/IUS+
 RvLKX/vPDqRdyJ++9meqLjSUk/nwQXW4VwrMiyzysxuAlJTK0G63auBta Q==;
X-CSE-ConnectionGUID: zefaHnMaQaCOTrHn4uUlGQ==
X-CSE-MsgGUID: AZIltnTRRbyr7qmsNxNY9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225628"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225628"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:15 -0700
X-CSE-ConnectionGUID: HX2KZDAFTnKHejQF8i9mGg==
X-CSE-MsgGUID: qQEMI0m8SZe4mF6qO95L3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37277995"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 22/65] drm/i915: pass dev_priv explicitly to PIPESTAT
Date: Tue,  4 Jun 2024 18:25:40 +0300
Message-Id: <8b18a1e77ccfd451bbaee80b6ddb23bdbc479336.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPESTAT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 +++++----
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h                    | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c        | 8 ++++----
 4 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index be5b48861baf..76bba95410e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -224,7 +224,7 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, u32 status_mask)
 {
-	i915_reg_t reg = PIPESTAT(pipe);
+	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
 	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
@@ -247,7 +247,7 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, u32 status_mask)
 {
-	i915_reg_t reg = PIPESTAT(pipe);
+	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
 	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
@@ -400,7 +400,8 @@ void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_write(&dev_priv->uncore, PIPESTAT(pipe),
+		intel_uncore_write(&dev_priv->uncore,
+				   PIPESTAT(dev_priv, pipe),
 				   PIPESTAT_INT_STATUS_MASK |
 				   PIPE_FIFO_UNDERRUN_STATUS);
 
@@ -453,7 +454,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 		if (!status_mask)
 			continue;
 
-		reg = PIPESTAT(pipe);
+		reg = PIPESTAT(dev_priv, pipe);
 		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
 		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 09a7fa6c0c37..401726f466c0 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -94,7 +94,7 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
 static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	i915_reg_t reg = PIPESTAT(crtc->pipe);
+	i915_reg_t reg = PIPESTAT(dev_priv, crtc->pipe);
 	u32 enable_mask;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -115,7 +115,7 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
 					     bool enable, bool old)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	i915_reg_t reg = PIPESTAT(pipe);
+	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a6dff480bd0b..0aaceedf77dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1880,7 +1880,7 @@
 #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
 #define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
 #define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
-#define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
+#define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
 #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 6a37f790c753..00ee588fab39 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -134,10 +134,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPESTAT(PIPE_A));
-	MMIO_D(PIPESTAT(PIPE_B));
-	MMIO_D(PIPESTAT(PIPE_C));
-	MMIO_D(PIPESTAT(_PIPE_EDP));
+	MMIO_D(PIPESTAT(dev_priv, PIPE_A));
+	MMIO_D(PIPESTAT(dev_priv, PIPE_B));
+	MMIO_D(PIPESTAT(dev_priv, PIPE_C));
+	MMIO_D(PIPESTAT(dev_priv, _PIPE_EDP));
 	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A));
 	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
 	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
-- 
2.39.2

