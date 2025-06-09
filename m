Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92623AD2458
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 18:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC95710E0CA;
	Mon,  9 Jun 2025 16:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lLdVW9LV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B8710E0CA;
 Mon,  9 Jun 2025 16:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749487568; x=1781023568;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aKRSxqyNjKOTssFE15Yop5C20vukujRXMoJyguo0eYQ=;
 b=lLdVW9LVLa+uMrxq6P+wdwcRLBKbyfhN0zZtorG2CHrvfxTN0/5Hxbjz
 XS1J6z9FqS6uIqUwVN5J0HBU6cp1UzrR5PD8LoXmx4nqrvyLep61K9WZ/
 dcLigGl91OPqQYa+12WjMw0CboAgyqPwL5hA8PZXyYAP8QR7x42K6O67S
 ksYeSjSin+9UAPDihSF4FjCHSqeVWlF6sKsZtxBh5aFFq7kwWPUCu47Ki
 2PcXVnBm1cSGIO8TRHdoqoPK49oTJ947OBToGzoe4YFr+UbayVoB24UfW
 xo4qTbkAMsFlHoR29k4LYftf0ySpf+5/3wVb4bCdBFWT4Y2Umcf+EJdcM w==;
X-CSE-ConnectionGUID: oX7N7XJoR4CDWcbeLiFV0A==
X-CSE-MsgGUID: O0MIpSwEQdGVbbjkGprVIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55363259"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55363259"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 09:46:07 -0700
X-CSE-ConnectionGUID: 0I+Wd1RERGCO4ZtrcMFkCA==
X-CSE-MsgGUID: 5hokvZLySB2tiEYjMsLqog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="177470087"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 09 Jun 2025 09:46:06 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Date: Mon,  9 Jun 2025 22:15:48 +0530
Message-Id: <20250609164548.2878908-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
at src. This is because pipe scaling will not support YUV420 scaling
for hwidth > 4096.

--v2
-Use output format to check [Ville]
-Add Bspec references
-Modify commit messge to point to why this is needed

Bspec: 49247, 50441
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d04609460e8c..2691eeb50a26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1419,6 +1419,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	enum intel_output_format sink_format, output_format;
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -1452,6 +1453,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	output_format = intel_dp_output_format(connector, sink_format);
+	if (num_joined_pipes == 1) {
+		if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+		    mode->hdisplay > 4096)
+			return MODE_NO_420;
+	}
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1467,11 +1476,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		enum intel_output_format sink_format, output_format;
 		int pipe_bpp;
 
-		sink_format = intel_dp_sink_format(connector, mode);
-		output_format = intel_dp_output_format(connector, sink_format);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
-- 
2.34.1

