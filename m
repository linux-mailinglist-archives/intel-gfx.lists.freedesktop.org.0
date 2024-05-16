Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27A18C7326
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB0E10E88C;
	Thu, 16 May 2024 08:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvOSVNCy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0EF10E462
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849417; x=1747385417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3mV1bjsIsISaAOHIDOjTb1ytTMWbtwuvYt5PqDvYIyI=;
 b=mvOSVNCyurBNgioqZpjGhBKSbGAhvPXZFBL9SCmtIdxNQbgr4BaABYGA
 63XUnLeQ+iQ8rnq89fz5Mx7XyY4MV4s4mSsB1nGuJHkKG67oQ7c00y8Zr
 LZ9STdLyWMGt4NNDnk7BfToJMap/A0UxcLycOaHOOm+fjsZrV9eO6ybDY
 PN2l8ow2YptA5EePcHhw0thXN6JVW3WGO3uExfMzFksJM2lzXbmLrhO2A
 VGYezQ/PQaZ+O2I9MalrrLF23nMO9yxDrZYJXcUvB+DIXGWC7vwB6h5Nc
 hF31KLYrNpPLH5/JRRXVvSc6hTtQUPIzIMk+RprijXPHwbBwipErcHNdQ w==;
X-CSE-ConnectionGUID: pg86DtnCQz6U6vO4/w8aiQ==
X-CSE-MsgGUID: L3viJKTMQxiW1mKMtB1hxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756040"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756040"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:17 -0700
X-CSE-ConnectionGUID: btZWPlTlTHiU8zp7LGQhcQ==
X-CSE-MsgGUID: HQSQcnizQX+hLaM+Vwx/gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398114"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/17] drm/i915/psr: Move printing PSR mode to own function
Date: Thu, 16 May 2024 11:49:44 +0300
Message-Id: <20240516084957.1557028-5-jouni.hogander@intel.com>
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
and move printing PSR mode to an own function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 26 ++++++++++++++++--------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 626b59d3441a..8844c9b75348 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3596,13 +3596,28 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 		   str_yes_no(psr->sink_panel_replay_su_support));
 }
 
+static void intel_psr_psr_mode(struct intel_dp *intel_dp,
+			       struct seq_file *m)
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
 
@@ -3614,14 +3629,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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
+	intel_psr_psr_mode(intel_dp, m);
 
 	if (!psr->enabled) {
 		seq_printf(m, "PSR sink not reliable: %s\n",
-- 
2.34.1

