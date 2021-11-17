Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5084549C5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 16:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134416E925;
	Wed, 17 Nov 2021 15:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558016E925
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 15:19:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="220850910"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="220850910"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 07:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="472755445"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2021 07:19:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Nov 2021 17:18:38 +0200
Message-Id: <20211117151838.627622-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dg2: Introduce CD clock
 squashing table
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

For CD clock squashing method, we need to define corresponding CD clock table for
reference clocks, dividers and ratios for all CD clock options.

BSpec: 54034

v2: Add CD squashing waveforms as part of CD clock table (Ville)
v3: Waveform is 16 bits wide (Ville)
[v4: vsyrjala: Nuke the non-squasher based table,
               Set .divider=2 for consistency,
	       Pack intel_cdclk_vals a bit nicer]
v5: Fix error in waveform value (Swati)
v6 (Lucas): Rebase on upstream
v7 (MattR): Drop 40.8, 81.6, and 122.4 MHz frequencies to reflect new
    bspec update.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 91c19e0a98d7..7af4cb965060 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1313,12 +1313,19 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 };
 
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
-	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
+	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
+	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
+	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
+	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
 	{}
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 309b3f394e24..89ca59c46102 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -19,6 +19,7 @@ struct intel_crtc_state;
 struct intel_cdclk_vals {
 	u32 cdclk;
 	u16 refclk;
+	u16 waveform;
 	u8 divider;	/* CD2X divider * 2 */
 	u8 ratio;
 };
-- 
2.27.0

