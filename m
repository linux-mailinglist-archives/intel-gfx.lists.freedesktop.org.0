Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573368C7327
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B17110E893;
	Thu, 16 May 2024 08:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rq9fNCBG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B4910E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849422; x=1747385422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tMUMtvsIyg0/GXkLRNIW1EIh+1vbZH9LNhcN8Lf45mU=;
 b=Rq9fNCBGhQBFebxd+wtQ5+uR4TV65AdOfzc+QkOAKLcL/e/ILZV+mGZ9
 +w8F9J3kBYzGSNrX4Prj9CjFoed9HhWiloR2kw90X85RXL6YxoTXKGefD
 cc1NaJgI5fbyMyuipB9D0+gWqGJL42QWI6fOhs4pn4Mt94S92hy5RnTyw
 A037kQRemhNCSPJyCFOgttD/y63qexvfM2uFVGCqLTyIAhHASeqSOb4/U
 W2f0Lel3pvxQiTM9L9Snl7/yFWyv/1nbX4T4uf9pUJkiCvsmuer1BEG8L
 hWVVYZ/xaD2foL6tyekbwmW424w2KmAnJc+KoenzEqMTUS0F1sZKXqCBs A==;
X-CSE-ConnectionGUID: 9YPxjC1URIWY0C1srN3DYA==
X-CSE-MsgGUID: /U7Pm38qSFGi+O3D30jzJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756063"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756063"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:21 -0700
X-CSE-ConnectionGUID: iYnYw5RtQtmPIW+NgQzK4A==
X-CSE-MsgGUID: cY+OxB4bTdqZZ3EC/TS/+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398150"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 07/17] drm/i915/psr: Add Early Transport into psr debugfs
 interface
Date: Thu, 16 May 2024 11:49:47 +0300
Message-Id: <20240516084957.1557028-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 36 ++++++++++++++++++------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bc200fc043f0..5d2424c71d4c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3594,25 +3594,45 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 
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
 
 static void intel_psr_psr_mode(struct intel_dp *intel_dp,
 			       struct seq_file *m)
 {
 	struct intel_psr *psr = &intel_dp->psr;
-	const char *status;
+	const char *status, *mode, *region_et;
 
-	if (psr->panel_replay_enabled)
-		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
-			"Panel Replay Enabled";
+	if (psr->enabled)
+		status = " enabled";
+	else
+		status = " disabled";
+
+	if (psr->panel_replay_enabled && psr->sel_update_enabled)
+		mode = "Panel Replay Selective Update";
+	else if (psr->panel_replay_enabled)
+		mode = "Panel Replay";
+	else if (psr->sel_update_enabled)
+		mode = "PSR2";
 	else if (psr->enabled)
-		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
+		mode = "PSR1";
+	else
+		mode = "";
+
+	if (psr->sel_update_enabled &&
+	    (psr2_su_region_et_valid(intel_dp, psr->panel_replay_enabled)))
+		region_et = " Early Transport";
 	else
-		status = "disabled";
-	seq_printf(m, "PSR mode: %s\n", status);
+		region_et = "";
+
+	seq_printf(m, "PSR mode: %s%s%s\n", mode, region_et, status);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.34.1

