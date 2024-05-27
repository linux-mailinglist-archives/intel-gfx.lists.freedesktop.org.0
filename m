Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2178CF9F3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23ABF10EE5B;
	Mon, 27 May 2024 07:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy1HzRg9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FBD10F917
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794569; x=1748330569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D2mRHtTK1OzJr+0uK0m9sGwt34QCCMy4VtyOXvXHaE4=;
 b=Xy1HzRg9de2JVSPa70p5mOZeXqrWnNSrt3paUOUrwcm5TlAZ8J6j9y2r
 0kMjAOIm46gzQ5eSZzX9q2JZJ12NTe1MmVXUv0b25Cuze9oYmsPgmYcyE
 dfEWWs78clVAAb4cmrACwbrMUgOHH1pp+clbQZ6SL+rtTsEoGYbInc9Op
 1YT8vrRZfMecnMdQUqp5XDyEneopBM2O6diXiSd8rgYbN4WOiE/UlqAq/
 MazXDngUTH0m5OAVkVY7YjJOhf92McS5sYI4T1KkWVw1fXJdMppadLMIH
 +xk7EkZjzzgdJCjmEicnafVcKSEJ5+TEVN6byWpGuiYyTs4DG38Jfvcpd g==;
X-CSE-ConnectionGUID: 6/xxQUbUS8qqxp71AbGdFg==
X-CSE-MsgGUID: n9Ugr1P1SxSNUHCH/VBPmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930434"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930434"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:48 -0700
X-CSE-ConnectionGUID: fvQDgoeTRG210WEVqb4wtw==
X-CSE-MsgGUID: 2VUMvApJSGG9PR7B8en0Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753398"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 07/20] drm/i915/psr: Add Early Transport into psr debugfs
 interface
Date: Mon, 27 May 2024 10:22:07 +0300
Message-Id: <20240527072220.3294769-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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

v3: remove extra space from "PSR mode:  disabled"
v2: printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 36 ++++++++++++++++++------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a01c2173a2e5..fa12267f851f 100644
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
+	if (psr->sel_update_enabled &&
+	    (psr2_su_region_et_valid(intel_dp, psr->panel_replay_enabled)))
+		region_et = " (Early Transport)";
+	else
+		region_et = "";
+
+	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.34.1

