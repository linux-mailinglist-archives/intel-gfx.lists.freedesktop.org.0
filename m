Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4D38D1A17
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CAC1121D7;
	Tue, 28 May 2024 11:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QZDSpD3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE3210E289
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896827; x=1748432827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GI+NYKbgPQTKNMM8bPC+SsC8imtMLbh5FG//EGL4YDA=;
 b=QZDSpD3z8QrAArO81DnG86HUSGtxaA1eLSVIUKSU2zEfPIdnhShv9Nt4
 ipTUKBQRt4QXSJEt5UaSN5JsVbvYvmCtzfvG3G7KUM4oGqUHVBd/yEhyU
 U8xPT1S/FBkzzWFTuCCLltrKpV3U3Eisa/2GDUlI8qkGL9O7Nd53F3BDn
 KW0xhjaIWoifi7/MHzQ+Ktq4nEm+R6CU/zxXnPwh6D1P6HUSvGADB0sQo
 0/MQJh/W04JM/ocTxjLRM4DMpYYR1stFoqNm+zNBzUaWMCvXzpRxW5J1v
 y9/Z+2OeF1efOflOANxyan+8QgkPfLGpzHouWcuvPnUBCZZMloDWpuyda Q==;
X-CSE-ConnectionGUID: jMyoNmjrSF6456thuYmp2g==
X-CSE-MsgGUID: yyx45OIaRsynhRS+OtIC2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759840"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759840"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:07 -0700
X-CSE-ConnectionGUID: 3DvRs+P3SjG1m//rQAIJWw==
X-CSE-MsgGUID: m8WFt2YLTNOayHyibZXlPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879238"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 4/5] drm/i915/psr: Move printing PSR mode to own function
Date: Tue, 28 May 2024 14:44:54 +0300
Message-Id: <20240528114455.175961-5-jouni.hogander@intel.com>
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
and move printing PSR mode to an own function.

v2: s/intel_psr_psr_mode/intel_psr_print_mode/

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 26 ++++++++++++++++--------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 943de3ca39c2..dfd45f6d7edd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3605,13 +3605,28 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 		   str_yes_no(psr->sink_panel_replay_su_support));
 }
 
+static void intel_psr_print_mode(struct intel_dp *intel_dp,
+				 struct seq_file *m)
+{
+	struct intel_psr *psr = &intel_dp->psr;
+	const char *status;
+
+	if (psr->panel_replay_enabled)
+		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
+			"Panel Replay Enabled";
+	else if (psr->enabled)
+		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
+	else
+		status = "disabled";
+	seq_printf(m, "PSR mode: %s\n", status);
+}
+
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
-	const char *status;
 	bool enabled;
 	u32 val;
 
@@ -3623,14 +3638,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 	mutex_lock(&psr->lock);
 
-	if (psr->panel_replay_enabled)
-		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
-			"Panel Replay Enabled";
-	else if (psr->enabled)
-		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
-	else
-		status = "disabled";
-	seq_printf(m, "PSR mode: %s\n", status);
+	intel_psr_print_mode(intel_dp, m);
 
 	if (!psr->enabled) {
 		seq_printf(m, "PSR sink not reliable: %s\n",
-- 
2.34.1

