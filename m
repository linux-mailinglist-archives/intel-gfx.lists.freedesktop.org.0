Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B484560793
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F1F10EDA6;
	Wed, 29 Jun 2022 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D1310E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524654; x=1688060654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qaafeqjiidfwOCKizyQ1wuLORe0zF3uc0Q7VB8PtMXU=;
 b=DddN1WSHWVLZp4h9+dDh8aqWhLiIenJLy2HGxpx+OqSa0Chg5RnD8XRP
 nKwKS3dcxzL44ayn/l7vasQBsQXgm76noGAGroo5aPipG2NP/6b8E+Moz
 eQpqibW+hnQMJyI5egRvNLPhuidNXuLD9Nsc5l+Nc1EsHcOwpiVgfjHhi
 qJZIFkfWMwFQg20soI1A8y5pkUtL4l1jcyzC/2R+dKku5ffjwEAyqXX5M
 bfNpcriH9mDmZJNiukcW3taqkivN0UL63RWVSuhoQIUEkBxSPsWixKP00
 ocbmGsq6stPai7xNxbBC5fxOtQU03VmFR3z2K4kdVDciN0ZxaXAe02thM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643942"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643942"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331066"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:13 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:46 +0100
Message-Id: <20220629174350.384910-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 09/13] drm/i915/selftests: skip the mman tests
 for stolen
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

It's not supported, and just skips later anyway. With small-BAR things
get more complicated since all of stolen is likely not even CPU
accessible, hence not passing I915_BO_ALLOC_GPU_ONLY just results in the
object create failing.

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
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 5bc93a1ce3e3..388c85b0f764 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -979,6 +979,9 @@ static int igt_mmap(void *arg)
 		};
 		int i;
 
+		if (mr->private)
+			continue;
+
 		for (i = 0; i < ARRAY_SIZE(sizes); i++) {
 			struct drm_i915_gem_object *obj;
 			int err;
@@ -1435,6 +1438,9 @@ static int igt_mmap_access(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
+		if (mr->private)
+			continue;
+
 		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (obj == ERR_PTR(-ENODEV))
 			continue;
@@ -1580,6 +1586,9 @@ static int igt_mmap_gpu(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
+		if (mr->private)
+			continue;
+
 		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (obj == ERR_PTR(-ENODEV))
 			continue;
@@ -1727,6 +1736,9 @@ static int igt_mmap_revoke(void *arg)
 		struct drm_i915_gem_object *obj;
 		int err;
 
+		if (mr->private)
+			continue;
+
 		obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &mr, 1);
 		if (obj == ERR_PTR(-ENODEV))
 			continue;
-- 
2.36.1

