Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD59C9D3A28
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:04:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F6B10E72B;
	Wed, 20 Nov 2024 12:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SUpNv+Po";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D55110E727;
 Wed, 20 Nov 2024 12:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104239; x=1763640239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Cqi7eJj1G/tMn6F4JDhlr7vkCXhpy+TVIIWqhD7lxA=;
 b=SUpNv+PoOefLOvHc1Hvqr8JUTZLtQRmp/0u3TgJ1V6C1omhL7FZn48al
 LIaiUgzVZW4ev4ShKfhkynm7Niwige52EMLY4b3ItV8G0imSiN5dIRcL/
 YmBqUlT9D9iOnnghMnvcySLPGF39r7mqvUsdQnGUtzvgFF/j2KzgDoJp2
 75qyg1MhpMSc7n8DcsYhD0Q/xPBN3XDSPPki/1i5r5tfD7viLf9PPq6Wu
 j0K2MGQ2AcBgVVlt77gpmKIX4WTenF4U972KW4zj6zO6nCnEPknERFBHo
 k8q9IIAlqOk0bmzNot4geMaf0gBrreYnA8UEDsM82U3LpSPY2xfxuFxSf Q==;
X-CSE-ConnectionGUID: A/W4CJhgRT2lfAB1LllEfw==
X-CSE-MsgGUID: XlfMqnawTQ+e741Xlvpi7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540112"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540112"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:57 -0800
X-CSE-ConnectionGUID: /Li2+QgPQsSGseyHfSZgQg==
X-CSE-MsgGUID: 0x0h3dDbSkaADlG2TpaCxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277919"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/6] drm/i915/display: add intel_display_conversion.c to hide
 stuff better
Date: Wed, 20 Nov 2024 14:03:34 +0200
Message-Id: <39e99b765b8c1a05d001659c39686a661ac268e2.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
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

The __to_intel_display() generics require the definition of struct
drm_i915_private i.e. inclusion of i915_drv.h. Add
intel_display_conversion.c with a __i915_to_display() function to do the
conversion without the intel_display_conversion.h having an implicit
dependency on i915_drv.h.

The long term goal is to remove __to_intel_display() and the
intel_display_conversion.[ch] files altoghether, and this is merely a
transitional step to make the dependencies on i915_drv.h explicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                           | 1 +
 drivers/gpu/drm/i915/display/intel_display_conversion.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_conversion.h | 9 +++++++--
 drivers/gpu/drm/xe/Makefile                             | 1 +
 4 files changed, 18 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index aa4494499324..1c4ebcb08a6d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -237,6 +237,7 @@ i915-y += \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_display.o \
+	display/intel_display_conversion.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
 	display/intel_display_params.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
new file mode 100644
index 000000000000..bdd947f5ccd8
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include "i915_drv.h"
+
+struct intel_display *__i915_to_display(struct drm_i915_private *i915)
+{
+	return &i915->display;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
index ad8545c8055d..790d0be698dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
@@ -8,14 +8,19 @@
 #ifndef __INTEL_DISPLAY_CONVERSION__
 #define __INTEL_DISPLAY_CONVERSION__
 
+struct drm_i915_private;
+struct intel_display;
+
+struct intel_display *__i915_to_display(struct drm_i915_private *i915);
+
 /*
  * Transitional macro to optionally convert struct drm_i915_private * to struct
  * intel_display *, also accepting the latter.
  */
 #define __to_intel_display(p)						\
 	_Generic(p,							\
-		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
-		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
+		 struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
 		 const struct intel_display *: (p),			\
 		 struct intel_display *: (p))
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index a93e6fcc0ad9..7358f45755b6 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -208,6 +208,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_display.o \
+	i915-display/intel_display_conversion.o \
 	i915-display/intel_display_device.o \
 	i915-display/intel_display_driver.o \
 	i915-display/intel_display_irq.o \
-- 
2.39.5

