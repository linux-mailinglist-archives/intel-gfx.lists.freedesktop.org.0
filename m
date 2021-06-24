Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA7D3B25EA
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 06:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D766E9E8;
	Thu, 24 Jun 2021 03:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDC76E9E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 03:59:57 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id h1so2263224plt.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 20:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XjEayNMlIwhFhTFpVTjls3Ls2951L1asvLWBRAdhY3Y=;
 b=G77WVjqExeZDMfTQpHWKdkz3bcIMpyywk0hn2DFzio98Q3inTQhorfjwOkm4iuNKJU
 mxuBNfP0KjCiAis8RQ+zA3fZcUX2BaLJIDg/t4p3OFlFZkwuDfR2Fh5iQuxQZe1h4JMA
 4ph+TptUQPX0BjwZV6XTittsxQASh9OxDag80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XjEayNMlIwhFhTFpVTjls3Ls2951L1asvLWBRAdhY3Y=;
 b=c8cNjKyj4DF+seshXCTlz7FeF9MADvXX/eXk18WFf98wXvcWsO27I7m7IzwJ0cCGoJ
 aWaQvQWz36Y3DVq1e75cqiC3CniP1UVUyiEtyEF7mu+W+3CVcCc1yqhLcsGErc7WWQGE
 Wq+AIdrsRaL4wMuJhVif4e2dO0Z2v2cEw4TTS3uVQTgY/50jaNhof98Emtk3FWoAb/3H
 Y2Tl1rAVeaGoQ4Y88nRiUKU+XMk0oDXHZywa6mWiP3QkSIsE0OwDR8N+P0d2oFRvqBwy
 9neKVyDD2EKFuzHky0oNGKA2mC/70R7q98bDRDofGjFtSYYmD+tOKkEKGSOVh5btLU1l
 g27Q==
X-Gm-Message-State: AOAM532QTmnp9WZZFDDprrHU9/IBr6HMiqtOw413Cu7fNn6vhvnN2gW+
 AP/etXrX/sAXkaQOCksZoVtQZQ==
X-Google-Smtp-Source: ABdhPJwBjKIdwJ67nTn5zGrOIiHK3SFb/S1q0kw7SUwOmlUsMSXtCkZWszp3zgRP4jaoChbAevZVNg==
X-Received: by 2002:a17:902:9006:b029:107:394a:387 with SMTP id
 a6-20020a1709029006b0290107394a0387mr2507432plp.35.1624507196693; 
 Wed, 23 Jun 2021 20:59:56 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:5038:6344:7f10:3690])
 by smtp.gmail.com with UTF8SMTPSA id x5sm1155975pff.37.2021.06.23.20.59.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 20:59:56 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
X-Google-Original-From: David Stevens <stevensd@google.com>
To: Marc Zyngier <maz@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Paul Mackerras <paulus@ozlabs.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Date: Thu, 24 Jun 2021 12:57:49 +0900
Message-Id: <20210624035749.4054934-7-stevensd@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
In-Reply-To: <20210624035749.4054934-1-stevensd@google.com>
References: <20210624035749.4054934-1-stevensd@google.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/gvt: use gfn_to_pfn's page instead
 of pfn
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
Cc: David Stevens <stevensd@google.com>, intel-gvt-dev@lists.freedesktop.org,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sean Christopherson <seanjc@google.com>, Joerg Roedel <joro@8bytes.org>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Return struct page instead of pfn from gfn_to_mfn. This function is only
used to determine if the page is a transparent hugepage, to enable 2MB
huge gtt shadowing. Returning the page directly avoids the risk of
calling pfn_to_page on a VM_IO|VM_PFNMAP pfn.

This change also properly releases the reference on the page returned by
gfn_to_pfn.

Signed-off-by: David Stevens <stevensd@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++++----
 drivers/gpu/drm/i915/gvt/hypercall.h |  3 ++-
 drivers/gpu/drm/i915/gvt/kvmgt.c     | 12 ++++--------
 drivers/gpu/drm/i915/gvt/mpt.h       |  8 ++++----
 4 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 9478c132d7b6..b2951c560582 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1160,16 +1160,20 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	struct intel_gvt_gtt_entry *entry)
 {
 	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
-	unsigned long pfn;
+	struct page *page;
+	bool is_trans_huge;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
 
-	pfn = intel_gvt_hypervisor_gfn_to_mfn(vgpu, ops->get_pfn(entry));
-	if (pfn == INTEL_GVT_INVALID_ADDR)
+	page = intel_gvt_hypervisor_gfn_to_mfn_page(vgpu, ops->get_pfn(entry));
+	if (!page)
 		return -EINVAL;
 
-	return PageTransHuge(pfn_to_page(pfn));
+	is_trans_huge = PageTransHuge(page);
+	put_page(page);
+
+	return is_trans_huge;
 }
 
 static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
