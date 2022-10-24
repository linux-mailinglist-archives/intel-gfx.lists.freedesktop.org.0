Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5060AE09
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74BE10E7F9;
	Mon, 24 Oct 2022 14:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFC410E7F6;
 Mon, 24 Oct 2022 14:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666622767; x=1698158767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p425KQQm13vTLx6m+APtuHO/dur6RYbX9RScRJfipbc=;
 b=dklogAhFEnD1L1/m5g8P9PJZcfsRILznIGPc6B4v9FUIBT0hcHfbqbfA
 vflEVgyFNf8XK6BX3kBHUDtQNbmOSYS3n6KT1FhDDk+AB8BL5erN6XeKL
 3fbCPwshTc8ovOvNYemnUl3dSXX8MRyl7QBAg9eEV5rsLIC01ydWMXim7
 87o2KepLGIoKXhcnlpZd1KUPjw3xMj6Qkv3RKIgagM66VeR+YhmiF1pTb
 +jfHbu7Y47d7DMh/jxH6jZvutkNi1G/DTxB0i0U210Mncu36LgMrTqGKv
 9jwQp2uc5mdO9RjekwR/YRyRu+EvA3Ox5F2Vv04NrGdSayIhyX0d5QN33 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="393751568"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="393751568"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:46:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="694576590"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="694576590"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:46:05 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 16:45:58 +0200
Message-Id: <20221024144558.27747-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unwanted ghost obj check
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
Cc: matthew.auld@intel.com, dri-devel@lists.freedesktop.org,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vm_fault_ttm() should not expect ttm ghost obj so remove that check.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 84c91a4228a1..4a5f9e8ee877 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1040,9 +1040,6 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	vm_fault_t ret;
 	int idx;
 
-	if (i915_ttm_is_ghost_object(bo))
-		return VM_FAULT_SIGBUS;
-
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
 		     area->vm_flags & VM_WRITE))
-- 
2.38.0

