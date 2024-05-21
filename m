Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962CC8CAA45
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CA310E742;
	Tue, 21 May 2024 08:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aw5XKbJA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B57910E742
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281233; x=1747817233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u+maUdvyXHIHoDuKrdCCNrrWuGVVwLkVsYkIPVak5c4=;
 b=Aw5XKbJAM5/ppUe0G6GS9FsB5X+HCajNyIyZS8BuhEIzgSrG7fUsgs6q
 rzpO3WUENMsPU/fTRTh6X2cQYJ4lKTw2LCE/MM9pZWvsq9sZlAdKNSDtv
 PV1izjS4kLjoQZFZnbqtyn8Fm/BFZwhHL4x+ivtjOxF9dcQw6kNGSrlQo
 JqWskpnBZJUys2b7SLixc9BSptreRiCHbfW62fmboExdc3OGkyh44jTpt
 cNCDg3mo0JPACa7F/w1Xh41xApek2B/XI/MEp5c35inoDaAhYoJnc6FDQ
 M2s7BfCeH0bLm0leL11tUmPxdljd31BaM+FaQvEkjjYNbR/+hh8G9+Rue A==;
X-CSE-ConnectionGUID: HONHxd1rQ22uxxqah8F/7A==
X-CSE-MsgGUID: 2rQYsZFeTxKjaOBMv1ww0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297801"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297801"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:12 -0700
X-CSE-ConnectionGUID: mjifAXBCRNuLPhJcRH0fqw==
X-CSE-MsgGUID: hVkIpKRPQaGwiGYCpqTbmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272483"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 03/17] drm/i915/psr: Move printing sink PSR support to own
 function
Date: Tue, 21 May 2024 11:46:34 +0300
Message-Id: <20240521084648.1987837-4-jouni.hogander@intel.com>
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

intel_psr_status has grown and is about to grow even. Let's split it a bit
and move printing sink psr support to an own function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ba92f71b82d9..2ae5cdca5786 100644
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

