Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D629ADABC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C8510E155;
	Thu, 24 Oct 2024 03:56:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SVC7eiKm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D16810E8A0;
 Thu, 24 Oct 2024 03:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729742177; x=1761278177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WVGydUsBQOt+BtnsAokogVjyZdg9SaHDElVZg8rj4QQ=;
 b=SVC7eiKmYX2S89fVLsF/IH5ozpA2zT0u9RYIQqEcnd4QyM1HcKtbONjK
 KhgDTx4MmiG+tQO3DGbbgdg5x1PzWshzLDbDM9CnsF2wlb+V8KDiIfv+9
 Qu/k99giiv9vafoaHy4g0xoKX81CCDbB6Mr9dLEFjP0w7N1KxPJLG+ES+
 0y7eKLgwktdrlwl2SEkICybMPOyRsJGwhcOydAZWPZSXLcj2TYQcEXqLM
 RMSS2LRA5Qf/80qd5Tvv8zdGgN3Ooy4pUWs4+cLOwR12+EsLn/FrUvJ0p
 XnUUWRCdkdc5+CTP18osnZxdsKDEsuZQcxbwLFoShpAnRComb7XdgSfXv Q==;
X-CSE-ConnectionGUID: ACXJsslsRea/9dbBMrTd/w==
X-CSE-MsgGUID: RrEpbHlWT6qNqQcYrhpIXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28818512"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28818512"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:56:17 -0700
X-CSE-ConnectionGUID: O0Gnr5A7TSyj7rUJreYCbg==
X-CSE-MsgGUID: eDayl3/HR2S229GgIJ9gwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80128118"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 23 Oct 2024 20:56:15 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/4] drm/i915/xe3lpd: Prune modes for YUV420
Date: Thu, 24 Oct 2024 09:25:52 +0530
Message-Id: <20241024035552.94363-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024035552.94363-1-suraj.kandpal@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
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

We only support resolution up to 4k for single pipe when using
YUV420 format so we prune these modes and restrict the plane size
at src.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e0baad468d76..edaea5e8c53c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1373,6 +1373,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	enum intel_output_format sink_format;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
@@ -1407,6 +1408,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	    mode->hdisplay > 4096)
+		return MODE_NO_420;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-- 
2.34.1

