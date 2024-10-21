Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E71A9A687E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D1B10E4D8;
	Mon, 21 Oct 2024 12:32:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EaWUeOhp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6F610E4D6;
 Mon, 21 Oct 2024 12:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513937; x=1761049937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BWBDn6MVhioBJljN/Kmr07t65EwezYucOFgYaTt6W98=;
 b=EaWUeOhpZkn0jLIZ9+BAMb3BHiJyc6cPXl5c8aCVKsQFgTdOdgxRR8HJ
 5veul7wIap3hFd0WAxmUklWIGbFOE1Eg6IFeMLTyGURwaSPhYn+cw8HcS
 v4lpyQTRqwz7KQCFdkvhvzk6vqObWP0zrvs6rkoBzhWRLa3rxOyiRAt34
 thGw16NZRwdSDdsG/WXe6fJ7ekvp5taeqQmIFVp1GZ26jH02lxn2cz5lR
 poUnMb2z2Bzrorpj6XDvjoerHfR46BMgktjpxhfYTPhwFPeibWpm7lxWj
 n+O3RwTop8GlHVL4grAG1/PEAjXJGr8USwtDK6ajnPU57P5I88jZ4Z9lo g==;
X-CSE-ConnectionGUID: gKJFAxpCS6igGU8X9w1ghQ==
X-CSE-MsgGUID: +6ilz/1fS1KWf6atfegSDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459645"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459645"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:17 -0700
X-CSE-ConnectionGUID: NaTYrRLgRFSGHDkv5Xq4sQ==
X-CSE-MsgGUID: 04kI5qczQ6qWly+R8w0+OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 11/16] drm/i915/dp: Account for pixel replication for BW
 computation with DSC
Date: Mon, 21 Oct 2024 18:04:09 +0530
Message-ID: <20241021123414.3993899-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

Include the extra pixels added while computing bandwidth with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 53a437caacac..f35d6fc376c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1940,6 +1940,23 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
 	return available_bw > required_bw;
 }
 
+static
+u32 adjust_clock_for_extra_pixels(const struct drm_display_mode *adjusted_mode,
+				  int extra_pixels)
+{
+	u32 clock = adjusted_mode->clock;
+	u16 htotal = adjusted_mode->htotal;
+
+	if (!extra_pixels)
+		return clock;
+	/*
+	 * clock = (htotal) * (vtotal) * refresh_rate
+	 * adjusted_clock = (htotal + extra_pixels) * (vtotal) * refresh_rate
+	 * = clock + (clock * extra_pixels / htotal)
+	 */
+	return clock + extra_pixels * (clock / htotal);
+}
+
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct link_config_limits *limits,
@@ -1948,8 +1965,12 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
+	u32 adjusted_clock;
 	int i;
 
+	adjusted_clock = adjust_clock_for_extra_pixels(adjusted_mode,
+						       pipe_config->dsc.replicated_pixels);
+
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
 		link_rate = intel_dp_common_rate(intel_dp, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
@@ -1959,7 +1980,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
 			if (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate,
-							     lane_count, adjusted_mode->clock,
+							     lane_count, adjusted_clock,
 							     pipe_config->output_format,
 							     timeslots))
 				continue;
-- 
2.45.2

