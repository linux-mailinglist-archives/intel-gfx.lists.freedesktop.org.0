Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8A18B6F45
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B0810FB27;
	Tue, 30 Apr 2024 10:11:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nHuM+6RS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322F510FB56
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471874; x=1746007874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vaylDO3QmT849Fv2TVOXWyeCcExEGNUdQq0adoyB9og=;
 b=nHuM+6RSE2apeOEYNh/HwW7/WTl4sAWz+EfFKFgzzhDzgwZVvuuwsywo
 xRWLYrsGLmABY3w8CtyQjzAjWVUfKiwr+bCf9EzoaPXmBA7ihG6wOU0Fi
 EdabqbLYowc8Z6hWad/Wi8NKMwEjq3jEodxTWwhAVQQ1B7XF9dfoGEhJ0
 12voX0sQxevJL85QPfrEAVRjn2BfTCAVlUnMIyS/PPlkefZGTujU9c56z
 DcTMBwjvx5qGzikcJwubc0IzMkdNJy22GLOkBRE0IfUbwqDsccSftUPn3
 IPfWyRphHCVCCd0utr4gfNu5PuvugTzmrcySNzmUpsxS+7unRvHltrNf4 w==;
X-CSE-ConnectionGUID: IdexGuRaTlKan0936GO/Jg==
X-CSE-MsgGUID: KFVHHjJKRwihK3xjbe5gQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043835"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043835"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:14 -0700
X-CSE-ConnectionGUID: 1nzfXh8kQ9eTHGp2UXyrIQ==
X-CSE-MsgGUID: V1l90F05S+yBCP3lp6aygg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281457"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 12/19] drm/i915: pass dev_priv explicitly to EDP_PSR2_STATUS
Date: Tue, 30 Apr 2024 13:10:06 +0300
Message-Id: <5d86a48f51ae6fa4c5a3abf098440a94d07de870.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the EDP_PSR2_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 9 +++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2dca9957a06b..36c08cd3a624 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2052,7 +2052,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 	u32 psr_status_mask;
 
 	if (intel_dp->psr.psr2_enabled) {
-		psr_status = EDP_PSR2_STATUS(cpu_transcoder);
+		psr_status = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
 		psr_status = psr_status_reg(dev_priv, cpu_transcoder);
@@ -2768,7 +2768,7 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
 	 */
 	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR2_STATUS(cpu_transcoder),
+				       EDP_PSR2_STATUS(dev_priv, cpu_transcoder),
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
 }
 
@@ -2835,7 +2835,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 		return false;
 
 	if (intel_dp->psr.psr2_enabled) {
-		reg = EDP_PSR2_STATUS(cpu_transcoder);
+		reg = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
 		reg = psr_status_reg(dev_priv, cpu_transcoder);
@@ -3467,7 +3467,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"BUF_ON",
 			"TG_ON"
 		};
-		val = intel_de_read(dev_priv, EDP_PSR2_STATUS(cpu_transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_STATUS(dev_priv, cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 817bc372bf35..e6c62512512f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -215,7 +215,7 @@
 
 #define _PSR2_STATUS_A				0x60940
 #define _PSR2_STATUS_EDP			0x6f940
-#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_STATUS_A)
+#define EDP_PSR2_STATUS(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_STATUS_A)
 #define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
 #define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
 
-- 
2.39.2

