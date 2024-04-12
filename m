Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392CF8A2303
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 02:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1EA10F075;
	Fri, 12 Apr 2024 00:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzahAkdY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0576E10F075
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 00:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712882946; x=1744418946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VxbVCVIQ4ko6LTlKSAS3nrCTKV+D67kBRMjBHLMc6bU=;
 b=kzahAkdY8XdEJWHlxvKKarhzJRFRxz3tvVQFmHX5OYQb6QeftcdUEmKL
 i2kSiGRSCIy5zI2om9oXpuHNpNgGfDTHBiZrIyuuKRAvV1WlBme1LzXoD
 n9LSyEmWCnp21QC1qR+GKFo9ZJP31LhKsEbYfM4t1DEFhbCP4jotl6ytQ
 V7MlMsdDZZehwREgWxzvS0hJhVL1diArGWxhuNGR0gK/LcdaWa3pAfyva
 jPLqjE8FqCLgRgvcSbKcHq3JUfEH7RyU/9iaJ72fkFnQdePS4W66eM7vM
 zDD6IGBf1IhQtNJVtPJv7k5Tq7eKiKuEP650OhTrwcSTplmyzsYagG+xF w==;
X-CSE-ConnectionGUID: 9qZr7GMhR/OCM7rNcgDFxQ==
X-CSE-MsgGUID: 5wKkEMkJTsahHzRV9hkysg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8435587"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="8435587"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:06 -0700
X-CSE-ConnectionGUID: 7Tti4fCVQj6uvs5atAhoWg==
X-CSE-MsgGUID: JuIyX6VFQR6Nn8ZBG3XtJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="25727592"
Received: from unknown (HELO intel.com) ([10.247.119.7])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:01 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v3 1/3] drm/i915/gem: Increment vma offset when mapping fb
 objects
Date: Fri, 12 Apr 2024 02:48:06 +0200
Message-ID: <20240412004808.288130-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412004808.288130-1-andi.shyti@linux.intel.com>
References: <20240412004808.288130-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Until now the "vm_pgoff" was not used and there has been no need
to set its offset.

But now, because we want to support partial mappings with a given
offset, we need it to be set.

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index a2195e28b625..ce10dd259812 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -1084,6 +1084,8 @@ int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma
 		mmo = mmap_offset_attach(obj, mmap_type, NULL);
 		if (IS_ERR(mmo))
 			return PTR_ERR(mmo);
+
+		vma->vm_pgoff += drm_vma_node_start(&mmo->vma_node);
 	}
 
 	/*
-- 
2.43.0

