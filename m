Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF12B4FCE0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D8010E73A;
	Tue,  9 Sep 2025 13:28:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MRx+AFCA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D9310E73A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757424538; x=1788960538;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tyj8VyGpbM2MFgWODYTrbG+bn0qMW84qPwibRGymwOU=;
 b=MRx+AFCAmm1mygvIicphjNh7S0gQrv6D/DCXVNG2cczScPYTpjhUwMDx
 SAvPAOfxaZtJLsaNcIfQ70zrAZy5bELNdccOEzeFHLkvlkY47WMGYvDP7
 DNQWUgZVfVyNifzKzR1dZdbzM29+qc3P9gUar7SPYBdjYNj9Q8aIaz5lu
 zX/yUC/twcS+sfvR9yFRs3TgtHhSw/SZ5ZBZIurX34ogl1pXK+W0Qsq9q
 ImtF7ghomYpYPCLRiAmPuALZ79suN7sp+ohGF74vIpaKICvRHCnaimPD8
 tdBr9ysI/xOv009Byy7ihEP5VfcKHLLXQqfWKwK8MMn/XPTIMDNiPuT4s Q==;
X-CSE-ConnectionGUID: g9kxCrrNQuif1uUTyWmi8A==
X-CSE-MsgGUID: W/Xje+gWSIyZiFU1/yt2PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="77319149"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="77319149"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:28:57 -0700
X-CSE-ConnectionGUID: EnF1p8rCT/qYvKq754FQ2Q==
X-CSE-MsgGUID: l+f+SzAgS/OvmA3bPsZqQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="178308760"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:28:55 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, vinay.belgaumkar@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/slpc: Update min_freq_softlimit when ignore_eff_freq
 is enabled
Date: Tue,  9 Sep 2025 18:58:09 +0530
Message-ID: <20250909132808.1708812-2-sk.anirban@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

When slpc_ignore_eff_freq is enabled, min frequency is set to RPn but
min_freq_softlimit is not updated, causing sysfs to show stale
values.

Update min freq softlimit when ignore_eff_freq is successfully enabled.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index d5ee6e5e1443..07fa0423b1a3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -495,10 +495,13 @@ int intel_guc_slpc_set_ignore_eff_freq(struct intel_guc_slpc *slpc, bool val)
 		slpc->ignore_eff_freq = val;
 
 		/* Set min to RPn when we disable efficient freq */
-		if (val)
+		if (val) {
 			ret = slpc_set_param(slpc,
 					     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
 					     slpc->min_freq);
+			if (!ret)
+				slpc->min_freq_softlimit = slpc->min_freq;
+		}
 	}
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
-- 
2.43.0

