Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2746928AFF
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8093610EBF3;
	Fri,  5 Jul 2024 14:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FnkpxfMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C8A810EBF3;
 Fri,  5 Jul 2024 14:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191227; x=1751727227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ql/r8B1q0NZHEw1189BlSjDbbek9pthFc3rlOMj92rk=;
 b=FnkpxfMOY04UsVe91fJIFd1LsVb9gmmPSKVieLy3pk8JCj2994uvvmtP
 TGwsbvFNiKOJE1Pn3UoSunP0evFNTtCby8Pv4hvjh3mC6TvVfw4QjHyxC
 ++W/fFhzJUai4FuwxAcY0R02egNpa3v7fWIpAChsQlpm0z8xXVwqP6fbc
 7q9nFu5/JucelJ3MI57r2GoLEvtsxLAXpVIsLxhS8QYRXMlGOZOQCTNIk
 H13qneEJ5txlidtZvxd+VzNY9KleP18lWMRgJnYzB6xBB+1N9hsF79hD7
 VXRMvtief20ahuJ6soKvNkRv2hIQOClq3U6GwfSOVHy0n9/APHljoimek Q==;
X-CSE-ConnectionGUID: 9ek6l/n4SKmn7Sazb3T98g==
X-CSE-MsgGUID: pn2X85BNSX2oRdxKenZavw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204867"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:47 -0700
X-CSE-ConnectionGUID: 5dyNeIcpQlqItCOO7QYxTw==
X-CSE-MsgGUID: P74YR4ecSHC67QkLrT0LPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 17/20] drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Fri,  5 Jul 2024 17:52:51 +0300
Message-ID: <20240705145254.3355-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "should we keep the bios fb in stolen?" logic into
into a helper function, same as was done for i915. Gives us
a single place where to tweak the heuristics.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  8 ++------
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 816ad13821a8..f7905b382d06 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -11,6 +11,24 @@
 #include "xe_gt.h"
 #include "xe_ttm_stolen_mgr.h"
 
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
+				  unsigned int size)
+{
+	struct xe_device *xe = to_xe_device(display->drm);
+	struct ttm_resource_manager *stolen;
+
+	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+	if (!stolen)
+		return false;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return stolen->size >= size * 2;
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
 {
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 21965cc8a9ca..4c000e95aea5 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -15,6 +15,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_fbdev_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 #include "xe_bo.h"
@@ -104,13 +105,8 @@ initial_plane_bo(struct xe_device *xe,
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 
-		/*
-		 * If the FB is too big, just don't use it since fbdev is not very
-		 * important and we should probably use that space with FBC or other
-		 * features.
-		 */
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    plane_config->size * 2 > stolen->size)
+		    !intel_fbdev_fb_prefer_stolen(&xe->display, plane_config->size))
 			return NULL;
 	}
 
-- 
2.44.2

