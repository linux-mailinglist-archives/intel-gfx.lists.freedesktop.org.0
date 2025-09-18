Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93428B87234
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE5410E908;
	Thu, 18 Sep 2025 21:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="muUOTLd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 215C610E903;
 Thu, 18 Sep 2025 21:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758230929; x=1789766929;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EjwixfVNye4xER2MV+Zehi1lF1e3tuYv+SSUeiIrPV8=;
 b=muUOTLd+DG1u5+op75vV+t+XlkiYGJgPbVBBbokxrT4YI+lAwR20oq/N
 uAst4MWVlKl4CpQpOVDhJCFm7ocrDfFwXHLfJO1ZAgThGJvnTAnmuXF2l
 FCudUlvNQ6wBMN20qXFaiK4Yq2lkaj6+fBqDqBJdDu0Zm6cAw4zxY1vlv
 KqO/bMSoOsixrPP+YuQNriC1+iLEi6UPZw5Hb2Oi8TYOsZ5ZVXvdGMPYV
 C0zIIb82U6Hh0Gra13X5YZAK7dzvkFWdD5uSYTkWITNGbq7r/ldHVOD8n
 FmPYPJlChnDVeNBOgPXTAmdJ5ZVSueUIJvK76K2GoaJR5W5bcV0JQI0qv g==;
X-CSE-ConnectionGUID: eUr4hve9SmWWZkORELMrCQ==
X-CSE-MsgGUID: olvNyda4TQmBFZ1AiTpx8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60507357"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="60507357"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:28:49 -0700
X-CSE-ConnectionGUID: 7cNHE0VESvG5/biKVttcng==
X-CSE-MsgGUID: xQSD7T0LRK6o42vCPhRf8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="179931997"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa004.jf.intel.com with ESMTP; 18 Sep 2025 14:28:48 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: Set SPREAD_AMP bit to enable SSC
Date: Thu, 18 Sep 2025 14:28:47 -0700
Message-ID: <20250918212847.1838637-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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

According to DP Specs[1]:
"SSC is enabled or disabled when the SPREAD_AMP bit in the
DOWNSPREAD_CTRL register is set or cleared (DPCD 00107h[4]  = 1 or 0,
respectively)."

Set the SPREAD_AMP bit before starting link training to ensure SSC
is enabled as required.

[1]: DisplayPort Standard v2.1 - Sec 2.2.3.1 De-spreading of the
Regenerated Stream Clock

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 27f3716bdc1f..db2ea3c51a5f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -711,9 +711,13 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 link_config[2];
+	bool ssc_enabled = intel_panel_use_ssc(display) &&
+			(intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
 
-	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[0] = (is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) |
+		(ssc_enabled ? DP_SPREAD_AMP_0_5 : 0);
 	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
 			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
-- 
2.43.0

