Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA588CF9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D774F10F92C;
	Mon, 27 May 2024 07:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXodHorV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D7D8922E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794561; x=1748330561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o5eLC2++dAbsavnApGbXUnJOwgIzWtLIO5v1eW2KgLQ=;
 b=lXodHorVrh3MH2KxNVD6IZELgVQNfu8ztViq6k1XBqzVntcQGbK0XLM7
 MENLX1Q9es/IxuP1wjwiL9UhzAW/IQRVgsSwsHBBc9U7VgKFvhvutAZ7I
 4tUCvVEUmf3fh0d2qKP+g5QowQ+7Ws58++ltskLI7tL5Dn3jnFUy+Bou1
 qLHTZqjCrtA2PDZcaH9D0b6bSO+PWyfEoLAfJGBhnrV9ymq+6ixsJ6d3G
 OznXr5qmDL1QmCXXWOp7tgqDFBOtT0TkG0gi4MgoSzvqIlHP0nCOjmf2d
 gHICe5WezKsa+/k3jaM3/b4SNaFfHt7HLyD7DvUUSgNZiCTabLMHQ93ak w==;
X-CSE-ConnectionGUID: H0rfLAO4S/ipk+UeXWT8pA==
X-CSE-MsgGUID: UCL2U9sPQmW/Mkc3XfH90Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930422"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930422"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:41 -0700
X-CSE-ConnectionGUID: qDKkOuZoS46RDxXAz4p49g==
X-CSE-MsgGUID: K3JRb1D2Sr+A+9aJEW0w5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753386"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 03/20] drm/i915/psr: Move printing sink PSR support to own
 function
Date: Mon, 27 May 2024 10:22:03 +0300
Message-Id: <20240527072220.3294769-4-jouni.hogander@intel.com>
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

intel_psr_status has grown and is about to grow even. Let's split it a bit
and move printing sink psr support to an own function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

