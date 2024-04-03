Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30008969D7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635DF1128F3;
	Wed,  3 Apr 2024 09:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGMRiRk9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833A31128F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134855; x=1743670855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fKlS1yOgdpGRFsk9wsnL93KYNxTR1szrtIbAM6IuFAY=;
 b=EGMRiRk9wrQYip5hFb72YPwkdzRWOPvFPhqZ3aEh8od35F5yy1iV9ddh
 rCKmFTvbob3JUJXb8pdjxUTMdoK7qhZK4OrK+96Ds+Q3IMV7YH3vrqo0L
 xpVmx94f8BT5KYyp5qKlh9SYz1PgqHLOy/cp9FIv56cTakvJgX8i495IG
 55UGwlqVe3LnYJ/TR6xsPGLlKUsvnjzAt2YjMq2SkL1fhE2M76E6uzFBw
 cCZyQWYyMvOg+SitjEQrtWcaGfLUdkLSv5JSEgLTcmCSF70rx+tbVPLEV
 veIf8G2rsCfwCSmHblkimNl+nN+f3ZP/TaYkBzWKvCZze8Wj/eoiwVqG6 Q==;
X-CSE-ConnectionGUID: elSM6rl8TEyXRkN2LPqUuQ==
X-CSE-MsgGUID: DXoBMElbTbGx7XS6VKUpVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472568"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472568"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:53 -0700
X-CSE-ConnectionGUID: pUES+0YHT3+7YUfMtK5GtA==
X-CSE-MsgGUID: M8wwlvJ2S4uS5x+6Er7VCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453307"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [PATCH v5 19/19] drm/i915/psr: Add panel replay sel update support to
 debugfs interface
Date: Wed,  3 Apr 2024 12:00:13 +0300
Message-Id: <20240403090013.54296-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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

Add panel replay selective update support to debugfs status interface. In
case of sink supporting panel replay we will print out:

Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

and PSR mode will look like this if printing out enabled panel replay
selective update:

PSR mode: Panel Replay Selective Update Enabled

Current PSR and panel replay printouts remain same.

Cc: Kunal Joshi <kunal1.joshi@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 50bb3739d197..3d564276273d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3564,7 +3564,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+		   str_yes_no(psr->sink_panel_replay_su_support));
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -3573,9 +3575,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	mutex_lock(&psr->lock);
 
 	if (psr->panel_replay_enabled)
-		status = "Panel Replay Enabled";
+		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
+			"Panel Replay Enabled";
 	else if (psr->enabled)
-		status = psr->sel_update_enabled ? "PSR2 enabled" : "PSR1 enabled";
+		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
 	else
 		status = "disabled";
 	seq_printf(m, "PSR mode: %s\n", status);
-- 
2.34.1

