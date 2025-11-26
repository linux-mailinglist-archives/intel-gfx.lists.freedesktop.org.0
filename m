Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B4AC89759
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 12:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315E310E5B1;
	Wed, 26 Nov 2025 11:11:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UsYpMKlh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B1710E5AD;
 Wed, 26 Nov 2025 11:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764155503; x=1795691503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3C/faLy91vKsvaCjZ/monszBbKaa+f2c1VahrrMCD2w=;
 b=UsYpMKlhq2Duu0RkO5x3aUhcPa9xE9cpoMaapG6TKsEjs/RbVL7G9tem
 ThzqSmbhxAXfRb1rqYDI+GKEv03AqnT0orKCZv9SMsqJ+k2W2XHSI6DRn
 12YwyunV+z+Pmj57trO/38uHjhpl3m4TSWvYISuZR89RfP66tYJhK25yh
 8bDR3+vkkQZaz5IdrE/Tt25rcunIqBkZzOEwLMRpe9yNXSF6NgGIe8CJE
 iFDT4T1AmBp5Li/4wOyiC6MRoSA7QFIu0nme+lDoZROoEnhG6Lp5uaMp8
 4Pt+fSgi1wO3kGeafGV6xOvEhmdKLTZk99D1y/WkK8ADhQ8xHyUfRiSQY g==;
X-CSE-ConnectionGUID: cmPEP3I+T9qx6yx+kbKbWQ==
X-CSE-MsgGUID: /T57svbuQ+idT35/MZw59A==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66349666"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66349666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:43 -0800
X-CSE-ConnectionGUID: G5YIUxzoTNaPmWg1mKbMTg==
X-CSE-MsgGUID: nZaGFrY+SJGvboLL+JCvEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197404483"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [RESEND 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
Date: Wed, 26 Nov 2025 13:11:22 +0200
Message-ID: <08a8a7745042afcffa647f82ae23ebbeda0234c9.1764155417.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764155417.git.jani.nikula@intel.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

