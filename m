Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833F79ABF4D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A71910E760;
	Wed, 23 Oct 2024 06:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZOmEZ/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0205C10E75B;
 Wed, 23 Oct 2024 06:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666259; x=1761202259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xZtyL2dHYB6N2kVAXjmI8XLiIXgsiWQiZGQiyDzy0Kc=;
 b=KZOmEZ/g8b7ixctHZNt4ulrgwh1EvHtjyF4Pc5ELkAbiyGLnrVgjk16T
 TmlhtHTMQfCOEYdBArUOQ4FcFuiacy1mtanDk0JbIxau5VpJwGBCSkJAa
 pRtviw3d+CwnaM3BJkqz2UsKU9qhvQ9BOoFL8N2I1pcNKvKXpWeEICVdZ
 W3HY1a4uYz3FUr8Xi1Hzz1s+Ccub/6Z2/OhWSlead8By0srL3ve2eH1uS
 5CAIKb62I0fNSMeLRA0CKtX3j1qwQHX/XIp+8nNW4nbqEr/hDIPu8SHBL
 4gISw7q8mhKq5IucLfvPZ4jVg2R4yKJgjekeW2YrcJHnbvWeJoYy0K1dN w==;
X-CSE-ConnectionGUID: 4pthpyPYQz2BHlGUhqideA==
X-CSE-MsgGUID: xwoZoIl3RIiF6DxT8pd92Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097482"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097482"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:59 -0700
X-CSE-ConnectionGUID: 7Yy+npMHQj+0Zwfkv8iZwQ==
X-CSE-MsgGUID: SBf0IB1LRE+wtfBArF5dAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691598"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 11/16] drm/i915/dp: Account for pixel replication for BW
 computation with DSC
Date: Wed, 23 Oct 2024 12:22:52 +0530
Message-ID: <20241023065257.190035-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
index 4065fc26e70e..f4a446824cb3 100644
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

