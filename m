Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F840D3A337
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D02B010E3EA;
	Mon, 19 Jan 2026 09:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFeOpL8Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CD810E3E5;
 Mon, 19 Jan 2026 09:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815500; x=1800351500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j780FCsxpcw9KIPIA57l4o+3zCsjubGla8TsMOQk5rY=;
 b=jFeOpL8ZLZD3NZKtRXVoBW5bKB5hDdQ0bClYRm3zF5AdZTklvaIf9KBM
 uqc4qoCLcYuicg1PFrJrrFif035h3D98u1j6ax05lLuta5JVONl38c+/u
 IFM55hOE4cQm+QSKBf488QuEGwRptsCQyxMGoWxlAj82IMTrcXhchrt7g
 NoMPDyfMBtu1P7zHMtvyIhaw1jfjvF3fKghxq/nmanD7RAcIc9ilu0iuS
 M4Bz3PiGag7fGyvfl+8i9v5Ge7GZjcgR2dX65LZ3Wq+sWrwq6dZrAyaCX
 Q6HNr+wrS/gKyw+ulCOVTV2xSF4NzLZhVNyNcLM4OsjtExbX2wGdSlwA3 w==;
X-CSE-ConnectionGUID: kSagcu+FSzSaf4rAUE6ZMA==
X-CSE-MsgGUID: p23YYY2uStO9+CwW08m51A==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="87602193"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="87602193"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:19 -0800
X-CSE-ConnectionGUID: VW8Z6/ryTkKx+/CPbAgyOg==
X-CSE-MsgGUID: mOXYhMyNQ8Gz4Jl4DDT1bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838475"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:18 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 13/15] drm/i915/cx0: Drop C20 25.175 MHz rate
Date: Mon, 19 Jan 2026 09:37:54 +0000
Message-ID: <20260119093757.2850233-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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

Drop C20 25.175 MHz PLL table as with these
PLL dividers the port clock will be incorrectly
calculated to 25.2 MHz. For 25.175 MHz rate the
PLl dividers are calculated algorithmically making
PLL table for this rate redundant.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 --------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ce4b7582b737..a0af7d3e87b6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1798,31 +1798,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
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
@@ -2049,7 +2024,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 };
 
 static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] = {
-	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
 	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
 	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
 	C20PLL_HDMI_PARAMS(148500, mtl_c20_hdmi_148_5),
-- 
2.43.0

