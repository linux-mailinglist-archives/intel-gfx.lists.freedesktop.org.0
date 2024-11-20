Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0839D3A2B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DFA10E728;
	Wed, 20 Nov 2024 12:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HsWuhysT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1948710E733;
 Wed, 20 Nov 2024 12:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104251; x=1763640251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+3rJatvMFK2sCXkv7kDKAOL2fakZI2A0g4GkRwRleEU=;
 b=HsWuhysT1ImXb4iTkv2hMSeE2yaNorsE8KAlV3Mki7CZXuKdWysZozx2
 KSgxCUrUGUZCY0lXZVJQ0SLDdn5Fhbn1dAKOtiJ0DaJUxc0gQjHMmyvOZ
 dxVDPZLnIgqtcw0kwI6csd64WnXN1YN/pvmwYZEHvNgc4XyXdnbFLaKEn
 H9weQgjY//+EBz+VhzReD0ZvyMgzVrCjudWaINk7da7EeJkYNopNmZfxh
 sPAFRTtScCVC3c/aSCJrvY2Zp5UDXVGvPR4Vf+2E50TNsxcU8ytcDueji
 SEEZggppbP09jewUmHInWTuLbdRC5tSVpMz9vl3g8bge+PqxOMTM1hfDC Q==;
X-CSE-ConnectionGUID: nr8NamYMSiyKKlL2ZRF8bA==
X-CSE-MsgGUID: YsKDQFnoSU6hj0TfqR/ZkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540150"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540150"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:11 -0800
X-CSE-ConnectionGUID: 3AI0GSm9RLylik/JQ0w5xQ==
X-CSE-MsgGUID: F6Hh0fkBTtS8UvLVOuQslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277944"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 6/6] drm/i915/display: drop i915_drv.h include from
 intel_display_trace.h
Date: Wed, 20 Nov 2024 14:03:37 +0200
Message-Id: <c51352a2152cebd56ab3597ae5a791d2bb41439e.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
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

Finish the job of removing implicit dependencies on i915_drv.h via other
includes in display code. Add a few missing explicit includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 1 +
 drivers/gpu/drm/i915/display/intel_crtc.c          | 1 +
 drivers/gpu/drm/i915/display/intel_display_trace.h | 2 +-
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c1..55894199c856 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -40,6 +40,7 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_atomic_helper.h>
 
+#include "i915_drv.h"
 #include "i915_config.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a2c528d707f4..c910168602d2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -12,6 +12,7 @@
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 
+#include "i915_drv.h"
 #include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "icl_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 9bd8f1e505b0..338b9f7b20b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -14,8 +14,8 @@
 #include <linux/types.h>
 #include <linux/tracepoint.h>
 
-#include "i915_drv.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
-- 
2.39.5

