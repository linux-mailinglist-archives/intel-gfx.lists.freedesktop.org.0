Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F5B8CAA49
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8EB10E75F;
	Tue, 21 May 2024 08:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMbw1L2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226CF10E75F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281240; x=1747817240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A4B+KKDjh4xmqktQa981ql6Ex2RsPIYIb8ijn3JFx9c=;
 b=iMbw1L2nclCnWa42/lkPrrjHvEcuJ/6MssZcUEBWx77q0dqTCCPT80fo
 ZO7tpmAO5S0e7jQtFQPb3mtH6Vr4Q+FRTuroMd9JTTgVXHANqoyQj81YL
 cSTzBken4hnZufn97FIPTDpMtiZFlrUvHbBOiHYpjIeW2ArieVjhrx9vp
 tTH+KD+6v3OQZ9dS5h4yirCHLRLrnPcnnIihTD8lrhBi7UcNBMdrBKwq3
 /zg0loEtaJ3RSITFrEzex7EemhdTb19sg5dNLtn0mgYLTuVRS2fUCTLKa
 NknrtEskLaJYJlJTfXZ+39KGbQSuietsRQDObgc2vIFJG22V5iglAhn3b Q==;
X-CSE-ConnectionGUID: ziD2N79oRsSHskM9noL1eQ==
X-CSE-MsgGUID: Biu4ycbTQzGjl7K6VPx55Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297815"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297815"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:20 -0700
X-CSE-ConnectionGUID: XyjlqJ8IRDKH2ba14cWNHg==
X-CSE-MsgGUID: 9F5z4ow8TLmwkt5D+oLbzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272522"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 07/17] drm/i915/psr: Add Early Transport into psr debugfs
 interface
Date: Tue, 21 May 2024 11:46:38 +0300
Message-Id: <20240521084648.1987837-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

v2: printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 36 ++++++++++++++++++------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 24d832dc26c7..cc2d0143ca2d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3603,25 +3603,45 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 
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
+		region_et = " (Early Transport)";
 	else
-		status = "disabled";
-	seq_printf(m, "PSR mode: %s\n", status);
+		region_et = "";
+
+	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.34.1