diff --git a/drivers/gpu/drm/i915/gvt/hypercall.h b/drivers/gpu/drm/i915/gvt/hypercall.h
index b79da5124f83..017190ff52d5 100644
--- a/drivers/gpu/drm/i915/gvt/hypercall.h
+++ b/drivers/gpu/drm/i915/gvt/hypercall.h
@@ -60,7 +60,8 @@ struct intel_gvt_mpt {
 			unsigned long len);
 	int (*write_gpa)(unsigned long handle, unsigned long gpa, void *buf,
 			 unsigned long len);
-	unsigned long (*gfn_to_mfn)(unsigned long handle, unsigned long gfn);
+	struct page *(*gfn_to_mfn_page)(unsigned long handle,
+					unsigned long gfn);
 
 	int (*dma_map_guest_page)(unsigned long handle, unsigned long gfn,
 				  unsigned long size, dma_addr_t *dma_addr);
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index b829ff67e3d9..1e97ae813ed0 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1928,21 +1928,17 @@ static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
 	return -EFAULT;
 }
 
-static unsigned long kvmgt_gfn_to_pfn(unsigned long handle, unsigned long gfn)
+static struct page *kvmgt_gfn_to_page(unsigned long handle, unsigned long gfn)
 {
 	struct kvmgt_guest_info *info;
 	kvm_pfn_t pfn;
 
 	if (!handle_valid(handle))
-		return INTEL_GVT_INVALID_ADDR;
+		return NULL;
 
 	info = (struct kvmgt_guest_info *)handle;
 
-	pfn = kvm_pfn_page_unwrap(gfn_to_pfn(info->kvm, gfn));
-	if (is_error_noslot_pfn(pfn))
-		return INTEL_GVT_INVALID_ADDR;
-
-	return pfn;
+	return gfn_to_pfn(info->kvm, gfn).page;
 }
 
 static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
@@ -2112,7 +2108,7 @@ static const struct intel_gvt_mpt kvmgt_mpt = {
 	.disable_page_track = kvmgt_page_track_remove,
 	.read_gpa = kvmgt_read_gpa,
 	.write_gpa = kvmgt_write_gpa,
-	.gfn_to_mfn = kvmgt_gfn_to_pfn,
+	.gfn_to_mfn_page = kvmgt_gfn_to_page,
 	.dma_map_guest_page = kvmgt_dma_map_guest_page,
 	.dma_unmap_guest_page = kvmgt_dma_unmap_guest_page,
 	.dma_pin_guest_page = kvmgt_dma_pin_guest_page,
diff --git a/drivers/gpu/drm/i915/gvt/mpt.h b/drivers/gpu/drm/i915/gvt/mpt.h
index 550a456e936f..9169b83cf0f6 100644
--- a/drivers/gpu/drm/i915/gvt/mpt.h
+++ b/drivers/gpu/drm/i915/gvt/mpt.h
@@ -214,17 +214,17 @@ static inline int intel_gvt_hypervisor_write_gpa(struct intel_vgpu *vgpu,
 }
 
 /**
- * intel_gvt_hypervisor_gfn_to_mfn - translate a GFN to MFN
+ * intel_gvt_hypervisor_gfn_to_mfn_page - translate a GFN to MFN page
  * @vgpu: a vGPU
  * @gpfn: guest pfn
  *
  * Returns:
- * MFN on success, INTEL_GVT_INVALID_ADDR if failed.
+ * struct page* on success, NULL if failed.
  */
-static inline unsigned long intel_gvt_hypervisor_gfn_to_mfn(
+static inline unsigned long intel_gvt_hypervisor_gfn_to_mfn_page(
 		struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	return intel_gvt_host.mpt->gfn_to_mfn(vgpu->handle, gfn);
+	return intel_gvt_host.mpt->gfn_to_mfn_page(vgpu->handle, gfn);
 }
 
 /**
-- 
2.32.0.93.g670b81a890-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
