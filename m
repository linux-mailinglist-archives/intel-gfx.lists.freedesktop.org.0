Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2EF56078C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B8C10E396;
	Wed, 29 Jun 2022 17:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7131610E232
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524650; x=1688060650;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n5ckTRTLP9wiuuQK9cU4jhKq2TqebvscpQ2sbm9TNY8=;
 b=QIhUNM5+M31zxRioNpxIKkK3TaKoBh0J/DU+Gv7PWWMkwDQaLyLQaRhx
 9xyxZFBCdrZTdzkFX4xdpeqVkOU0XikAOv9O+uGwORNBdlHKPLGkm2sTk
 ZBIx+94Y6awORr7phyi4a9LrhRLCMrXD9oKGNBJ6988zVLlQRYK3KDPqq
 hDOF/UsFepQsxawLCTvsi8/pw5N2BVzRg+hJnpFN8Yqeca2HMSM8ryni0
 h2FprDGIodf8LwQ0DH/QyiPhNsOC07xsSF9OoQjEMg+7cMbh+p1IewxgX
 03WWW+EzhffwnM/+o1McdIfvhwpp0hMWhSYR/TNzOGLPVPmvug6AKFrwA w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643928"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643928"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:10 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331034"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:09 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:42 +0100
Message-Id: <20220629174350.384910-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 05/13] drm/i915/uapi: apply ALLOC_GPU_ONLY by
 default
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

On small BAR configurations, when dealing with I915_MEMORY_CLASS_DEVICE
allocations, we assume that by default, all userspace allocations should
be placed in the non-CPU visible portion.  Note that dumb buffers are
not included here, since these are not "GPU accelerated" and likely need
CPU access. We choose to just always set GPU_ONLY, and let the backend
figure out if that should be ignored or not, for example on full BAR
systems.

In a later patch userspace will be able to provide a hint if CPU access
to the buffer is needed.

v2(Thomas)
 - Apply GPU_ONLY on all discrete devices, but only if the BO can be
   placed in LMEM. Down in the depths this should be turned into a noop,
   where required, and as an annotation it still make some sense. If we
   apply it regardless of the placements then we end up needing to check
   the placements during exec capture. Also it's slightly inconsistent
   since the NEEDS_CPU_ACCESS can only be applied on objects that can be
   placed in LMEM. The other annoyance would be gem_create_ext vs plain
   gem_create, if we were to always apply GPU_ONLY.

Testcase: igt@gem-create@create-ext-cpu-access-sanity-check
Testcase: igt@gem-create@create-ext-cpu-access-big
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 5802692ea604..d094cae0ddf1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -427,6 +427,14 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 		ext_data.n_placements = 1;
 	}
 
+	/*
+	 * TODO: add a userspace hint to force CPU_ACCESS for the object, which
+	 * can override this.
+	 */
+	if (ext_data.n_placements > 1 ||
+	    ext_data.placements[0]->type != INTEL_MEMORY_SYSTEM)
+		ext_data.flags |= I915_BO_ALLOC_GPU_ONLY;
+
 	obj = __i915_gem_object_create_user_ext(i915, args->size,
 						ext_data.placements,
 						ext_data.n_placements,
-- 
2.36.1

