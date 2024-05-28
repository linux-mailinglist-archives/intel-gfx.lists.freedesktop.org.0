Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726768D1A18
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3501121DD;
	Tue, 28 May 2024 11:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOocGjLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB10112175
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896829; x=1748432829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MKWEozFSkVKtT8qbC48qZ7TUuGPoxQCk2s+D9W4XD94=;
 b=TOocGjLviDtXTXlBgQ0v9pmNJ83r0fhel1E28wB/McAgUdCK7Vt1Xhch
 k9lG6snQ3q4OWXF64h4+lh23gXd7/JJyoouQj6D0yCaY1jgMeiZrbhXHt
 m4f5vdMAJjifcsSnXR6eQgf+3knhjC/6u4ZiAcqAok+D4Hwv0zwxkJeCE
 9noEW5sq84L0vcX9Puj0RPzfztwp/ocoeUszspgdQvZSslXXCiNH7hS+7
 gbgaEV6j2Z08lgZ2Ve/REnZdn7yviKtpAtxhJ+REsynyr7EHWQ3FMe7K4
 bHuOL3ftMN55gTTkcgz2BRi170qvw6kDavqboZI3lpEnRSxyfafhGgTVv A==;
X-CSE-ConnectionGUID: evHnWke0S02IuzIGsH+BYw==
X-CSE-MsgGUID: GqBKf+4vQMukudQpbSTCeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759841"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759841"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:08 -0700
X-CSE-ConnectionGUID: BdoVS2/sQF60r2kiMp1LGw==
X-CSE-MsgGUID: 0nFEG951QnCq59us6MEs5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879246"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 5/5] drm/i915/psr: modify psr status debugfs to support eDP
 Panel Replay
Date: Tue, 28 May 2024 14:44:55 +0300
Message-Id: <20240528114455.175961-6-jouni.hogander@intel.com>
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

Some PSR2_CTL bits are applicable for eDP panel replay as well.
Dump this register for eDP Panel Replay as well.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index dfd45f6d7edd..19f8ac12f995 100644
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

