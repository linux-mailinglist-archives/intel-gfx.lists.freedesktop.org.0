Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C5C5B26A1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5829310E4FB;
	Thu,  8 Sep 2022 19:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481ED10E1B9
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 19:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662664619; x=1694200619;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ST1V+Q6aVMz30F4cyLfQtM3jGgAUxo+xrrv0jrW2U6g=;
 b=D4+KW96pXbtX5zFTzVd5hKnVEn1GmvQMOCwBthXQQfQNjEC0ur4diaBd
 zFwkW5eUn3v+mKkw3AqyskgvIr721lHLk2/knvlh5bHfmzTBCUmW720Ru
 tOu0y5AF3H+R+fIaQFlKuBDd1zzXIsI92Zbn4s8xEnmjVw+K1ecGo6nUD
 iabYSPjm+tzJkRxlwM/AKD3YUArfznnpSET+1XQVQlnusA/IVjoi1qDUx
 x87zTgwhl9T9BoKmrfomgc5+ifpizMct/GFGn6t0An7c4phmzbkP6n53h
 KNedDI1B3HOzCiBUO/OW2uo8kjGOWWS0jaB7x4NY2V7ce6Fhx9B7IDZz8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="277688658"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="277688658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676837962"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 08 Sep 2022 12:16:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 22:16:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 22:16:46 +0300
Message-Id: <20220908191646.20239-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use REG_FIELD_GET() to extract
 skl+ wm latencies
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hand rolled stuff with REG_FIELD_GET() for reading
out the skl+ watermark latencies.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++++++-------------
 drivers/gpu/drm/i915/i915_reg.h              |  8 +++----
 2 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 25ca92ae8958..cb297725d5b9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3239,13 +3239,10 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 		return;
 	}
 
-	wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[0] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
+	wm[1] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
+	wm[2] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
+	wm[3] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
 	/* read the second set of memory latencies[4:7] */
 	val = 1; /* data0 to be programmed to 1 for second set */
@@ -3255,13 +3252,10 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 		return;
 	}
 
-	wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-	wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[4] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
+	wm[5] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
+	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
+	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
 	adjust_wm_latency(i915, wm, max_level, read_latency);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c413eec3373f..7289e2b7da2c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6551,10 +6551,10 @@
 #define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
 #define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
 #define   GEN9_PCODE_READ_MEM_LATENCY		0x6
-#define     GEN9_MEM_LATENCY_LEVEL_MASK		0xFF
-#define     GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT	8
-#define     GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT	16
-#define     GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT	24
+#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
+#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
+#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
+#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
 #define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
 #define   SKL_PCODE_CDCLK_CONTROL		0x7
 #define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3
-- 
2.35.1

