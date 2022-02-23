Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB294C1C88
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C09C89341;
	Wed, 23 Feb 2022 19:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D897089341
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645645658; x=1677181658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHu1nr5IXh6xp4A+yPDhs+6OHeyFTQeWKV/m44um07c=;
 b=Q2R2hCNfSusGk1ZDq6XKhMcseivssiBruIxLqOflpahN4YuCGjlgR64B
 NWTTWUGLeAGtG5EUgzb7B0X0982dEZYCPIONvZeKKDVon+hL26Vu4O9Jj
 uZYx2Stmgcha7jG3aE8wRkYMV0j8hFCPNG5Eh3tJ3K0Rt+qtUEcCVv87s
 BolrsuH5tnu5DSpVaV17inCvjSu1gzNge9A/yBss8IXU/JrqTj08KWsLA
 cVkvVXRqJwvs1GZH9YuXPCMt83oMPBLkPm5zeJEEBIZJRuYYBOt3IA8FP
 hKnQffgrkmmxChTW0tqyJh6taYss+OdOZ2Yed0D2lXDX/gfP2oqAAgZqX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="251803156"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251803156"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:47:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="548414448"
Received: from zhixinxi-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:47:32 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 11:49:46 -0800
Message-Id: <20220223194946.725328-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Check stolen memory size before
 calling drm_mm_init
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
Cc: Steve Carbonari <steven.carbonari@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add check for zero usable stolen memory before calling drm_mm_init
to support configurations where stolen memory exists but is fully
reserved.

Also skip memory test in cases that usable stolen is smaller than
page size(amount mapped and used to test memory).

v2:
- skiping test if available memory is smaller than page size (Lucas)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 9 ++++++---
 drivers/gpu/drm/i915/intel_memory_region.c | 8 ++++++--
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b9c3196b91cab..636cdf8a73b0a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -497,13 +497,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	 * memory, so just consider the start. */
 	reserved_total = stolen_top - reserved_base;
 
+	i915->stolen_usable_size =
+		resource_size(&i915->dsm) - reserved_total;
+
 	drm_dbg(&i915->drm,
 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
 		(u64)resource_size(&i915->dsm) >> 10,
-		((u64)resource_size(&i915->dsm) - reserved_total) >> 10);
+		(u64)i915->stolen_usable_size >> 10);
 
-	i915->stolen_usable_size =
-		resource_size(&i915->dsm) - reserved_total;
+	if (i915->stolen_usable_size == 0)
+		return 0;
 
 	/* Basic memrange allocator for stolen space. */
 	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index c70d7e286a512..16ab62d605b1a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -97,10 +97,14 @@ static int iomemtest(struct intel_memory_region *mem,
 		     bool test_all,
 		     const void *caller)
 {
-	resource_size_t last = resource_size(&mem->region) - PAGE_SIZE;
-	resource_size_t page;
+	resource_size_t last, page;
 	int err;
 
+	if (resource_size(&mem->region) < PAGE_SIZE)
+		return 0;
+
+	last = resource_size(&mem->region) - PAGE_SIZE;
+
 	/*
 	 * Quick test to check read/write access to the iomap (backing store).
 	 *
-- 
2.35.1

