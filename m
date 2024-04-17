Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E238A83A0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F3B10F5FF;
	Wed, 17 Apr 2024 13:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AG6e2zOT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCC710F608;
 Wed, 17 Apr 2024 13:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358990; x=1744894990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5LlPo249W0xgAevm/GLfqQICL1vBy6AAE6vNFmrQbJM=;
 b=AG6e2zOT8/TBaeDWHDnlHH8C5EiTo7CJIyD5+WnsJSE2v70/iipzRfDf
 tCQWGYi0GaHhc+Y9G2wbDVjDL677BcA0SwZPRF6f6o0DVc/qkKfAvmsdM
 GSKFiPZVkIFrPvrhT9bDuUBa4fjYgX/kENpkNW4tWI8AK23v3DHrZiZLw
 ebMXXZY5O+gMDmZyKgnKIu7rsfe63Vm9r4jRHL+/7mM9U+PCUZDVeiUun
 Ys9MnPLynIS0D8RXlitos3vBj+lKtnHU89D2uAn6IyROasMjISDjh0M2T
 0MKYPD6uasViMwgPFJMYL9iUa/oxhKdTEVW5dw+zWcGFPvmcZdD4T09bk g==;
X-CSE-ConnectionGUID: gZAD7BhUTTWFlLKCIIL6tw==
X-CSE-MsgGUID: FuLdpy6eQZuvDxzM7mr+0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="26310482"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="26310482"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:08 -0700
X-CSE-ConnectionGUID: cZBYVd4mRzqZAkIF7A4KnA==
X-CSE-MsgGUID: 5LFKoNFtRoK22CIOAHnazw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22628524"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 3/9] drm/i915: add generic __to_intel_display()
Date: Wed, 17 Apr 2024 16:02:41 +0300
Message-Id: <a999ff8183659a4df68d439ebd31c19b5c56852a.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
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

Add generic __to_intel_display() macro that accepts either struct
drm_i915_private * or struct intel_display *. This is to be used for
transitional stuff that eventually needs to be converted to use struct
intel_display *, and therefore is not part of to_intel_display().

Add new intel_display_conversion.h to host the helper to avoid
duplication between xe and i915 drivers.

v2: put it in the new header (Rodrigo)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_conversion.h   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
new file mode 100644
index 000000000000..ad8545c8055d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+/*
+ * This header is for transitional struct intel_display conversion helpers only.
+ */
+
+#ifndef __INTEL_DISPLAY_CONVERSION__
+#define __INTEL_DISPLAY_CONVERSION__
+
+/*
+ * Transitional macro to optionally convert struct drm_i915_private * to struct
+ * intel_display *, also accepting the latter.
+ */
+#define __to_intel_display(p)						\
+	_Generic(p,							\
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct intel_display *: (p),			\
+		 struct intel_display *: (p))
+
+#endif /* __INTEL_DISPLAY_CONVERSION__ */
-- 
2.39.2

