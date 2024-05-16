Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EC38C7329
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EA910E967;
	Thu, 16 May 2024 08:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J07GxX5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA1510E462
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849419; x=1747385419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hHEY96PYEt1rN2VSUpW/skzPWhfK+8O12oKMz82z0E4=;
 b=J07GxX5yMR44KVvftNLosQ0phN4nOi+9hrmFnXgLP1szo26n/LGF9EMj
 N44i9sQUhfq+LQjaHMBOl+41qlpXIVhf94TgavaFjdreSxtjCGWk9FbDw
 G4qRcYQLUeo+pAXZ2B25H/8g95iQtg1nfXDjtrnqhmvZ+SQn7xhwKv38v
 qf+Lli/OeIv68/11LCyF1bWWZ/Xu5/YdchHEtvd8AyF+Cux2qzOAoRHEy
 qDjccl/oHUijxBW3MImbYZZveAZu/JPlmL0vYdExH8Mvhn3KAR2UX7CKm
 END1Ofamfs10DM2FPnFArI8REQAmgS/yxfT4M++Ria2dHQTwF8DfsYuF4 Q==;
X-CSE-ConnectionGUID: 9AlapJyuSOWvglDxBwYTKg==
X-CSE-MsgGUID: VEsnfgTxR+CzTuyHnPUUBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756047"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756047"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:18 -0700
X-CSE-ConnectionGUID: gUNMCTSoSyCSuWYsfA1RfA==
X-CSE-MsgGUID: 5mOJ2xUVTTOnGrkHmAODqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398129"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 05/17] drm/i915/psr: modify psr status debugfs to support eDP
 Panel Replay
Date: Thu, 16 May 2024 11:49:45 +0300
Message-Id: <20240516084957.1557028-6-jouni.hogander@intel.com>
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

Some PSR2_CTL bits are applicable for eDP panel replay as well.
Dump this register for eDP Panel Replay as well.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8844c9b75348..49ad83641e12 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3619,7 +3619,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
 	bool enabled;
-	u32 val;
+	u32 val, psr2_ctl;
 
 	intel_psr_sink_capability(intel_dp, m);
 
@@ -3640,6 +3640,12 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
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
@@ -3651,6 +3657,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

