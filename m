Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EDABFB018
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EA310E710;
	Wed, 22 Oct 2025 08:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dmHNsIvd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D97010E70F;
 Wed, 22 Oct 2025 08:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123384; x=1792659384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CUBafvWhFGiJza9nBFPr7jR44dQfQAd/+6l6dWWFqrU=;
 b=dmHNsIvdZkcbibjKgahmF3pdK2azsuGBhQL6GS5hN62M7TacbTb/dYwt
 U7WaEICvkvAC/b3yuPNyCivwFVGuz4MJQ3cPnXo9WxG/82soM0MdfKK7l
 5tKxx4ZojhpH6MghcxEK6J7uTIthU/YKcwZ71icWBWsRzzmApVQdUwD6i
 tFXoFpaKnPl6KaEZILwzkcHvn/C4fZagiPUO6XzplFycmTWCvcqranznM
 TrpqArD1OgwtYOisIrKoj0UepvKikrTIJjrhk/CfqoZrkT8MzREJVpreM
 DVaHIZ5TcCeA2kjWDykxE/WJIflnWiSrCaI3CrxRcYVYShB/vtKCY/dfa Q==;
X-CSE-ConnectionGUID: nyBD+QJVT5SdOPJIRmSxaA==
X-CSE-MsgGUID: vBifeANyRj6ePIQWQXw9Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473569"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473569"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:24 -0700
X-CSE-ConnectionGUID: BGMclEgdSii8HxzfpX3Nnw==
X-CSE-MsgGUID: CbIJo3mDTgK62XsYoFxfhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461300"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/6] drm/xe/display: Runtime pm wrappers for display parent
 interface
Date: Wed, 22 Oct 2025 11:55:46 +0300
Message-ID: <20251022085548.876150-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022085548.876150-1-jouni.hogander@intel.com>
References: <20251022085548.876150-1-jouni.hogander@intel.com>
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

Implement runtime pm wrappers for xe driver and add them into display
parent interface.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 76 +++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0e38c96eb6def..8b2b0c5b398db 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -36,6 +36,7 @@
 #include "intel_opregion.h"
 #include "skl_watermark.h"
 #include "xe_module.h"
+#include "xe_pm.h"
 
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
@@ -515,7 +516,82 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 	intel_display_device_remove(display);
 }
 
+static struct ref_tracker *xe_rpm_get(const struct drm_device *drm)
+{
+	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+static struct ref_tracker *xe_rpm_get_raw(const struct drm_device *drm)
+{
+	return xe_rpm_get(drm);
+}
+
+static struct ref_tracker *xe_rpm_get_if_in_use(const struct drm_device *drm)
+{
+	return xe_pm_runtime_get_if_in_use(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+static struct ref_tracker *xe_rpm_get_noresume(const struct drm_device *drm)
+{
+	xe_pm_runtime_get_noresume(to_xe_device(drm));
+
+	return INTEL_WAKEREF_DEF;
+}
+
+static void xe_rpm_put(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	if (wakeref)
+		xe_pm_runtime_put(to_xe_device(drm));
+}
+
+static void xe_rpm_put_raw(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	xe_rpm_put(drm, wakeref);
+}
+
+static void xe_rpm_put_unchecked(const struct drm_device *drm)
+{
+	xe_pm_runtime_put(to_xe_device(drm));
+}
+
+static bool xe_rpm_suspended(const struct drm_device *drm)
+{
+	struct xe_device *xe = to_xe_device(drm);
+
+	return pm_runtime_suspended(xe->drm.dev);
+}
+
+static void xe_rpm_assert_held(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+static void xe_rpm_assert_block(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+static void xe_rpm_assert_unblock(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+static struct intel_display_rpm rpm = {
+	.get = xe_rpm_get,
+	.get_raw = xe_rpm_get_raw,
+	.get_if_in_use = xe_rpm_get_if_in_use,
+	.get_noresume = xe_rpm_get_noresume,
+	.put = xe_rpm_put,
+	.put_raw = xe_rpm_put_raw,
+	.put_unchecked = xe_rpm_put_unchecked,
+	.suspended = xe_rpm_suspended,
+	.assert_held = xe_rpm_assert_held,
+	.assert_block = xe_rpm_assert_block,
+	.assert_unblock = xe_rpm_assert_unblock
+};
+
 static const struct intel_display_parent_interface parent = {
+	.rpm = &rpm,
 };
 
 /**
-- 
2.43.0

