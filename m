Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEFA97F031
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CDA10E458;
	Mon, 23 Sep 2024 18:12:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A1BbK5Jl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E4210E461;
 Mon, 23 Sep 2024 18:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115131; x=1758651131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MytUz6UfOUZi9LloQIbSlBNiZ/fC7Wc7HpXY/gS7V3Y=;
 b=A1BbK5JlwPvlNv83ccMBPiWLcikyvgHfuXu45kAdy0u/WXlL7bHawZ+M
 YLdaCIvgQm8hckvzJ99RXBVX0/Z5dIQTE6qAv7cpalge60sfm5Ro+12Kt
 RJmPRdpivONbx4QGl/0DCpXRHn/Pa8cogpygmFP6Sw7TCXU6ncfJt+D4Q
 3ucjyicrhAlkiWc0cTll1fgtcvoS/b9jj3flwpJKUzCyaqyOC6sBo9UYf
 S14CbWSktgG9lf09pXUWTkhjFbRGZY+uENSiTr/7nu2bQ3dYCHjGOBiTZ
 I2OQuU+fXbJlOLIeVpSCrQfzJFZU+lWDejFr+tdSbcS+136Izq9OKbmR0 g==;
X-CSE-ConnectionGUID: lYSMqDvKSeKlzc0brTBU8g==
X-CSE-MsgGUID: izv7QmTkRpebz41+e4veuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866323"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866323"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:10 -0700
X-CSE-ConnectionGUID: SkJXw+sMROOYWcXTwV3ZVg==
X-CSE-MsgGUID: P5aMjW0XQ9yYTLFgri42lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734456"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/16] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Mon, 23 Sep 2024 23:43:34 +0530
Message-ID: <20240923181336.3303940-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Implement required changes for mode validation and compute config,
to support Ultrajoiner.

v2:
-Drop changes for HDMI.
-Separate out DSC changes into another patch.
v3: Fix check in can_ultrajoiner. (Ankit)
v4:
-Unify helper to check joiner requirement. (Ville)
-Split patches for ultrajoiner changes for max dsc slices and compressed
bpp.(Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 115d8468bb91..8e0cb6c77c64 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1280,26 +1280,38 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 }
 
 static
-bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
-			      struct intel_connector *connector,
-			      int hdisplay, int clock)
+bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
+			   struct intel_connector *connector,
+			   int hdisplay, int clock,
+			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
-	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
+	num_joined_pipes /= 2;
+
+	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
+	       hdisplay > 5120;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
 			      int hdisplay, int clock)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (connector->force_joined_pipes)
 		return connector->force_joined_pipes;
 
-	if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
+	if (HAS_ULTRAJOINER(i915) &&
+	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
+		return 4;
+
+	if ((HAS_BIGJOINER(i915) || HAS_UNCOMPRESSED_JOINER(i915)) &&
+	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
 		return 2;
 
 	return 1;
@@ -2505,8 +2517,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
+	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
+		num_joined_pipes == 4;
 }
 
 static int
-- 
2.45.2

