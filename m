Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B6799DDFE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 08:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCEAE10E506;
	Tue, 15 Oct 2024 06:12:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Llv87d/3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D4510E506;
 Tue, 15 Oct 2024 06:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728972772; x=1760508772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0OS6D/rcaBPdkF/lLa9llDX4pb+lul+gVk32iUDocZg=;
 b=Llv87d/3vQRx1/89aN6k2WY519uFdfl2lGWiJxSs/INnFUv5A6wAcT53
 ljFoB7HEWgID1whs2J5Ug+VpivaLpzxdO59QzhsxTiFbL4Sh0INjPjR6H
 nU8IeDf/XVcdQZFLZesSp1wvaaMkddJFgaQyTHttZ3DvVp5Gq96WC8pKj
 zVpke1KPiN/eO3RUoDCmIbSRo6qvLT47o73tFoBQ10LRIAS3TdM8gTKla
 U7fHC14tyD7uHb6l+43TvoI/w3GYb2wYSaeNKFws6WrQ5YEL+ZBI22ATP
 cCCUyapk97aaXMdLT+FAWR4X7kA+wdI13+ejrLQ8TBsoOzxnk55hCSC6m A==;
X-CSE-ConnectionGUID: nWcWOD4/QSqTPm4u/vIsCQ==
X-CSE-MsgGUID: NmS5j+UTQ0eH0KtHWSDO2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28444829"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="28444829"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 23:12:52 -0700
X-CSE-ConnectionGUID: 8Rqajw7yRt2Fqfed4Wvnyw==
X-CSE-MsgGUID: yP1KyzX1R5O/uUHuM8Au4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82564171"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Oct 2024 23:12:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, vandita.kulkarni@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/4] drm/i915/xe3lpd: Prune modes for YUV420
Date: Tue, 15 Oct 2024 11:40:11 +0530
Message-ID: <20241015061011.2087826-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241015061011.2087826-1-suraj.kandpal@intel.com>
References: <20241015061011.2087826-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 ++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cdc968522df..1823b509cbfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1374,6 +1374,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	enum intel_output_format sink_format;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
@@ -1408,6 +1409,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	    mode->hdisplay > 4096)
+		return MODE_NO_420;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4dec9e693218..5b1f6069e5da 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -435,7 +435,10 @@ static int xe3_plane_max_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
 {
-	return 6144;
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 6144;
 }
 
 static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
-- 
2.47.0

