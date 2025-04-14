Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0D8A87CE6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57EE610E55C;
	Mon, 14 Apr 2025 10:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEN4bt0/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1E610E53C;
 Mon, 14 Apr 2025 10:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625138; x=1776161138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OkIj3AGkyKcPxqyoMFXKYcvhWME4uPG+JXBoVSMwXWs=;
 b=MEN4bt0/Tq454PpjPCWV+dKdMJWxeAtB5DMUs7U7jazP7f+jk8Gtd2NI
 RkWTSEu4c3MR6Z06CblDh0ZhE2VVGWvbdUIrzpMYqLVdOof8jLuKeDGSS
 e7iGe+hhbO+K3dpToI1LEE9KEDeMGXZxC+mD8Av1T2QYTwPV0NQRnMt/p
 qtrgxA1Yyf3ZzXuOWcym1hT3QW4cRnr5EAtzqkT8ivlsB6TDjs0OiaidO
 USuXahAZjKLnMnqZF5uGXGHkCzPtnm8uNVfzten0rM7171gUU/TmEQVr7
 XUes7D/JAjT8d2dzEEbxcSxJGWEg+mMVbopUqq53lsEShOFfnUatg9RAs A==;
X-CSE-ConnectionGUID: CsXbruN7SLG0X/0zdzFBJA==
X-CSE-MsgGUID: QHGeARMgTqmPEYC2AfYkUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789127"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789127"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:38 -0700
X-CSE-ConnectionGUID: +J8JpnBQT122l2ZBb5D6vQ==
X-CSE-MsgGUID: HlK80hGYQ+qwKsYgx2oFxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743214"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of PKG
 C-state exit
Date: Mon, 14 Apr 2025 13:05:05 +0300
Message-ID: <20250414100508.1208774-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

Add interface to control if package C exit starts at the start of the
undelayed vblank. This is needed to implement workaround for underrun on
idle PSR HW issue (Wa_16025596647).

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c65544e48c42..bd50c98c0ee4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -534,6 +534,37 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
 }
 
+/**
+ * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
+ * C-state exit
+ * @display: display instance
+ * @pipe: pipe which register use to block
+ * @enable: enable/disable
+ *
+ * This interface is target for Wa_16025596647 usage. I.e. start the package C
+ * exit at the start of the undelayed vblank
+ */
+void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
+							    enum pipe pipe, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				       DMC_EVT_CTL_EVENT_ID_VBLANK_A);
+	else
+		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				     DMC_EVT_CTL_EVENT_ID_FALSE) |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1);
+
+	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
+		       val);
+}
+
 static bool is_dmc_evt_ctl_reg(struct intel_display *display,
 			       enum intel_dmc_id dmc_id, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 236312fb791c..bd1c459b0075 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -20,6 +20,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
+							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
 void intel_dmc_suspend(struct intel_display *display);
 void intel_dmc_resume(struct intel_display *display);
-- 
2.43.0

