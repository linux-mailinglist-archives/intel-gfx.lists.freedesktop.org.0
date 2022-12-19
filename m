Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F283650ACC
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 12:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867B810E22F;
	Mon, 19 Dec 2022 11:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98C410E22F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 11:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671449823; x=1702985823;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DlpFzKa8DFA7K4mS+Rw1I7R8WbelOtHAJZsbuQJC3t8=;
 b=Dpa6Gf20XXv+vkhBDwlo1UXu1f21N1WBrH0DORKS4R+Om8jpvKCN+nQC
 TKsmbe6s4eMkFb+u1R45eQPGTKsrBpwc8y6gw3R3sDLGkZ1I5MxL1EgQD
 pEP2FVTG1+/RTgKV+G7wXRkfC4X1D5WQmqZLaY5weI8crvXqR72daMSDG
 UPsvDYiTw16Cm1Cd1ps9hWKEOWl2rLGqqljy88V8FJXjTD9lZgvGsEYC6
 9u2euO3KMJGb0hhrEWiL2Mkw4n2jJue0dR05oHIZ9MWvxFIqGb5IHqkz+
 Gm3k0FyylwlP8uwt9ghhHov2bMY0enEYGepeGQC0EU7SIeYOYpwFBRxRw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="320500267"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="320500267"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 03:37:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="774896417"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="774896417"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 03:37:01 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 12:36:49 +0100
Message-Id: <20221219113649.21926-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Accomodate for nested dma_resv fence
 addition
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
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have below nested fence slot reservation and then fence addition
to that dma_resv.
dma_resv_reserve_fences() from --> ttm_bo_handle_move_mem()
        dma_resv_reserve_fences() from --> i915_vma_unbind_async()
        dma_resv_add_fence() from --> i915_vma_unbind_async()
dma_resv_add_fence() from -->ttm_bo_move_accel_cleanup()

A nested dma_resv_reserve_fences will not reserve extra slots and if the
BO comes with lots of fences in its dma_resv, we might see:

BUG_ON(fobj->num_fences >= fobj->max_fences);

Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 7d044888ac33..5ac4c1c2403c 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -2149,7 +2149,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, bool trylock_vm)
 	if (!obj->mm.rsgt)
 		return -EBUSY;
 
-	err = dma_resv_reserve_fences(obj->base.resv, 1);
+	err = dma_resv_reserve_fences(obj->base.resv, 2);
 	if (err)
 		return -EBUSY;
 
-- 
2.38.0

