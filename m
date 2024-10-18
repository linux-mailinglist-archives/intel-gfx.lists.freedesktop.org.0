Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C539A487B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C25210E9AD;
	Fri, 18 Oct 2024 20:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ACt0nmfc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550ED10E9A5;
 Fri, 18 Oct 2024 20:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284596; x=1760820596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=By1y0aYf3DfUCMTSGonjJbsred8WCBgRRffm0D8ZsOM=;
 b=ACt0nmfcTPuKZSjM54/75f0R0ECQAXzW+6Bmdl9tCFj/uRJAvbeJau8P
 shyVI/XGLZwokNrkeW0DUKluR/JOYUi5P8V0cMYPhVOCB38Yr28HABbA4
 YkQ7DU7v2I+rwMtj8iUfa026Esdej/Wo179aZTV5RLj9vSwPiwNNQ4YYj
 6OAa8XNS42hrosrNDx9zmMIKoh2M6vsohJUey30+y3h9J3JvjYGseanUR
 eI50iprNFMN+TgoRLYMn5yw8cYne+I5+7Vm3XLYnwby1Pm4VxC6rZvd4w
 riH84V9G0k42Ok4/dCejASQkE/TrVhCFqfYJ0xOVVNoVwBcaH6Sdwgjm/ Q==;
X-CSE-ConnectionGUID: jps95rQ/SUGGmSIBlCK3MA==
X-CSE-MsgGUID: TUc1hZ35Q62UoPAtbnftUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240196"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240196"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:56 -0700
X-CSE-ConnectionGUID: sN8+2VIZQm688gmafmUX5w==
X-CSE-MsgGUID: wun/3ifqRBKvVSU0GO6huQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798982"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:55 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 11/12] drm/i915/xe3lpd: Prune modes for YUV420
Date: Fri, 18 Oct 2024 13:49:40 -0700
Message-ID: <20241018204941.73473-12-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

We only support resolution upto 4k for single pipe when using
YUV420 format so we prune these modes and restrict the plane size
at src.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 +++++++++--
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  5 ++++-
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0093bd43c712..2a1a86606301 100644
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
@@ -1407,6 +1408,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	if (num_joined_pipes == 1) {
+		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+		    mode->hdisplay > 4096)
+			return MODE_NO_420;
+	}
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1422,10 +1430,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		enum intel_output_format sink_format, output_format;
+		enum intel_output_format output_format;
 		int pipe_bpp;
 
-		sink_format = intel_dp_sink_format(connector, mode);
 		output_format = intel_dp_output_format(connector, sink_format);
 		/*
 		 * TBD pass the connector BPC,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bd7786a6161a..99548a357dfe 100644
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
2.45.0

