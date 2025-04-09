Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACFBA827B9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C58110E8F7;
	Wed,  9 Apr 2025 14:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="neakWwyz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED8810E8F7;
 Wed,  9 Apr 2025 14:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208758; x=1775744758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gmq5Z+7OXhoDZJElZfP1qkabagScz/OvTk0fdZJ2l7Y=;
 b=neakWwyzsLzmyarAswYTxzWPjpZ/7Bcyd6cqAnUIOElyIbvwPBIqAtL8
 37cEyBeYE/MbrpGIwtsiM1VLsMEo1UwSn6SW7qmVnltH0b+lPdKc9i4W1
 7YlKz1SZTPZyntVxS3Q2q4giWA8sp0mwXp6vieY5f/Q7Zz9/9cmRmD3ks
 ODDpt7lIU2/TNG8xirPurE8We4BjOzN7BK+x6VEjwg0rq0grjURX+Z/wz
 Y5cEIlEKtwbDynG051FYsE9DxTLysozTBCecm4YvpaLmZyd9KRbHpHoGW
 v1De5iVsS9iwYuIMo3CUnlMrocnJwoSinTP4znc3/nWprgUgTPOto1gxb w==;
X-CSE-ConnectionGUID: HSuvQdZnQzegbs1UmQncgQ==
X-CSE-MsgGUID: zL0izV/mQZ2mDpy+L6D2VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347772"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347772"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:25:58 -0700
X-CSE-ConnectionGUID: IblyG9ynQuyg3CmMJIf8zw==
X-CSE-MsgGUID: n5WINFEETN66zlLc9198FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732608"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:25:56 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 3/9] drm/i915/lobf: Add debug print for LOBF
Date: Wed,  9 Apr 2025 19:32:52 +0530
Message-Id: <20250409140258.785834-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Lobf is enabled part of ALPM configuration and if has_lobf
is set to true respective bit for LOBF will be set. Add debug
print while setting the bitfield of LOBF.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 41f8b05cc11c..9227bb0b0c55 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -5,6 +5,8 @@
 
 #include <linux/debugfs.h>
 
+#include <drm/drm_print.h>
+
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -353,8 +355,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
-	if (crtc_state->has_lobf)
+	if (crtc_state->has_lobf) {
 		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
+	}
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
-- 
2.29.0

