Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B99ACADFEB
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB8110E4D1;
	Mon,  8 Dec 2025 18:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZR3IYzPb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EDE110E4CF;
 Mon,  8 Dec 2025 18:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218467; x=1796754467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vk+NCp/pM0HND/7txIJtacyOIvS6R8TU0jqjBxHz9ao=;
 b=ZR3IYzPbhmXdRFyh0+0ejiPZnyQztlh8pjtnDl9RJO2jR3mnVzu3A2r4
 6WI5fByJZ/qAcEozteT2R8cm7wN1/JAEdB+yqkOCVoytk65t1r+R11e1h
 8dzuicDNDJMBUFgGfysZDpHAb/hm6WRh+Rc7ZRSxKvR30K0ZWLPioyyK3
 gHk3ATieApEuk4ly8V5kUE8U7wQlkRpb3xGHkefuOcO6FWBvrhKKinO8c
 51dPQY8YS717ujjmSP2dhuyQr8fYPfkXXj1Y9/QSQ4UbCYrlnw2vvq6Ur
 S95xGSYnHdL9OyatvLNXrQdm91+laTG96CnzEDBJ+9feTMD8kARx//LcW g==;
X-CSE-ConnectionGUID: NQaTjSc7R6+LL9Qe2iMaiQ==
X-CSE-MsgGUID: /UeNRKdvS4qdFFgf86IuUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129575"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129575"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:47 -0800
X-CSE-ConnectionGUID: 5gWtc+IgTV2lDnzUJ2YNrQ==
X-CSE-MsgGUID: CcHKjDpLSu2UxBNGpxKEWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014528"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:45 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 16/19] drm/i915/crt: Extract intel_crt_sense_above_threshold()
Date: Mon,  8 Dec 2025 20:26:34 +0200
Message-ID: <20251208182637.334-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the CRT sense check into a helper instead of repeating
the same thing twice.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6f216ba887bc..b71a8d97cdbb 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -693,6 +693,11 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 	return ret;
 }
 
+static bool intel_crt_sense_above_threshold(struct intel_display *display)
+{
+	return intel_vga_read(display, VGA_IS0_R, true) & (1 << 4);
+}
+
 static enum drm_connector_status
 intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 {
@@ -704,7 +709,6 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	u32 vsample;
 	u32 vblank, vblank_start, vblank_end;
 	u32 dsl;
-	u8 st00;
 	enum drm_connector_status status;
 
 	drm_dbg_kms(display->drm, "starting load-detect on CRT\n");
@@ -738,8 +742,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		 * border color for Color info.
 		 */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
-		st00 = intel_vga_read(display, VGA_IS0_R, true);
-		status = ((st00 & (1 << 4)) != 0) ?
+
+		status = intel_crt_sense_above_threshold(display) ?
 			connector_status_connected :
 			connector_status_disconnected;
 
@@ -779,15 +783,13 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		while ((dsl = intel_de_read(display, PIPEDSL(display, pipe))) <= vsample)
 			;
 		/*
-		 * Watch ST00 for an entire scanline
+		 * Watch sense for an entire scanline
 		 */
 		detect = 0;
 		count = 0;
 		do {
 			count++;
-			/* Read the ST00 VGA status register */
-			st00 = intel_vga_read(display, VGA_IS0_R, true);
-			if (st00 & (1 << 4))
+			if (intel_crt_sense_above_threshold(display))
 				detect++;
 		} while ((intel_de_read(display, PIPEDSL(display, pipe)) == dsl));
 
-- 
2.51.2

