Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D87DD8A2308
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 02:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2537410F1CB;
	Fri, 12 Apr 2024 00:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gsAMmA3s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436AC10F1CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 00:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712882957; x=1744418957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qW1Q1gTbeP4nk5zYjdJsRGOMzvFe/UltiAsdWbLa7xQ=;
 b=gsAMmA3sZfOBCDRDVxOpVgR6P3BtcSCvMIHcZ3ep/koc7qd8FsL2b2Py
 N9mNtPfBT5DZ+8mQhsoCwVKPe5qcrNPvGh/ZgRIkTCzJa4pb61pGahQdX
 eK509GAeCPowYXUjpl675Hia94+VKiWdeHeTpEnf/AOezsKHHsYTqNT8i
 RH+fiNCYp6biG0pHg0zXE0+rzFx7ploaeRi1XDhIuXwuXJZdYNxst3rzC
 d6Z63Qi94ZtDG60nB8hqCYBelPRqyY5pYa3oyRXEzBr+xX4/swulH7YI6
 8xDy/Vud3Gi5p9Xc8QY4EomGIrsjYU8xIdhSh3lt6ge/EZ0V3RZTIpH57 g==;
X-CSE-ConnectionGUID: Fz0oxrceRQW3t+RCy1V+0A==
X-CSE-MsgGUID: NizZxxfSQTeWJbW5vtlRCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="30808382"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="30808382"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:17 -0700
X-CSE-ConnectionGUID: 1ZnzRbp1TXyq70HZgtc9Sg==
X-CSE-MsgGUID: Z6mz3f1eQUiG7OaKDP7Dug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="20984549"
Received: from unknown (HELO intel.com) ([10.247.119.7])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 17:49:13 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v3 2/3] drm/i915/gem: Do not look for the exact address in node
Date: Fri, 12 Apr 2024 02:48:07 +0200
Message-ID: <20240412004808.288130-3-andi.shyti@linux.intel.com>
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

In preparation for the upcoming partial memory mapping feature,
we want to make sure that when looking for a node we consider
also the offset and not just the starting address of the virtual
memory node.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ce10dd259812..4e57844a9ebb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -1030,9 +1030,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 
 	rcu_read_lock();
 	drm_vma_offset_lock_lookup(dev->vma_offset_manager);
-	node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
-						  vma->vm_pgoff,
-						  vma_pages(vma));
+	node = drm_vma_offset_lookup_locked(dev->vma_offset_manager,
+					    vma->vm_pgoff,
+					    vma_pages(vma));
 	if (node && drm_vma_node_is_allowed(node, priv)) {
 		/*
 		 * Skip 0-refcnted objects as it is in the process of being
-- 
2.43.0

