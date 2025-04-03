Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A38A7A074
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBA910E986;
	Thu,  3 Apr 2025 09:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj1vLOkp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980DB10E986;
 Thu,  3 Apr 2025 09:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673874; x=1775209874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O4cWMK5jibsRe1pGbQ1FafzsLZE5xROyWd2+jfKoklk=;
 b=Zj1vLOkp0MUx5xRNWAlagAUZZvgb62bSAlM94n8EymMplVFwWnirXX6v
 pmAMYoB3yoBOZD0Hkn21L2fUpxL1i+4wm7kUDGjLC4MJnb57PTRVIEcgm
 jxVGAEEJGVhNeD1cJT0+QPkEMy2RGmdd7LYz0T9Ius6Ek1BY5ydMVfKQe
 dif+h0HMh9ANDAdxmwjoCLmKm+gvmd10XB2tMNfpUtMUkjbTiDVGRJ3Fa
 s/KmNAjPTTjfOqOXWs7zsdGNeqoR4KOAf63GAFfTTCTcW3qoRzibqm9Fw
 cG6JxejcDjAs7Yv4vlDnQYBOBcEq8S8lErh26MBpAHscDlY9MP9Lgo8dA g==;
X-CSE-ConnectionGUID: oeUBDIbqT2SctD+egjeVpQ==
X-CSE-MsgGUID: VMjbzVwYR5K715JNJUttYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196632"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196632"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:14 -0700
X-CSE-ConnectionGUID: beN3PE+KQlq1EHJWONIfyg==
X-CSE-MsgGUID: jqOrrUpISmKNVHybTJwXQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463707"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Date: Thu,  3 Apr 2025 14:58:19 +0530
Message-Id: <20250403092825.484347-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 354510bb437d..5293cbd02988 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -353,8 +353,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
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

