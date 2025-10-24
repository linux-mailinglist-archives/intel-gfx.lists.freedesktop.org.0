Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5C4C05593
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DD910EA13;
	Fri, 24 Oct 2025 09:31:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lF8vE9CJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B5F10EA13;
 Fri, 24 Oct 2025 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298303; x=1792834303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0wG0sPddA7faNBPhxOZPio6gi1uCLN5KK3UOY7Aeug0=;
 b=lF8vE9CJKzgSpMRhsEp19ZQUkCDg19WvRGmWEbAdr4aJyTdu+UiZifGM
 b6LKm8qThZ90/2337oba9LYkfuAzfh1EcIG8BsJoRDINfgrjRJIWElYiD
 EapRUeV/2pJE7Tm8f5qiJ9/r6ern/kVgPcGPg102GxlBZddfBBOx+nCZ1
 SHUC69+Fcafsp+WCcn87fkFtchbrRKb2IRwCRQa92OzFMgf3zOferGWRC
 +wS2AxQ6/bXIV9CD02nEqRLNPmuSj3DGyQZIq8HE+a74SoqtgCqJpNtdI
 7rjblsXKeF6FX+X9dYYW9p20PYk3VeUJRT98g5jO/SBp7va7JvuBz/y8h w==;
X-CSE-ConnectionGUID: 9wP1j/yUT6SZpFst+wIbfw==
X-CSE-MsgGUID: 0MIEP0XdT7SYm0fWOjN4iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63384367"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63384367"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:42 -0700
X-CSE-ConnectionGUID: gPjgDLiwQxWHpQ0e3jIS0w==
X-CSE-MsgGUID: eDqBRqvBRJerTRhkYe5i4Q==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/6] drm/xe/display: Use display parent interface for xe
 runtime pm
Date: Fri, 24 Oct 2025 12:31:13 +0300
Message-ID: <20251024093113.1119070-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251024093113.1119070-1-jouni.hogander@intel.com>
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
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

Start using display parent interface for xe runtime pm.

v2: keep xe_display_rpm.c

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/Makefile                 |  1 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 65 ---------------------
 2 files changed, 1 insertion(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 82c6b3d296769..a39caed9f3d35 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -256,6 +256,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power.o \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
+	i915-display/intel_display_rpm.o \
 	i915-display/intel_display_trace.o \
 	i915-display/intel_display_wa.o \
 	i915-display/intel_dkl_phy.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 72a351e26a008..977f1dafdde07 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -9,71 +9,6 @@
 #include "xe_device_types.h"
 #include "xe_pm.h"
 
-static struct xe_device *display_to_xe(struct intel_display *display)
-{
-	return to_xe_device(display->drm);
-}
-
-struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
-{
-	return intel_display_rpm_get(display);
-}
-
-void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
-{
-	intel_display_rpm_put(display, wakeref);
-}
-
-struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
-{
-	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
-{
-	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
-{
-	xe_pm_runtime_get_noresume(display_to_xe(display));
-
-	return INTEL_WAKEREF_DEF;
-}
-
-void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
-{
-	if (wakeref)
-		xe_pm_runtime_put(display_to_xe(display));
-}
-
-void intel_display_rpm_put_unchecked(struct intel_display *display)
-{
-	xe_pm_runtime_put(display_to_xe(display));
-}
-
-bool intel_display_rpm_suspended(struct intel_display *display)
-{
-	struct xe_device *xe = display_to_xe(display);
-
-	return pm_runtime_suspended(xe->drm.dev);
-}
-
-void assert_display_rpm_held(struct intel_display *display)
-{
-	/* FIXME */
-}
-
-void intel_display_rpm_assert_block(struct intel_display *display)
-{
-	/* FIXME */
-}
-
-void intel_display_rpm_assert_unblock(struct intel_display *display)
-{
-	/* FIXME */
-}
-
 static struct ref_tracker *xe_display_rpm_get(const struct drm_device *drm)
 {
 	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
-- 
2.43.0

