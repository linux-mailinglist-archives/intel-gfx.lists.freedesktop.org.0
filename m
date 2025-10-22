Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450E4BF9778
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7683910E685;
	Wed, 22 Oct 2025 00:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RJ3V3fxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6324310E685;
 Wed, 22 Oct 2025 00:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093117; x=1792629117;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=uoBXQqgIe2KVPpYoW1TJ7BKz91bkU0JPb/4mVyl0yMY=;
 b=RJ3V3fxmUtsFR68boDFCNySSEuzPdDoHdtPxWQ5Pl/BOLhSO9WNSBK/Z
 cTI2NcHD7BC/ZF5SU1LbYTycLqDQaGl6Zs2YTaR1j6KvPpbr3kGE8Pl0M
 6s4BzQyAAkyrSYDbI0Vbs6AvKGOGXEE206jy9qJ/PmObukM1M0C6Sp5ZG
 5EJ8B46LIxBuE8H1D8TWureXgos7fpzyoJwtlOAYG0Jvot9oHq7E/jzsU
 T0NTVHm9vSOwASc5wtAy0w5c3lpmsEwVmyak7H3D42hqyHIwBV7g3xVM5
 vxMi5sM+qefhAmRtEHBaaCdO3SVbDNgIpf9TwVVA0yshrX8lhdh8dbchR Q==;
X-CSE-ConnectionGUID: xpH7vSelTFmI5tSDGneRkA==
X-CSE-MsgGUID: gvCYtQ9KRriaFt7+9afdpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855756"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855756"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:57 -0700
X-CSE-ConnectionGUID: AmaLPGiARzWFLw2tLHz6Mg==
X-CSE-MsgGUID: 2YeS6kJ0RB64mLUisSplOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132434"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:54 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:41 -0300
Subject: [PATCH v2 16/32] drm/i915/xe3p_lpd: Add CDCLK table
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-16-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 44 ++++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e92e7fd9fd13..2365601b89e2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1534,6 +1534,41 @@ static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
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
@@ -3560,7 +3595,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
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
@@ -3911,7 +3948,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
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

