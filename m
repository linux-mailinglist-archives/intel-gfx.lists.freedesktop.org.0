Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A03870131D
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF7510E700;
	Sat, 13 May 2023 00:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F9AA10E700
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:19 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-6439a13ba1eso10166795b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938179; x=1686530179;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=QU3zB5Cwatkr0fdMEPvTbhWq1D6VU1jXLa9JepDY5uU=;
 b=3qC4lnRT5bw2NczFJX2wANdCrgLr0Fat26IXtdfsarkGqxAUrg7uk8HbqgWkTe33Sw
 b+aIuL+Mt04i50Zy9YBqRrlq1hvWUAnU7Zj5O2hd03+m6KsXbrbHcNlo+aHA0GoCMwEH
 rEODLRash6rDKvb1JogFD8Afk04Osj6/wrg/KXW1kD8D/vn+F4lAPoycKNbxgfnjs29f
 LQdHyZd4q0aKkYmbAF8VdEKgYUoSyQCAoWidwHax93tFBBzcIZ4j47sA8mkHJXYLxQ+F
 LLDdcN1UPFcrF0vPkw8hUoC0ojAvvz+9xRcd4u2sQYX+P4iejVwgTh3zihsEQW7QqN66
 G3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938179; x=1686530179;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QU3zB5Cwatkr0fdMEPvTbhWq1D6VU1jXLa9JepDY5uU=;
 b=YMLmZiVjqQgvq68WNPL6hqwCzGn2qlFyQyO5b1kcAHEihUbwKV/Uk6tnJc6qcrH3vl
 XkOZzDmjDUPydxdzVFGgEPbA0sqZNpL0NRxiNWjZ6Ju3Bh3EMY63igbpyT6Yws49D0Dp
 8MXosX1AL/hZ4z2f46h0fh2cnLv5gEG9WZ20PbNCCNZxpUwWeoCLOlYoJBDmsEDdhww0
 pEPnrRYeU4X7Tvc1LrnFN7Z1FtuWpNgU59aM/RtwXjUCpe0tLaH74dK1BtDx52Yfy2AZ
 LNokfgyTZyLqtWevhkrYZBd5+u3MJArZqQ3ShGXWW+n6Quht4oDqZF4BUr5Ye2+hdbTP
 jfjQ==
X-Gm-Message-State: AC+VfDzDofInZnVkzR04BmFHgyiG0i8Qkvny/bLL8Agzl6bdRiPsm4wo
 6qkcT7gt8RXW0eBB+YHJzVpvQM2M5EY=
X-Google-Smtp-Source: ACHHUZ7ClnBUYcVx8mSjYMpZspMq7czrAvT0zLLzG4jJKWByUvAmu5aWiJlcSYbqHrxBzKhPrPSzgVnFSls=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6a00:d42:b0:643:a029:5b3f with SMTP id
 n2-20020a056a000d4200b00643a0295b3fmr7008473pfv.2.1683938179309; Fri, 12 May
 2023 17:36:19 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:39 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-8-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 07/28] drm/i915/gvt: Don't rely on KVM's
 gfn_to_pfn() to query possible 2M GTT
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
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that gvt_pin_guest_page() explicitly verifies the pinned PFN is a
transparent hugepage page, don't use KVM's gfn_to_pfn() to pre-check if a
2MiB GTT entry is possible and instead just try to map the GFN with a 2MiB
entry.  Using KVM to query pfn that is ultimately managed through VFIO is
odd, and KVM's gfn_to_pfn() is not intended for non-KVM consumption; it's
exported only because of KVM vendor modules (x86 and PPC).

Open code the check on 2MiB support instead of keeping
is_2MB_gtt_possible() around for a single line of code.

Move the call to intel_gvt_dma_map_guest_page() for a 4KiB entry into its
case statement, i.e. fork the common path into the 4KiB and 2MiB "direct"
shadow paths.  Keeping the call in the "common" path is arguably more in
the spirit of "one change per patch", but retaining the local "page_size"
variable is silly, i.e. the call site will be changed either way, and
jumping around the no-longer-common code is more subtle and rather odd,
i.e. would just need to be immediately cleaned up.

