Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB162A918BA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:04:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 732D010EA86;
	Thu, 17 Apr 2025 10:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpbPhPC4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05A010EA84;
 Thu, 17 Apr 2025 10:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884292; x=1776420292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gmq5Z+7OXhoDZJElZfP1qkabagScz/OvTk0fdZJ2l7Y=;
 b=OpbPhPC4SbFEk2q7RTC17OigeFIbenMh5aNXluPcDEzx/jra1rEBdlt4
 KHG2DkaQVvBPs8VthZJeHwkSQqfiMaQpkvClYN7+UiqJbL2E+i+qEZOXV
 YcZJaI9vPk/Ja5XHjh0oDl0uWWgasDrf1iKD+xTceMB7Py5m0by5Cp/rH
 YCMin2Gg4pYGNVnOglQS2d9foqZRBwzFdvw0/JlnyunxS3cPDb2IXCvpT
 PCVpjQ+tBgahk6zn5oP2qe81XuWXbP+1RYE8516OGFEliRf19hGT62+dl
 5NqgNY5tXzDtnWCK2Vt1+uKwE1CKbrJroOTBZI/QORwNgwGbKYZX93cDk Q==;
X-CSE-ConnectionGUID: hhkX8uUkTB+uI0faPwwkIA==
X-CSE-MsgGUID: Vz8wit6SQbeC6NipYEQshw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106689"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106689"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:04:52 -0700
X-CSE-ConnectionGUID: mTFrKsrjTqyNopY4PtyfmA==
X-CSE-MsgGUID: k/lBnV2bS0+EOXax5HuzbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745323"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:04:50 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 03/10] drm/i915/lobf: Add debug print for LOBF
Date: Thu, 17 Apr 2025 15:11:16 +0530
Message-Id: <20250417094123.1662424-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
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

