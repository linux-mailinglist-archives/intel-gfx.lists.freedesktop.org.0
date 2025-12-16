Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB78CC1A2F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B53210E6E0;
	Tue, 16 Dec 2025 08:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pt2kUo8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CA010E785;
 Tue, 16 Dec 2025 08:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874816; x=1797410816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojjhsxPWzMMMkACPL1c92nchJ4CdS8qBhm+cmhsz57c=;
 b=Pt2kUo8Ci0N2M+ZRmeiYp9aXJPSbGDD0hK95RXlYnhWzm8l/hu4OFRA2
 t9q92wbitaOXoaPhI54cj2li62TYArdtWCWwgEmfHJh9m/QnQxTxzbH8Q
 vSADtFjJfaVc1k0eII4WUp5TX4OXiOVo29O2IkoshaQ2qk/GMRAumBdgK
 iNxSRHKuPu9CjXxTkHTD+SKH/23an17zZ7UW0BGB+PkF64JD4Io5ZtUvV
 VVvk//DlJ7bf3NVJ/nHxCfEpahAZxS63ow/71J9LCh6n5efYsS8unKNy3
 5NC0PA6+y8ocGgfzVz6zqcCrD2YspnFNCQvy3iLBKamFgk/sG1zlrVXBm g==;
X-CSE-ConnectionGUID: TKCRNfV5RVOrqKSzszL1bQ==
X-CSE-MsgGUID: B9gsMQ5NRK6VxpxC0SujgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642342"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642342"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:55 -0800
X-CSE-ConnectionGUID: m7rPt2tGS1W4TXe/Sgvi9w==
X-CSE-MsgGUID: vjK/xZ4eT12EU+JBG+Y7lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448906"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:54 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 11/13] drm/i915/cx0: Drop C20 25.175 MHz rate
Date: Tue, 16 Dec 2025 10:37:57 +0200
Message-Id: <20251216083759.383163-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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
index ff76d4b8c8fd..25f6062345f9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1790,31 +1790,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
 	C10PLL_HDMI_PARAMS(594000, mtl_c10_hdmi_594), /* Consolidated Table */
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
@@ -2041,7 +2016,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 };
 
 static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] = {
-	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
 	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
 	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
 	C20PLL_HDMI_PARAMS(148500,mtl_c20_hdmi_148_5),
-- 
2.34.1

