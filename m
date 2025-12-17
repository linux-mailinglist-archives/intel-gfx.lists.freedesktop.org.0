Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DDBCC8701
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0674710EC72;
	Wed, 17 Dec 2025 15:28:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BA7PWRZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCAD10E8CC;
 Wed, 17 Dec 2025 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985337; x=1797521337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aSaECQpgzWsRcn2oQs+H+sHHBw6cXYV+BFG6evWQ9Bs=;
 b=BA7PWRZdMrRgbgsHgA4Lf3L5GYMtJjyTG9jpnKwywPpolj60vyKOIE6s
 YfBKQN3tZgpwZyht+GKxtXLwkwFUT9jWKq2/ue3ngwDTbuep7Ys+ZavLG
 vvMYFkjusIDFHSavhPLHD8qhaU9GpmjXWTuN0s+XPihGXFxCEyY5CqwQr
 edyWKUW4mFtCdvohzwm3olx0FroC5wYon+ZiAyOCFMPeuILJyxqVj5MN7
 3HDsFlZIMJtxwlYagYjn22FgaQTjzgDZpZrryB3H8GQZNymTPYhAU/MCt
 OwAa42sDNHVLrBYqZ9rr5HsCg7RAzgOvAEoeDcUPj1WfcSXBj/0qTQ2Ba g==;
X-CSE-ConnectionGUID: qLSTKGw2QPesURNf2Agb9Q==
X-CSE-MsgGUID: uxqpO8oqSaaN4RhUABOjIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781469"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781469"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:57 -0800
X-CSE-ConnectionGUID: YF3D+QWLSEiKOF8qJSSIvg==
X-CSE-MsgGUID: ImTxA9DDTiGnDjRfycAeaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097327"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:55 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 13/15] drm/i915/cx0: Drop C20 25.175 MHz rate
Date: Wed, 17 Dec 2025 17:19:53 +0200
Message-Id: <20251217151955.1690202-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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

Drop C20 25.175 MHz pll table as with these
pll dividers the port clock will be incorrectly
calculated to 25.2 MHz. For 25.175 MHz rate the
PLl dividers are calculated algorithmically making
pll table for this rate redundant.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 --------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a8c37a14d427..5d0bca0f75b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1797,31 +1797,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
 	{}
 };
 
-static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
-	.clock = 25175,
-	.tx = {  0xbe88, /* tx cfg0 */
-		  0x9800, /* tx cfg1 */
-		  0x0000, /* tx cfg2 */
-		},
-	.cmn = { 0x0500, /* cmn cfg0*/
-		  0x0005, /* cmn cfg1 */
-		  0x0000, /* cmn cfg2 */
-		  0x0000, /* cmn cfg3 */
-		},
-	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
-		   0x7d80,	/* mpllb cfg1 */
-		   0x0906,	/* mpllb cfg2 */
-		   0xbe40,	/* mpllb cfg3 */
-		   0x0000,	/* mpllb cfg4 */
-		   0x0000,	/* mpllb cfg5 */
-		   0x0200,	/* mpllb cfg6 */
-		   0x0001,	/* mpllb cfg7 */
-		   0x0000,	/* mpllb cfg8 */
-		   0x0000,	/* mpllb cfg9 */
-		   0x0001,	/* mpllb cfg10 */
-		},
-};
-
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
@@ -2048,7 +2023,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 };
 
 static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] = {
-	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
 	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
 	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
 	C20PLL_HDMI_PARAMS(148500, mtl_c20_hdmi_148_5),
-- 
2.34.1

