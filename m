Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7844C2D6F6
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EFC10E494;
	Mon,  3 Nov 2025 17:20:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIws6NNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6141C10E47F;
 Mon,  3 Nov 2025 17:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190442; x=1793726442;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=mn0/IVhudv6kqtfE+8aNcme0+atbHPHESTfffl7MZiQ=;
 b=IIws6NNeK/hdPjxq9oDv43fwaZM5E1Okonip/5trrQ66W13Uw0iSNcBd
 HQVSR7W8V2+1DiZIVPf3K6E8KCzkuuF96/8goouGRwICmPtUMq6ZmcGtf
 9dcqYi5c+RCVkhwB0fTTlo47a7vZYAKqO32H4X8KJrwk77FUp4gwSdogK
 f8do5jL4eTEliunuCN+UIx58oF7LgC2RTKEslt6B1c7wVhE09p5iL4is2
 z/527Kul5x48Zoo6UXicczD0NGr/GplXp+gV8tUPDjxYz8Cj3yig6ex2h
 Sv1nnJRdkMKV99oA4Vo9p1+1+ddPKRt1WSZfFOWbqn5AUkKFhyE0rkhme g==;
X-CSE-ConnectionGUID: ZPcgVsHERZKeCyQxIn9Z+g==
X-CSE-MsgGUID: GMvbX/SURvWBesuIZ4KYeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310087"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310087"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:42 -0800
X-CSE-ConnectionGUID: OGdiTzddTzyBi3PO92yDZA==
X-CSE-MsgGUID: /+L46kHjTh2AMn2/R+0BjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606581"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:38 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:09 -0300
Subject: [PATCH v3 18/29] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-18-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
X-Mailer: b4 0.15-dev
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c      | 16 +++++--
 drivers/gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++++-----------
 2 files changed, 40 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c888b0896d89..d20c88ebe919 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3479,7 +3479,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
+	else if (DISPLAY_VER(display) >= 20)
 		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
@@ -3490,9 +3493,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
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

