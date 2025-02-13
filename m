Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F76A3382D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B271810EA0C;
	Thu, 13 Feb 2025 06:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8twmox/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F58D10EA17;
 Thu, 13 Feb 2025 06:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429312; x=1770965312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y1G/9/+uZIzPRvfZp3Ga+WMyNY8c8ejIjZHnvV3TUFs=;
 b=h8twmox/Zmu/3r21K/28H4tiRQjQyucQ47DBCN9bc27HkKuSdvnsMSdA
 UE65TnJZ/91U/FotHilYWVRurktX/eIUbQRksXiUn8xRRrV5EjqmhXXmC
 iq/x/cdFPYuz15ljdoAAesskdbG+k5O0VIupvn6hVI1SuJZTErbWOyS8s
 JHTm7ooQhRk7LS1ufJ/QWyqeZ1etZBIzrdExbBbtpmQkkESY+lZspc0GZ
 xxKzlRE5GrDAhXfdRoORH62KyFylUp4/JTtQ6zbj379WbxRlbVAbyX3RC
 Wau3QglsyLFffP9adMzuKDVDKztW1MtxPSLgRb8C/ruz/AniK2009SSIi w==;
X-CSE-ConnectionGUID: DWY7gdvXTLaciF44SHpNGQ==
X-CSE-MsgGUID: hcp7Xn5KQFas/j4dKVky6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764114"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764114"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:32 -0800
X-CSE-ConnectionGUID: aTp4Rw/ZRiGlIELa0k6pNA==
X-CSE-MsgGUID: tm4voqUWQmiJY7WUuC2tyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237269"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:29 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v8 09/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Thu, 13 Feb 2025 08:48:00 +0200
Message-ID: <20250213064804.2077127-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
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

We have different approach on how flip is considered being complete. We are
waiting for vblank on DSB and generate interrupt when it happens and this
interrupt is considered as indication of completion -> we definitely do not
want to skip vblank wait.

Also not skipping scanline wait shouldn't cause any problems if we are in
DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
we are not in DEEP_SLEEP evasion works same way as without PSR.

v2: add comment explaining why we are not setting DSB_SKIP_WAITS_EN

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index db69b1c676f7..4c067bf9ac4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -170,17 +170,26 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
+/*
+ * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
+ * different from what is explained in Bspec on how flip is considered being
+ * complete. We are waiting for vblank in DSB and generate interrupt when it
+ * happens and this interrupt is considered as indication of completion -> we
+ * definitely do not want to skip vblank wait. We also have concern what comes
+ * to skipping vblank evasion. I.e. arming registers are latched before we have
+ * managed writing them. Due to these reasons we are not setting
+ * DSB_SKIP_WAITS_EN.
+ */
 static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return DSB_SKIP_WAITS_EN;
+		return 0;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

