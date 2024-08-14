Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0F3951C28
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 15:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB0910E48E;
	Wed, 14 Aug 2024 13:49:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gq76VKlm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E3F10E48E;
 Wed, 14 Aug 2024 13:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723643355; x=1755179355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vTqUHZqA7usgq9kgddnWezt5lRif8yqQwvYqhBZPvwQ=;
 b=Gq76VKlmb+3nAlC+9b3Z5nyCObJriYGad6zP6aFVpD1nfR5XzBcuHGLt
 L2kU1qyvAqjNWm1KMhFNwTTwAU0BQpAaybFit4OnCrwVjizPQiguo1/x+
 Mjvot+gTeo4W0Y23ru1bYB+b+GUFyDV97BWVjkZj21wRgM4Zma4SUIuTy
 CjeR7f/0t6aZUxLaAKUh1uDI/eog2OFMC1SF65q5a4z2vpRvIR4jNVp4z
 M7zUsd7trcjC7McyAtV/t2AEgAdZVF5LKeldwNAeL9Giiid7lCeE6hvuH
 nPx5A94lkLiNNKqcJE2dKhtj5bURQRtV+zaI/o3TbDYKnq6eScJpetMwV g==;
X-CSE-ConnectionGUID: R1/MnoI/TNKSx+pYNDg9cQ==
X-CSE-MsgGUID: P1AomcQqQ/a+LQp/kOG6/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="22017038"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="22017038"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:49:15 -0700
X-CSE-ConnectionGUID: X9eRolRoTeqJ5Co2KBnW7w==
X-CSE-MsgGUID: OMz9zVU2TXihxTGfq1SLgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="63900901"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.62])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:49:12 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sima <daniel.vetter@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v2 1/2] drm/i915/gem: Do not look for the exact address in node
Date: Wed, 14 Aug 2024 15:48:36 +0200
Message-ID: <20240814134837.116498-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240814134837.116498-1-andi.shyti@linux.intel.com>
References: <20240814134837.116498-1-andi.shyti@linux.intel.com>
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
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index e9b2424156f0..99fde0a05632 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -1079,9 +1079,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 
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
2.45.2

