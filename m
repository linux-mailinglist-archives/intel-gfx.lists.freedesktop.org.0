Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF32D4C4811
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 15:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3147810E26C;
	Fri, 25 Feb 2022 14:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA48210E137;
 Fri, 25 Feb 2022 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645800973; x=1677336973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aLPC4yXn75Rt08XtRxF/72DJ5ykDhSZLlYFsmAMX4Bo=;
 b=QFqvTifa3Yf2WV+kWOEheqgdIqONuKxH5/0rJru6XZr3Pn5DtwLmfj3d
 vYswVgXygyDE2IsSDbN4gvUPkbYRiYB3QLi45C1hV2T4QQXBc1l2SfJw4
 8BAMELTXDRSLezIZ7fPtibI3o8ZDJaFLR3ESilNEeMuTFX5tYcmhUJqqU
 tys0X2L/N8hJMElu7Fn6V8elHidIROTLddCAEgs+2P572j3AE7dDNVAME
 4kZB1RlL8y/B/IJlJekAthpoX+OQClaVGztdDs/lG66BGfZLtVZTJAZSp
 wfH9+poJi31sBGKPOm5VFNu0FZmifs7OnPOfFgUapfBURVgaEOQNcGYgS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252237226"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252237226"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:12 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707882127"
Received: from phelanmi-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.25.227])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:11 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 14:54:57 +0000
Message-Id: <20220225145502.331818-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225145502.331818-1-matthew.auld@intel.com>
References: <20220225145502.331818-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/7] drm/i915/ttm: require mappable by default
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

On devices with non-mappable LMEM ensure we always allocate the pages
within the mappable portion. For now we assume that all LMEM buffers
will require CPU access, which is also inline with pretty much all
current kernel internal users. In the next patch we will introduce a new
flag to override this behaviour.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++++
 drivers/gpu/drm/i915/intel_region_ttm.c | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 53c183f13a38..0363987dee97 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -130,6 +130,10 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags = TTM_PL_FLAG_CONTIGUOUS;
+	if (mr->io_size && mr->io_size < mr->total) {
+		place->fpfn = 0;
+		place->lpfn = mr->io_size >> PAGE_SHIFT;
+	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 7dea07c579aa..5a40310d6fdd 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -199,6 +199,11 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	struct ttm_resource *res;
 	int ret;
 
+	if (mem->io_size && mem->io_size < mem->total) {
+		place.fpfn = 0;
+		place.lpfn = mem->io_size >> PAGE_SHIFT;
+	}
+
 	mock_bo.base.size = size;
 	mock_bo.bdev = &mem->i915->bdev;
 	place.flags = flags;
-- 
2.34.1

