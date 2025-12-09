Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CDBCAFC6B
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A0F10E52A;
	Tue,  9 Dec 2025 11:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWbgjrid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E2D10E522;
 Tue,  9 Dec 2025 11:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279867; x=1796815867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mgay7rRW+fc0FrC1/3uOElVcBVF9hBKt1tDQE/a/dP4=;
 b=kWbgjridfmo8oFljGSf/DXTj45LEgA5hNbsFIesdnGLOJlITVpUpmA6M
 eb026C1WLj8SczfH6aBmScr0m8wQiDjiyLn02SS7F2eyeJ4KuLBWa+aES
 /0gqIh3OWn/Pav+VQnKia6AUGtHdLdwDv55TORGzoXaIzTIbgLp9aXIeF
 YSLZXzNF0dGtpKO/F+MS+29r5rh6FZngMhzkGb4q2AJfIxolj2Feu1uzJ
 ujCgYKUQPTPkQv/Lk3tlprCmbY8kKqTYwsahSE8pBwkzQD681D6GWTNOB
 uT74RRfH9To28WB36cJSaLvH7fSSMLbbc0GYd3mzvxjpA5C5scJ6M1QUw A==;
X-CSE-ConnectionGUID: MNO/CwsgTj+MfzfafdXWDQ==
X-CSE-MsgGUID: b4HgUJ57S3WO2/iyac3SBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699673"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699673"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:07 -0800
X-CSE-ConnectionGUID: 3W3v1n+rSyWFPiW7RigptQ==
X-CSE-MsgGUID: 6PnZmVn4RUKmdNpNU3x01A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213472"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:06 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 8/9] drm/i915/display: Add intel_dc3co_can_enable() helper
Date: Tue,  9 Dec 2025 17:03:31 +0530
Message-ID: <20251209113332.2770263-9-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
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

Introduce a new helper that validates whether DC3CO can be enabled
based on both allow  and source.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c     |  2 +-
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b14a1c9f80bd..9f9ba58371ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6295,6 +6295,15 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
+bool intel_dc3co_can_enable(struct intel_display *display)
+{
+	/*
+	 * ToDo - Check CMTG enabled
+	 * ToDo - Check flipq enabled
+	 */
+	return (display->power.dc3co_allow && display->power.dc3co_source);
+}
+
 bool intel_dc3co_allowed(struct intel_display *display)
 {
 	return display->power.dc3co_allow;
@@ -7683,7 +7692,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
 	}
-	if (intel_dc3co_allowed(display))
+	if (intel_dc3co_can_enable(display))
 		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
 	else
 		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 87bbf1f66209..f704cce4f1d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -564,4 +564,5 @@ int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 bool intel_dc3co_allowed(struct intel_display *display);
 void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source);
 void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source);
+bool intel_dc3co_can_enable(struct intel_display *display);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d4c5dc6dcc82..18bf45455ea2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3909,7 +3909,7 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		return;
 	}
 
-	if (intel_dc3co_allowed(display))
+	if (intel_dc3co_can_enable(display))
 		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC3CO);
 	else
-- 
2.43.0

