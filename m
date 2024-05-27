Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9E48CF9ED
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BE610F8EA;
	Mon, 27 May 2024 07:22:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mofberu7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD3410E201
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794566; x=1748330566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Dg/EILPwsWq4Rf99L0/rkNijPK+e0Qjdvjyvs9NCKI=;
 b=Mofberu7KYduFQiemHLrc35y0UCem2n/kZx8PXn0tlupKVHpaI2DJKZb
 S/+rG+9hk8xNKZxXtFdLrk5wsthVdHj89L33U9s/9WEYP+qHmAEnIi65M
 5HECDeVVBsdsK95Be+oZJcOcMtemikonVnx9oQe/P8Uy3NaqgFKg706Cl
 7LHGioP8nCje9P3UR9fQoVmsGQfg2q1yGFOqWkMMZqzUy5yQSnOwo4rZ0
 mO3Tj6sLby3dFX0HXXg6EqCMB8lEveeD28Ot1H8pDuCvbeSj4sNuflw+y
 6CRVHCeNMX0j/jeR3X/3v2lRF9q8FIJO1HlqH9m7vbo/dne22J4o+HgUb w==;
X-CSE-ConnectionGUID: cOLFXBwtQvGRrAEUEKewQA==
X-CSE-MsgGUID: 0F1GyEk8TiC+7+pz9Eqnlw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930428"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930428"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:45 -0700
X-CSE-ConnectionGUID: U4YcBL9ZQN2Fgm6BDQl1Zw==
X-CSE-MsgGUID: +232Pg9QT4qDz3uFDx0vhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753392"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 05/20] drm/i915/psr: modify psr status debugfs to support
 eDP Panel Replay
Date: Mon, 27 May 2024 10:22:05 +0300
Message-Id: <20240527072220.3294769-6-jouni.hogander@intel.com>
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

Some PSR2_CTL bits are applicable for eDP panel replay as well.
Dump this register for eDP Panel Replay as well.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

