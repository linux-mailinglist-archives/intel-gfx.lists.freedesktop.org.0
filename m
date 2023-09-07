Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2F7974B8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFF710E842;
	Thu,  7 Sep 2023 15:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6376910E822;
 Thu,  7 Sep 2023 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101207; x=1725637207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CrgyIUwOvDmXmybA5K2WJ/6um4A3J/wfKAhcNuy9xDk=;
 b=hBOFrfX4AlSUgb1Vzs05OHIyOEWOkCTOkeEc00DjJBnakm1t/4RQF6zo
 3nI9LcI8l55lBiLBYaRJE3rpMRThQX90RgJ7EWNtzsdZIhYG7/H/sWLXZ
 UoDZHciKGff+BvMdBfY20gKM7g2jWsvPOFz3IouGY2xTVLk5qSxA9xdib
 NLxiSmRvuYIEAddndcCb0mb0DJ7T7TNt4UKB3oXgZ9kwaHBn7jS5rQjwb
 H7xzUoSQgpNheB6wfdfD8SMb0RNL3LazI3hyZ8ljc0f7ZgzYGLt3Djy5Y
 yoYjPV8VSJJdRjyxBl3pTcjooYyPvZROIaA+UrUAPb4Qbo4hzfAQFX36H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445809"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445809"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930307"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930307"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:52 -0700
Message-Id: <20230907153757.2249452-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/27] drm/i915/lnl: Add CDCLK table
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add a new Lunar Lake CDCLK table from BSpec and also a helper function
in order to be able to find lowest possible CDCLK.

v2:
  - Remove mdclk from the table as it's not needed (Matt Roper)
  - Update waveform values to the latest from spec (Matt Roper)
  - Rename functions and calculation to match by pixel rate (Lucas)

Bspec: 68861
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 55 +++++++++++++++++++++-
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index cfd01050f7f1..7307af2a4af5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1382,6 +1382,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals lnl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -2504,12 +2529,35 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	}
 }
 
+static int
+xe2lpd_cdclk_match_by_pixel_rate(struct drm_i915_private *i915, int pixel_rate)
+{
+	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
+	int i;
+
+	for (i = 0; table[i].refclk; i++) {
+		if (table[i].refclk != i915->display.cdclk.hw.ref)
+			continue;
+
+		if (table[i].refclk * table[i].ratio >= pixel_rate)
+			return table[i].cdclk;
+	}
+
+	drm_WARN(&i915->drm, 1,
+		 "Cannot satisfy pixel rate %d with refclk %u\n",
+		 pixel_rate, i915->display.cdclk.hw.ref);
+
+	return 0;
+}
+
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int pixel_rate = crtc_state->pixel_rate;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 20)
+		return xe2lpd_cdclk_match_by_pixel_rate(dev_priv, pixel_rate);
+	else if (DISPLAY_VER(dev_priv) >= 10)
 		return DIV_ROUND_UP(pixel_rate, 2);
 	else if (DISPLAY_VER(dev_priv) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
@@ -3591,7 +3639,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table = lnl_cdclk_table;
+	} else if (DISPLAY_VER(dev_priv) >= 14) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
-- 
2.40.1

