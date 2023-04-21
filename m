Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DFD6EB0AA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 19:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C9D10E0FD;
	Fri, 21 Apr 2023 17:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C504C10E0FD;
 Fri, 21 Apr 2023 17:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682098611; x=1713634611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VRyz9rgqaZ90vMi7EIBePNer9lWyycArV6zRZxAZIi4=;
 b=hGwp4tzv1F3UKRbTmXg6guFqvEQj09edw51rB6Qi9RRXqdOebEt7CciH
 r/NY5Kcniw2aEhJA5bgEOC1qep9X4wa/NxT109Gp0IupM9UYNlVJiv1zt
 eom55pXrhw3LXQsiFvkosJ9hl59bPSBSG95tHYFcLh1ql5TrEP1GZHqVm
 J1wmhuzobW8/nluMxCEskrAPtnGLmMWEnHlTmPfqm7pkwCSehZ/P4btQX
 jqSAwV+8NYFaYYDg7KwzAfb2S++xw7+ZgXXaNYByvVCb8vgPCFe1UxaQJ
 5+khX38A0VJdH6klMig82dxMu4C0842UO4xKK50uUYj8nFzN8TP9fx6zZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="347949463"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="347949463"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 10:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="669794806"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="669794806"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 10:36:49 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 10:37:59 -0700
Message-Id: <20230421173801.3369303-7-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230421173801.3369303-1-fei.yang@intel.com>
References: <20230421173801.3369303-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/8] drm/i915: make sure correct pte encode
 is used
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

PTE encode is platform dependent. After replacing cache_level with
pat_index, the newly introduced mtl_pte_encode is actually generic
for all gen12 platforms, thus rename it to gen12_pte_encode and
apply it to all gen12 platforms.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c046813514f4..3373b2aeae86 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -55,7 +55,7 @@ static u64 gen8_pte_encode(dma_addr_t addr,
 	return pte;
 }
 
-static u64 mtl_pte_encode(dma_addr_t addr,
+static u64 gen12_pte_encode(dma_addr_t addr,
 			  unsigned int pat_index,
 			  u32 flags)
 {
@@ -994,8 +994,8 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	 */
 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
-		ppgtt->vm.pte_encode = mtl_pte_encode;
+	if (GRAPHICS_VER(gt->i915) >= 12)
+		ppgtt->vm.pte_encode = gen12_pte_encode;
 	else
 		ppgtt->vm.pte_encode = gen8_pte_encode;
 
-- 
2.25.1

