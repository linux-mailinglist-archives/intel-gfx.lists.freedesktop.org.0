Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D39B21C1F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE1310E584;
	Tue, 12 Aug 2025 04:28:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQhxJ9DS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFECE10E584;
 Tue, 12 Aug 2025 04:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972906; x=1786508906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GfJblR7GBE7Q7zjEnl8Eu0CVhUjGDDUrMQUmmLKVfwE=;
 b=kQhxJ9DSzbeu3BVpqYXKukPSRxk6CXuV1nZXWWMSJVdhTSqbN6dbqvkJ
 R640RwT8uW9tEX4uhyss8U/Ky+NR/PeVom9ZpfhyUOzGIR9BlN3RvKO8E
 VdKaTf9FzLfpdEjtNL7z8gvV27OWpsPCQjORTb6TMjtcM89xie0PGUkc2
 IENCM3kkROHK5sPwWSyKW6kkhrg1jiWN6qboKwTGnrqJXhIUqkk6uNHB/
 /P29zOyRMFKxeOwFfD4NOa2fJxDHcanQ3gQwhvYH1BaT6+9XCjxeFKiLp
 A/IjFKBNRAzKlQg2F6EMXDf+9C5pA7VQyY5U0PJuQKgZS0oQDFbGGp751 g==;
X-CSE-ConnectionGUID: WVyHy0ThTMuw/c+zdRNVKA==
X-CSE-MsgGUID: L25vqKxuSUuweIR3OIhVUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693387"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693387"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:25 -0700
X-CSE-ConnectionGUID: zmE/efuWR12VqxcrLjdOww==
X-CSE-MsgGUID: sWNDOiI+SoqD77Z6C59QtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982368"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/6] drm/i915/dp: Extract code to get slice and bpp to a
 separate function
Date: Tue, 12 Aug 2025 09:44:23 +0530
Message-ID: <20250812041428.1820109-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
References: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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

Refactor intel_dp_mode_valid() to use a function to get maximum slices
and compressed bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 89 +++++++++++++++----------
 1 file changed, 55 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1c2d4f172dfe..62f28f14423e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1407,6 +1407,54 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static void get_dsc_slice_and_bpp(struct intel_connector *connector,
+				  const struct drm_display_mode *mode,
+				  int target_clock,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int max_link_clock,
+				  int max_lanes,
+				  u16 *dsc_max_compressed_bpp,
+				  u8 *dsc_slice_count)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int pipe_bpp;
+
+	/*
+	 * TBD pass the connector BPC,
+	 * for now U8_MAX so that max BPC on that platform would be picked
+	 */
+	pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+
+	/*
+	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+	 * integer value since we support only integer values of bpp.
+	 */
+	if (intel_dp_is_edp(intel_dp)) {
+		*dsc_max_compressed_bpp = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+		*dsc_slice_count = drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, true);
+
+		return;
+	}
+
+	if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+		*dsc_max_compressed_bpp =
+			intel_dp_dsc_get_max_compressed_bpp(display, max_link_clock,
+							    max_lanes, target_clock,
+							    mode->hdisplay, num_joined_pipes,
+							    output_format, pipe_bpp, 64);
+		*dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								target_clock,
+								mode->hdisplay,
+								num_joined_pipes);
+		return;
+	}
+
+	*dsc_max_compressed_bpp = 0;
+	*dsc_slice_count = 0;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1470,40 +1518,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		int pipe_bpp;
-
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
-
-		/*
-		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-		 * integer value since we support only integer values of bpp.
-		 */
-		if (intel_dp_is_edp(intel_dp)) {
-			dsc_max_compressed_bpp =
-				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
-			dsc_slice_count =
-				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-								true);
-		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    output_format,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
-		}
+		get_dsc_slice_and_bpp(connector, mode, target_clock,
+				      num_joined_pipes,
+				      output_format,
+				      max_link_clock,
+				      max_lanes,
+				      &dsc_max_compressed_bpp,
+				      &dsc_slice_count);
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
-- 
2.45.2

