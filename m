Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A287A87D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB63810F23F;
	Wed, 13 Mar 2024 13:32:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qab10iI/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2426A10E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 13:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710336763; x=1741872763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TMGnD2HOssmt7GlFVxx+xw0moxdZXjchy8UruGjc0b0=;
 b=Qab10iI/DQpc9m9OraSIIpsLMKgvFx2CrvRD6nX61de00jDf9wOrdaaf
 0uBltt6+8a9fKtLizTxlFw1yx7v9sc9CK0nd5iJ4hB7AXDruq0bRHTBLv
 H7gZ3i3pcJDMIkJdBEhs0qZMZyyW8cYc7ysV16N06tU5lHvNFKlOCQrCh
 XfOAmZvUO+FPZuieZ2L8nQc3U9kxQcJpe5hVBMCc1vlYmnoX3G9DdA940
 dF7Ych87DlD8W48WXMSh+WesBNEALdvjZLM8TDqwXZZNGrTs/yYWmhYum
 U0tG2RQUvBr6aeUi4LB+z1Z5NDoS+GqtKR0sxulm4ZYLuVeYCmxuB45tw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="30537784"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="30537784"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11977920"
Received: from dgaudrex-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 3/4] drm/i915/psr: Calculate IO wake and fast wake lines
 for DISPLAY_VER < 12
Date: Wed, 13 Mar 2024 15:32:20 +0200
Message-Id: <20240313133221.868391-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313133221.868391-1-jouni.hogander@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Bspec mentions 50 us for IO wake time and 32 us for fast wake time. 32 us
is most probably wrong as it doesn't meet the specification as fast wake
time is calculated in Bspec like this:

10..16 us (precharge) + 8 us (preamble) + 4 us (phy_wake) + 20 us
(tfw_exit_latency)

Instead of using these constants calculate IO wake and fast wake for
DISPLAY_VER < 12 as well.

v3:
  - do not handle < 9 separately
  - add own helper for skl and tgl io buffer wake times
v2:
  - initialize io/fast_wake_time for display version < 9

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 46 ++++++++++++++++--------
 1 file changed, 31 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7736bdcad82d..747761efa4be 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1150,36 +1150,52 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	return true;
 }
 
-static int io_buffer_wake_time(void)
+/*
+ * IO wake time for DISPLAY_VER < 12 is not directly mentioned in Bspec. There
+ * are 50 us io wake time and 32 us fast wake time. Clearly preharge pulses are
+ * not (improperly) included in 32 us fast wake time. 50 us - 32 us = 18 us.
+ */
+static int skl_io_buffer_wake_time(void)
+{
+	return 18;
+}
+
+static int tgl_io_buffer_wake_time(void)
 {
 	return 10;
 }
 
+static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (DISPLAY_VER(i915) >= 12)
+		return tgl_io_buffer_wake_time();
+	else
+		return skl_io_buffer_wake_time();
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
+	int tfw_exit_latency = 20; /* eDP spec */
+	int phy_wake = 4;	   /* eDP spec */
+	int preamble = 8;	   /* eDP spec */
+	int precharge = intel_dp_aux_fw_sync_len() - preamble;
 	u8 max_wake_lines;
 
-	if (DISPLAY_VER(i915) >= 12) {
-		int tfw_exit_latency = 20; /* eDP spec */
-		int phy_wake = 4;	   /* eDP spec */
-		int preamble = 8;	   /* eDP spec */
-		int precharge = intel_dp_aux_fw_sync_len() - preamble;
-
-		io_wake_time = max(precharge, io_buffer_wake_time()) + preamble +
-			phy_wake + tfw_exit_latency;
-		fast_wake_time = precharge + preamble + phy_wake +
-			tfw_exit_latency;
+	io_wake_time = max(precharge, io_buffer_wake_time(crtc_state)) +
+		preamble + phy_wake + tfw_exit_latency;
+	fast_wake_time = precharge + preamble + phy_wake +
+		tfw_exit_latency;
 
+	if (DISPLAY_VER(i915) >= 12)
 		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
-	} else {
-		io_wake_time = 50;
-		fast_wake_time = 32;
+	else
 		max_wake_lines = 8;
-	}
 
 	io_wake_lines = intel_usecs_to_scanlines(
 		&crtc_state->hw.adjusted_mode, io_wake_time);
-- 
2.34.1

