Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E953198A9DB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910CD10E557;
	Mon, 30 Sep 2024 16:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZVT4rzl7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A274D10E560;
 Mon, 30 Sep 2024 16:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714052; x=1759250052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gr5DvrgpjdP8IJpTd09Pe9zdZk01Eq/G49t1drR/g7w=;
 b=ZVT4rzl7j8NpuZJ1phG+c9TqxKdAO7Br6P2GwguMF76KvRRMkbzivkaT
 Wc1y0QhxYIzawj1u46QbzPXlmDN6CetkoymIeGrRZj3WZIJpwpIkcCS9B
 Ox2EJYWSiSsawh89UUrVcqLQ75XAjHXvIjI2/CCXlmssyTC8faKf/B4Ya
 J8UknAkoXE6wFvoWoZYG7ZNIS9mnmOPxuuwAUVyH/hxAUF9kGNxMqeMY0
 GOQwmbInhlH3IqiHl0ftitpn2uKliY+VNzmO/khhIVF+JCb4wH1QeQhzJ
 rBZ6AYW2jypE8ax6NRSZxBs5WDIZKCiaq1+csL6fb/Ew6O2v2Io5Lz7kM w==;
X-CSE-ConnectionGUID: U8obU1h5T1mBMSa2ik2APA==
X-CSE-MsgGUID: 4GhdXCyxTw6SLQxgbQ7NCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700554"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700554"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:12 -0700
X-CSE-ConnectionGUID: E/YzAu6uQI2cjI3LpaaQkA==
X-CSE-MsgGUID: P57NwFYGQ5Ozem8dRKDaRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839259"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 11/13] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Mon, 30 Sep 2024 22:05:47 +0530
Message-ID: <20240930163549.416410-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
v5: Fix check for joiner. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8e091f74eb9a..c4fdae5097ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1307,26 +1307,38 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
+	       hdisplay > num_joined_pipes * 5120;
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
@@ -2532,8 +2544,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
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

