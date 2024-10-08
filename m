Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A0995A1F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8CB10E603;
	Tue,  8 Oct 2024 22:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N0usWddA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8E310E603;
 Tue,  8 Oct 2024 22:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427069; x=1759963069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lVEu8PXqU/hx6B5niOi9zHYApMRmg9lo5UOPf0rdyFY=;
 b=N0usWddAi2B+05sTCCh5ODhfpOfMqvDd7EbSqYz9R+hr6MqXBhN9nHRM
 TGKpyRmo8jSC8UvncoTdn0Up8/iM7SlAJoEjM4dyVbRbOqVUGLvLrN4z6
 9xY+t6mrqI2IvheyIVY/Otx2M7hFLeglpTvwi2CzYFn2+Y31wjCnZ4YsQ
 uVGEtQlGNXtNJOWqKq8xrPOaYf/LNxvWm08nO5qn/rnnrIDwlSuMYlp9W
 TfY3Zh3RkwO30kSVem+mtUjdZrXb14EMPHlAAU3r4tj/eVekFSO8f34DQ
 lOWENZJOobQtLF7ZzcoasXfS+yZmk08b4sHMGaFF4QXYozIt59cw36OEV g==;
X-CSE-ConnectionGUID: +p+5x41JRZCxSiUDGHYnlQ==
X-CSE-MsgGUID: 4IBF9sqtTlWPHt1ZQUfiHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037294"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037294"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:48 -0700
X-CSE-ConnectionGUID: Le0+tN6vQRSX/0fljF7n3w==
X-CSE-MsgGUID: OTKGOF2lR7Caqp8D5mISKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811842"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 05/10] drm/i915/xe3lpd: Add cdclk changes
Date: Tue,  8 Oct 2024 15:37:36 -0700
Message-ID: <20241008223741.82790-6-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

Bspec: 68861, 68863, 68864
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 56 +++++++++++++++++++++-
 1 file changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fa1c2012b10c..6ac7bd6afc36 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1468,6 +1468,32 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
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
+	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 561600, .ratio = 36, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 604800, .ratio = 36, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 648000, .ratio = 36, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
+	{}
+};
+
 static const int cdclk_squash_len = 16;
 
 static int cdclk_squash_divider(u16 waveform)
@@ -1594,6 +1620,20 @@ static u8 rplu_calc_voltage_level(int cdclk)
 				  rplu_voltage_level_max_cdclk);
 }
 
+static u8 xe3lpd_calc_voltage_level(int cdclk)
+{
+	static const int xe3lpd_voltage_level_max_cdclk[] = {
+		[0] = 307200,
+		[1] = 480000,
+		[2] = 556800,
+		[3] = 691200,
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
@@ -3437,7 +3477,9 @@ void intel_update_max_cdclk(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	if (DISPLAY_VER(display) >= 30) {
+		display->cdclk.max_cdclk_freq = 691200;
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		if (display->cdclk.hw.ref == 24000)
 			display->cdclk.max_cdclk_freq = 552000;
 		else
@@ -3650,6 +3692,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
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
@@ -3794,7 +3843,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
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

