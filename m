Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB828CAA47
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF5710E75B;
	Tue, 21 May 2024 08:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iC8CCHbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7899F10E742
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281234; x=1747817234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RJTgF4JVoQs5Pc67RC3iAswMuhQRvmuDMZmizl1Mxyg=;
 b=iC8CCHbnVpBEbreWx9dqldVYnMbn3IlvcjjALc8hunDU1RhU6rHJolxu
 6D8Dx2bMiLRvsxgcUqeyPY5IPTmJVq//+Or0zMhiA/Kh+JzHbevzz37JH
 IgJLmLZkmWTzmSauuaakI7ltEpnIUMFFLCOI0MK38ejfgnSNUTsLUo+zq
 PNa2r0LC+tsyXZqlgodi0C5IuqyWX+cAsj32EVq98Mc9FiZDtK1eEjaOD
 mexKao+F7qMxPDytRWV1zrKAhY+vcT/tvs3yS33jLpR3jNEwPzATqjlxS
 2HS9UHwMTHiCWdeOXLPsFmWkDiH65rp4KJdgbKeJBP5SJpMyOHDrjErEc w==;
X-CSE-ConnectionGUID: 6/HVMfZoSdyoB8JWZjkuLA==
X-CSE-MsgGUID: S8Isvp6fTdeztgotjvurCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297803"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297803"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:14 -0700
X-CSE-ConnectionGUID: SuzZn6LFS52boBZe3E+ZiQ==
X-CSE-MsgGUID: w+YzCgTvS/W0FQZVKsNxBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272489"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 04/17] drm/i915/psr: Move printing PSR mode to own function
Date: Tue, 21 May 2024 11:46:35 +0300
Message-Id: <20240521084648.1987837-5-jouni.hogander@intel.com>
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
and move printing PSR mode to an own function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 26 ++++++++++++++++--------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2ae5cdca5786..de0ce5f3a32c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3605,13 +3605,28 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
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
+	intel_psr_psr_mode(intel_dp, m);
 
 	if (!psr->enabled) {
 		seq_printf(m, "PSR sink not reliable: %s\n",
-- 
2.34.1

