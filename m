Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CC6767AD1
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1885610E1B7;
	Sat, 29 Jul 2023 01:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A5710E0BA
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:35:47 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-1bb8f751372so24743715ad.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594547; x=1691199347;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=YXSv3END2Klqtx+yY5wHfQk5zXL7nBePduqABQQ83FM=;
 b=xjh6WzfpEV1RIRBvrT6h0mWl/5NIXPREobuFZQi3RL9n9nfwT6WhJvboZ8uGRKYk64
 Yt/NZx5iAq6LD2P8zJHcShyTuWnPPVAVwZ7s5UC7Ub38emeW2tPRPJWKNGPu0pOkOcRv
 1hnqHWplD7S1lZ1bCLN8v1C7cg1OH5GJqLo1C/8fkmlsMCsLdOJhDbw0CMJSdIRvVJSd
 eSi31mjewEiAOjxoaWcFuJKjZhphR7SfyJeyKlx97pU2Ypr8ZdeKlp1SikYc9bVLuZnN
 FNKKGK64OIfOQQ1MnZM7dkBH/oHzh1inoFZnUulrkWaGD5+xpzezsSD+aykKUifV/NYd
 Pk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594547; x=1691199347;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YXSv3END2Klqtx+yY5wHfQk5zXL7nBePduqABQQ83FM=;
 b=QTgXCno7GGQhq/eMk3wD+s4j1WMmA9XA4jFDjyN1C9ugPvvvYRK4peqaiusJTchbxb
 KKgj+veDsoruRdnLqmZqGrb8UfOaEJX+og2ElZBBiOvwzfyyeNFx0gT5Bw3wwW7sYvBf
 iKSz9TmfLxngAqlgvrz3HVTMeoo0v1lyA1U9dauhug4YaQm6XbPyi9nQVrsx6vGpbXV8
 VBSeYr9f2Adphfqyf60ipnvTotwIeVifjO0qLdWOuSsCTjyxTRae/RFjKoARYXauQiVV
 6gx9bVLmIT7xDDM3Gq7W9Bt/F+MjJ2mjf6AMm2EjNOzWN6uf5Qy9HOgHQ6g0C/BrJ33H
 61IQ==
X-Gm-Message-State: ABy/qLZ+lATJqK3PW++emH0j3loHoXzW/UwlrlFrha/V4n01v54x5jvN
 oa0PR98glwvXnAbFtB8uZf+HYjZ7kDg=
X-Google-Smtp-Source: APBJJlE04anqFJHsZ9xRSAXjata30eLPyNsuSxyxD1HAJrkEtTHP+UsU3nIWi5hxRkWaA/cKbC5UTvclk9Y=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:ce84:b0:1b8:2cee:946b with SMTP id
 f4-20020a170902ce8400b001b82cee946bmr15038plg.11.1690594546523; Fri, 28 Jul
 2023 18:35:46 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:08 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-3-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 02/29] drm/i915/gvt: remove interface
 intel_gvt_is_valid_gfn
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
Reply-To: Sean Christopherson <seanjc@google.com>
Cc: Yan Zhao <yan.y.zhao@intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Yan Zhao <yan.y.zhao@intel.com>

Currently intel_gvt_is_valid_gfn() is called in two places:
(1) shadowing guest GGTT entry
(2) shadowing guest PPGTT leaf entry,
which was introduced in commit cc753fbe1ac4
("drm/i915/gvt: validate gfn before set shadow page entry").

However, now it's not necessary to call this interface any more, because
a. GGTT partial write issue has been fixed by
   commit bc0686ff5fad
   ("drm/i915/gvt: support inconsecutive partial gtt entry write")
   commit 510fe10b6180
   ("drm/i915/gvt: fix a bug of partially write ggtt enties")
