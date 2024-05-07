Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1BF8BE2B7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7258710F442;
	Tue,  7 May 2024 12:57:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRkY5jlZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D2510F442
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086635; x=1746622635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ObzyJUtz/DjaFqvZIxkhS39VVXaiA17Sk39TmiAPUI=;
 b=ZRkY5jlZ2fBQR/7sUi/FDVEfMLcSuWyCwvjw7sq3bZXiizFMGzNWGsbO
 K51IjdixlVJKw4NbJo1n/dD6LS2zHkoi6HcERr2CZ3QY449mafXMavvp7
 ujxyWq/yLMjgm4AxyI874oe1Uv5P1REMCHVtNE6RwXLzBS6LGfb4lgLyx
 LL5QEFxh2uilFmGeEGc8kAz92eqAWMHH/2E1Iqq9Y2gyfxgTMii0AGMFX
 zZBDvScOhmWiozMI8QH2zKhaWuTGHToN1YgveX6QFFZ7Vp3A5AfdGi2Oz
 0e6xGcpyf0R6IwPLxFx8SUsfgEeofFSX64+HUKRgLtlAWX3V2BZEKGTDb w==;
X-CSE-ConnectionGUID: kepzCYucT1+aHS3fIOePhg==
X-CSE-MsgGUID: 0CMh8vgER5GpdrizKKApCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11094732"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="11094732"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:14 -0700
X-CSE-ConnectionGUID: 2gOJG4zURHCtAv8Gp3KpKQ==
X-CSE-MsgGUID: AAc/DLtmQ1mEN9lTnPwyDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28492202"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 3/5] drm/i915: separate RPL-U from RPL-P
Date: Tue,  7 May 2024 15:56:50 +0300
Message-Id: <b598eef5a8de6ed1936b04b002a8db786741cf5b.1715086509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715086509.git.jani.nikula@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
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

RPL-S is a subplatform of ADL-S and RPL-P is a subplatform of
ADL-P. It's a bit much that RPL-P also matches RPL-U. Separate RPL-U
from RPL-P, and make RPL-U a standalone subplatform of ADL-P.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 7 +++----
 drivers/gpu/drm/i915/intel_step.c        | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b119923f8be2..27b4a5882be3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -182,7 +182,6 @@ static const u16 subplatform_n_ids[] = {
 
 static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLS_IDS(0),
-	INTEL_RPLU_IDS(0),
 	INTEL_RPLP_IDS(0),
 };
 
@@ -249,9 +248,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpl_ids,
 			      ARRAY_SIZE(subplatform_rpl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL);
-		if (find_devid(devid, subplatform_rplu_ids,
-			       ARRAY_SIZE(subplatform_rplu_ids)))
-			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
+	} else if (find_devid(devid, subplatform_rplu_ids,
+			      ARRAY_SIZE(subplatform_rplu_ids))) {
+		mask |= BIT(INTEL_SUBPLATFORM_RPLU);
 	} else if (find_devid(devid, subplatform_g10_ids,
 			      ARRAY_SIZE(subplatform_g10_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G10);
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a5adfb5d8fd2..cf27e118ab08 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -181,7 +181,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_P_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
-	} else if (IS_RAPTORLAKE_P(i915)) {
+	} else if (IS_RAPTORLAKE_P(i915) || IS_RAPTORLAKE_U(i915)) {
 		revids = adlp_rplp_revids;
 		size = ARRAY_SIZE(adlp_rplp_revids);
 	} else if (IS_ALDERLAKE_P(i915)) {
-- 
2.39.2

