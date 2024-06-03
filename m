Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A8B8D832E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92BE10E397;
	Mon,  3 Jun 2024 13:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDPWtaMp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B601C10E35C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419672; x=1748955672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WcSShjXSB9d5zNL5EK1n0puukbwDav4fJXBOT61kjaw=;
 b=MDPWtaMpYYno4C3hZYl80ueiYKL4w7lbh103+6VSCoV47fSHq9r3c0bw
 hXfYZqcujb/IeyjlLe4LvnN40+J+UbmnER2TNe0cvmbBaPl8eVLCZJdqh
 kYYicdXdkMgeO0F1Cp/FumMoEvqFJAwuSXUDxs9g/PbloSBchiyl5sZFF
 gKMeF7PNqh8/bO6Gkq0Fr07GKIeJ92LMaWtAl3ga+xT5nfVETzxm+5AMs
 cHjNEL+UVQq4o+XL4A11cXyik4mR5dFcIxN126PG9jZ9e24DMQLVQTh1s
 W4ywYiTO0mTp/lDuDzWpum3ae7k4odP13Fghkw5o89Ogx/GTec4aXE1Wx g==;
X-CSE-ConnectionGUID: Z53cjUQYRtyM4YpD1EpECg==
X-CSE-MsgGUID: FHkQzD+EQKKIqYInYrRyzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774471"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774471"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:07 -0700
X-CSE-ConnectionGUID: k3kr/l0MT8y+xhWtAxi3FA==
X-CSE-MsgGUID: +uhGiAsOQdWGc5TDeGik0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291773"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 06/19] drm/i915/alpm: Make alpm support checks non-static
Date: Mon,  3 Jun 2024 16:00:30 +0300
Message-Id: <20240603130043.2615716-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

We want to use intel_alpm_aux_wake_supported and
intel_alpm_aux_less_wake_supported in intel_psr.c. Convert them as
non-static.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_alpm.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index fd35056237e5..5f766d8be63a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -11,12 +11,12 @@
 #include "intel_dp_aux.h"
 #include "intel_psr_regs.h"
 
-static bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
 }
 
-static bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index c82ecc7b4001..d4fb60393c91 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -22,4 +22,6 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
 #endif
-- 
2.34.1

