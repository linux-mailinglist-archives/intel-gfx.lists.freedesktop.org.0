Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5235097B2D2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E125810E4B8;
	Tue, 17 Sep 2024 16:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIwFlprP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC3410E4B6;
 Tue, 17 Sep 2024 16:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589767; x=1758125767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bnucQMXXRqv3nxcGDfsZTA0DU+u7g56oOeTIjYeeiuc=;
 b=KIwFlprPRJp34/TsNaczwKHi6+O/1YSyzYcq654K9hdIaD07MIsMm/y1
 HaSkFaom/KSftFCEHb9SNqwJtYK6SMx1jIp+csN9Pk+An2FhFxm+xHfHc
 KDmbSJ9VVY1XkWCUcSnVvhMGJzbp5fROTxYgThT8CvkCfObWjvLmBCQTE
 yjCJeFw5errgCt7QLKGwRhEJfBcyLN/u8o2bSxOOP6MaTDFyG3Y9KJWFU
 LFiWjE6gIDDB5Ns2ubHpfhR7U7YwsxrRUbXT6bu0xFGCBF6mMe6uGSelH
 f6UXKn7kTL8i/1/YpkT5UNwuck/0SXaJU57WQiwQa7fVb2VQxhxXhs12X w==;
X-CSE-ConnectionGUID: xfoE7lToTR2q0LFSBeKpSQ==
X-CSE-MsgGUID: 8Ie5xRoxSHibD2YYvCT0/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25343568"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25343568"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:07 -0700
X-CSE-ConnectionGUID: 7cDqu5/kRgWQNn26Po/ieQ==
X-CSE-MsgGUID: vUEUorL4QDSMpLJImdZWTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73989320"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 19/22] drm/i915/display: clean up some gem/ includes
Date: Tue, 17 Sep 2024 19:13:58 +0300
Message-Id: <afd2917cc0a943660886937bb5f45c277132e147.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Drop some unnecessary gem/ includes.

We seem to include xe_device.h through some compat gem headers, so we
need to include it directly in compat i915_drv.h to get
xe_device_has_flat_ccs().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c       | 2 --
 drivers/gpu/drm/i915/display/intel_fb.c           | 9 ++++-----
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 805e0af21a45..050eacc709cc 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -27,8 +27,6 @@
 #include "intel_vblank.h"
 #include "skl_watermark.h"
 
-#include "gem/i915_gem_object.h"
-
 /* Cursor formats */
 static const u32 intel_cursor_formats[] = {
 	DRM_FORMAT_ARGB8888,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index eb5ff3ba156c..c03060e5e503 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -3,14 +3,13 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#include <drm/drm_blend.h>
-#include <drm/drm_modeset_helper.h>
-
 #include <linux/dma-fence.h>
 #include <linux/dma-resv.h>
 
-#include "gem/i915_gem_object.h"
-#include "gem/i915_gem_object_types.h"
+#include <drm/drm_blend.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_modeset_helper.h>
+
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
 #include "intel_bo.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index f27a2c75b56d..00d492f907d8 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -14,6 +14,7 @@
 
 #include "i915_utils.h"
 #include "intel_runtime_pm.h"
+#include "xe_device.h" /* for xe_device_has_flat_ccs() */
 #include "xe_device_types.h"
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
-- 
2.39.2

