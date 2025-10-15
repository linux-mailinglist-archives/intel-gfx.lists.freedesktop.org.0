Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B84DBDC4E4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C371210E6F8;
	Wed, 15 Oct 2025 03:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+o6OZCx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2138C10E6F9;
 Wed, 15 Oct 2025 03:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498261; x=1792034261;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=gn7ST2nruGFcOuZU1UwclIJ7Pd3dRRmkt+VhYoIzFvg=;
 b=M+o6OZCxu8YEAIVEgsB/nwL7JJqDWpBEHTwPXHH63gq5VL3l4QDdS/M7
 8WKFGwMUL7OMNa34oyS+hiFM3hbqoRyTCq2gVdnc+hMmDc5yKhF8Ow7pR
 iiz2F2po8QzD/EKpZpRrj/nHk+ZrBU4VvcVvF4UPbZN3jSCaM0qlKQAxr
 cq4r7cY7h7J/YzU+u6ySUJEJg/55K5Gh6WBAF15Hqzbc1KJY43VJc+vz1
 HQrKV4e+YxicpK5MYy1xXQc/xxjvYl8prXOIkY3qO+oUpJ572viCPYODE
 eRsDQRrdoea6epEkPKtb/4oqRH983b87mKxx25sscTA6Bdqlg7Z4aykyZ A==;
X-CSE-ConnectionGUID: kp5RsvDfTyyWFkvxXISz5A==
X-CSE-MsgGUID: kPuJfrhuR5uj4pg3oEn2vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577227"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577227"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:40 -0700
X-CSE-ConnectionGUID: EIkSASsFR92RDCUaBB4zeA==
X-CSE-MsgGUID: lwRfir+fQ82kj9IWaUljNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302802"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:35 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:14 -0300
Subject: [PATCH 14/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-14-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

Bspec: 68868, 68872
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c      | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark_regs.h | 12 ++++++++++--
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..41f64e347436 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3505,7 +3505,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
+	else if (DISPLAY_VER(display) >= 20)
 		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
@@ -3516,9 +3519,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
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
index c5572fc0e847..7e0877303e05 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -41,7 +41,11 @@
 #define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
 #define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
 #define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
-#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
+#define   MBUS_TRANSLATION_THROTTLE_MIN(val) \
+		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
+#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val) \
+		REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
 
 /*
  * The below are numbered starting from "S1" on gen11/gen12, but starting
@@ -65,7 +69,11 @@
 #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
 #define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
 #define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
-#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x) \
+		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
+#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x) \
+		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)
 
 #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
 #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)

-- 
2.51.0

