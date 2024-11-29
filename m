Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E809DEB32
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD28210E533;
	Fri, 29 Nov 2024 16:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8jDLVco";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DF510E533;
 Fri, 29 Nov 2024 16:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732898429; x=1764434429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oLU8kPIBL1v5Utt5EyvERDCCOVpgsEArKmvb7b2WzkE=;
 b=Y8jDLVcorEwYAF15A9p9YxGL2XVhpJnjJMKGkjkipK6D7vJGt4UuwKug
 Ns0MRsG/I9u2ZEmnocL8P9Ez+mxVk3dkP58spkIR/GAli8/3+MEmnB9cU
 AE4NDEso/XjpwkjbLX/CHxlNIRYOXXs6CtgOI82UEsoBW4ouQPDGAZ0iw
 clpRryZd0Sln1Rlwf/Tw6aGRf3Lqkr6kUnmTpbZX+/GrpMK24zn1OaBZE
 cFWRit+8PyFMjZ3p5i3Y61IlQlp8eBsuOi08XiIKhYhaY58Dxi8xkSkzI
 8cash3gYSjVLFkp8B5StLiOr1XcwJFNOEoPQ5LHpdGwTEEmGMv5g0V4dl g==;
X-CSE-ConnectionGUID: tEpp5FGhSgmto8EzkMYzmQ==
X-CSE-MsgGUID: 1R92KOCxQxyUXTrEsVis8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33291176"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33291176"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:28 -0800
X-CSE-ConnectionGUID: cqwgKf7jQt2Xp0ZdsfhtEQ==
X-CSE-MsgGUID: /1FbiiEpQnydExpb/B5NPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="96956936"
Received: from eamartin-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.90])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:27 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
Date: Fri, 29 Nov 2024 13:37:55 -0300
Message-ID: <20241129164010.29887-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241129164010.29887-1-gustavo.sousa@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
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

The current behavior for the runtime suspend case is that
xe_display_pm_suspend_late() is only called when D3cold is allowed.
Let's incorporate that behavior into a function specific to runtime PM
and call it xe_display_pm_runtime_suspend_late().

With that, we keep stuff a bit more self-contained and allow having a
place for adding more "late display runtime suspend"-related logic that
isn't dependent on the "D3cold allowed" state.

v2:
  - Fix typo in that caused xe_display_pm_runtime_suspend_late() to call
    itself instead of xe_display_pm_suspend_late().
  - Add the empty version of xe_display_pm_runtime_suspend_late() for
    the !CONFIG_DRM_XE_DISPLAY case.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
 drivers/gpu/drm/xe/display/xe_display.h | 2 ++
 drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 69c828f38cb6..739db5b7b01f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe, s2idle);
 }
 
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		xe_display_pm_suspend_late(xe);
+}
+
 void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee5..233f81a26c25 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
 #else
@@ -74,6 +75,7 @@ static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
 static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
+static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
 
 #endif /* CONFIG_DRM_XE_DISPLAY */
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 80699dbeb2e9..a6761cb769b2 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
-	if (xe->d3cold.allowed)
-		xe_display_pm_suspend_late(xe);
+	xe_display_pm_runtime_suspend_late(xe);
+
 out:
 	if (err)
 		xe_display_pm_runtime_resume(xe);
-- 
2.47.0

