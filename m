Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4028D3336
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F7E10E63D;
	Wed, 29 May 2024 09:39:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="neYa/x5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1632A10E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975554; x=1748511554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZ/m8pX92qX8oNx27zJTHumfkPQhl7DUVtWtcy8j59c=;
 b=neYa/x5O4Tz7YWBmA6EqWH7DVYI/xR5KBNVRcJudxBRZH7IYMPb3m0ep
 05RJ3bEXg2nsiRr/TBLLuRxq8XQXHSrnRWBC7NSnoESkcBkLU4jl3vVRg
 N4VKbe+K6iaJNCNaaipXFxVUodu1Ak0jQUVSWGBbo6prBaUSiBSGvz3GU
 OdiAPi6czRRdW5pJewgIqXYeEZ0aBHdd5ikRZUmyqT16nGA4wL0L24R7C
 h5I7hVfpswY/vMtE+KbfRtsyQ0wBECbCquXXMHh+qWTkb5FxwFgeq3eYg
 ocV0XQ48LYAyToBK2AObTpeR2k21z48WMMZgE5lKkEIGOJr4myzxZ2jZy Q==;
X-CSE-ConnectionGUID: 2uDLT80kS66+kvuVo/d+hQ==
X-CSE-MsgGUID: oMsuXZi6Sci//I/IMfQLxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316836"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316836"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:13 -0700
X-CSE-ConnectionGUID: m0fVwQcMRWaNN8lVGOK0Aw==
X-CSE-MsgGUID: tPe2DpheRlSgRnBMfiXxaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273896"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/6] drm/i915/psr: Add Early Transport into psr debugfs
 interface
Date: Wed, 29 May 2024 12:38:49 +0300
Message-Id: <20240529093849.1016172-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We want to have sink Early Transport capability and usage in our psr
debugfs status interface.

v4: use su_region_et_enabled instead of psr2_su_region_et_valid
v3: remove extra space from "PSR mode:  disabled"
v2: printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 35 ++++++++++++++++++------
 1 file changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 16fa70c3ae45..c2318fb60f54 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3611,25 +3611,44 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
+	if (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
+		seq_printf(m, " (Early Transport)");
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
-	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
+	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
+		seq_printf(m, " (Early Transport)");
+	seq_printf(m, "\n");
 }
 
 static void intel_psr_print_mode(struct intel_dp *intel_dp,
 				 struct seq_file *m)
 {
 	struct intel_psr *psr = &intel_dp->psr;
-	const char *status;
+	const char *status, *mode, *region_et;
 
-	if (psr->panel_replay_enabled)
-		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
-			"Panel Replay Enabled";
-	else if (psr->enabled)
-		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
+	if (psr->enabled)
+		status = " enabled";
 	else
 		status = "disabled";
-	seq_printf(m, "PSR mode: %s\n", status);
+
+	if (psr->panel_replay_enabled && psr->sel_update_enabled)
+		mode = "Panel Replay Selective Update";
+	else if (psr->panel_replay_enabled)
+		mode = "Panel Replay";
+	else if (psr->sel_update_enabled)
+		mode = "PSR2";
+	else if (psr->enabled)
+		mode = "PSR1";
+	else
+		mode = "";
+
+	if (psr->su_region_et_enabled)
+		region_et = " (Early Transport)";
+	else
+		region_et = "";
+
+	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.34.1

