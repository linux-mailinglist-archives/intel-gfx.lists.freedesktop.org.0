Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E8F95BB4E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBEE10EB49;
	Thu, 22 Aug 2024 16:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G72WdfBj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D69010EB42;
 Thu, 22 Aug 2024 16:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342711; x=1755878711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ALdz3AVB8ctyu0tdLmM0qlCByAkaXpDGC4bNuasRf0=;
 b=G72WdfBjmJRgUviFO87cRbJ4Mr05A9KQuzE370v+KoKKaL26QSAoBTSG
 fYtBkxsFWluAhGBI3Mk/aNayIZn8ltOLThTQ5KH4PkO6qJ9EV/0mDL/f0
 vSivzDWx0fvmBdQsAJTSkrgVnBUjorwRPzafUBzNPKomfgY3dUVVKl2Yh
 hw4a2eep1tNZBMT86XsIinpQ+DfQa8H8yHmo0rV6Oj2YgtI/L1ids5EVR
 oNcuWfx5mZMbjgYKbYRu3Gi/HxPXjUzIny1K/kBDy97/OeV/hGeRWWD2g
 6JoGEAhJ6PzuQ5n+XfLw8to8q3gzPv22wVkSVUNsWOg+Zcgp7s+mdg/8j Q==;
X-CSE-ConnectionGUID: hKfos2ulQ46iZ5cQ7pFz3A==
X-CSE-MsgGUID: eyfs1QbGS7ODOjsBACy+bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953041"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953041"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:11 -0700
X-CSE-ConnectionGUID: uGFy+1+xSQ6IuhWJJRomyw==
X-CSE-MsgGUID: /6BJbtpSSj6Obhb64K1GMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169319"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/7] drm/i915/vblank: fix context imbalance warnings
Date: Thu, 22 Aug 2024 19:04:50 +0300
Message-Id: <111de5bee15f408de65b19ece4b68a7ac66b30cf.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
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

When building for xe, we get the context imbalance warning as the actual
locking/unlocking is not compiled:

../drivers/gpu/drm/i915/display/intel_vblank.c:306:13: warning: context imbalance in 'intel_vblank_section_enter' - wrong count at exit
../drivers/gpu/drm/i915/display/intel_vblank.c:314:13: warning: context imbalance in 'intel_vblank_section_exit' - wrong count at exit

Fix by adding separata stubs for xe without __acquires/__releases
annotation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 551e9ca9bb99..2073e8075af4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -303,21 +303,27 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
  * all register accesses to the same cacheline to be serialized,
  * otherwise they may hang.
  */
+#ifdef I915
 static void intel_vblank_section_enter(struct drm_i915_private *i915)
 	__acquires(i915->uncore.lock)
 {
-#ifdef I915
 	spin_lock(&i915->uncore.lock);
-#endif
 }
 
 static void intel_vblank_section_exit(struct drm_i915_private *i915)
 	__releases(i915->uncore.lock)
 {
-#ifdef I915
 	spin_unlock(&i915->uncore.lock);
-#endif
 }
+#else
+static void intel_vblank_section_enter(struct drm_i915_private *i915)
+{
+}
+
+static void intel_vblank_section_exit(struct drm_i915_private *i915)
+{
+}
+#endif
 
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 				     bool in_vblank_irq,
-- 
2.39.2

