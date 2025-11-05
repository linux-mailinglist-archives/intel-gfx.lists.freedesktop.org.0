Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC44C35FB2
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A21410E773;
	Wed,  5 Nov 2025 14:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmWiz9Oq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF9F10E767;
 Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351731; x=1793887731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iAgjtWpbc4ECOxaHPKitjM2KelkcUrNtSxk8dd23HRY=;
 b=gmWiz9OqUL9Xq1+opy3/VHu/Tr9kV2qKL6oG89XACdMgemBNs76RIGWe
 WDyrYc/3N38w1sENTj0Cs3jRsGO8inghntsNC8aiVBpIK2ENntKeVCg3T
 gEoXqOXkFeQk4AIHssu5zf+Yayq1hEg8iw++yRRvNNxhfpA7JPvbLjUeW
 R/ZvKCTjscmMhQCX/RM9AhCqwWa7d9CMqPyf9/TVEVq6KZTmyjQZBBiaz
 3nzmhZQKafEnlXCLc88S5IncAs18jpJ9J36/BQ7DdFQ0P/qAQ1O4xG+CN
 L6D9YU1i0r2Af0sBeIo2Bl6T8XKmmJmuaDmrWYOxvIBzjCkqaEZ9CfMOn Q==;
X-CSE-ConnectionGUID: Mof+DP1XQvSuJKx7rUIohQ==
X-CSE-MsgGUID: 4BcFOyO0SEugYI0eKC4g3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348437"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348437"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:35 -0800
X-CSE-ConnectionGUID: 0tXZApCHQTqfmtJWwEIpBA==
X-CSE-MsgGUID: eBeBTp4iSL6KFBEYYrt+lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191563029"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:34 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 17/17] drm/i915/xe3p_lpd: Adapt to updates on MBUS_CTL/DBUF_CTL
 registers
Date: Wed,  5 Nov 2025 11:07:06 -0300
Message-ID: <20251105140651.71713-36-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Xe3p_LPD updated fields of registers MBUS_CTL and DBUF_CTL to
accommodate for higher MDCLK:CDCLK ratios.  Update the code to use the
new fields.

The field MBUS_TRANSLATION_THROTTLE_MIN_MASK was changed from range
[15:13] to [16:13].  Since bit 16 is not reserved in previous display
IPs and already used for something else, we can't simply extend the mask
definition to include it, but rather define an Xe3p-specific mask and
select the correct one to use based on the IP version.

Similarly, DBUF_MIN_TRACKER_STATE_SERVICE_MASK was changed from range
[18:16] to [20:16]. For the same reasons stated above, it needs a
Xe3p-specific mask definition.

v2:
  - Keep definitions in the same line (i.e. without line continuation
    breaks) for better readability. (Jani)
v3:
  - Keep mask fields sorted by the upper limit. (Matt)
  - Extend commit message to indicate why we need Xe3p-specific
    definitions of the masks instead of just extending the existing
    ones. (Matt)

Bspec: 68868, 68872
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-18-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 16 ++++--
 .../gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++---------
 2 files changed, 40 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 95941e878bf1..36a266f882d1 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3486,7 +3486,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
+	else if (DISPLAY_VER(display) >= 20)
 		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
@@ -3497,9 +3500,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 		    ratio, str_yes_no(joined_mbus));
 
 	for_each_dbuf_slice(display, slice)
-		intel_de_rmw(display, DBUF_CTL_S(slice),
-			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
-			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
+		if (DISPLAY_VER(display) >= 35)
+			intel_de_rmw(display, DBUF_CTL_S(slice),
+				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
+				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
+		else
+			intel_de_rmw(display, DBUF_CTL_S(slice),
+				     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
+				     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
 
 static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
index c5572fc0e847..abf56ac31105 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -32,16 +32,18 @@
 #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
 #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
 
-#define MBUS_CTL				_MMIO(0x4438C)
-#define   MBUS_JOIN				REG_BIT(31)
-#define   MBUS_HASHING_MODE_MASK		REG_BIT(30)
-#define   MBUS_HASHING_MODE_2x2			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
-#define   MBUS_HASHING_MODE_1x4			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
-#define   MBUS_JOIN_PIPE_SELECT_MASK		REG_GENMASK(28, 26)
-#define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
-#define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
-#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
-#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
+#define MBUS_CTL					_MMIO(0x4438C)
+#define   MBUS_JOIN					REG_BIT(31)
+#define   MBUS_HASHING_MODE_MASK			REG_BIT(30)
+#define   MBUS_HASHING_MODE_2x2				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
+#define   MBUS_HASHING_MODE_1x4				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
+#define   MBUS_JOIN_PIPE_SELECT_MASK			REG_GENMASK(28, 26)
+#define   MBUS_JOIN_PIPE_SELECT(pipe)			REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
+#define   MBUS_JOIN_PIPE_SELECT_NONE			MBUS_JOIN_PIPE_SELECT(7)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
+#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK		REG_GENMASK(15, 13)
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val)		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
 
 /*
  * The below are numbered starting from "S1" on gen11/gen12, but starting
@@ -51,20 +53,22 @@
  * way things will be named by the hardware team going forward, plus it's more
  * consistent with how most of the rest of our registers are named.
  */
-#define _DBUF_CTL_S0				0x45008
-#define _DBUF_CTL_S1				0x44FE8
-#define _DBUF_CTL_S2				0x44300
-#define _DBUF_CTL_S3				0x44304
-#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
-							    _DBUF_CTL_S0, \
-							    _DBUF_CTL_S1, \
-							    _DBUF_CTL_S2, \
-							    _DBUF_CTL_S3))
-#define  DBUF_POWER_REQUEST			REG_BIT(31)
-#define  DBUF_POWER_STATE			REG_BIT(30)
-#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
-#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
-#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
+#define _DBUF_CTL_S0					0x45008
+#define _DBUF_CTL_S1					0x44FE8
+#define _DBUF_CTL_S2					0x44300
+#define _DBUF_CTL_S3					0x44304
+#define DBUF_CTL_S(slice)				_MMIO(_PICK(slice, \
+								    _DBUF_CTL_S0, \
+								    _DBUF_CTL_S1, \
+								    _DBUF_CTL_S2, \
+								    _DBUF_CTL_S3))
+#define  DBUF_POWER_REQUEST				REG_BIT(31)
+#define  DBUF_POWER_STATE				REG_BIT(30)
+#define  DBUF_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(23, 19)
+#define  DBUF_TRACKER_STATE_SERVICE(x)			REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)
+#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(18, 16) /* ADL-P+ */
 #define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
 
 #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
-- 
2.51.0

