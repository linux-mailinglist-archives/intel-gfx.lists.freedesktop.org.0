Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779D98D1A19
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0811121E0;
	Tue, 28 May 2024 11:47:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFQPcOyK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17028112175
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896826; x=1748432826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=48WvWawY0UPtpy5gvVsnGgaQ55OhmyWrIt5EJDfEz8s=;
 b=IFQPcOyKA4GdUrDQg3Jt7G+aVSa2OEd3E6VOusKumkAi0DVcWqC/gEDB
 tHnRX/3Jy2hvsur8TfkfrXp+GzLKJJ7RuoWC6slC0hmwzYjJ8msowT/ov
 8e4KZzks6DqudamL5qel9Qnbp5rUNmZSN5CN2HxDBSaWKhGLr9KuvTvPx
 ru/qiVUb6r+2nWHCQftWjZFeKBBZZlc7SXDundYbOCeVUIU+LE3apZdYm
 S7woIRQyduIX/e0o2ZDhBzp48wkvyt5XWK7Ec2x6PzqxUqC5b9QSh3RnU
 h7UB5n0MNbFrr6fm4xDvi2S1G1TFCYAYUeRr1eo4I+tz+oObcg+b1GlPV g==;
X-CSE-ConnectionGUID: X0Jaxx13RR2hdGPxp4O+ZQ==
X-CSE-MsgGUID: BiaOrGGsRr68k9iQfe/ORg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759839"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759839"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:06 -0700
X-CSE-ConnectionGUID: dDdtCXP4TVyKkNoWy71Ixg==
X-CSE-MsgGUID: pbgHTTA/R1mV3x4N2xJ1Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879232"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 3/5] drm/i915/psr: Move printing sink PSR support to own
 function
Date: Tue, 28 May 2024 14:44:53 +0300
Message-Id: <20240528114455.175961-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240528114455.175961-1-jouni.hogander@intel.com>
References: <20240528114455.175961-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 08d3c8c81585..943de3ca39c2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3590,15 +3590,10 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
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
@@ -3608,6 +3603,19 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

