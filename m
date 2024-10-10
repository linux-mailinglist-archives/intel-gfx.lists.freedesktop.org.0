Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE33999562
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78F810EA02;
	Thu, 10 Oct 2024 22:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JkuKpNT5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A199D10E9F3;
 Thu, 10 Oct 2024 22:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600201; x=1760136201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vi/y5IAUGuFbIYKpdu9yRPhN/rCc/xJ1o6UvF9JeOq0=;
 b=JkuKpNT5UrNfGOhO9IJ0uuFr0rkzn3mW+tNkPIicEq/ZIrk8Ferusm88
 wY24uPWZ+ilNlsp4M9zrIRR8Pq6hpAF61kVcTqyZaRwFUpVeq9vkRfRBT
 HsorkpLOIE75SDZQD9GK3GYY8WjqnQsHhmNs3Bv+qlDv27M4hkatzKAez
 a40GYtR51vpToQa0/q5sxQFb9Fi/LL/dIBvCYHq7ivlMhsgTmmpaC5zti
 wDvRjKU7Ht084vMDVyZ+zekhCulXn7ulog0zq4BNIjpKqCWJwgaoN7l3b
 Q0lUI9LNBDCGeAQOEuuETS5Xbfv6LEldxFg0gedNVohwrQY8VcJLxGr/E A==;
X-CSE-ConnectionGUID: BnhxcipFRQODDDKS4JYoLA==
X-CSE-MsgGUID: n0WxCezMQFujdUqFT9hAXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380869"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380869"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:21 -0700
X-CSE-ConnectionGUID: cqQtj6TtSYuN957H3iyC1Q==
X-CSE-MsgGUID: 34G+7QbmSNibifC6KG4u3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732041"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:20 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v2 05/10] drm/i915/xe3lpd: Add cdclk changes
Date: Thu, 10 Oct 2024 15:43:06 -0700
Message-ID: <20241010224311.50133-6-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
and modify/add higher frequencies. Updating the max cdclk supported by
the platform and voltage_level determination is also updated.

There are minor changes in cdclk programming sequence compared to lnl,
where programming cd2x divider needs to be skipped. This is already handled
by the calculations in existing code.

v2: update tables

Bspec: 68861, 68863, 68864
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 61 +++++++++++++++++++++-
 1 file changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fa1c2012b10c..13829a3c3c42 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1468,6 +1468,39 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 326400, .ratio = 17, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 345600, .ratio = 18, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 364800, .ratio = 19, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 384000, .ratio = 20, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 403200, .ratio = 21, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 422400, .ratio = 22, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 441600, .ratio = 23, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 460800, .ratio = 24, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 499200, .ratio = 26, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 518400, .ratio = 27, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 537600, .ratio = 28, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 576000, .ratio = 30, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 595200, .ratio = 31, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 614400, .ratio = 32, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 633600, .ratio = 33, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 672000, .ratio = 35, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
+	{}
+};
+
 static const int cdclk_squash_len = 16;
 
 static int cdclk_squash_divider(u16 waveform)
@@ -1594,6 +1627,18 @@ static u8 rplu_calc_voltage_level(int cdclk)
 				  rplu_voltage_level_max_cdclk);
 }
 
+static u8 xe3lpd_calc_voltage_level(int cdclk)
+{
+	static const int xe3lpd_voltage_level_max_cdclk[] = {
+		[0] = 307200,
+		[1] = 691200,
+	};
+
+	return calc_voltage_level(cdclk,
+				  ARRAY_SIZE(xe3lpd_voltage_level_max_cdclk),
+				  xe3lpd_voltage_level_max_cdclk);
+}
+
 static void icl_readout_refclk(struct intel_display *display,
 			       struct intel_cdclk_config *cdclk_config)
 {
@@ -3437,7 +3482,9 @@ void intel_update_max_cdclk(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	if (DISPLAY_VER(display) >= 30) {
+		display->cdclk.max_cdclk_freq = 691200;
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		if (display->cdclk.hw.ref == 24000)
 			display->cdclk.max_cdclk_freq = 552000;
 		else
@@ -3650,6 +3697,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
 			    display, &i915_cdclk_info_fops);
 }
 
+static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = xe3lpd_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3794,7 +3848,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (DISPLAY_VER(display) >= 20) {
+	if (DISPLAY_VER(display) >= 30) {
+		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
+		display->cdclk.table = xe3lpd_cdclk_table;
+	} else if (DISPLAY_VER(display) >= 20) {
 		display->funcs.cdclk = &rplu_cdclk_funcs;
 		display->cdclk.table = xe2lpd_cdclk_table;
 	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
-- 
2.45.0

