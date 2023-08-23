Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B93785E2E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3397C10E4A6;
	Wed, 23 Aug 2023 17:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3065C10E48C;
 Wed, 23 Aug 2023 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810562; x=1724346562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=onVT/P8/u5v1KwQYE2CsEzdNl+Y3pEZChRs9Ze9EEiQ=;
 b=hajfL0OM+Fgzk+Wiuiy+F/a3zk3KE62DJklEHlnb0Aj0TtiCDoJJZsjG
 wg3V/DjLj3XF6cwAw7hIW1jk85kHOvxbyWyeh4J2SRXP1meYbwH/CorX4
 rWnHTeBFo6sXTR0GH4yBjC6pZMLCiCF2DBXFBEUtvaOH4K0Bi1LzGB30Y
 qilFLb60GbRxPn0UC5SGNtUz3QT7DdM9k4eDB1MAOfkUdsH6S8Bc8Osff
 4JdW1Iv/lyScuvjDDXIXoi6Qj0tsWJ6/pe+bZB+IS6bZDvisOjUpTPIGY
 LnPYhjF5h9KBvS9O8nY1tn2z8F4o/wtEhB9YVuiKVycmYINOQnXAc3OfC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147508"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147508"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204867"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204867"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:31 -0700
Message-Id: <20230823170740.1180212-34-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 33/42] drm/i915/lnl: Add CDCLK table
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
in order to be able to find lowest possible CDCLK, which has required
MDCLK for the correspodent pixel rate.

Bspec: 68861
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 52 +++++++++++++++++++++-
 1 file changed, 50 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3e566f45996d..ed45a2cf5c9a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1381,6 +1381,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals lnl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 153600, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 172800, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 211200, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 230400, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 249600, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 268800, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 288000, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 307200, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 330000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 360000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 390000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 420000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 450000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 480000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 487200, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 522000, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 556800, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 571200, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 612000, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 652800, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -2531,12 +2556,32 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	}
 }
 
+static int
+cdclk_match_by_refclk_mdclk(struct drm_i915_private *i915, int pixel_rate)
+{
+	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
+	int i;
+
+	for (i = 0; table[i].refclk; i++)
+		if (table[i].refclk == i915->display.cdclk.hw.ref &&
+		    table[i].mdclk >= pixel_rate)
+			return table[i].cdclk;
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
+		return cdclk_match_by_refclk_mdclk(dev_priv, pixel_rate);
+	else if (DISPLAY_VER(dev_priv) >= 10)
 		return DIV_ROUND_UP(pixel_rate, 2);
 	else if (DISPLAY_VER(dev_priv) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
@@ -3581,7 +3626,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_METEORLAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table = lnl_cdclk_table;
+	} else if (IS_METEORLAKE(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
-- 
2.40.1

