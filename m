Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F16BF976F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AED10E67F;
	Wed, 22 Oct 2025 00:31:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Th2ltYf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D231E10E682;
 Wed, 22 Oct 2025 00:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093107; x=1792629107;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=COoumdqdiLp5H1KUZbYng6TvMeKCfyWowbVagUVbdJM=;
 b=Th2ltYf3lyb4hbdzT1foKaCqZ12uVwMdhuZ9TMygp4TTekl06wdRPBQD
 YkeuOYuGFypiHoX3KYNs0Ae0/HLT7Q7oBYvf0/vvadU0QcoJPgGYMQbGr
 Jx7IC0/WtsJFSNX8h2DNp9+QQi3YJN6fCT5LNSp2/dJhU/bH4w4gg50sz
 /LzL3hOnbmIDb81jlzdyaHJVa8Z1SZvQ4OT7dZefrZYu3UgmSP1zajv9v
 Rzc5JZm4kXGJhPQUtQSgiewkR79caNjjlAw8RVSbWdZNjkoIi746k8mmE
 o2IZgM9LZMNHPiC6Ib309/OGwEr/fvKM9a6IbPf2eCgxX+8tvfYeX0c1F A==;
X-CSE-ConnectionGUID: zNaKgMjpTIq792MHD9vKqw==
X-CSE-MsgGUID: yMgaQmSFQ1WB41+1oN36lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855737"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855737"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:46 -0700
X-CSE-ConnectionGUID: 7ehX+JTLSSiMO1Yz8+xFXw==
X-CSE-MsgGUID: rbVdnhvpSW2C7jxDz+qAlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132409"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:43 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:38 -0300
Subject: [PATCH v2 13/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-13-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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

Some of the register fields of MBUS_CTL and DBUF_CTL register are
changed for Xe3p_LPD platforms. Update the changed fields in the driver.
Below are the changes:

MBUS_CTL:
	Translation Throttle Min
		It changed from BIT[15:13] to BIT[16:13]

DBUF_CTL:
	Min Tracker State Service
		It changed from BIT[18:16] to BIT[20:16]
        Max Tracker State Service
		It changed to from BIT[23:19] to BIT[14:10]
		but using default value, so no need to define
		in code.

v2:
  - Keep definitions in the same line (i.e. without line continuation
    breaks) for better readability. (Jani)

Bspec: 68868, 68872
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c      | 16 +++++--
 drivers/gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++++-----------
 2 files changed, 40 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 256162da9afc..c141d575009f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3477,7 +3477,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
+	else if (DISPLAY_VER(display) >= 20)
 		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
@@ -3488,9 +3491,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
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
index c5572fc0e847..94915afc6b0b 100644
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
+#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK		REG_GENMASK(15, 13)
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val)		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
 
 /*
  * The below are numbered starting from "S1" on gen11/gen12, but starting
@@ -51,21 +53,23 @@
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
+#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(18, 16) /* ADL-P+ */
 #define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)
 
 #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
 #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)

-- 
2.51.0

