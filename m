Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2370BFCEA5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FDE010E7F5;
	Wed, 22 Oct 2025 15:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzqkEoLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6522310E7F1;
 Wed, 22 Oct 2025 15:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761147419; x=1792683419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3C/faLy91vKsvaCjZ/monszBbKaa+f2c1VahrrMCD2w=;
 b=DzqkEoLying6mCuvZWrJ+ix7i941B1Ko75uxXxHQZDGpSPomFIrmREZc
 PbYUlhP4w33tsGrCkK/4KAZCQ2KxBfAajHVL0TOWENStRQ03WZV7incvx
 7bvG9wW+hvi/8MNkzMuiHGNT7Ob+zmRlCouaRh5zRJwTLwnlJd2ddaw7Y
 IkQS+G9cuhxVpc/QPGlNVKXrw87No8mi+ZUr47+cyTpE3/f5+p73w+cFH
 RFTXKcw1FA7+6OXlHQKjtxyJGldhjaG71ti4sLqohZKOLq6IM1kRf3XSq
 /JJeh5GoAzRVQlrRpsb1V5Y6nQ+l+Ohr60tPRXNZu0Z1BB6I62RYrt3hw A==;
X-CSE-ConnectionGUID: xdlLUh+9RzWSl75+1NWnUg==
X-CSE-MsgGUID: +0Y9ZR+JTvKGLgthrPusmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63222304"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63222304"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:58 -0700
X-CSE-ConnectionGUID: IOczYc+CT3e5Xm8rZ1LN0Q==
X-CSE-MsgGUID: 62U1Nsn6TWugvm0n4ypVSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="189030006"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
Date: Wed, 22 Oct 2025 18:36:37 +0300
Message-ID: <a9493e5da1591fa53b6ffd5a309fd0a52ce67a25.1761147363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761147363.git.jani.nikula@intel.com>
References: <cover.1761147363.git.jani.nikula@intel.com>
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

Move the definitions of struct intel_dsb_buffer to the driver specific
files, hiding the implementation details from the shared DSB code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb_buffer.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 8 +-------
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c      | 6 ++++++
 3 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
index fc1f0e6031ba..50faf3869b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -9,6 +9,12 @@
 #include "i915_vma.h"
 #include "intel_dsb_buffer.h"
 
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+	size_t buf_size;
+};
+
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return i915_ggtt_offset(dsb_buf->vma);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
index 2cf639fae47a..d746c872e0c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -9,13 +9,7 @@
 #include <linux/types.h>
 
 struct drm_device;
-struct i915_vma;
-
-struct intel_dsb_buffer {
-	u32 *cmd_buf;
-	struct i915_vma *vma;
-	size_t buf_size;
-};
+struct intel_dsb_buffer;
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index ee7717b1980f..d55858705106 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -9,6 +9,12 @@
 #include "xe_device.h"
 #include "xe_device_types.h"
 
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+	size_t buf_size;
+};
+
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return xe_bo_ggtt_addr(dsb_buf->vma->bo);
-- 
2.47.3

