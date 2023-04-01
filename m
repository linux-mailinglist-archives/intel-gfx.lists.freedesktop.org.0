Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F4C6D2EAB
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 08:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8698B10F3C5;
	Sat,  1 Apr 2023 06:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A11010E04A;
 Sat,  1 Apr 2023 06:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680331022; x=1711867022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZQo7yknP25SitbuRWTk343nJSYVGcL363xY0j1/aQPU=;
 b=OA3OHPtOLVSfE6E/6BRkQI7U5tyP23HTgHSTNdMwd3tsrnSToK0XT/T8
 hUxl74exNDEX7CnaCWunlSx9/JF/oHjterWYaIhzO9X8LYrxVhewfrXzh
 3LW35/b4t1MevMkqVEl0GUWlQoiC1XL3FvdVPYWjfrMjgP7K98733nq4I
 +8+w9yiOFrAVZ4XhkLlGuktvg7QUWxuFz3GcVL/CQLeaj5+BUbgmEEdRK
 kKW226H+oGBDS2eFNSkp6ucqq17Xh/ufq9CUToQkbO0XN0sy6r1AFKavK
 cfS3q5df9dOoK70p8wLrK8FXI5unhuWDJ110oPMzMDGxyxiW5Vek0oPbE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="340349508"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="340349508"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 23:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="635539626"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="635539626"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 23:37:00 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 23:38:26 -0700
Message-Id: <20230401063830.438127-4-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230401063830.438127-1-fei.yang@intel.com>
References: <20230401063830.438127-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/mtl: end support for set caching
 ioctl
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

The design is to keep Buffer Object's caching policy immutable through
out its life cycle. This patch ends the support for set caching ioctl
from MTL onward. While doing that we also set BO's to be 1-way coherent
at creation time because GPU is no longer automatically snooping CPU
cache.

Signed-off-by: Fei Yang <fei.yang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 9 ++++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 497de40b8e68..33b73bea1e08 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -335,6 +335,9 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 	if (IS_DGFX(i915))
 		return -ENODEV;
 
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		return -EOPNOTSUPP;
+
 	switch (args->caching) {
 	case I915_CACHING_NONE:
 		level = I915_CACHE_NONE;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 37d1efcd3ca6..e602c323896b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -601,7 +601,14 @@ static int shmem_object_init(struct intel_memory_region *mem,
 	obj->write_domain = I915_GEM_DOMAIN_CPU;
 	obj->read_domains = I915_GEM_DOMAIN_CPU;
 
-	if (HAS_LLC(i915))
+	/*
+	 * MTL doesn't snooping CPU cache by default for GPU access (namely
+	 * 1-way coherency). However some UMD's are currently depending on
+	 * that. Make 1-way coherent the default setting for MTL. A follow
+	 * up patch will extend the GEM_CREATE uAPI to allow UMD's specify
+	 * caching mode at BO creation time
+	 */
+	if (HAS_LLC(i915) || (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)))
 		/* On some devices, we can have the GPU use the LLC (the CPU
 		 * cache) for about a 10% performance improvement
 		 * compared to uncached.  Graphics requests other than
-- 
2.25.1

