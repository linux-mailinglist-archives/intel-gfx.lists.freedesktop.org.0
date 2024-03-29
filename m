Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F39E8921E0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 17:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13F31120DA;
	Fri, 29 Mar 2024 16:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFS5gB8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E710210E50E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 16:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711730513; x=1743266513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VxbVCVIQ4ko6LTlKSAS3nrCTKV+D67kBRMjBHLMc6bU=;
 b=fFS5gB8jwENpEzUCJ3paaJ0z6pYMRp1CZI5TVxG5sP0q1+S49+zHvwuB
 P4H5jiFL88AYlbOhlU4H51WPumZR1rfhD9k0PAqJfKqusFXXpcxkVDvw0
 LynBPzIrvumDZNzIo/lNfVia8mIdwWEgffsv/90AjPUNaWJi3HaQLzQlu
 LeTu0qUxeZcnSrw49ibt2amaTHU7bFIRqMlprURjqXLZ9vGi9wGZTT/YC
 6rAdcAZRD2on+V6R4Xbl7H9e4BNEsTLgS7peLNn6js5060eehKDAu6d+R
 UlwPvHrxx5xrrNHrIkv7RDRDgKW/LSRWlDNOGo8c2Vy9xDVA+exVSKLFK w==;
X-CSE-ConnectionGUID: J4kMz2WsSkiUL/Nz5szwKg==
X-CSE-MsgGUID: gJGhmy0+RaK8iqEUmuuvaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="10707528"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="10707528"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17061645"
Received: from unknown (HELO intel.com) ([10.247.118.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:41:46 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v2 1/2] drm/i915/gem: Increment vma offset when mapping fb
 objects
Date: Fri, 29 Mar 2024 17:39:58 +0100
Message-ID: <20240329163959.791865-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329163959.791865-1-andi.shyti@linux.intel.com>
References: <20240329163959.791865-1-andi.shyti@linux.intel.com>
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

