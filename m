Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89BD9A934F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD7410E5BB;
	Mon, 21 Oct 2024 22:28:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8BsGv1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DCE110E5D0;
 Mon, 21 Oct 2024 22:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549703; x=1761085703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7dTzeWI4nHKam/jXJpVZdro8YvAI1D++daqKUumcP7Y=;
 b=N8BsGv1L6Kw9dbBMtsm7HRBmylOcKU56faEwYybP9/s3SuH5d+iRWtNm
 ocm55WF/lQwCi0msmmpbkFN0qsAWhcZAFEBXnwZkAmwsCa8rXnYBdy9r2
 PdOgYmQ43U4RmWZB3hejEKOh5w4b/QB5rEf/LxOO8G9JtivXozz2rRTk/
 d3dtL4EazBhcIQlJhhDYffp1OLv7nVW5TEK6brMCdza1uTmMA2n0Uw+rJ
 RTS8zBRuTdQdPf4xMLcmrbn9xtlIc6rkfMeGuJQ8Gxw3ePSZ/ihff5Byw
 yIauUAc2O3B5kCVtwORslChauetCwgYSchhPO0L/wLhpJf/ctCP1xGCBg A==;
X-CSE-ConnectionGUID: u2U+cnISSomQYYpmEv4zUg==
X-CSE-MsgGUID: TkOtQOufR+Slc3bPGhgwQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934484"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934484"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:23 -0700
X-CSE-ConnectionGUID: oofoO+WJQhmQT5Jr/5Nfrw==
X-CSE-MsgGUID: HUDqctSvS3+KarnfFWQSHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009648"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:21 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 13/13] drm/i915/xe3lpd: Use DMC wakelock by default
Date: Mon, 21 Oct 2024 19:27:32 -0300
Message-ID: <20241021222744.294371-14-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

Although Bspec doesn't explicitly mentions that, as of Xe3_LPD, using
DMC wakelock is the officially recommended way of accessing registers
that would be off during DC5/DC6 and the legacy method (where the DMC
intercepts MMIO to wake up the hardware) is to be avoided.

As such, update the driver to use the DMC wakelock by default starting
with Xe3_LPD. Since the feature is somewhat new to the driver, also
allow disabling it via a module parameter for debugging purposes.

For that, make the existing parameter allow values -1 (per-chip
default), 0 (disabled) and 1 (enabled), similarly to what is done for
other parameters.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 +++++-
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 024de8abcb1a..bf00e5f1f145 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -123,10 +123,10 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
-intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "
 	"(0=disabled, 1=enabled) "
-	"Default: 0");
+	"Default: -1 (use per-chip default)");
 
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index dcb6face936a..5317138e6044 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -47,7 +47,7 @@ struct drm_printer;
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
-	param(bool, enable_dmc_wl, false, 0400) \
+	param(int, enable_dmc_wl, -1, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 55f07f3c9863..f58031811e79 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -258,7 +258,11 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
 static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 {
 	if (!HAS_DMC_WAKELOCK(display))
-		display->params.enable_dmc_wl = false;
+		display->params.enable_dmc_wl = 0;
+	else if (display->params.enable_dmc_wl >= 0)
+		display->params.enable_dmc_wl = !!display->params.enable_dmc_wl;
+	else
+		display->params.enable_dmc_wl = DISPLAY_VER(display) >= 30;
 
 	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
 		    display->params.enable_dmc_wl);
-- 
2.47.0

