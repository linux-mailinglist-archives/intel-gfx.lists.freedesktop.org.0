Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828ED894F1C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA99F10FBE2;
	Tue,  2 Apr 2024 09:50:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFtUgaeo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D77410FBE2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051456; x=1743587456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fjRFJoNdGCnJTxQmed3GgLfLGCjF1qyyg1Sb+EfSW0g=;
 b=HFtUgaeoU9RAUxwIxN+cbfzPXjPOntSHQQYVdca9YKfRBUyVIFnxzrQG
 p/9IRhTFzQDR6QCjs24I/VnB8SdnrywsEQ9N+pYZRE1Iy8KDYOEbiu7Bd
 lLdD2OYC34R4D6llpQTqYu1M8pekSNL+Qcsk3OZBt5q2yaoPHSwJGomgR
 7c2Uv2n8EQG3du0U0mrIFmn17+HuS8tZL++5vj8b/coOpGNULy9CIC9Mu
 L+iDqxxEN+gzOoJGWpm2iE8fZiQbdouFTa8yyd2AMqq+kejB/PrpUhsEo
 7g0AAT0xr/DLLVn3jSjuY7Pd3mqv3g/TfvXZfvHRoKwuRHPIQVTTA6IRX A==;
X-CSE-ConnectionGUID: T5QISDZURrinhNBs4fu0bA==
X-CSE-MsgGUID: TdL1v4+JTgC9Hti1QsuROw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422685"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422685"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693455"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [PATCH v4 19/19] drm/i915/psr: Add panel replay sel update support to
 debugfs interface
Date: Tue,  2 Apr 2024 12:50:11 +0300
Message-Id: <20240402095011.200558-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

Add panel replay selective update support to debugfs status interface. In
case of sink supporting panel replay we will print out:

Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

and PSR mode will look like this if printing out enabled panel replay
selective update:

PSR mode: Panel Replay Selective Update Enabled

Current PSR and panel replay printouts remain same.

Cc: Kunal Joshi <kunal1.joshi@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 41c54009196f..37c7e4d9353c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3564,7 +3564,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 	if (psr->sink_support)
 		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
-	seq_printf(m, ", Panel Replay = %s\n", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
+	seq_printf(m, ", Panel Replay Selective Update = %s\n",
+		   str_yes_no(psr->sink_panel_replay_su_support));
 
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
@@ -3573,9 +3575,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	mutex_lock(&psr->lock);
 
 	if (psr->panel_replay_enabled)
-		status = "Panel Replay Enabled";
+		status = psr->sel_update_enabled ? "Panel Replay Selective Update Enabled" :
+			"Panel Replay Enabled";
 	else if (psr->enabled)
-		status = psr->sel_update_enabled ? "PSR2 enabled" : "PSR1 enabled";
+		status = psr->sel_update_enabled ? "PSR2" : "PSR1";
 	else
 		status = "disabled";
 	seq_printf(m, "PSR mode: %s\n", status);
-- 
2.34.1

