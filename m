Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FA2829B03
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0431710E796;
	Wed, 10 Jan 2024 13:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445AA10E796
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892429; x=1736428429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xHNy0Nhas+honDGaqLPejK+SrwSfCmPpyjSUrgSnE8w=;
 b=PrApe7cccrzCxlvWrv8y3S/CYQONFlb+jzRJDaV7SWw6kqlTtcCjBNzP
 j3NEXBWNmihrsMRInkTiiVOd5dzGDZKcIy3NO0g/XH1s3SW5smpXHluwK
 JvAT9yCC6NO+KMltiG3zoYAhd8MySap3oIl03LwdbHNPsKg8Jv86YLw5Z
 aSCqWzatIlTmItv19lONUHm8TRFFshSr8g33qSauiq2y1VWm6YryVHDtg
 L70ghM3OTXV4K7h8SoIfN1v78OaHB1aYYmYwokBDbabo67xaRDTR6LAtA
 N4qIbCCZ3vx4W2ohXh/rK+5il0ijL5G/69FGPIOYR41NLcaGES9iV28Yk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914059"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914059"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347187"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347187"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 13/13] drm/i915/psr: Add panel replay sel update support to
 debugfs interface
Date: Wed, 10 Jan 2024 15:13:04 +0200
Message-Id: <20240110131304.2470006-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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
index 9f5d04261df0..b7a29bdcf668 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3222,7 +3222,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+		   str_yes_no(psr->sink_panel_replay_su_support));
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -3231,9 +3233,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

