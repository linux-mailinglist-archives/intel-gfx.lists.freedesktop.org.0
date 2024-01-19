Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF55832770
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51FA10E9CA;
	Fri, 19 Jan 2024 10:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29ACC10E9E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659086; x=1737195086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GbPp6pARd3KfVtOUiy0VAfj2TOSn+nvAUPq6+pQcfS0=;
 b=DELfewJEsiNCYp3sfL+OZnVjlCTZFdNj1DjzO5EFtxWfS2JvlIE+JjqH
 FPwOkEgLi37o8o3ierfxxlUt8w9teLXM/b5ukQBoiP1PbyLs/0nFyKzOQ
 XP64ABhcaX3aGa8XjjO6j7Zh3KuJFnzXCkcnxSxX6PdVHCI/KbsTpoas0
 fILimC1uHxGbL6FCXnEro6BQnDcOYrSuOjiy+Ci4RsQVOYMi7EUouvqWd
 f4Gb6rTrdjDAJqhAJEST1dYkMfbTH+QspeP+r41+wXQClxn/27+z25MK7
 mPsPVqWqiFmCInAQrMVCwh4kxRwVT5bnId6/wTjCawhge7/58+W5C7oI2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070932"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070932"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563431"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 21/21] drm/i915/psr: Add panel replay sel update support to
 debugfs interface
Date: Fri, 19 Jan 2024 12:10:24 +0200
Message-Id: <20240119101024.1060812-22-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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
index 40f71a0726fe..dbb06d10b8c3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3265,7 +3265,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+		   str_yes_no(psr->sink_panel_replay_su_support));
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -3274,9 +3276,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

