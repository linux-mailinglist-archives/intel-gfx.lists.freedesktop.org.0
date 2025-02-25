Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A995A446C7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF7D10E75E;
	Tue, 25 Feb 2025 16:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhLfwKQs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B859F10E75E;
 Tue, 25 Feb 2025 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502173; x=1772038173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tOPCzKnRBs1h3cTZVXKf3eGxkrGQ9x6fGpE5XK9I2mU=;
 b=OhLfwKQs+19fNHNtM616guixVakI1Yh6txuGt/Di7ffptKACAWLRzfpZ
 bnF3I6kJmMs22E6RTkpmE6mq2VKo6O9dunHgAI9uSiqsPLkv00b0diHDe
 AEA+cW36PwJlnfu8q6KvbocXKty0FG9OYSkTcxlYgJuXOfUYAIaHfbdmn
 v/isBhJ8I9OfieqqQ5GW3b8fxr3CvgyI7xEP6zOpuEyw7PBdzIW5ph3ti
 hjktRzMA4LHInTkAfc0nNDEFMCpugsH3LKwU9EJ3/7y7H4ODuH20T2uwF
 i1H8P081/OYqi8xIgIypmgj5FpY3jGbOnD57RSJMuIpF5WtsyGq4JWj0c g==;
X-CSE-ConnectionGUID: JvrLS++nQ4+amfRfn4r7WA==
X-CSE-MsgGUID: ItM54+s4QSOY/N8ttXsx/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454412"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454412"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:32 -0800
X-CSE-ConnectionGUID: CI4hLISdSxCyueQ5arjagA==
X-CSE-MsgGUID: KioFB+eoQ+GXXK2uu4xsVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930184"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/12] drm/i915/tdf: convert intel_tdf.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:04 +0200
Message-Id: <26d976f23295713f9a7cda20e32b7ef5aad3dd9e.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert the intel_tdf.[ch] glue to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 2 +-
 drivers/gpu/drm/i915/display/intel_tdf.h         | 6 +++---
 drivers/gpu/drm/xe/display/xe_tdf.c              | 6 ++++--
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..1536a4a4f824 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7425,7 +7425,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_commit_fence_wait(state);
 
-	intel_td_flush(dev_priv);
+	intel_td_flush(display);
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 26128c610cb4..2fa4b0bf27c3 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -98,7 +98,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	trace_intel_frontbuffer_flush(display, frontbuffer_bits, origin);
 
 	might_sleep();
-	intel_td_flush(i915);
+	intel_td_flush(display);
 	intel_drrs_flush(i915, frontbuffer_bits);
 	intel_psr_flush(display, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
index 353cde21f6c2..0862c2bfd9cd 100644
--- a/drivers/gpu/drm/i915/display/intel_tdf.h
+++ b/drivers/gpu/drm/i915/display/intel_tdf.h
@@ -14,12 +14,12 @@
  * the display flip, since display engine is never coherent with CPU/GPU caches.
  */
 
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-static inline void intel_td_flush(struct drm_i915_private *i915) {}
+static inline void intel_td_flush(struct intel_display *display) {}
 #else
-void intel_td_flush(struct drm_i915_private *i915);
+void intel_td_flush(struct intel_display *display);
 #endif
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
index 2c0d4e144e09..2a7fccbeb1d5 100644
--- a/drivers/gpu/drm/xe/display/xe_tdf.c
+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
@@ -7,7 +7,9 @@
 #include "intel_display_types.h"
 #include "intel_tdf.h"
 
-void intel_td_flush(struct drm_i915_private *i915)
+void intel_td_flush(struct intel_display *display)
 {
-	xe_device_td_flush(i915);
+	struct xe_device *xe = to_xe_device(display->drm);
+
+	xe_device_td_flush(xe);
 }
-- 
2.39.5

