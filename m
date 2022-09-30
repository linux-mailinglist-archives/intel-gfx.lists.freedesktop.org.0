Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E715F14F5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 23:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B441B10EDB0;
	Fri, 30 Sep 2022 21:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269BC10EDB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 21:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664573660; x=1696109660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WHk4+EB73YDaWZQBMK77JK3/cz/xdjwaVz4VrHhjK5I=;
 b=hPApwdMD83BoE+m1yIkm+ek59SxjWS6FAfMfOtbdd7HmfAXQLYxm7ymF
 CehWPjz/jX3epPrInLQt25SDjuBAQv2tk18KC+ydSTA6CxtOsBLnA4RFs
 k3jQo1/fuhjtKdPbo0DgEpr8WdWGYO10queor8W/gbosl/5i3HRmaxP37
 qivEePV2YCpkopycNbbNzT80lWVeQ3lc2Cn7G6IOkplA7g+AiBwr3KZY9
 5SWWzNgUhjmTL1EXU3qR54Am0UH/XjWFN2ZzP9R3yKjGIBpmopTpIefxw
 4YyKHxsImPBFqF2d5W0RVC2yNAMSlOSAwg3WnFZ71wbRXetG+MqoAd8o7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="366343598"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="366343598"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:34:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="625132449"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="625132449"
Received: from daqualls-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.202.93])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:34:19 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 14:34:12 -0700
Message-Id: <20220930213412.161283-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220930213412.161283-1-anusha.srivatsa@intel.com>
References: <20220930213412.161283-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for MTL
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

As per bSpec MTL has 38.4 MHz Reference clock.
MTL does support squasher like DG2 but only for lower
frequencies. Change the has_cdclk_squasher()
helper to reflect this.

v2: Revert to using bxt_get_cdclk()

BSpec: 65243
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 25 ++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f7bc1013b149..b467aade750a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1222,7 +1222,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 
 static bool has_cdclk_squasher(struct drm_i915_private *i915)
 {
-	return IS_DG2(i915);
+	return DISPLAY_VER(i915) >= 14 || IS_DG2(i915);
 }
 
 struct intel_cdclk_vals {
@@ -1350,6 +1350,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals mtl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -3138,6 +3148,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3273,7 +3290,11 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv)) {
+
+	if (IS_METEORLAKE(dev_priv)) {
+		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table = mtl_cdclk_table;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-- 
2.25.1

