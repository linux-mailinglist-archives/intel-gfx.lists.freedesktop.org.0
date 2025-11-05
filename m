Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA668C35F97
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A10F10E763;
	Wed,  5 Nov 2025 14:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7p7d0Q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED7F10E762;
 Wed,  5 Nov 2025 14:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351722; x=1793887722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5WM5es6o6gwUSS2OUahHHtHZWnw0uhR4bIvuIjqLN5s=;
 b=G7p7d0Q3w9Q+1FJd0g0T0xa3sBQFD0Pu97AmxhtbDPHzxSY06zbFJzfY
 wz7TpFdODo+8E1hyABSlzuNLYq19Z0rPuI0yj9Yh0vGw8FcRiW3n1uC2k
 xCR2xck1qfPW13XAedZqX+56hCkVQ/9fNiPcUaOTiLSTwy8fVWbBlpkKM
 bFUOuHknHtO5Ohl6V5YsVYTqiYVhDG0wYZNRWZX6YHg3J3ptFzKI1s451
 Z9DAvzUpVQN/DFWYY8ZTrzTmy0NFXDhHm+NDuGTyQV6lRjaIMIP+aKKrJ
 +jBH0tVyyjsttXMktrLKk7lVnNGU/P2zbd4ay3RH6nJPesG/5uYaUZRA/ w==;
X-CSE-ConnectionGUID: f3W09JIkQxmhCLWQj7Ze5g==
X-CSE-MsgGUID: BKIx7HpVTUa7YVLn16NVfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348364"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348364"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:22 -0800
X-CSE-ConnectionGUID: n/yCIIEuSMO7g/r+dqmXsw==
X-CSE-MsgGUID: iehaiS85R5in/zOX82PXDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562980"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:20 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 08/17] drm/i915/xe3p_lpd: Add CDCLK table
Date: Wed,  5 Nov 2025 11:06:57 -0300
Message-ID: <20251105140651.71713-27-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

Add CDCLK table for Xe3p_LPD.

Just as with Xe3_LPD, we don't need to send voltage index info in the
PMDemand message, so we are able to re-use xe3lpd_cdclk_funcs.

With the new CDCLK table, we also need to update the maximum CDCLK value
returned by intel_update_max_cdclk().

Bspec: 68861, 68863
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-8-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 44 +++++++++++++++++++++-
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index bdb42fcc4cb2..4d03cfefc72c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1535,6 +1535,41 @@ static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals xe3p_lpd_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 151200, .ratio = 21, .waveform = 0xa4a4 },
+	{ .refclk = 38400, .cdclk = 176400, .ratio = 21, .waveform = 0xaa54 },
+	{ .refclk = 38400, .cdclk = 201600, .ratio = 21, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 226800, .ratio = 21, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 252000, .ratio = 21, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 277200, .ratio = 21, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 302400, .ratio = 21, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 327600, .ratio = 21, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 352800, .ratio = 21, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 378000, .ratio = 21, .waveform = 0xfffe },
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
+	{ .refclk = 38400, .cdclk = 710400, .ratio = 37, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 729600, .ratio = 38, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 748800, .ratio = 39, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 768000, .ratio = 40, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 787200, .ratio = 41, .waveform = 0xffff },
+	{}
+};
+
 static const int cdclk_squash_len = 16;
 
 static int cdclk_squash_divider(u16 waveform)
@@ -3561,7 +3596,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
  */
 void intel_update_max_cdclk(struct intel_display *display)
 {
-	if (DISPLAY_VERx100(display) >= 3002) {
+	if (DISPLAY_VER(display) >= 35) {
+		display->cdclk.max_cdclk_freq = 787200;
+	} else if (DISPLAY_VERx100(display) >= 3002) {
 		display->cdclk.max_cdclk_freq = 480000;
 	} else if (DISPLAY_VER(display) >= 30) {
 		display->cdclk.max_cdclk_freq = 691200;
@@ -3912,7 +3949,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) >= 30) {
+	if (DISPLAY_VER(display) >= 35) {
+		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
+		display->cdclk.table = xe3p_lpd_cdclk_table;
+	} else if (DISPLAY_VER(display) >= 30) {
 		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
 		display->cdclk.table = xe3lpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 20) {
-- 
2.51.0

