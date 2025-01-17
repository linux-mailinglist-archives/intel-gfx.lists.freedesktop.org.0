Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51355A1595F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EF910EB82;
	Fri, 17 Jan 2025 22:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XdXdILFR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2E910E3DF;
 Fri, 17 Jan 2025 22:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151693; x=1768687693;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+XitAGzD7ZfHvHECGdmDO3EAnaQDKDrN5N55vx5WVxM=;
 b=XdXdILFR45vnTSqYZEOPcfhYSYzSy2ilR7+oJwMPaZs0orRmsyFdCKo7
 56FduFSl7On7xW8YjDVqdJtP3Ojor4ebhwyqlVLSTh/5zSTzC1QRfd+ID
 BJ1IbXzJX8xi6tXjUs0W/wb6dDbubHDlV8G6X5RzTqjqcbYkcmjpwuDG8
 XJAJwFBdAdiIosAU+U9TGHLchN1hVmlLWxgx7KMR5iOhki6OLPBpmZRWw
 AwueZ1N1cKipKtpwDAEsxeso4zEImF8wF5G2To3qkg7YqrSBdYM2LK4pF
 JodTmafZ69RUK2XAle3gEeKd3m6IAFPPBxHcMAZcPrtY98/Epm2JapHMN Q==;
X-CSE-ConnectionGUID: xPb5sM3+ShKEMf8ZuLVd3g==
X-CSE-MsgGUID: EBTasK0hQOKpiN0rmsLreQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48188800"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48188800"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:13 -0800
X-CSE-ConnectionGUID: xDea00VSSymh6bhoxLQBBA==
X-CSE-MsgGUID: r2G/+NnKTh6qBFzfk5CBOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110915388"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:13 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
Date: Fri, 17 Jan 2025 19:06:55 -0300
Message-ID: <20250117220747.87927-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250117220747.87927-1-gustavo.sousa@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
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

We use a spinlock to protect DMC wakelock debugfs data, since it is also
accessed by the core DMC wakelock logic. Taking the spinlock when the
debugfs is not in use introduces a small but unnecessary penalty.

Since the debugfs functionality is only expected to be used for, uh,
debugging sessions, let's protect it behind a module parameter
enable_dmc_wl_debugfs. That way, we only take the lock if the feature
was enabled in the first place.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/i915/display/intel_display_params.c  |  5 +++++
 .../gpu/drm/i915/display/intel_display_params.h  |  1 +
 .../gpu/drm/i915/display/intel_dmc_wl_debugfs.c  | 16 +++++++++++++++-
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index c4f1ab43fc0c..bc36d1b0ef87 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -133,6 +133,11 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
 	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
 	"Default: -1");
 
+intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
+	"Enable DMC wakelock debugfs"
+	"(0=disabled, 1=enabled) "
+	"Default: 0");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 5317138e6044..cb7dc1bc6846 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -48,6 +48,7 @@ struct drm_printer;
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, enable_dmc_wl, -1, 0400) \
+	param(bool, enable_dmc_wl_debugfs, false, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
index 1493d296ac98..f4e4c7a5a730 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
@@ -37,6 +37,9 @@
  * which exports a buffer of untracked register offsets and also allows extra
  * register offsets to be tracked by the driver.
  *
+ * The debugfs directory is only exported if the module parameter
+ * enable_dmc_wl_debugfs=1 is passed.
+ *
  * Untracked offsets
  * -----------------
  *
@@ -411,6 +414,9 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
 {
 	struct dentry *dir;
 
+	if (!display->params.enable_dmc_wl_debugfs)
+		return;
+
 	if (!HAS_DMC_WAKELOCK(display))
 		return;
 
@@ -453,6 +459,9 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
 	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
 	unsigned long flags;
 
+	if (!display->params.enable_dmc_wl_debugfs)
+		return;
+
 	spin_lock_irqsave(&dbg->lock, flags);
 
 	if (!dbg->untracked.size)
@@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
 bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
 {
 	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
-	bool ret = false;
+	bool ret;
 	unsigned long flags;
 
+	if (!display->params.enable_dmc_wl_debugfs)
+		return false;
+
+	ret = false;
+
 	spin_lock_irqsave(&dbg->lock, flags);
 
 	if (!dbg->extra_ranges)
-- 
2.48.0

