Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F34B1CA1B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B26E10E7B9;
	Wed,  6 Aug 2025 16:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpT+uS2s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0402710E7BC;
 Wed,  6 Aug 2025 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499369; x=1786035369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KD3KcmgP9iGlyH1iFibo+9IIHY5FpT2KlI1nlHV1H78=;
 b=DpT+uS2srTCxJIGoy5adnG7HeXfF4DAgnErhQT546XbgTvUjs3UAnpUG
 EysLQeTOue0SRN4EhKHhj1vsoU6gxCpLAlbUr4bpK7wHmGBeCHDRkqJTm
 7ceQKBVeCP/a7t6FztJwYSCqEcaBdMsGQT9KCRGU6GlwsahZvw8aG6dg/
 pMtGtqfD8co3tlQ7g4zU80Vk0/MURf1r5teQTo043+VN77OLjZy3AJlnG
 1bP3tue4qZbJcfcoFIbD7B1B2JOAAQxl4bZDFqEgzf27q/rpCM4EY7gEQ
 2T49UNzJ6e1m4zenG+CxBYMlveK8q7i4Iw26ViW/LKbO5jYfMdwdrgq1A w==;
X-CSE-ConnectionGUID: sMaIKFeJSQCXExRR0yEO1w==
X-CSE-MsgGUID: 8eFWJ5nqQl+/Hs17rRMlKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60455980"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60455980"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:09 -0700
X-CSE-ConnectionGUID: vN66vio0Tem3FHoJ6fAEKw==
X-CSE-MsgGUID: zXWFHFo0Q7itZm1t7RDqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164803"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/15] drm/i915/switcheroo: pass display to HAS_DISPLAY()
Date: Wed,  6 Aug 2025 19:55:11 +0300
Message-Id: <c9828991eb8870c45271141bf0912880a3a65c44.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Underneath, HAS_DISPLAY() really expects a struct intel_display. Switch
to it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_switcheroo.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index 4c02a04be681..231d27497706 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -15,13 +15,14 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 				      enum vga_switcheroo_state state)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct intel_display *display = i915->display;
 	pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
 
 	if (!i915) {
 		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
 		return;
 	}
-	if (!HAS_DISPLAY(i915)) {
+	if (!HAS_DISPLAY(display)) {
 		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
 		return;
 	}
@@ -44,13 +45,14 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct intel_display *display = i915->display;
 
 	/*
 	 * FIXME: open_count is protected by drm_global_mutex but that would lead to
 	 * locking inversion with the driver load path. And the access here is
 	 * completely racy anyway. So don't bother with locking for now.
 	 */
-	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
+	return i915 && HAS_DISPLAY(display) && atomic_read(&i915->drm.open_count) == 0;
 }
 
 static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
-- 
2.39.5

