Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252478BD4A5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8764010F04E;
	Mon,  6 May 2024 18:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8WwXS7S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4047410E581;
 Mon,  6 May 2024 18:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715020415; x=1746556415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+h3wkleTWs//RT0tKl8/c7nGqMr4Je4r+hYyHjvnzAU=;
 b=n8WwXS7SemkGmIvfXZjW4hC+QJRVgMGjvDlMVPWcjNqi0H2T1WjzJJ2X
 f/SocYgRlH4Ma6lYzQOpBFdpGFiDhwvpRS+iNKrXaLzunPgnj1ACc8j1v
 Xmk8aGcZL1i5NS30TZf4FT9mwADUBuRTtqYW8l/+k1qtSt91+Mwi5MDt8
 ZfYFL4r6nIO6LKmaDYt3sQsJk9jlAguwNUekzyRYvaNb/1aL+M2g0qyAK
 FsPjIxwscf0jdmRREX8Y7irAer8XmiS9jGPo3XSHwa5FW1bcpX1lYJLZJ
 ZtQ3ZVZQqV5Xx/59hT4WyPfAFjCaBOuLfstDaw9Vx18PdKj3nep/9kxsq w==;
X-CSE-ConnectionGUID: 6zAXy7MzRrel5Ud8GWni2w==
X-CSE-MsgGUID: uA3Q7JE6Rj6tFsogZ0OC6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21455528"
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="21455528"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 11:33:35 -0700
X-CSE-ConnectionGUID: 5DZd3uFlSC6uK/PPtSfNjg==
X-CSE-MsgGUID: df+NTNEwSQaQ7Naq6SuEvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="28237088"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 11:33:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 21:33:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe: Nuke xe's copy of intel_fbdev_fb.h
Date: Mon,  6 May 2024 21:33:31 +0300
Message-ID: <20240506183331.7720-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

For some reason xe and i915 each have an identical (fortunately)
copy of intel_fbdev_fb.h. The xe copy actually only gets included
by xe's intel_fbdev_fb.c, and the i915 copy by everyone else,
include intel_fbdev.c which is the actual caller of the
functions declared in the header.

This means the xe and i915 headers are free to define/declare
completely incompatible things and the build would still succeed
as long as the symbol names match.

That is not a good thing, so let's nuke xe's copy of the header
so that everyone will use the same header, and be forced to
agree on the same API/ABI.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.h | 21 ---------------------
 1 file changed, 21 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.h

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h b/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
deleted file mode 100644
index ea186772e0bb..000000000000
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_FBDEV_FB_H__
-#define __INTEL_FBDEV_FB_H__
-
-struct drm_fb_helper;
-struct drm_fb_helper_surface_size;
-struct drm_i915_gem_object;
-struct drm_i915_private;
-struct fb_info;
-struct i915_vma;
-
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-			 struct drm_fb_helper_surface_size *sizes);
-int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-			      struct drm_i915_gem_object *obj, struct i915_vma *vma);
-
-#endif
-- 
2.43.2

