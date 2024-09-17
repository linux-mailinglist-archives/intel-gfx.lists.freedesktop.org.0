Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AD097B2D3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAFB10E4B1;
	Tue, 17 Sep 2024 16:16:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GeV0arQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7BB10E4B9;
 Tue, 17 Sep 2024 16:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589773; x=1758125773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHsB6SpmE2/ozgqqP6jnJs4pUKYA+gEFphBGavIU1Zs=;
 b=GeV0arQkQjhcqvWkukpddeKviKAEu7IvJKs5GqtjhjbbbKwES93I6+LO
 Hr7pzVqNKSkGoW/UJJb/egkqkI1ha/MEZDY6Wp5NEV4DW1F2ygBF5Dny/
 XAlfnycaAavotHg7Dl4UFSM85jmkyLxdHBuEzvK1iZKXyPWwBd6X2iCba
 ZWL+LStnPvsLSGR6fA20WVO23P/zW3aWJg1tZgZV/CnGxBbnxXjcxwFpF
 24OfQi9WxFtnqx5nL7jMIWJ6fU5TWB1egGeg8S1jgHdYmzDZYa6GoCGOb
 Rr0Se/uJi9s6Yxi+lS/hLNgmGljzgp/WP/YWJhSwGIJ1x+ofD0dI/sLmu A==;
X-CSE-ConnectionGUID: 7v+VL6MKTNCsJdcDIbj1AQ==
X-CSE-MsgGUID: dCnVtztoQ2Gr8LqHAKiWQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25343592"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25343592"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:13 -0700
X-CSE-ConnectionGUID: OMI9mMgVSvelwhYwomGz0w==
X-CSE-MsgGUID: qYH/cI+5T3ivEI8s3QtXQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73989339"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 20/22] drm/xe/compat: remove a bunch of compat gem headers
Date: Tue, 17 Sep 2024 19:13:59 +0300
Message-Id: <2ac115c5dd5f68da9172e9b5bd3a7eb4e10fce60.1726589119.git.jani.nikula@intel.com>
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

Now that we've switched to struct drm_gem_object and the intel_bo_*
interfaces, we no longer need most of the compat gem headers. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../compat-i915-headers/gem/i915_gem_lmem.h   |  1 -
 .../compat-i915-headers/gem/i915_gem_mman.h   | 17 ----------
 .../compat-i915-headers/gem/i915_gem_object.h | 34 -------------------
 .../gem/i915_gem_object_frontbuffer.h         | 12 -------
 .../gem/i915_gem_object_types.h               | 11 ------
 5 files changed, 75 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h
deleted file mode 100644
index 710cecca972d..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_lmem.h
+++ /dev/null
@@ -1 +0,0 @@
-/* Empty */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h
deleted file mode 100644
index 650ea2803a97..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_mman.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef _I915_GEM_MMAN_H_
-#define _I915_GEM_MMAN_H_
-
-#include "xe_bo_types.h"
-#include <drm/drm_prime.h>
-
-static inline int i915_gem_fb_mmap(struct xe_bo *bo, struct vm_area_struct *vma)
-{
-	return drm_gem_prime_mmap(&bo->ttm.base, vma);
-}
-
-#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
deleted file mode 100644
index 9de90013bae3..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
+++ /dev/null
@@ -1,34 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-#ifndef _I915_GEM_OBJECT_H_
-#define _I915_GEM_OBJECT_H_
-
-#include <linux/types.h>
-
-#include "xe_bo.h"
-
-#define i915_gem_object_is_shmem(obj) (0) /* We don't use shmem */
-
-static inline dma_addr_t i915_gem_object_get_dma_address(const struct xe_bo *bo, pgoff_t n)
-{
-	/* Should never be called */
-	WARN_ON(1);
-	return n;
-}
-
-static inline bool i915_gem_object_is_tiled(const struct xe_bo *bo)
-{
-	/* legacy tiling is unused */
-	return false;
-}
-
-static inline bool i915_gem_object_is_userptr(const struct xe_bo *bo)
-{
-	/* legacy tiling is unused */
-	return false;
-}
-
-#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h
deleted file mode 100644
index 2a3f12d2978c..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_frontbuffer.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-#ifndef _I915_GEM_OBJECT_FRONTBUFFER_H_
-#define _I915_GEM_OBJECT_FRONTBUFFER_H_
-
-#define i915_gem_object_get_frontbuffer(obj)		NULL
-#define i915_gem_object_set_frontbuffer(obj, front)	(front)
-
-#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
deleted file mode 100644
index 7d6bb1abab73..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2024 Intel Corporation */
-
-#ifndef __I915_GEM_OBJECT_TYPES_H__
-#define __I915_GEM_OBJECT_TYPES_H__
-
-#include "xe_bo.h"
-
-#define to_intel_bo(x) gem_to_xe_bo((x))
-
-#endif
-- 
2.39.2

