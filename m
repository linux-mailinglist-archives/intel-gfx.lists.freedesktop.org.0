Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D85C97F02D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25AFB10E45F;
	Mon, 23 Sep 2024 18:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjBevz8r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4049910E45B;
 Mon, 23 Sep 2024 18:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115122; x=1758651122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rGLkozKu/804sVQy4TMdjfP2veZBsiUBx9ZpsDzYg+o=;
 b=mjBevz8rB21CmVDwz8rgOna1RUUHyRMVOSAsxbcAaAL92u/neypgezo1
 qMfKb+uKts22aC/kEzBo50neKDANg8UoAWlbgedg0SkSraxegsrn8RCvg
 snQW/M3Fi1vvHVa32E84Jp2iTlyOBFBa+91MY24xiTrgQpi25T+0XCtB/
 Al4+oRn8ITTXgZPdTObSpl6jaarvMJNjjxBLcxwks61dOvN7053bFFiDj
 rqKRXOJQ2XKfaBG7syjepZcJI20KrAAi4Vl3H79O2VCgX8aLteHwIJ4GS
 SZtP0pIIf2NYpZerltOJiYFwOdC/BNH1WnGPJLnMlGA8zYi/CKej0zocV A==;
X-CSE-ConnectionGUID: gWO2jQ6dSkeqjGe9poSRBA==
X-CSE-MsgGUID: Mpfn0qa8RyWfQPZBu9dDyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866265"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866265"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:01 -0700
X-CSE-ConnectionGUID: 7LEdVIt4SxqGEy5a2nMYZQ==
X-CSE-MsgGUID: tpA0xcGsQ8mtB6GRIn5FWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734322"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/16] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Date: Mon, 23 Sep 2024 23:43:29 +0530
Message-ID: <20240923181336.3303940-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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
v4:
-Streamline the helpers for ultrajoiner. (Ville)
-Add fixup to accommodate PIPED check for ultrajoiner. (Ville)
-Add more Ultrajoiner drm_WARNs. (Ville)
v5: Remove spurious newline. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 87 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  2 +
 2 files changed, 79 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee57e1e544af..c42ba377d247 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3663,13 +3663,58 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
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
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
+	u8 primary_ultrajoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
-	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
+	u8 secondary_ultrajoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3683,14 +3728,35 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
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
+
 	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
 		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
 		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
@@ -3702,15 +3768,16 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
 		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
 		 secondary_uncompressed_joiner_pipes);
-
-	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-
-	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
-
-	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
-		 *primary_pipes, *secondary_pipes);
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
 }
 
 static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
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

