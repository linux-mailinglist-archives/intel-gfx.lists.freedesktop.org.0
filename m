Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF758A194E3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 16:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F44710E3B5;
	Wed, 22 Jan 2025 15:18:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UB3OLFWc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1164E10E24B;
 Wed, 22 Jan 2025 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737559093; x=1769095093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cOUMuiqvtoQ9+VlhM2O1KYuJKvqzgylf55r4YmuR22w=;
 b=UB3OLFWcIfN1oQaqQwex0UcKjUTVVcbOMzAbFKCPMF0LNydR+ubcycVu
 wzT1kQowS5N6eCHmls1to4cRjv+nSL2y6zd94kj4zD4b9iU717OuXHrlt
 SdzILXCHK6Bq3yt5lN49VW7r0zTTkw+nRg1szQDRSiiIev95BQxxdeZJT
 xh8jIIZ9Vjmwwq1crYNfgfkYEjWZHsEBqe+6t9h7xcPoFRq0xf0TfSNAk
 fwZgJaeglGuE4UECzqhy6YtYGd6jbooYLgi1uZL0u45tZKy4ZxDerDMIF
 sGFqfvnMsG8UOfKd66gvKanlGsvr5ZjbyZYHQCWU3AvpND4YjKUDWfgNC w==;
X-CSE-ConnectionGUID: DNmB4uTERym9elZbsa+ZsA==
X-CSE-MsgGUID: ueF9o7iPQeCZnlXtRncW+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40841213"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="40841213"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:18:12 -0800
X-CSE-ConnectionGUID: Bp9sQYzkRyC5tatcOKsYWw==
X-CSE-MsgGUID: gD7wZHo4TEG2jCOP8wCMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107274698"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 07:18:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 17:18:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/fbdev: Use fb->normal_view.gtt
Date: Wed, 22 Jan 2025 17:17:55 +0200
Message-ID: <20250122151755.6928-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
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

Grab the GTT view for the fbdev fb pinning from
fb->normal_view.gtt instead of having and extra one on
the stack. Seems safer in case we ever put any new
information into normal GTT views.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 833cded53d37..301b5fd301a2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -177,9 +177,6 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	struct intel_framebuffer *fb = ifbdev->fb;
 	struct drm_device *dev = helper->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	const struct i915_gtt_view view = {
-		.type = I915_GTT_VIEW_NORMAL,
-	};
 	intel_wakeref_t wakeref;
 	struct fb_info *info;
 	struct i915_vma *vma;
@@ -226,7 +223,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
 	 */
-	vma = intel_fb_pin_to_ggtt(&fb->base, &view,
+	vma = intel_fb_pin_to_ggtt(&fb->base, &fb->normal_view.gtt,
 				   fb->min_alignment, 0,
 				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
 							   DRM_MODE_ROTATE_0),
-- 
2.45.2

