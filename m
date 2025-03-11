Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D9EA5CBA6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9418E10E645;
	Tue, 11 Mar 2025 17:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hzhB3tix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A99A10E644;
 Tue, 11 Mar 2025 17:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712816; x=1773248816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pyBbzBsZGYgztsaua7SpPec77ADaonppVtD8lLLNHCE=;
 b=hzhB3tixtzrDQzBCdqQJ+v4U2pL0VXXJq+dX3s9ccV1zEEDPYgxhbC8q
 7UXmmCVpT4zX0KqNcf0yzeiuis/8pv2UEyDDrjz5a80U4tizj3NZDpvxX
 84S7+QVajmQtye58xv6ZGIDPeJLtEaFCDGaRR2AKvqAs3uPe4IsaOu7fQ
 JLgXRTuqz5FANvhwZIazXmoPPms9y+wgomsYNIYDVtLYfCaeVtrA7p0sL
 is7VcUhmTOPOiK2qkvvHB5xDxHk8qXavtQMgh+qSsiF6qFjN0TaqAneVW
 Zqrjt+C3sVUvSPEKCnljcz06grrvFhmz61Aau1g6M+nweyovs8p7TL6on Q==;
X-CSE-ConnectionGUID: bMLCjn4IQX+2+94QS0Hx7g==
X-CSE-MsgGUID: df8t0cwXT9yw3lcmw5jzHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60167904"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60167904"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:56 -0700
X-CSE-ConnectionGUID: ieuziStMSqiJhLrMMSxmUA==
X-CSE-MsgGUID: 6TYI5rQFQpmDcA/2nl/mCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="124998641"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 7/7] drm/xe: drop intel_display_core/device.h include from
 xe_device_types.h
Date: Tue, 11 Mar 2025 19:06:14 +0200
Message-Id: <4228ad970ef818e260ed998b190894cb2e350616.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
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

Make xe->display opaque.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c       | 1 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 1 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
 drivers/gpu/drm/xe/display/xe_tdf.c           | 1 +
 drivers/gpu/drm/xe/xe_device_types.h          | 2 --
 6 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 258518e65bdc..ec4f31754256 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -20,6 +20,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9d734a18cd36..f244a74a8a9a 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -6,6 +6,7 @@
 #include <drm/ttm/ttm_bo.h>
 
 #include "i915_vma.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index e47b8d1c95ab..5fccd091576c 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -8,6 +8,7 @@
 #include <linux/delay.h>
 
 #include "abi/gsc_command_header_abi.h"
+#include "intel_display_core.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 #include "xe_bo.h"
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 4ca0cb571194..87774dee8b37 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -14,6 +14,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
index 2a7fccbeb1d5..2807bb1dbf97 100644
--- a/drivers/gpu/drm/xe/display/xe_tdf.c
+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
@@ -4,6 +4,7 @@
  */
 
 #include "xe_device.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_tdf.h"
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 454975cd3327..f9b6572c78e0 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -32,8 +32,6 @@
 
 #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
 #include "soc/intel_pch.h"
-#include "intel_display_core.h"
-#include "intel_display_device.h"
 #endif
 
 struct xe_ggtt;
-- 
2.39.5

