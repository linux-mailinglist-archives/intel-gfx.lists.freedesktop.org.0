Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95151A01E97
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF2010E57B;
	Mon,  6 Jan 2025 04:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMFso2OB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B796A10E57A;
 Mon,  6 Jan 2025 04:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138192; x=1767674192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZPVK1vzmcmZZmzAeKqc/UAvpowO3tzilP7U3fthSXME=;
 b=gMFso2OBc4HVQHAv+Csna734LAm3/ZL8zuS6OqgPP9OpWFAO6bhOOTL9
 15BUVMzk9uNOVu83sq8YVY0ja3mjLCWpMjlIKLmxNmcmMi4hmcBWWAaQu
 /rLhJOFjlPrKtE8vzSM+lgo0l4PjHRsjrP6GmLzpI+zf91ffiVkb2FGZX
 qDr2LIMf811QPXPSorYkDoJLiLnIRB39rjD3kFvKIAlIvjz3+NLJVldh/
 gzgw28G5Sc0AV35Cn06cyCfMEZgEc9dqZb3+ox47GJjF0UmYufMVAPngV
 V3LU5cYsOQfoIwgKF8VaocDmLYencNEU9b+SmsrGCFX0sJDtz8wR8Wx/i w==;
X-CSE-ConnectionGUID: DRGZgiJjQU2qkjk8iXFqIA==
X-CSE-MsgGUID: kLjT15qXSSGYmi1vqslo5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880606"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880606"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:32 -0800
X-CSE-ConnectionGUID: 50D4DThjQx6HSBLT3ZajFQ==
X-CSE-MsgGUID: ydSX7roeQtm7hNlTNW30Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306403"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:30 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 6/6] drm/i915/lobf: Add debug print for LOBF
Date: Mon,  6 Jan 2025 09:45:16 +0530
Message-Id: <20250106041516.924101-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250106041516.924101-1-animesh.manna@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
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

Lobf is enabled part of ALPM configuration and if has_lobf
is set to true respective bit for LOBF will be set. Add debug
print while setting the bitfield of LOBF.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index ab98b48ec47e..0ddb103ba43a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -376,8 +376,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
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

