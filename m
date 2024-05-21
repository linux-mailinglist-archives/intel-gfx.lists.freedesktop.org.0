Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7498CAA46
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B1B10E754;
	Tue, 21 May 2024 08:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6TUk1lz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55BC710E754
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281236; x=1747817236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FxTj7NQG0+uxOTOMgS4gPXWnefZJaZNTjvmk4vwO6HQ=;
 b=V6TUk1lzI3ITPpa0kQiKLsM4kxUUL3PwbNN9m0L+tXboKkneQPbsIoOZ
 6e0Zqdf2/diDRtTtZ1Boa6gUiqWJqs0/Cxz7jPUeR20BBaAhOvpELOuT/
 NwQpmX1V3C8R5W+Xc9l4nNNDEWjPsAQnXuutEIXQw6JswbCCowRCQIJk/
 m451kB2waLu1UTkRumIqwZAqMNKtgsc44MNS6M48t3ms+M2x1ubui13N8
 SCIDUvLqQPr10OHTvAo2ZuB/6QCNO2UfgWvQ9IM6Sg2Ud+//KQahuyoIb
 nAIKdcXdaWNbYDTj/3WHczR5uAEuuJ8O9dpRpFiXoV4VWrmCVNLwGxHy7 A==;
X-CSE-ConnectionGUID: RtxHPjreTX2bEaU1CRKFwA==
X-CSE-MsgGUID: R48MvzsDTyeG2SbT/gqT+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297806"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297806"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:16 -0700
X-CSE-ConnectionGUID: Sln55TrZT7W4CjIGzZLxkA==
X-CSE-MsgGUID: ZrPo4kTsSn2fsB3FqIHw+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272497"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 05/17] drm/i915/psr: modify psr status debugfs to support
 eDP Panel Replay
Date: Tue, 21 May 2024 11:46:36 +0300
Message-Id: <20240521084648.1987837-6-jouni.hogander@intel.com>
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

Some PSR2_CTL bits are applicable for eDP panel replay as well.
Dump this register for eDP Panel Replay as well.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index de0ce5f3a32c..3884d88e1594 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3628,7 +3628,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
 	bool enabled;
-	u32 val;
+	u32 val, psr2_ctl;
 
 	intel_psr_sink_capability(intel_dp, m);
 
@@ -3649,6 +3649,12 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->panel_replay_enabled) {
 		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
+
+		if (intel_dp_is_edp(intel_dp))
+			psr2_ctl = intel_de_read(dev_priv,
+						 EDP_PSR2_CTL(dev_priv,
+							      cpu_transcoder));
+
 		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
 	} else if (psr->sel_update_enabled) {
 		val = intel_de_read(dev_priv,
@@ -3660,6 +3666,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	}
 	seq_printf(m, "Source PSR/PanelReplay ctl: %s [0x%08x]\n",
 		   str_enabled_disabled(enabled), val);
+	if (psr->panel_replay_enabled && intel_dp_is_edp(intel_dp))
+		seq_printf(m, "PSR2_CTL: 0x%08x\n",
+			   psr2_ctl);
 	psr_source_status(intel_dp, m);
 	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
 		   psr->busy_frontbuffer_bits);
-- 
2.34.1

