Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13C61FA9A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 17:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DDE10E43E;
	Mon,  7 Nov 2022 16:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B0810E43E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 16:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667840089; x=1699376089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g6mQDaj+OnxLQp8cNHKC73uPqcVmPmqfnCifJhqkR9g=;
 b=akVeQYBDpEcbxQBHNrFlTbOTwX9s7iRSbTlh5d4crthKpEOlRkGdYOTk
 bdv3XQ89x/un9TN+cdpg28r0R/S4UJWn/Z2z5CYlnQtMSYITARboi/mb9
 Xo/Jn78l0ygscM2DctdLlWa92Gs8yVSRQXcvffCZePbYJyFiuC9+pMWOw
 38N7jneBriAD3FioOa2Yr4HcZUYamR8pPXPW+RxQBPrxKiEYCwt1LiisG
 oT0Ap/RfnMwt9X2FTWyxS+gfMeR6K/K5G94fqNq6xN5jP7sUibRJ4nvEO
 Xjs+92nKIkbgBcoknDzdtrQh/8+Nkyzaf+0ap0McYN+jAlP2UjMOqOriI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="297957305"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="297957305"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 08:54:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="778559355"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="778559355"
Received: from pmesquit-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.49])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 08:54:33 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 16:54:14 +0000
Message-Id: <20221107165414.56970-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107165414.56970-1-matthew.auld@intel.com>
References: <20221107165414.56970-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/ttm: add some sanity checks for
 lmem_userfault_list
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than getting some hard to debug uaf, add some warns to hopefully
catch issues with userfault_count being non-zero when destroying the
object. Also if we somehow add an object to lmem_userfault_list that
somehow doesn't map lmem.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7469
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 9421dc4dc98f..2c8b2d5ae903 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1098,6 +1098,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		spin_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);
 		spin_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+
+		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
 	}
 
 	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
@@ -1180,6 +1182,8 @@ static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
 		}
 	}
 
+	GEM_WARN_ON(obj->userfault_count);
+
 	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
 
 	if (wakeref)
-- 
2.38.1

