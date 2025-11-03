Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2358FC2D6D8
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3EB10E457;
	Mon,  3 Nov 2025 17:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ivqyhd8b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865F410E457;
 Mon,  3 Nov 2025 17:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190404; x=1793726404;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=tUSBFq5tf77CUpjjALtu0PPqlDJVXpA82tI1YwIa9q8=;
 b=Ivqyhd8bkmEcR0t8Ogmv1efXHqmOWRaJzOVN1xbKwS8O+uGt//LplcpO
 wpBX4+w0NULfsz/erlFgofMfb94pJDUlL9GTjmyAcRcdKxUzeUDdbWS/0
 yY5jPTBrhxsiGWb8eHV93T1QSH9QeGubI2ndyRcVy3YQMXvTyPWo+6WvV
 Od5quHVNdRa8o9h/gH26bjZdkhvStyCsVW3PaR3/RaLCn6mCMw5ONYClU
 mpcIq2VpC/MrpFB13UQu7vjtdJurnwS4HKumix3bgvFhNOQCLiGGdqmeP
 EphR0lLl9joM61FVxfixTpQozk6HQdK3x7k2vdaKb2ZF5EcR1wLZkxJLv A==;
X-CSE-ConnectionGUID: /yTALVcBTnWYR2QoU5DbNg==
X-CSE-MsgGUID: c6AjBTmsRpqBiG70uZJeng==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309992"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309992"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:04 -0800
X-CSE-ConnectionGUID: Sl8FMWa1QCyo3NWrgjc/Yg==
X-CSE-MsgGUID: bP93H2TjQHqPI7c0lXu7oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606325"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:00 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:59 -0300
Subject: [PATCH v3 08/29] drm/i915/xe3p_lpd: Add CDCLK table
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-8-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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

