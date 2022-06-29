Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E6E55FF65
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 14:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4911311346E;
	Wed, 29 Jun 2022 12:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BAF112917;
 Wed, 29 Jun 2022 12:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656504896; x=1688040896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ErKb+5nswO11npB7mIH/K/2A00HYCX+pE3E4iwkK6Tc=;
 b=h6fZZFuHIhPG6sSgYi3oZ4329Oettzcqwa9HOcizXTHgIbu0oPsstuod
 B60kH03qynErAl6LxK/RQsDoLLljqLJ8Ev9aKKSb6mD1JSeYGiGpj9N5B
 xwfFcQXDykBekZSSeO2Fmn/FE1nAMaanFChdBOHUELMZAcetZWeAoMZYG
 at0D8/MUcoqJhho0pF/k7l5B6PzUO1/xMLLRrWN2yvNDzroo0TEPpVKIB
 oeOVqVOyhZ6DDvmUSAe1qG1wWAFxrNk3zi82FSCHqZu8G336OsywA0y0f
 Cq+FuLeyGdgYAys34tU2gMbZxcBhNNQ+LlRV3/iMU/CntDW1DdZyq5+vz A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="262421382"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="262421382"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 05:14:56 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595215036"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 05:14:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 13:14:18 +0100
Message-Id: <20220629121427.353800-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629121427.353800-1-matthew.auld@intel.com>
References: <20220629121427.353800-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/13] drm/i915: remove intel_memory_region
 avail
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No longer used.

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
 drivers/gpu/drm/i915/intel_memory_region.c | 4 +---
 drivers/gpu/drm/i915/intel_memory_region.h | 1 -
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 94ee26e99549..9a4a7fb55582 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -198,8 +198,7 @@ void intel_memory_region_debug(struct intel_memory_region *mr,
 	if (mr->region_private)
 		ttm_resource_manager_debug(mr->region_private, printer);
 	else
-		drm_printf(printer, "total:%pa, available:%pa bytes\n",
-			   &mr->total, &mr->avail);
+		drm_printf(printer, "total:%pa bytes\n", &mr->total);
 }
 
 static int intel_memory_region_memtest(struct intel_memory_region *mem,
@@ -242,7 +241,6 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->min_page_size = min_page_size;
 	mem->ops = ops;
 	mem->total = size;
-	mem->avail = mem->total;
 	mem->type = type;
 	mem->instance = instance;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 2214f251bec3..2953ed5c3248 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -75,7 +75,6 @@ struct intel_memory_region {
 	resource_size_t io_size;
 	resource_size_t min_page_size;
 	resource_size_t total;
-	resource_size_t avail;
 
 	u16 type;
 	u16 instance;
-- 
2.36.1

