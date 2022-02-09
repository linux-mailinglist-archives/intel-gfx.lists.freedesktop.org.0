Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3520C4AFDCA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0026910E1FF;
	Wed,  9 Feb 2022 19:56:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD2010E352
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644436614; x=1675972614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BBCV4PckdaPdxbWI2fuEnpUmlZoAN9t5YtJ6bGBy5FA=;
 b=Uha8eGT3+RHU1S2+Yrlqq/zaTLkLyJvjCVOZDjebDN8YVCslJyydCSX7
 TA+TPsl6U/znXoiQLwsZtcMNXqZClToHZNW0lBTJ2tDD08WmpFF/EXnIK
 Yn9o1K0HDTTBI5DPXSTfOo8DDwfnYd+8kMjJ4yr63+9kub+FjJybi2FCu
 QIQ7lcNtHYYb3nhaRer42USyMBMH425xHIBpoLl0pSRrrlXb8u9P/U+Ku
 Yf74NZcNsPA68gFuVIamDV2pjdDsOJ6hZSmCnA55MgsvDtCYYnxueL4cQ
 4292qUM80QgiAXicmhmYx9x4UO99Oy+EzzGiyMfXQh4tLRwM+wWGOkRBb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229967154"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="229967154"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:56:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="500106666"
Received: from mfein-mobl3.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.84.234])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:56:51 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 11:58:51 -0800
Message-Id: <20220209195851.404256-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Check stolen memory size before
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
Cc: Steve Carbonari <steven.carbonari@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Steve Carbonari <steven.carbonari@intel.com>

Add check for zero usable stolen memory before calling drm_mm_init
to support configurations where stolen memory exists but is fully
reserved.

Also skip memory test in such case.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 9 ++++++---
 drivers/gpu/drm/i915/intel_memory_region.c | 5 +++++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1de73a6449652..98789a11cb413 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -496,13 +496,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	 * memory, so just consider the start. */
 	reserved_total = stolen_top - reserved_base;
 
+	i915->stolen_usable_size =
+		resource_size(&i915->dsm) - reserved_total;
+
 	drm_dbg(&i915->drm,
 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
 		(u64)resource_size(&i915->dsm) >> 10,
-		((u64)resource_size(&i915->dsm) - reserved_total) >> 10);
+		i915->stolen_usable_size >> 10);
 
-	i915->stolen_usable_size =
-		resource_size(&i915->dsm) - reserved_total;
+	if (i915->stolen_usable_size == 0)
+		return 0;
 
 	/* Basic memrange allocator for stolen space. */
 	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index c70d7e286a512..329f46f71cdce 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -205,6 +205,11 @@ static int intel_memory_region_memtest(struct intel_memory_region *mem,
 	if (!mem->io_start)
 		return 0;
 
+	if ((mem->type == INTEL_MEMORY_STOLEN_LOCAL ||
+	     mem->type == INTEL_MEMORY_STOLEN_SYSTEM) &&
+	    !drm_mm_initialized(&i915->mm.stolen))
+		return 0;
+
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) || i915->params.memtest)
 		err = iomemtest(mem, i915->params.memtest, caller);
 
-- 
2.35.1

