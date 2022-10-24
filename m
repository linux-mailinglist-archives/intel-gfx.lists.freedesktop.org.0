Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DD4609ED9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 12:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CE910E32B;
	Mon, 24 Oct 2022 10:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742B810E30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 10:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666606842; x=1698142842;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cDNhZRXvixcVXhj1gOFT90aB3LbwmwTtLcH4bT8XJIc=;
 b=QQIvHCoX8Yj/haiZ2vtO4gwtr3LO9ism1QalrB3eg2hP2hpevLPs5aaS
 wJfbI4gZxcODoVw8RICy6LO7I4HtYNAfhcG/b7ifTsmpFCKXeV9JuMIhK
 XxMLZEM9ivYD4sXL1VjxjuOcBtnMV5EucWconNuQAcCDpfeVe4KyGrysB
 Zti/csDV/fAgCFsIsLqQh7obAHKBB6UWou4S2rQBk1yfVXJDG3kVObVfv
 sNPdxGEPBciTgDk8gfSEBFnjDUIzFIigsH0TI/FKSU3bqiw+UM1dLYvvw
 C61oja3QpRmEVfRea1IrMi00G4JQQ1YNJILFMSsOV0YgmSA9cOYYFxg/O A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="308477461"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="308477461"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 03:20:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="773770667"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="773770667"
Received: from cwilso3-mobl.fi.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.13.22])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 03:20:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 11:19:46 +0100
Message-Id: <20221024101946.28974-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/uapi: expose GTT alignment"
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
 Michal Mrozek <michal.mrozek@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The process for merging uAPI is to have UMD side ready and reviewed and
merged before merging. Revert for now until that is ready.

This reverts commit d54576a074a29d4901d0a693cd84e1a89057f694.

Reported-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Yang A Shi <yang.a.shi@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_query.c |  1 -
 include/uapi/drm/i915_drm.h       | 29 ++---------------------------
 2 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 111377f210ed..6ec9c9fb7b0d 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -498,7 +498,6 @@ static int query_memregion_info(struct drm_i915_private *i915,
 		info.region.memory_class = mr->type;
 		info.region.memory_instance = mr->instance;
 		info.probed_size = mr->total;
-		info.gtt_alignment = mr->min_page_size;
 
 		if (mr->type == INTEL_MEMORY_LOCAL)
 			info.probed_cpu_visible_size = mr->io_size;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index c2dce8633005..9bf281ec1125 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3466,33 +3466,8 @@ struct drm_i915_memory_region_info {
 	/** @region: The class:instance pair encoding */
 	struct drm_i915_gem_memory_class_instance region;
 
-	union {
-		/** @rsvd0: MBZ */
-		__u32 rsvd0;
-		/**
-		 * @gtt_alignment:
-		 *
-		 * The minimum required GTT alignment for this type of memory.
-		 * When allocating a GTT address it must be aligned to this
-		 * value or larger. On some platforms the kernel might opt to
-		 * using 64K pages for I915_MEMORY_CLASS_DEVICE, where 64K GTT
-		 * pages can then be used if we also use 64K GTT alignment.
-		 *
-		 * NOTE: If this is zero then this must be an older
-		 * kernel which lacks support for this field.
-		 *
-		 * Side note: For larger objects (especially for
-		 * I915_MEMORY_CLASS_DEVICE), like 2M+ in size, userspace should
-		 * consider potentially bumping the GTT alignment to say 2M,
-		 * which could potentially increase the likelihood of the kernel
-		 * being able to utilise 2M GTT pages underneath, if the layout
-		 * of the physical pages allows it.  On some configurations we
-		 * can then also use a more efficient page-table layout, if we
-		 * can't use the more desirable 2M GTT page, so long as we know
-		 * that the entire page-table will be used by this object.
-		 */
-		__u32 gtt_alignment;
-	};
+	/** @rsvd0: MBZ */
+	__u32 rsvd0;
 
 	/**
 	 * @probed_size: Memory probed by the driver
-- 
2.37.3

