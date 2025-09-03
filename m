Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32835B42B01
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13F110E933;
	Wed,  3 Sep 2025 20:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZpo0pVD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB7F10E922;
 Wed,  3 Sep 2025 20:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931581; x=1788467581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RD50qdYoCFoel6UW3SGgHf2oba6T+51sn3IOjLFssRA=;
 b=NZpo0pVDWo9sYThM5oCI5hi2XLkOxKRBTmMXWHSX67WFAmLjqpVtXLS+
 nxnXUDug35c44O4Ls8muXg5s5xO5WHtaL2ke4uVaKLKsK6X7ZY9+CTeoI
 KxEamo1c4cDWZCbw7hKjiS7aiAdUDTpI3U6v9u9Uut/togNH8kqk0RQDC
 qJZkWUtsSJXG8JDTfaYGZlk9ZKuta/5QknCGVW0SMtKACTJQ7/TC7tsXs
 dt+wdwzAuwwmrIedwGGGe9Q6/ckuGb42jU8DLzD0uBXfm5l71pbcB0OyN
 rrjmutg3cKkTwVJMle6X4YdBIjqQkVnImTgqKJaYaVRoChMSuZFRiimMx g==;
X-CSE-ConnectionGUID: 0c1UWC0YRgCXKsrb/yC/5g==
X-CSE-MsgGUID: Xr5NKAQ8Tq2xr/cOFs692w==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833200"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833200"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:33:01 -0700
X-CSE-ConnectionGUID: kA8Xdks+Tc6LCm1RXTEZkA==
X-CSE-MsgGUID: Po0IU+JyS0WRXmZX5HG8Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582525"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 9/9] drm/i915/fbdev: drop dependency on display in i915
 specific code
Date: Wed,  3 Sep 2025 23:32:06 +0300
Message-ID: <8a88e81b8af001ce4dc9023cde773e5002e92d02.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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

This code is in fact i915 driver core rather than display specific. Stop
using struct intel_display, and drop the dependency on display headers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index ef5440fe25f6..9edb4bf3103c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -8,8 +8,6 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 
 u32 intel_fbdev_fb_pitch_align(u32 stride)
@@ -19,7 +17,6 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
-	struct intel_display *display = to_intel_display(drm);
 	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct drm_i915_gem_object *obj;
 
@@ -36,7 +33,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 		 *
 		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (!display->platform.meteorlake && size * 2 < dev_priv->dsm.usable_size)
+		if (!IS_METEORLAKE(dev_priv) && size * 2 < dev_priv->dsm.usable_size)
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
-- 
2.47.2

