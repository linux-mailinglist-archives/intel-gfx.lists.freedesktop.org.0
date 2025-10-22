Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CCCBFB015
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB0910E70F;
	Wed, 22 Oct 2025 08:56:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b+yeTOmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EDD10E70B;
 Wed, 22 Oct 2025 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123383; x=1792659383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgTgKJSW6mf2YTbPBVRJ2fgT/UZTHt/Ehcl6FMDH+W0=;
 b=b+yeTOmX5oelY2iCY865/c440EHNHsAsVxZFl5P1Ap9vZ5COvsXzhzas
 ZzGhIOYHhaUJbjVQ9rpAPvF1QOq+JXs7pxc7AjCggBe18V7LIvhZUKulf
 /vBMatwCVVmF1FLIsIGylgKkiZBczhuRj0wF2+R/VxcNTwvUlsB70lbeG
 XQr0bzFx9qSnDN2Et/wHrK2Fhv0FNwEfYWFSVA5PiEhRqK/QpKowGKD+y
 tGHMZMJhdtoveTvopEdaUYRnruXPZLmWY3HsIZjNeYD9VPZM2qYY6jaf3
 GRhaVbAZilHBDMagIH+9KhDwfgWD+53Z5oyH7064LSKR5jG9WxiNs7rDg A==;
X-CSE-ConnectionGUID: EGF8yeKRQRucSwF6IMBX4g==
X-CSE-MsgGUID: KEnGVU+TSByQ1t1wfBq2hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473568"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473568"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:22 -0700
X-CSE-ConnectionGUID: Q3wnmGTQT/648O8ToTWyyA==
X-CSE-MsgGUID: hgzwu9tYT0i52i9HeLmP8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461293"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/6] drm/i915/display: Runtime pm wrappers for display parent
 interface
Date: Wed, 22 Oct 2025 11:55:45 +0300
Message-ID: <20251022085548.876150-4-jouni.hogander@intel.com>
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

Implement runtime pm wrappers for i915 driver and add them into display
parent interface.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 77 ++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b295326eb4331..f0f5feaf3ff2c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -739,7 +739,84 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
+static struct intel_runtime_pm *drm_to_rpm(const struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return &i915->runtime_pm;
+}
+
+static struct ref_tracker *intel_rpm_get(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *intel_rpm_get_raw(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_raw(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *intel_rpm_get_if_in_use(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_if_in_use(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *intel_rpm_get_noresume(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_noresume(drm_to_rpm(drm));
+}
+
+static void intel_rpm_put(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put(drm_to_rpm(drm), wakeref);
+}
+
+static void intel_rpm_put_raw(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put_raw(drm_to_rpm(drm), wakeref);
+}
+
+static void intel_rpm_put_unchecked(const struct drm_device *drm)
+{
+	intel_runtime_pm_put_unchecked(drm_to_rpm(drm));
+}
+
+static bool intel_rpm_suspended(const struct drm_device *drm)
+{
+	return intel_runtime_pm_suspended(drm_to_rpm(drm));
+}
+
+static void intel_rpm_assert_held(const struct drm_device *drm)
+{
+	assert_rpm_wakelock_held(drm_to_rpm(drm));
+}
+
+static void intel_rpm_assert_block(const struct drm_device *drm)
+{
+	disable_rpm_wakeref_asserts(drm_to_rpm(drm));
+}
+
+static void intel_rpm_assert_unblock(const struct drm_device *drm)
+{
+	enable_rpm_wakeref_asserts(drm_to_rpm(drm));
+}
+
+static struct intel_display_rpm rpm = {
+	.get = intel_rpm_get,
+	.get_raw = intel_rpm_get_raw,
+	.get_if_in_use = intel_rpm_get_if_in_use,
+	.get_noresume = intel_rpm_get_noresume,
+	.put = intel_rpm_put,
+	.put_raw = intel_rpm_put_raw,
+	.put_unchecked = intel_rpm_put_unchecked,
+	.suspended = intel_rpm_suspended,
+	.assert_held = intel_rpm_assert_held,
+	.assert_block = intel_rpm_assert_block,
+	.assert_unblock = intel_rpm_assert_unblock
+};
+
 static const struct intel_display_parent_interface parent = {
+	.rpm = &rpm,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
-- 
2.43.0