Drop the error message from gvt_pin_guest_page() when KVMGT attempts to
shadow a 2MiB guest page that isn't backed by a compatible hugepage in the
host.  Dropping the pre-check on a THP makes it much more likely that the
"error" will be encountered in normal operation.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c   | 49 ++++++--------------------------
 drivers/gpu/drm/i915/gvt/kvmgt.c |  1 -
 2 files changed, 8 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 61e38acee2d5..f505be9e647a 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1145,36 +1145,6 @@ static inline void ppgtt_generate_shadow_entry(struct intel_gvt_gtt_entry *se,
 	ops->set_pfn(se, s->shadow_page.mfn);
 }
 
-/*
- * Check if can do 2M page
- * @vgpu: target vgpu
- * @entry: target pfn's gtt entry
- *
- * Return 1 if 2MB huge gtt shadowing is possible, 0 if miscondition,
- * negative if found err.
- */
-static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
-	struct intel_gvt_gtt_entry *entry)
-{
-	const struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
-	kvm_pfn_t pfn;
-	int ret;
-
-	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
-		return 0;
-
-	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
-	if (is_error_noslot_pfn(pfn))
-		return -EINVAL;
-
-	if (!pfn_valid(pfn))
-		return -EINVAL;
-
-	ret = PageTransHuge(pfn_to_page(pfn));
-	kvm_release_pfn_clean(pfn);
-	return ret;
-}
-
 static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
 	struct intel_vgpu_ppgtt_spt *spt, unsigned long index,
 	struct intel_gvt_gtt_entry *se)
@@ -1268,7 +1238,7 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 {
 	const struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
 	struct intel_gvt_gtt_entry se = *ge;
-	unsigned long gfn, page_size = PAGE_SIZE;
+	unsigned long gfn;
 	dma_addr_t dma_addr;
 	int ret;
 
@@ -1283,6 +1253,9 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 	switch (ge->type) {
 	case GTT_TYPE_PPGTT_PTE_4K_ENTRY:
 		gvt_vdbg_mm("shadow 4K gtt entry\n");
+		ret = intel_gvt_dma_map_guest_page(vgpu, gfn, PAGE_SIZE, &dma_addr);
+		if (ret)
+			return -ENXIO;
 		break;
 	case GTT_TYPE_PPGTT_PTE_64K_ENTRY:
 		gvt_vdbg_mm("shadow 64K gtt entry\n");
@@ -1294,12 +1267,10 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 		return split_64KB_gtt_entry(vgpu, spt, index, &se);
 	case GTT_TYPE_PPGTT_PTE_2M_ENTRY:
 		gvt_vdbg_mm("shadow 2M gtt entry\n");
-		ret = is_2MB_gtt_possible(vgpu, ge);
-		if (ret == 0)
+		if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M) ||
+		    intel_gvt_dma_map_guest_page(vgpu, gfn,
+						 I915_GTT_PAGE_SIZE_2M, &dma_addr))
 			return split_2MB_gtt_entry(vgpu, spt, index, &se);
-		else if (ret < 0)
-			return ret;
-		page_size = I915_GTT_PAGE_SIZE_2M;
 		break;
 	case GTT_TYPE_PPGTT_PTE_1G_ENTRY:
 		gvt_vgpu_err("GVT doesn't support 1GB entry\n");
@@ -1309,11 +1280,7 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 		return -EINVAL;
 	}
 
-	/* direct shadow */
-	ret = intel_gvt_dma_map_guest_page(vgpu, gfn, page_size, &dma_addr);
-	if (ret)
-		return -ENXIO;
-
+	/* Successfully shadowed a 4K or 2M page (without splitting). */
 	pte_ops->set_pfn(&se, dma_addr >> PAGE_SHIFT);
 	ppgtt_set_shadow_entry(spt, &se, index);
 	return 0;
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 429f0f993a13..92ceefe1e6fb 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -162,7 +162,6 @@ static int gvt_pin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		if (npage == 0)
 			base_page = cur_page;
 		else if (page_to_pfn(base_page) + npage != page_to_pfn(cur_page)) {
-			gvt_vgpu_err("The pages are not continuous\n");
 			ret = -EINVAL;
 			npage++;
 			goto err;
-- 
2.40.1.606.ga4b1b128d6-goog

