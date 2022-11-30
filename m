Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E6063E5E5
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 00:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC2B10E4F0;
	Wed, 30 Nov 2022 23:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CB510E4EF;
 Wed, 30 Nov 2022 23:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669852704; x=1701388704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLJDECx6SzGFmoD8Y1Mg58qwmv7qUXNfYtPj1h5/1lI=;
 b=WBtpEf4M/wFAeFHYpZaw+VDriKlQivFeljVEI7QZyNNDKFbNgpXSTpv8
 PtNSNJ5Sx+P9HBmK5THYU+Jz13oU6lyiS/78qbPe6pG142FjTh9GTsLfD
 5t45YTbwzrmSSJf2iwRzR+IMnaLGo6vE45am+hD9jVv9FhlC6mJO6F2LI
 3izDkEnxPqxGexXy/1POq92dZptGXGX4Go++fZYcSlik5UNG0V/1eQkhV
 0u//uBOdJ8zdSQ+FmYz4jn1wWDmUlw+AfmApAtflvTfXU89E8IvEyP01M
 E2+O5hgLFm64Crp7kjFWvqyu+B21CQC5Zv4FHoMY4DPscglkDc5xGFODq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313168824"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313168824"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 15:58:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750560869"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="750560869"
Received: from freibold-ivm1.ger.corp.intel.com (HELO intel.com)
 ([10.252.52.161])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 15:58:21 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  1 Dec 2022 00:58:01 +0100
Message-Id: <20221130235805.221010-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221130235805.221010-1-andi.shyti@linux.intel.com>
References: <20221130235805.221010-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/5] drm/i915: Limit the display memory
 alignment to 32 bit instead of 64
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The coming commit "drm/i915: Introduce guard pages to i915_vma"
from Chris, was originally changing display_alignment to u32
from u64. The reason is that the display GGTT is and will be
limited o 4GB.

Put it in a separate patch and use "max(...)" instead of
"max_t(64, ...)" when asigning the value. We can safely use max
as we know beforehand that the comparison is between two u32
variables.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c  | 2 +-
 drivers/gpu/drm/i915/i915_vma_types.h       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 6900acbb1381c..1aca7552a85d0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -91,7 +91,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 		goto err;
 	}
 
-	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
+	vma->display_alignment = max(vma->display_alignment, alignment);
 
 	i915_gem_object_flush_if_display(obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index d44a152ce6800..850776a783ac7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -444,7 +444,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	if (IS_ERR(vma))
 		return vma;
 
-	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
+	vma->display_alignment = max(vma->display_alignment, alignment);
 	i915_vma_mark_scanout(vma);
 
 	i915_gem_object_flush_if_display_locked(obj);
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index ec0f6c9f57d02..0375812792b9c 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -197,7 +197,6 @@ struct i915_vma {
 	struct i915_fence_reg *fence;
 
 	u64 size;
-	u64 display_alignment;
 	struct i915_page_sizes page_sizes;
 
 	/* mmap-offset associated with fencing for this vma */
@@ -205,6 +204,7 @@ struct i915_vma {
 
 	u32 fence_size;
 	u32 fence_alignment;
+	u32 display_alignment;
 
 	/**
 	 * Count of the number of times this vma has been opened by different
-- 
2.38.1

