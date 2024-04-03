Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC55896E0C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5682112A12;
	Wed,  3 Apr 2024 11:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNkMqCE0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F930112A11;
 Wed,  3 Apr 2024 11:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143376; x=1743679376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gdyAvl2ku3TYX1gG2FKpS39C3vPWe9URIlYDj2KKYoE=;
 b=LNkMqCE0/QIHd/oRB5LNzVcWdNTK7216PVf9UXx9X+TWxZCrnYP8jRd9
 BxgtUUBVfPASaN/8OKcCMBdyhvzlLEhDvSwhFtvfmJm/1hsCm+DSGuvfx
 i7aHRwGDQffJyINS58ELJ2GCBB6U1wS0q36hORYtpUN00sX+hyy/kwcKh
 RF7NTi18Kd5IX0aCmG+5+Ypu3DbnSsS5CDXO7/YioI/CL8ObRw2N2RWTS
 vS90qIlx7E3m/pUemdNfY1kkuFaKLb0m4NUhC5CL9oKNbciHGCKMnD+u0
 FfoqtjX+aIH6uDS8XdmLhgUxHwTOs/gDO1cfo30wHEWkEBzedCapM5qlx w==;
X-CSE-ConnectionGUID: 2bPh/XOmTg6JOS3aahgkPQ==
X-CSE-MsgGUID: vnVVAPcOTpahipXxiUEDgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824015"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824015"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:55 -0700
X-CSE-ConnectionGUID: vrXGThaoROO45UXZBP9QPQ==
X-CSE-MsgGUID: +Hss+hRVTO6ZtnbGfZXvhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358499"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:54 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 04/25] drm/i915/bmg: Define IS_BATTLEMAGE macro
Date: Wed,  3 Apr 2024 16:52:32 +0530
Message-Id: <20240403112253.1432390-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Display code uses IS_BATTLEMAGE macro but the platform support doesn't
still exist in i915. So fake IS_BATTLEMAGE macro defined to enable
building i915 code.  We should make sure the macro parameter is used in
the always-false expression so that we don't run into "unused variable"
warnings from i915 builds if the IS_BATTLEMAGE() check is the only place
the i915 pointer gets used in a function.

While we're at it, also update the IS_LUNARLAKE macro to include the
parameter in the false expression for consistency.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cf52d4adaa20..b41a414079f4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -546,7 +546,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
-#define IS_LUNARLAKE(i915) 0
+/*
+ * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
+ * so we need to define these even on platforms that the i915 base driver
+ * doesn't support.  Ensure the parameter is used in the definition to
+ * avoid 'unused variable' warnings when compiling the shared display code
+ * for i915.
+ */
+#define IS_LUNARLAKE(i915) (0 && i915)
+#define IS_BATTLEMAGE(i915)  (0 && i915)
 
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
-- 
2.25.1