b. PPGTT resides in normal guest RAM and we only treat 8-byte writes
   as valid page table writes. Any invalid GPA found is regarded as
   an error, either due to guest misbehavior/attack or bug in host
   shadow code.
   So,rather than do GFN pre-checking and replace invalid GFNs with
   scratch GFN and continue silently, just remove the pre-checking and
   abort PPGTT shadowing on error detected.
c. GFN validity check is still performed in
   intel_gvt_dma_map_guest_page() --> gvt_pin_guest_page().
   It's more desirable to call VFIO interface to do both validity check
   and mapping.
   Calling intel_gvt_is_valid_gfn() to do GFN validity check from KVM side
   while later mapping the GFN through VFIO interface is unnecessarily
   fragile and confusing for unaware readers.

Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
[sean: remove now-unused local variables]
Acked-by: Zhi Wang <zhi.a.wang@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 36 +---------------------------------
 1 file changed, 1 insertion(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 58b9b316ae46..f30922c55a0c 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -49,22 +49,6 @@
 static bool enable_out_of_sync = false;
 static int preallocated_oos_pages = 8192;
 
-static bool intel_gvt_is_valid_gfn(struct intel_vgpu *vgpu, unsigned long gfn)
-{
-	struct kvm *kvm = vgpu->vfio_device.kvm;
-	int idx;
-	bool ret;
-
-	if (!test_bit(INTEL_VGPU_STATUS_ATTACHED, vgpu->status))
-		return false;
-
-	idx = srcu_read_lock(&kvm->srcu);
-	ret = kvm_is_visible_gfn(kvm, gfn);
-	srcu_read_unlock(&kvm->srcu, idx);
-
-	return ret;
-}
-
 /*
  * validate a gm address and related range size,
  * translate it to host gm address
@@ -1333,11 +1317,9 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 static int ppgtt_populate_spt(struct intel_vgpu_ppgtt_spt *spt)
 {
 	struct intel_vgpu *vgpu = spt->vgpu;
-	struct intel_gvt *gvt = vgpu->gvt;
-	const struct intel_gvt_gtt_pte_ops *ops = gvt->gtt.pte_ops;
 	struct intel_vgpu_ppgtt_spt *s;
 	struct intel_gvt_gtt_entry se, ge;
-	unsigned long gfn, i;
+	unsigned long i;
 	int ret;
 
 	trace_spt_change(spt->vgpu->id, "born", spt,
@@ -1354,13 +1336,6 @@ static int ppgtt_populate_spt(struct intel_vgpu_ppgtt_spt *spt)
 			ppgtt_generate_shadow_entry(&se, s, &ge);
 			ppgtt_set_shadow_entry(spt, &se, i);
 		} else {
-			gfn = ops->get_pfn(&ge);
-			if (!intel_gvt_is_valid_gfn(vgpu, gfn)) {
-				ops->set_pfn(&se, gvt->gtt.scratch_mfn);
-				ppgtt_set_shadow_entry(spt, &se, i);
-				continue;
-			}
-
 			ret = ppgtt_populate_shadow_entry(vgpu, spt, i, &ge);
 			if (ret)
 				goto fail;
@@ -2335,14 +2310,6 @@ static int emulate_ggtt_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		m.val64 = e.val64;
 		m.type = e.type;
 
-		/* one PTE update may be issued in multiple writes and the
-		 * first write may not construct a valid gfn
-		 */
-		if (!intel_gvt_is_valid_gfn(vgpu, gfn)) {
-			ops->set_pfn(&m, gvt->gtt.scratch_mfn);
-			goto out;
-		}
-
 		ret = intel_gvt_dma_map_guest_page(vgpu, gfn, PAGE_SIZE,
 						   &dma_addr);
 		if (ret) {
@@ -2359,7 +2326,6 @@ static int emulate_ggtt_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		ops->clear_present(&m);
 	}
 
-out:
 	ggtt_set_guest_entry(ggtt_mm, &e, g_gtt_index);
 
 	ggtt_get_host_entry(ggtt_mm, &e, g_gtt_index);
-- 
2.41.0.487.g6d72f3e995-goog

