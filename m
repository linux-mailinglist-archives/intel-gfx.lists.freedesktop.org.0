Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFE88BA727
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886BA112840;
	Fri,  3 May 2024 06:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/7qZ5M6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E53112840
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718083; x=1746254083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3tjTFsZjUXRyBq683VwwnbXEa/4B/CEV7kzidbZt9uU=;
 b=a/7qZ5M6yjEtqMHgDiQhzcnv/U9ztp+xrw4ir7AyttJPAp9RlBh1/OIE
 sb7AtCq9+wOEKQjanh2dzxbPYnSOxRItJfv/Bs+9lCpAMOlTKjc6h+R/4
 6WJkJORsL1RnGuxslHtjfMXXxLd9H/sd2nmwNbLjFIrQpEtwKwxrHXswS
 sO0jtkhX23FaliOAK79qdEJmo++Yh1qIFGSjQnKLf5/FMCkWf8yvGdDO2
 5flfzkH8VknMWpfO+neyqwZaEK0zYFyTpN/fQORStYNFp6maDQajSttsj
 KhInFmFOd26fdzyAR/C4LzmwxMdl6YVh45uct64F98ZTUTLuV9p5KLT9P w==;
X-CSE-ConnectionGUID: YRp6YYOBSUedzgHtBGiLow==
X-CSE-MsgGUID: iLFUYrEoRs+z3ElpE76R6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302327"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302327"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:42 -0700
X-CSE-ConnectionGUID: +4fFPLw8Q62+I4dKQvmaWQ==
X-CSE-MsgGUID: TL9wn82RSe20cjgobTegjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558747"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [PATCH v9 12/12] drm/i915/psr: Add panel replay sel update support to
 debugfs interface
Date: Fri,  3 May 2024 09:34:13 +0300
Message-Id: <20240503063413.1008135-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503063413.1008135-1-jouni.hogander@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
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
index 2198448fdb27..2ad7964998e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3575,7 +3575,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+		   str_yes_no(psr->sink_panel_replay_su_support));
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -3584,9 +3586,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

