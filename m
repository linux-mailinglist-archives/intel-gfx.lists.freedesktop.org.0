Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9F2975354
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D2E10EA2A;
	Wed, 11 Sep 2024 13:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6F7XXkU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A6210EA1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060351; x=1757596351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/7xrqUioBu/3YIfuGbZA5StqFPq70bdae/ZxgSipcWs=;
 b=Q6F7XXkU19BZGIfTsIQwYUgkxHIMTRoflpd2YiIeVPY9eKUilv6A3eJW
 k4QrrWNdb74MJQWxZ/xDT8dUDdHyB+UVMXkUDx+x7y+TkbpOBAn9qoXtK
 LU0wjJOBR03KEww49i+EMAL7fUyXj+wB0QVd7YUmvfnttGq3nkZvBmI9t
 W1x1a8P1fPqxP1//vIRGVytrsI0SN3r+4RimHb8fSSm5IAaiXvXgEeBkk
 6hjp8ieAIss+dHsKJ0JgJ/T+nAketn8jKj9Cg/Z/tXBe0TK+AbHNnaZGd
 q/pQi0pbpctlI82ejT4DoIt3uEWsKWAUgTIOhoXIecxiaL65d8ZBPXJbO w==;
X-CSE-ConnectionGUID: XfCGNkJZRMCuE0DVHoDz2w==
X-CSE-MsgGUID: MUd+0UxERYGi2R+O+3EPIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244404"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244404"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:30 -0700
X-CSE-ConnectionGUID: YStQEdO9SNy5meO3Gyt4sQ==
X-CSE-MsgGUID: jHjSyqWLRBCcM2WxlR2gwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381040"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/19] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Date: Wed, 11 Sep 2024 18:43:43 +0530
Message-ID: <20240911131349.933814-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
v4: Streamline the helpers for ultrajoiner. (Ville)
-Add fixup to accommodate PIPED check for ultrajoiner. (Ville)
-Add more Ultrajoiner drm_WARNs. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 91 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  3 +
 2 files changed, 89 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b66685a9843f..02926a8ef7c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3662,13 +3662,68 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
 	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
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
+static
+bool intel_display_can_use_ultrajoiner(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return ((DISPLAY_VER(display) == 14 && IS_DGFX(i915)) ||
+		DISPLAY_VER(display) > 14);
+}
+
+static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
+				      u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_display *display = to_intel_display(&i915->drm);
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	if (!intel_display_can_use_ultrajoiner(display))
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
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 primary_ultrajoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
-	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
+	u8 secondary_ultrajoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
 
 	if (!intel_display_can_use_joiner(display))
 		return;
@@ -3685,13 +3740,33 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	drm_WARN_ON(display->drm,
 		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
 
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
 	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
 				    secondary_uncompressed_joiner_pipes;
 	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
 
 	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
 		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
 		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(display->drm, (ultrajoiner_pipes & bigjoiner_pipes) != ultrajoiner_pipes,
+		 "Ultrajoiner pipes(%#x) should be bigjoiner pipes(%#x)\n",
+		 ultrajoiner_pipes, bigjoiner_pipes);
 	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
 		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
 		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
@@ -3702,10 +3777,16 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
 		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
 		 secondary_uncompressed_joiner_pipes);
-
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
+	drm_WARN(display->drm, secondary_ultrajoiner_pipes !=
+		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
+		 "Wrong secondary ultrajoiner pipes(expected %x, current %x)\n",
+		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
+		 secondary_ultrajoiner_pipes);
+
+	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
+			 primary_ultrajoiner_pipes;
+	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
+			 secondary_ultrajoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
 	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..db07c9775892 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,9 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+
+#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
+#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
 #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
 
-- 
2.45.2

