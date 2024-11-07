Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E339C0DD1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84FC510E8CE;
	Thu,  7 Nov 2024 18:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ck1nwgx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E5310E8C9;
 Thu,  7 Nov 2024 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004212; x=1762540212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/YDw7bserfbA3bZ3LZC4n+kH5Ud8Itw8GKbHAvo0Ar4=;
 b=Ck1nwgx3lmK+lkwflzdYyeeWXGF5Lt3fsU8WdlEYfmorHMd0E+fU2IEU
 usH//3EDbm98nE3mBLl1blLLjGPwMqLO9nU1e+tRYhIbGdsAoYYzGeUPI
 KlzHxRLXXl5n2AQ7ywN+7/B5eRYwSqub0uax8q0YdNaOvzE5DPF1DbBXh
 av+C3gC7rA1PLlzN057sUfUwahkTabRWeYtM+CpRbr/qCqHvuqp+d3s3H
 Dq3zmkpNQ3N3bLA5BWv4kcn2JC+ZwIMoN8EInaZy3DTNGYeIJSzpdU542
 74SxFi7ozwbe+wvjJ8Rz9RwkGyJC8o3T8maKtjS6h/6hHWXr5YP2EL+n0 g==;
X-CSE-ConnectionGUID: 7Fam+74dSqumTLAjvir5rw==
X-CSE-MsgGUID: wkP1xtG1Spul2RJ4bNKvPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494914"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494914"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:11 -0800
X-CSE-ConnectionGUID: wyLX1NfbSUGyuUMz3ZOgRg==
X-CSE-MsgGUID: LqyaZFYaTYKmRRzHBJjcvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329745"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 18/18] drm/i915/xe3lpd: Use DMC wakelock by default
Date: Thu,  7 Nov 2024 15:27:23 -0300
Message-ID: <20241107182921.102193-19-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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
index aae5ea0c72ff..e43077453a99 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -275,7 +275,11 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
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

