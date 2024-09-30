Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E77898A9D5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E5A10E559;
	Mon, 30 Sep 2024 16:34:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksIBEv1d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D2F10E556;
 Mon, 30 Sep 2024 16:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714041; x=1759250041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RcRg6l2C7RmdINEY83sYHtjvbvFJMV1kSK/KySJNnEU=;
 b=ksIBEv1dUeVLRKfHHUClENVDt39sHSvP3m8JGAMCuspbCSUnU97DQoF0
 wq3dGu9b1RsD05q6YT+x7KRQaJiiFhx37PypKMo1AkCiYoijldiWHy2+T
 HHqoRyHRKy8bccdEYLmJOuNiw1JdG3UZ1Hm0SSJzDDoIglzK4dkfP+77A
 nJ2Wuw6K8SG4GBhDUFhA46Rs+jJb84n/hFcC2Ir7EH86L4GVkTr6Xja0t
 rHghu2earsxQoSsm8RLQcqFGg1oxNhVZ/ZtvZ75fBiM1cEh+AlWUr9957
 f3iGZKGPX2XqiKZg0ZfaYlCoGp+/krth8yq0fZb7C360+MkcEDfozP2UY g==;
X-CSE-ConnectionGUID: Y0PVclr8TTWhG2c8VwRhUw==
X-CSE-MsgGUID: 8AjaNnS2RWGgCQgtM8hF6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700533"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700533"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:01 -0700
X-CSE-ConnectionGUID: S4fHnwYNQdu+bKy13+UTJQ==
X-CSE-MsgGUID: OD2M7ZExTOCP/prifcqCVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839167"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/13] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Date: Mon, 30 Sep 2024 22:05:41 +0530
Message-ID: <20240930163549.416410-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ultrajoiner mode has some new bits and states to be
read out from the hw. Lets make changes accordingly.

v2: Fix checkpatch warnings. (Ankit)
v3: Add separate functions for computing expected secondary_big/ultrajoiner
pipes. (Ankit)
v4:
-Streamline the helpers for ultrajoiner. (Ville)
-Add fixup to accommodate PIPED check for ultrajoiner. (Ville)
-Add more Ultrajoiner drm_WARNs. (Ville)
v5: Remove spurious newline. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 88 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  2 +
 2 files changed, 90 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 711811b3cb5e..099304a74203 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3670,15 +3670,77 @@ static u8 get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes)
 	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
 }
 
+static u8 expected_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes)
+{
+	return expected_secondary_pipes(ultrajoiner_primary_pipes, 4);
+}
+
+static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
+					    u8 ultrajoiner_secondary_pipes)
+{
+	return ultrajoiner_secondary_pipes | ultrajoiner_primary_pipes << 3;
+}
+
+static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
+				      u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (!HAS_ULTRAJOINER(i915))
+		return;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 joiner_pipes(i915)) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
+		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (!(tmp & ULTRA_JOINER_ENABLE))
+				continue;
+
+			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
+				*primary_pipes |= BIT(pipe);
+			else
+				*secondary_pipes |= BIT(pipe);
+		}
+	}
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 enum pipe pipe,
 				 u8 *primary_pipe, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
+	u8 primary_ultrajoiner_pipes;
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 secondary_ultrajoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 ultrajoiner_pipes;
 	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
+	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
+				  &secondary_ultrajoiner_pipes);
+	/*
+	 * For some strange reason the last pipe in the set of four
+	 * shouldn't have ultrajoiner enable bit set in hardware.
+	 * Set the bit anyway to make life easier.
+	 */
+	drm_WARN_ON(&dev_priv->drm,
+		    expected_secondary_pipes(primary_ultrajoiner_pipes, 3) !=
+		    secondary_ultrajoiner_pipes);
+	secondary_ultrajoiner_pipes =
+		fixup_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes,
+						  secondary_ultrajoiner_pipes);
+
+	drm_WARN_ON(&dev_priv->drm, (primary_ultrajoiner_pipes & secondary_ultrajoiner_pipes) != 0);
+
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
 
@@ -3691,10 +3753,21 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	drm_WARN_ON(display->drm,
 		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
 
+	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
 	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
 				    secondary_uncompressed_joiner_pipes;
 	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
 
+	drm_WARN(display->drm, (ultrajoiner_pipes & bigjoiner_pipes) != ultrajoiner_pipes,
+		 "Ultrajoiner pipes(%#x) should be bigjoiner pipes(%#x)\n",
+		 ultrajoiner_pipes, bigjoiner_pipes);
+
+	drm_WARN(display->drm, secondary_ultrajoiner_pipes !=
+		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
+		 "Wrong secondary ultrajoiner pipes(expected %#x, current %#x)\n",
+		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
+		 secondary_ultrajoiner_pipes);
+
 	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
 		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
 		 uncompressed_joiner_pipes, bigjoiner_pipes);
@@ -3714,6 +3787,21 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	*primary_pipe = 0;
 	*secondary_pipes = 0;
 
+	if (ultrajoiner_pipes & BIT(pipe)) {
+		*primary_pipe = get_joiner_primary_pipe(pipe, primary_ultrajoiner_pipes);
+		*secondary_pipes = secondary_ultrajoiner_pipes &
+				   expected_ultrajoiner_secondary_pipes(*primary_pipe);
+
+		drm_WARN(display->drm,
+			 expected_ultrajoiner_secondary_pipes(*primary_pipe) !=
+			 *secondary_pipes,
+			 "Wrong ultrajoiner secondary pipes for primary_pipe %#x (expected %#x, current %#x)\n",
+			 *primary_pipe,
+			 expected_ultrajoiner_secondary_pipes(*primary_pipe),
+			 *secondary_pipes);
+		return;
+	}
+
 	if (uncompressed_joiner_pipes & BIT(pipe)) {
 		*primary_pipe = get_joiner_primary_pipe(pipe, primary_uncompressed_joiner_pipes);
 		*secondary_pipes = secondary_uncompressed_joiner_pipes &
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..bf32a3b46fb1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,8 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
+#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
 #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
 
-- 
2.45.2

