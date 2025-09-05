Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD11B45AFC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BC510EBB6;
	Fri,  5 Sep 2025 14:52:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y69WfwCJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5100710EBCD;
 Fri,  5 Sep 2025 14:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757083952; x=1788619952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GnMBR703Abokn2c0d9aBdC5/2008MmNi/K7cxdnnxcU=;
 b=Y69WfwCJlLqfS1JVJUoRrVUqpMBP9afRnYXxzHPnEo0kOb52ourBbuYh
 VExGoBF5DoVmkH2nvwpst99xCcsJpIjYbo/7IDte3LXZBDNo9EAVErrFf
 wBetAdVucpOeD/4a6sATV0jA+8Tf1p4sbamCiOLj3cCEKOAUGD1fE7GSN
 q2sPALOodzn2vOmJJsXCMH0/C12hJ/UNNQTI4NGR5PjnSOPlz4qUN5S1r
 mhd1+f63M4f9oERaZ40/224w1dRnLU2Z/+dUhhlmNUDsq+jyiBPG4aeth
 J4Mmot9ulRL4tZ9pPfsGPBz78363Pop3axP6S9zF4MiktdnE+v4WGk1Au Q==;
X-CSE-ConnectionGUID: gpAnCzchQ8i6FIYEzOz8sQ==
X-CSE-MsgGUID: 6vcjc+fFRMqw218D7kUjlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82027620"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82027620"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:31 -0700
X-CSE-ConnectionGUID: 8sbarijBQtKm+p5Hz4Swwg==
X-CSE-MsgGUID: M6/kcyQGT2e6458Pi/56iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195837340"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/13] drm/i915: Don't pass the latency array to {skl,
 mtl}_read_wm_latency()
Date: Fri,  5 Sep 2025 17:52:03 +0300
Message-ID: <20250905145212.10845-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
References: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
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

We always operate on i915->display.wm.skl_latency in
{skl,mtl}_read_wm_latency(). No real need for the caller
to have to pass that in explicitly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 21 ++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 805481c92154..9797c2131334 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3184,9 +3184,10 @@ static bool need_16gb_dimm_wa(struct intel_display *display)
 }
 
 static void
-adjust_wm_latency(struct intel_display *display,
-		  u16 wm[], int num_levels, int read_latency)
+adjust_wm_latency(struct intel_display *display, int read_latency)
 {
+	u16 *wm = display->wm.skl_latency;
+	int num_levels = display->wm.num_levels;
 	int i, level;
 
 	/*
@@ -3230,9 +3231,9 @@ adjust_wm_latency(struct intel_display *display,
 		wm[0] += 1;
 }
 
-static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
+static void mtl_read_wm_latency(struct intel_display *display)
 {
-	int num_levels = display->wm.num_levels;
+	u16 *wm = display->wm.skl_latency;
 	u32 val;
 
 	val = intel_de_read(display, MTL_LATENCY_LP0_LP1);
@@ -3247,12 +3248,12 @@ static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	adjust_wm_latency(display, wm, num_levels, 6);
+	adjust_wm_latency(display, 6);
 }
 
-static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
+static void skl_read_wm_latency(struct intel_display *display)
 {
-	int num_levels = display->wm.num_levels;
+	u16 *wm = display->wm.skl_latency;
 	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
 	int mult = display->platform.dg2 ? 2 : 1;
 	u32 val;
@@ -3284,7 +3285,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
 	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
 	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
-	adjust_wm_latency(display, wm, num_levels, read_latency);
+	adjust_wm_latency(display, read_latency);
 }
 
 static void skl_setup_wm_latency(struct intel_display *display)
@@ -3295,9 +3296,9 @@ static void skl_setup_wm_latency(struct intel_display *display)
 		display->wm.num_levels = 8;
 
 	if (DISPLAY_VER(display) >= 14)
-		mtl_read_wm_latency(display, display->wm.skl_latency);
+		mtl_read_wm_latency(display);
 	else
-		skl_read_wm_latency(display, display->wm.skl_latency);
+		skl_read_wm_latency(display);
 
 	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
 }
-- 
2.49.1

