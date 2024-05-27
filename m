Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3E58CF9EB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932B010F666;
	Mon, 27 May 2024 07:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqGQE5lO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C03610EDC6
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794563; x=1748330563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QcBPK68KS8gbMJeG8BSF5j1EbQzZS9gPUWXZtj3To2w=;
 b=SqGQE5lOL3Z/z1gy0+MipzD7alKGjKmSTzWZaOA+vtEThZ9iy6WWYgrl
 SAHW9hk6z4oZJPQTfS43or5I+x24rcD4vRVjzvaiA5zQZ+oolVZA80Fn1
 Pkq9RvueT1eubpp3U4Dmuz5Oeo1ZYjlfGPGaOiff6EEPro+u+kRYZxwZ6
 3dBkc5ivH5+pLUCMbX3/cadLGUunwdzho8y77tA5k/CRIThkmeQEQ5ra1
 SOWz8X0QodJDfzA/mW/MUap46ukF4ozBv8GrI5pwx31Uchl9LhMwjFPZX
 1a2nxAEOSDKSW/uQOZU9JbwYbNvB5hDHGYcqV0IBT6mHMsaOoUNbJ6ewG A==;
X-CSE-ConnectionGUID: W9z1oBsGSjK8b61arGYaHg==
X-CSE-MsgGUID: GqgCaYbVTnupfm6Kx0CHrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930426"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930426"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:43 -0700
X-CSE-ConnectionGUID: FyNy0QO8TJ6yZSJSG6cVdg==
X-CSE-MsgGUID: r5fbYG/fSbGP40ogiz8OoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753389"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 04/20] drm/i915/psr: Move printing PSR mode to own function
Date: Mon, 27 May 2024 10:22:04 +0300
Message-Id: <20240527072220.3294769-5-jouni.hogander@intel.com>
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
and move printing PSR mode to an own function.

v2: s/intel_psr_psr_mode/intel_psr_print_mode/

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

