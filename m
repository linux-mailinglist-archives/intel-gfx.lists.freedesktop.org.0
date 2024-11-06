Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41F49BF8BA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B4110E792;
	Wed,  6 Nov 2024 21:53:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eobKuP8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D598A10E78E;
 Wed,  6 Nov 2024 21:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929992; x=1762465992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hn89fQfb9N7o+Fl8j5r/A9QDFZbDdzoMai6eFKGdxao=;
 b=eobKuP8UAgoXBi0g2G9r5QooBL/uPlYV0unwA1NbW7ramCkVaSMLspep
 H12+0qhzqSVC7u3pyyRABpIOs3xx3DgnlPFPXgCvRlscNKxyX6u69+jLA
 CPpK3PwhCRwVy10uu7Cgng5AmtD3M0dFXWOwtP3cv62H+yHlVGCmZS3Tt
 WDn0SGWK3jAEE/9wtv5Gf3RV3FI/muK4LY1BZ0sIT6wUdceeK8ORBmA1D
 lPJ3RMgEFyWWTcw+O6iPJasb0Vw4l4h586TaIU7WQZ4V8E4E033gYkstz
 Q7dyVbjwsX6zCZK2MMWbxS75vg2I/G5Zg4QgLlXxdkIHS83WGr9SXOdAO w==;
X-CSE-ConnectionGUID: J0oz5W1fR86ClOdkXNzvyg==
X-CSE-MsgGUID: Dy6iyyvST2SuSac5VAesuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212216"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212216"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:10 -0800
X-CSE-ConnectionGUID: ZHxqlZpVSimr96C+3X7ByA==
X-CSE-MsgGUID: 92R6jRlXTY+zoMMVpmQh+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882526"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 17/17] drm/i915/xe3lpd: Use DMC wakelock by default
Date: Wed,  6 Nov 2024 18:50:43 -0300
Message-ID: <20241106215231.103474-18-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

v2:
  - Describe -1 in the same area where 0 and 1 are described. (Luca)

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 +++++-
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 024de8abcb1a..dc666aefa362 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -123,10 +123,10 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
-intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"Enable DMC wakelock "
-	"(0=disabled, 1=enabled) "
-	"Default: 0");
+	"(-1=use per-chip default, 0=disabled, 1=enabled) "
+	"Default: -1");
 
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
index c164ac6e1ada..853d75610489 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -270,7 +270,11 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
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

