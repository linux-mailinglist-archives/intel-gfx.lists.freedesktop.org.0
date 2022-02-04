Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F47F4A9D73
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 18:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A4F10EC82;
	Fri,  4 Feb 2022 17:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439D010EC82
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 17:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643994674; x=1675530674;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PX9yP1aAfy9Qpbzr8hZc/z5DsuhQvjnQib29tAK5pos=;
 b=lOb/L/ds9vHcDGvpB/5Taegvye6WGQOJxcTPlFJ7NsRqIQgJm1foio1m
 aWWsVsN51WlfPNHVEY0KmMgnS5JuQ/MeWFHH3ejxS8S6gFwwfWrkBWtNT
 g+NMvZuLSKmXT7SutnePCphGbsdQptOhwU90KvyxFvLXrV56Lyaxj5UCG
 HjjCqIom21Hbyy1yeKco1HSVg0cozf+Npn0RvZIhvEieIeKA+Rpf57ibj
 PNFaBlxgF8OqzRGKZaH/2+hFakVL3Yn5prOTY1gUPdSeDLBCEuJfYoF1e
 5uikHhDePFjhqW/kSMbz0B427XpSPg9otSCLpxqIhzgA/sN8rC1B3Fvvc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="247235062"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="247235062"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:10:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="535589034"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 04 Feb 2022 09:10:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 19:10:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 19:10:53 +0200
Message-Id: <20220204171053.18409-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Disable runtime pm wakeref
 tracking for the mock device
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

commit c50df701d49e ("drm/i915: Enable rpm wakeref tracking
whether runtime pm is enabled or not") enabled wakeref tracking
even for the mock device. Turns out that has somewhat significant
overhead, and on the glacial Core m3's we have in CI the vma
selftests are now exceeding the allotted time budget.

So let's disable the wakeref tracking once again for the mock
device in order to avoid blowing up the selftest runtime.

Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c          | 3 +++
 drivers/gpu/drm/i915/intel_runtime_pm.h          | 1 +
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 3293ac71bcf8..6ed5786bcd29 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -77,6 +77,9 @@ track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 	depot_stack_handle_t stack, *stacks;
 	unsigned long flags;
 
+	if (rpm->no_wakeref_tracking)
+		return -1;
+
 	stack = __save_depot_stack();
 	if (!stack)
 		return -1;
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 47a85fab4130..d9160e3ff4af 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -51,6 +51,7 @@ struct intel_runtime_pm {
 	bool available;
 	bool suspended;
 	bool irqs_enabled;
+	bool no_wakeref_tracking;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	/*
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 28a0f054009a..573d9b2e1a4a 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -161,6 +161,8 @@ struct drm_i915_private *mock_gem_device(void)
 	i915_params_copy(&i915->params, &i915_modparams);
 
 	intel_runtime_pm_init_early(&i915->runtime_pm);
+	/* wakeref tracking has significant overhead */
+	i915->runtime_pm.no_wakeref_tracking = true;
 
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
-- 
2.34.1

