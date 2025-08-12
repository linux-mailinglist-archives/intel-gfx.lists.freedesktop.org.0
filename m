Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FE7B21C21
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4042E10E589;
	Tue, 12 Aug 2025 04:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/ciu8/4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C8010E58A;
 Tue, 12 Aug 2025 04:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972909; x=1786508909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s0ECPk8r3ui+pcHKTP8LpnLtIMxuOUxkANY7EdFZmis=;
 b=e/ciu8/4FkH28aujerr+OND/Gs3XXa8oP+ggp9I6vKOXlkT7mJdozjQK
 vlUAiTiLnkIodF1mtVdGq+h7nxTeynGWK7d41qfLWLWx2EPXQVAOLoOs2
 FHD2OWXU9FpfreGal0ZsHdQysl2AcK9l33AwXthERnO7zuhx7EdjER49x
 8MzzqoaEsrrKntawRCCoMo5Xqzj9LEHSHLDeBhs7rAXCY+VxGk1KjA9Du
 J1geFDqY3flVjJc1unX+hXPx5ghKpo8FWo8B2w5Q7zAQ8+sfIx9qalF4R
 OcXYgkzftrsBD0A9H0O8p1jPyZfxO9+pj7wUHW0zqf0BQiO7xEIDWO8ha g==;
X-CSE-ConnectionGUID: jNZcmVNDQSuEJfe+OVD7yQ==
X-CSE-MsgGUID: 6I5g57LKQeSWwn2ghcHMvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693391"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693391"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:28 -0700
X-CSE-ConnectionGUID: IKBzcjJMSyqSUdX9JjY5LA==
X-CSE-MsgGUID: sfcOAfduS3SfXPIJyTDjXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982379"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/dp: Rework pipe joiner logic in mode_valid
Date: Tue, 12 Aug 2025 09:44:25 +0530
Message-ID: <20250812041428.1820109-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
References: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 79 +++++++++++++++++--------
 1 file changed, 55 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0884826de1fd..0acd86c7d1c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1461,12 +1461,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 {
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
+	int hdisplay_limit = DISPLAY_VER(display) >= 30 ? 6144 : 5120;
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	enum intel_output_format sink_format, output_format;
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
@@ -1506,31 +1506,62 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
-
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
-	if (status != MODE_OK)
-		return status;
-
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
+	for (int joiner = -1; joiner <= 2; joiner++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
+
+		if (joiner == -1 && connector->force_joined_pipes)
+			num_joined_pipes = connector->force_joined_pipes;
+		else if (joiner == -1)
+			continue;
+		else
+			num_joined_pipes = 1 << joiner;
+
+		if (joiner >= 0 && mode->hdisplay > num_joined_pipes * hdisplay_limit) {
+			status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		if ((num_joined_pipes == 4 && !HAS_ULTRAJOINER(display)) ||
+		    (num_joined_pipes == 2 && !HAS_BIGJOINER(display) &&
+		     !HAS_UNCOMPRESSED_JOINER(display))) {
+			status = MODE_CLOCK_HIGH;
+			continue;
+		}
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
+		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
+			status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		max_dotclk *= num_joined_pipes;
+
+		if (target_clock > max_dotclk) {
+			status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		status = MODE_OK;
+		break;
 	}
 
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
-		return MODE_CLOCK_HIGH;
+	if (status != MODE_OK || num_joined_pipes > 4)
+		return status;
 
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
-- 
2.45.2

