Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E67A442E033
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7FE6E1D6;
	Thu, 14 Oct 2021 17:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4697F6E1D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 17:43:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="225204566"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="225204566"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:13:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="442908995"
Received: from dnvo-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.120.113])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:13:04 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Thu, 14 Oct 2021 13:12:55 -0400
Message-Id: <20211014171257.1615604-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211014171257.1615604-1-rodrigo.vivi@intel.com>
References: <20211014171257.1615604-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Random clean up of
 comments around display version.
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

We should prefer Display version over the old global "gen" thing.
Of course we are not changing functions and variables and the legacy
there, but at least let's start to document things properly and
set some good examples.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   |  6 +++---
 drivers/gpu/drm/i915/display/intel_dsb.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c             | 10 +++++-----
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e04767695530..08ffea6e1ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2244,7 +2244,7 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 		/*
 		 * Actually TGL can drive LPSP on port till DDI_C
 		 * but there is no physical connected DDI_C on TGL sku's,
-		 * even driver is not initilizing DDI_C port for gen12.
+		 * even driver is not initilizing DDI_C port for display 12.
 		 */
 		lpsp_capable = encoder->port <= PORT_B;
 	else if (DISPLAY_VER(i915) == 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1672604f9ef7..7f94ef997ea7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5287,7 +5287,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 		MBUS_ABOX_BW_CREDIT(1);
 
 	/*
-	 * gen12 platforms that use abox1 and abox2 for pixel data reads still
+	 * Display 12 platforms using abox1 and abox2 for pixel data reads still
 	 * expect us to program the abox_ctl0 register as well, even though
 	 * we don't have to program other instance-0 registers like BW_BUDDY.
 	 */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 39e11eaec1a3..73c8500c79d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -506,9 +506,9 @@ struct intel_hdcp {
 	int cp_irq_count_cached;
 
 	/*
-	 * HDCP register access for gen12+ need the transcoder associated.
-	 * Transcoder attached to the connector could be changed at modeset.
-	 * Hence caching the transcoder here.
+	 * HDCP register access for display 12 and newer platforms need the
+	 * transcoder associated. Transcoder attached to the connector could be
+	 * changed at modeset. Hence caching the transcoder here.
 	 */
 	enum transcoder cpu_transcoder;
 	/* Only used for DP MST stream encryption */
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 62a8a69f9f5d..e759d98bb766 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -18,7 +18,7 @@
  * engine that can be programmed to download the DSB from memory.
  * It allows driver to batch submit display HW programming. This helps to
  * reduce loading time and CPU activity, thereby making the context switch
- * faster. DSB Support added from Gen12 Intel graphics based platform.
+ * faster. DSB Support is introduced on Display Version 12.
  *
  * DSB's can access only the pipe, plane, and transcoder Data Island Packet
  * registers.
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4509fe7438e8..e377a192b744 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2188,7 +2188,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	/*
 	 * As associated transcoder is set and modified at modeset, here fw_tc
 	 * is initialized to zero (invalid transcoder index). This will be
-	 * retained for <Gen12 forever.
+	 * retained forever for platforms older than Display 12.
 	 */
 	data->fw_tc = MEI_INVALID_TRANSCODER;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7a205fd5023b..920b86f165a1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -68,7 +68,7 @@
  *
  * DC3CO (DC3 clock off)
  *
- * On top of PSR2, GEN12 adds a intermediate power savings state that turns
+ * On top of PSR2, Display 12 adds a intermediate power savings state that turns
  * clock off automatically during PSR2 idle state.
  * The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 deep sleep
  * entry/exit allows the HW to enter a low-power state even when page flipping
@@ -117,9 +117,9 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 	u32 mask, val;
 
 	/*
-	 * gen12+ has registers relative to transcoder and one per transcoder
-	 * using the same bit definition: handle it as TRANSCODER_EDP to force
-	 * 0 shift in bit definition
+	 * Display 12 and newer platforms have registers relative to transcoder
+	 * and one per transcoder using the same bit definition: handle it as
+	 * TRANSCODER_EDP to force 0 shift in bit definition.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		trans_shift = 0;
@@ -2193,7 +2193,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	 * than eDP one.
 	 * For now it only supports one instance of PSR for BDW, GEN9 and GEN11.
 	 * So lets keep it hardcoded to PORT_A for BDW, GEN9 and GEN11.
-	 * But GEN12 supports a instance of PSR registers per transcoder.
+	 * But Display 12 supports a instance of PSR registers per transcoder.
 	 */
 	if (DISPLAY_VER(dev_priv) < 12 && dig_port->base.port != PORT_A) {
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.31.1

