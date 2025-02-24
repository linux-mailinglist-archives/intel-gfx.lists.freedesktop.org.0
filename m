Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158D7A4218F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBEA10E558;
	Mon, 24 Feb 2025 13:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktxvPe6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF91810E16F;
 Mon, 24 Feb 2025 08:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385874; x=1771921874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UlkRCrN9IheONt4pYGPJHfBHAYUBqH9VFTpklJkAb7c=;
 b=ktxvPe6asSDQg3JU/NVwIHWQPAUtEsIGJbOKyOc15Q2JgD502f2w/7pp
 sbC2xLeNQvSQOAib3ALxHAB16hV91KCn3K0bKIySa6XYsOncZDTP/3ByJ
 CxAS3jxh6244U7HFdwTCVfJnLGHwbc36sKs9r8yu+x+xuO0W0uVNZDs75
 qewqsv+HQltX0jKgqK1GsShOryAwMVLewYvWlCJb6lcS55H+drtFk6xdi
 AhAOrGoOqRLjLcWiGXC7wps/yaP8nVVBC5s8VO0jLNhptMdPuFp2XK7Uu
 /r3xtokbLiu222t4Qoi0VvWC00vGVmqmCZeSKFcETBr19qfirXzhn0DIH A==;
X-CSE-ConnectionGUID: iPv+K4gnRTiWioYamHnrlw==
X-CSE-MsgGUID: Od/NKM/OQI6DwzD1RYHTZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250289"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250289"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:31:14 -0800
X-CSE-ConnectionGUID: 91NGtzrGQZ+z7wz1NcLQyw==
X-CSE-MsgGUID: IpnHmNEDTjmXJpd0hjkGPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630834"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:31:12 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 8/8] drm/i915/lobf: Add debug print for LOBF
Date: Mon, 24 Feb 2025 13:38:47 +0530
Message-Id: <20250224080847.326350-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
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
index 5f8c1ec5e21c..cbcee0599e9d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -385,8 +385,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
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

