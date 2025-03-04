Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9DBA4EDFF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 21:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF73110E090;
	Tue,  4 Mar 2025 20:00:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRGeb8Bb";
	dkim-atps=neutral
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B029710E090
 for <intel-gfx@freedesktop.org>; Tue,  4 Mar 2025 20:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741118438; x=1772654438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1BNdIDjETlM+F8k5PGqwg8DmfvJXnsU8Mz9PtVgSG8g=;
 b=QRGeb8Bbg/BRe6I+PenWrfL2TUynD7586TKatEb1/YVgKxVI8Z0NWJJX
 qLgDhVoELVND1gQZDZS6D9tCi7kcxQuWzRIdgyfQwfmPiWmc+1wJQ48+W
 Kfs1vVJJttKv8Za5Fxq6u71zSfYfhaDN9Nufa+hV9uP7Q9OncuRxYdFIU
 hRufx9n/KCI6DMzngiQAuzvkELlFAiSdgDaIZD9Sv4574XH4wxFu/uOzg
 8hUmhBAT4kT6GuWfb4f5jpmlivJ1Ikd9esMeIT4eaczrXEO8EuLIPIyrn
 szQHOyMq9KLWtcFIcoG3CT/Xs6pkwYFq7l4YMVocoK8jlUT4WMQFzbV8S g==;
X-CSE-ConnectionGUID: hsa+p4vdSm2LgldBR/u5RA==
X-CSE-MsgGUID: Tx49xTw4QX6NV/QvLH67BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45708515"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45708515"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 12:00:37 -0800
X-CSE-ConnectionGUID: cMkwdbR2R16dGoHRSy9ajg==
X-CSE-MsgGUID: ybZDakRcSJi6q+r2PW6rDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="119159899"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 12:00:36 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@freedesktop.org
Cc: suraj.kandpal@intel.com,
	Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Date: Tue,  4 Mar 2025 12:00:31 -0800
Message-ID: <20250304200032.68292-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 205ec315b413..8bccc6e0b5b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1396,6 +1396,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	enum intel_output_format sink_format;
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -1429,6 +1430,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
 
@@ -1444,10 +1452,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		enum intel_output_format sink_format, output_format;
+		enum intel_output_format output_format;
 		int pipe_bpp;
 
-		sink_format = intel_dp_sink_format(connector, mode);
 		output_format = intel_dp_output_format(connector, sink_format);
 		/*
 		 * TBD pass the connector BPC,
-- 
2.45.0

