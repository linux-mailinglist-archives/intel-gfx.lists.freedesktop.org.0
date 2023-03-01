Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE7D6A70D5
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 17:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A84710E327;
	Wed,  1 Mar 2023 16:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D75C10E327
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 16:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677687896; x=1709223896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKs4/gOsQOXMAemDRu5d6NStW2kbGT3CrhWbDCEImTs=;
 b=i/pC7o0KOeVB/rzit8OZacQkJMs5m02yhUP1tXsUHz103pK1FPk8aNjf
 Y/YcjVGYSnG+2iCUOqt1aaLfJpFj9YNRPSmAaFIV/Kpv2UHg2PQWI9JXj
 VAqW2UG8WL/Nlg2LmxkUcixsjdbprqFjpZqVjhTAeat4Ski0IHlThoOZ7
 j/pDuFbB4cxyPzmRxtNXSzNyK8wRN6hUHED1GMZSeFAff4RzgaFhy9onZ
 5xUk1cAgVX+eZ7WT8tABJKm+mqoAFWOXKhaiRVVVGeg6UhVhkXCplV2+Q
 MOps6n4gQ3gRXeY2gNZlG3FsfMV8juY9OsSnakMH+Nn/iSFmzLrbsXwdN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335944165"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335944165"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 08:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674624118"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674624118"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 08:24:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 18:24:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 18:24:48 +0200
Message-Id: <20230301162449.26672-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230301162449.26672-1-ville.syrjala@linux.intel.com>
References: <20230301162449.26672-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Extract skl_wm_latency()
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

Extract the skl+ wm latency determination into a small helper
so that everyone has the same idea what the latency should be.

This introduces a slight functional change in that
skl_cursor_allocation() will now start to account for the
extra 4 usec that the kbk/cfl/cml IPC w/a adds.

v2: Rebase

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 40 +++++++++++++-------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1300965d328a..7d49a42b9d90 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -705,6 +705,28 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */);
 
+static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
+				   const struct skl_wm_params *wp)
+{
+	unsigned int latency = i915->display.wm.skl_latency[level];
+
+	if (latency == 0)
+		return 0;
+
+	/*
+	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
+	 * Display WA #1141: kbl,cfl
+	 */
+	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
+	    skl_watermark_ipc_enabled(i915))
+		latency += 4;
+
+	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
+		latency += 15;
+
+	return latency;
+}
+
 static unsigned int
 skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 		      int num_active)
@@ -724,7 +746,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	drm_WARN_ON(&i915->drm, ret);
 
 	for (level = 0; level < i915->display.wm.num_levels; level++) {
-		unsigned int latency = i915->display.wm.skl_latency[level];
+		unsigned int latency = skl_wm_latency(i915, level, &wp);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
@@ -1840,17 +1862,6 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		return;
 	}
 
-	/*
-	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
-	 * Display WA #1141: kbl,cfl
-	 */
-	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
-	    skl_watermark_ipc_enabled(i915))
-		latency += 4;
-
-	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
-		latency += 15;
-
 	method1 = skl_wm_method1(i915, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
 	method2 = skl_wm_method2(wp->plane_pixel_rate,
@@ -1977,7 +1988,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 
 	for (level = 0; level < i915->display.wm.num_levels; level++) {
 		struct skl_wm_level *result = &levels[level];
-		unsigned int latency = i915->display.wm.skl_latency[level];
+		unsigned int latency = skl_wm_latency(i915, level, wm_params);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
@@ -1997,7 +2008,8 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	unsigned int latency = 0;
 
 	if (i915->display.sagv.block_time_us)
-		latency = i915->display.sagv.block_time_us + i915->display.wm.skl_latency[0];
+		latency = i915->display.sagv.block_time_us +
+			skl_wm_latency(i915, 0, wm_params);
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
-- 
2.39.2

