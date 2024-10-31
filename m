Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336B9B79DB
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD24F10E862;
	Thu, 31 Oct 2024 11:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5f72LUx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE7A10E3F9;
 Thu, 31 Oct 2024 11:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374751; x=1761910751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+3rJatvMFK2sCXkv7kDKAOL2fakZI2A0g4GkRwRleEU=;
 b=M5f72LUxfAY/P299ec/rDBLyijSNFGaNc+9BpRES584hnjzwn4SqIHgS
 4eoWTxOLe2AlHXVGUOrJVANHldSlUcsSR5e2kSVyimHbZ6TVrgi+lgu2H
 kTuLByeDd5ayybr60YnTjR+nR5TUt0nVF/wrhokDnxvXVxa47tUMsb9fy
 NsqJyGpIKh6pDlk9pnSGtN0qgv6JM2Rx0DyibV5uD512LLatCx7FAqt0J
 e4Zb8LAU68tTZ47QNKCiUFyGB7/Ok+RkArVkr+Ql69JEtauAJ59oXB3zM
 ASPK892VCTx6V055zyItMx2npo/n1CoZ+30Q8CEJ/2K5mEkejZpxnmK2m w==;
X-CSE-ConnectionGUID: dEw6PCwwQAOptJBzVopVrA==
X-CSE-MsgGUID: +BOhzKwmTAi1STRgBzfF5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="30000664"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30000664"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:39:10 -0700
X-CSE-ConnectionGUID: VOUOia7TT9Cs26kgODiDow==
X-CSE-MsgGUID: 9qOMSvkyTy6A45hEj5wQ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87744378"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:39:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/display: drop i915_drv.h include from
 intel_display_trace.h
Date: Thu, 31 Oct 2024 13:38:36 +0200
Message-Id: <b80eb74285a1ac42a69ee70e758b4de22eb84797.1730374470.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730374470.git.jani.nikula@intel.com>
References: <cover.1730374470.git.jani.nikula@intel.com>
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

