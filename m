Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC81C72906
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C62710E6FC;
	Thu, 20 Nov 2025 07:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZKpLLCZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A9C10E6F9;
 Thu, 20 Nov 2025 07:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623171; x=1795159171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VkeoLg2MyQAoltsYGnsMNtGUrE2GwjjigWjSmhfPjgM=;
 b=kZKpLLCZQnDtNIS2yg8Xw/66J81RmkoUh/xGW9uwrg/S6TC7U7zG78o/
 vRqFVvWqCSBd8Oiq30uFtJNmXfkEht5EC2FZcc7YwmqxPjkblPM+PcKPD
 xKmvJkvo4hEpQKdqVy8jNtBvzQxt6rBbA7rrz8bxi5QOre4dWu6/bCk5H
 y1ILn9q1disiw7KseNab9ml7BseWGnANnjfGR6kJk4mqQTHDbkDaXpJgL
 XxObLF2MuqxYdWj2gq/4ZPJtdyZeiN5wRWGw5T1zAr3NDD9OIh16Sn25K
 /yyBPTXhATGSeQLqwrEfdDUkzGNhmGINjoHKstitqNJ2rfg2eeNtk2rAw A==;
X-CSE-ConnectionGUID: PP6j9HmcTvS1Yn9a/oZ6Og==
X-CSE-MsgGUID: mubR+qFtRKKSeOLpUGwpzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559105"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559105"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:31 -0800
X-CSE-ConnectionGUID: BOV6a0x4SfuxMT5PsB9zIA==
X-CSE-MsgGUID: K5Ih3gEsQJGsUZo2aB+sug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073648"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/11] drm/i915/dp: Rework pipe joiner logic in mode_valid
Date: Thu, 20 Nov 2025 12:36:35 +0530
Message-ID: <20251120070640.727040-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Currently in intel_dp_mode_valid(), we compute the number of joined pipes
required before deciding whether DSC is needed. This ordering prevents us
from accounting for DSC-related overhead when determining pipe
requirements.

Refactor the logic to start with a single pipe and incrementally try
additional pipes only if needed. While DSC overhead is not yet computed
here, this restructuring prepares the code to support that in a follow-up
changes.

Additionally, if a forced joiner configuration is present, we first check
whether it satisfies the bandwidth and timing constraints. If it does not,
we fall back to evaluating configurations with 1, 2, or 4 pipes joined
and prune or keep the mode accordingly.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 102 +++++++++++++++++-------
 1 file changed, 71 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4dce4726179a..cc8011eaea6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -121,6 +121,20 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
  */
 static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
 
+enum joiner_type {
+	FORCED_JOINER = -1,
+	NO_JOINER = 0,		/* 1 pipe */
+	BIG_JOINER = 1,		/* 2 pipes */
+	ULTRA_JOINER = 2,	/* 4 pipes */
+};
+
+static const int joiner_candidates[] = {
+	FORCED_JOINER,
+	NO_JOINER,
+	BIG_JOINER,
+	ULTRA_JOINER,
+};
+
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
  * @intel_dp: DP struct
@@ -1519,7 +1533,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
@@ -1559,40 +1572,67 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
+	for (int i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
+		enum joiner_type joiner = joiner_candidates[i];
+
+		status = MODE_CLOCK_HIGH;
+
+		if (joiner == FORCED_JOINER) {
+			if (!connector->force_joined_pipes)
+				continue;
+			num_joined_pipes = connector->force_joined_pipes;
+		} else {
+			num_joined_pipes = 1 << joiner;
+		}
+
+		if ((joiner >= NO_JOINER && !intel_dp_has_joiner(intel_dp)) ||
+		    (joiner == BIG_JOINER && !HAS_BIGJOINER(display)) ||
+		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display)))
+			break;
+
+		if (mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
+			continue;
+
+		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+		if (status != MODE_OK)
+			continue;
+
+		if (intel_dp_has_dsc(connector)) {
+			get_dsc_slice_and_bpp(connector, mode, target_clock,
+					      num_joined_pipes,
+					      output_format,
+					      max_link_clock,
+					      max_lanes,
+					      &dsc_max_compressed_bpp,
+					      &dsc_slice_count);
+
+			dsc = dsc_max_compressed_bpp && dsc_slice_count;
+		}
+
+		if (mode_rate > max_rate && !dsc)
+			continue;
+
+		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
+			continue;
+
+		if (dsc && !is_bw_sufficient_for_dsc_config(dsc_max_compressed_bpp,
+							    max_link_clock, max_lanes,
+							    target_clock, 64))
+			continue;
+
+		max_dotclk *= num_joined_pipes;
+
+		if (target_clock > max_dotclk)
+			continue;
+
+		status = MODE_OK;
+		break;
+	}
 
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
 	if (status != MODE_OK)
 		return status;
 
-	if (target_clock > max_dotclk)
-		return MODE_CLOCK_HIGH;
-
-	if (intel_dp_has_dsc(connector)) {
-		get_dsc_slice_and_bpp(connector, mode, target_clock,
-				      num_joined_pipes,
-				      output_format,
-				      max_link_clock,
-				      max_lanes,
-				      &dsc_max_compressed_bpp,
-				      &dsc_slice_count);
-
-		dsc = dsc_max_compressed_bpp && dsc_slice_count;
-	}
-
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
-		return MODE_CLOCK_HIGH;
-
-	if (mode_rate > max_rate && !dsc)
-		return MODE_CLOCK_HIGH;
-
-	if (dsc && !is_bw_sufficient_for_dsc_config(dsc_max_compressed_bpp,
-						    max_link_clock, max_lanes,
-						    target_clock, 64))
-		return MODE_CLOCK_HIGH;
-
 	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
 	if (status != MODE_OK)
 		return status;
-- 
2.45.2

