Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E472599FC1D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA9110E628;
	Tue, 15 Oct 2024 23:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJ9tAF6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F73910E628;
 Tue, 15 Oct 2024 23:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033894; x=1760569894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XFuYJGBmpwoKg05OkoFlOd5O1UqZ+ybAoCsoEax58GU=;
 b=bJ9tAF6P3wWickCMo1lTiZAEfWkRl7PoOvIr2ROPePHBASxdBI4Xebwg
 rWygH7E2BPJqBjRE8vQvfUet9YeXX01e2A1iYPUVcL5ze9ZQIJfR4G0fr
 UGBV9tvBfP8i+GL0RbMF0b7mndhJBMvxqEEuB/cBTEJFptEOTs81Z6HKs
 FYbtSs3zYwyHPEKMiNcD2EWJxjJTruFbKv/HRK99rRH0JUVO2EsPdU7Af
 m8XumBoIl6MnbRUnNPQGXp9OcOIT3aOS6jJmSf9nXFpsxTDkFcTcVnCb/
 mLp+8w/P1JQ9pqKGGZrzQAqrMDeLntxDaPlliLYyXO4+fy6QX2uzNnLAG g==;
X-CSE-ConnectionGUID: VAiZRJ9dTI6/5mX8u7ADLw==
X-CSE-MsgGUID: 5LAzVs00SWGUaXw4m/fcPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600790"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600790"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:33 -0700
X-CSE-ConnectionGUID: auldwdMyQi6iP4lnczLWyQ==
X-CSE-MsgGUID: vfsQrZh1SjqCHDMZQVsUoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120410"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:32 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 2/7] drm/i915/xe3lpd: Add cdclk changes
Date: Tue, 15 Oct 2024 16:11:19 -0700
Message-ID: <20241015231124.23982-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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
v3: xe3lpd doesnt supply the power control unit the voltage index

Bspec: 68861, 68863, 68864
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 59 +++++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fa1c2012b10c..96523526a2c3 100644
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
@@ -1594,6 +1627,16 @@ static u8 rplu_calc_voltage_level(int cdclk)
 				  rplu_voltage_level_max_cdclk);
 }
 
+static u8 xe3lpd_calc_voltage_level(int cdclk)
+{
+	/*
+	 * Starting with xe3lpd power controller does not need the voltage
+	 * index when doing the modeset update. This function is best left
+	 * defined but returning 0 to the mask.
+	 */
+	return 0;
+}
+
 static void icl_readout_refclk(struct intel_display *display,
 			       struct intel_cdclk_config *cdclk_config)
 {
@@ -3437,7 +3480,9 @@ void intel_update_max_cdclk(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	if (DISPLAY_VER(display) >= 30) {
+		display->cdclk.max_cdclk_freq = 691200;
+	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
 		if (display->cdclk.hw.ref == 24000)
 			display->cdclk.max_cdclk_freq = 552000;
 		else
@@ -3650,6 +3695,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
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
@@ -3794,7 +3846,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
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

