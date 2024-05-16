Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF948C7325
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4C910E462;
	Thu, 16 May 2024 08:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRggUwHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA21610E462
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849416; x=1747385416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MD4uxmoCdTs+LJXu4g2x9lWOSU4R5z52KRNxUJCWtsI=;
 b=JRggUwHQ+h3okBsRrVdigvLGgwXVgZLUvh520zDs1hN+GgHavRIjoJio
 4hIkwzrnmgAPm6OF0ZmMxvAzrNaXL5X1xF/AwO0h58oRHjwSV5AK5+pW5
 Xe9gbvycwhnNm4DzdHzeNkS4HJO04sBGtt0pMQOKGPfEvbiJZ+ecgU9ZA
 Os+4iVZj1nnCmBWkp2lfvytxktLCP/iUIOq5JBdRS2q/3zpT+oQKrfz9t
 y63YfsskzE0aybrmWviZYtdObUyPRN8o1HIxqVCvqbnYVH/c6NjDhUrJu
 D0meo91RAuFkR1cKZEtNvf77McuVBj81DqKnwAG4eU1lJXEeP3D1LAQy1 Q==;
X-CSE-ConnectionGUID: z4X2TtP+QjCWz+/9VY5BzQ==
X-CSE-MsgGUID: /Kh0wUUUSvGc/MiJJFyjOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756034"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756034"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:16 -0700
X-CSE-ConnectionGUID: 2RnQLWBPSFaupNsYnOSH0g==
X-CSE-MsgGUID: pvtqVEujQJKDaQdCOQ9YDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398100"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 03/17] drm/i915/psr: Move printing sink PSR support to own
 function
Date: Thu, 16 May 2024 11:49:43 +0300
Message-Id: <20240516084957.1557028-4-jouni.hogander@intel.com>
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

intel_psr_status has grown and is about to grow even. Let's split it a bit
and move printing sink psr support to an own function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05c1069bbf60..626b59d3441a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3581,15 +3581,10 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	seq_printf(m, "Source PSR/PanelReplay status: %s [0x%08x]\n", status, val);
 }
 
-static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
+static void intel_psr_sink_capability(struct intel_dp *intel_dp,
+				      struct seq_file *m)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
-	intel_wakeref_t wakeref;
-	const char *status;
-	bool enabled;
-	u32 val;
 
 	seq_printf(m, "Sink support: PSR = %s",
 		   str_yes_no(psr->sink_support));
@@ -3599,6 +3594,19 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
 	seq_printf(m, ", Panel Replay Selective Update = %s\n",
 		   str_yes_no(psr->sink_panel_replay_su_support));
+}
+
+static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct intel_psr *psr = &intel_dp->psr;
+	intel_wakeref_t wakeref;
+	const char *status;
+	bool enabled;
+	u32 val;
+
+	intel_psr_sink_capability(intel_dp, m);
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
-- 
2.34.1

