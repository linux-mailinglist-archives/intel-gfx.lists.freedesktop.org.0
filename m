Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714EF152A06
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15E089A59;
	Wed,  5 Feb 2020 11:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA0789A59
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 11:40:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 03:40:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="235556919"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 05 Feb 2020 03:40:10 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed,  5 Feb 2020 17:10:19 +0530
Message-Id: <20200205114019.10900-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: align dumb buffer stride to page_sz
 of the region
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If stride of the dumb buffer requested is greater than the primary
plane's max stride, then we align the stride to the page size. But the
page size was hard coded for 4096.

With the lmem addition, lets align the stride to the page size of the
memory region that will be used for dumb buffer.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a712e60b016a..0f01396ca24e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -239,8 +239,9 @@ i915_gem_dumb_create(struct drm_file *file,
 		     struct drm_device *dev,
 		     struct drm_mode_create_dumb *args)
 {
-	enum intel_memory_type mem_type;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
+	enum intel_memory_type mem_type;
+	struct intel_memory_region *mr;
 	u32 format;
 
 	switch (cpp) {
@@ -260,24 +261,21 @@ i915_gem_dumb_create(struct drm_file *file,
 	/* have to work out size/pitch and return them */
 	args->pitch = ALIGN(args->width * cpp, 64);
 
+	mem_type = INTEL_MEMORY_SYSTEM;
+	if (HAS_LMEM(to_i915(dev)))
+		mem_type = INTEL_MEMORY_LOCAL;
+	mr = intel_memory_region_by_type(to_i915(dev), mem_type);
+
 	/* align stride to page size so that we can remap */
 	if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
 						    DRM_FORMAT_MOD_LINEAR))
-		args->pitch = ALIGN(args->pitch, 4096);
+		args->pitch = ALIGN(args->pitch, mr->min_page_size);
 
 	if (args->pitch < args->width)
 		return -EINVAL;
 
 	args->size = mul_u32_u32(args->pitch, args->height);
-
-	mem_type = INTEL_MEMORY_SYSTEM;
-	if (HAS_LMEM(to_i915(dev)))
-		mem_type = INTEL_MEMORY_LOCAL;
-
-	return i915_gem_create(file,
-			       intel_memory_region_by_type(to_i915(dev),
-							   mem_type),
-			       &args->size, &args->handle);
+	return i915_gem_create(file, mr, &args->size, &args->handle);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
