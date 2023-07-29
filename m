Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A473F767AFF
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CCA10E7CA;
	Sat, 29 Jul 2023 01:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E2B10E220
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:13 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-1bbbc4ae328so20464095ad.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594573; x=1691199373;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=KVEkstowUIhz0uydwJ3D0naAJNpiwT1nt84L07RWSBY=;
 b=cBptjnD28F1FVyp+wznGyw7KjMg/GPnz8ILXKltWExLFhXSqe+0jtQK2xGbaPTZK3O
 miMTPdcFs2s4R2T+B3ErKC66EQEke3NjbxKtlhGjtiUts4iuEdlwZzTogcAWsKvWFfyU
 GkYBPBWRa7nizVMiOquTU4R6IdZ+dZikaYPSqCjnp3Q25PD+ybCcBn/auMDbT2lFZvQA
 Cu4BawW+BHw89FVuGrwFJ94zdkT9G5wvJCTDq64gqH/AX6vw64MhDePtj/Zj2N/HgJuO
 80Ui4iyxRhd53twWsg/EGdClWxzjXBKjFSxCZfe2b+vE/HYZA91j4ltVsrR2TE1gSz9q
 xkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594573; x=1691199373;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KVEkstowUIhz0uydwJ3D0naAJNpiwT1nt84L07RWSBY=;
 b=EQq61aIaXrvvIDRwyAn3152alzucEi2isjpAwgefmK304RN4GtzU15u7J7WiEg6yzp
 Gilkee28v9t/T6WfRvOJf4Iys+4zC3bMBEZr5ltgFTCans/38gTPn75uXhElRzTiVe3w
 LWdyWRovlNlntmVpHyuXEVSXdyqOUHzmrKXytRVMnJPSa0p4S1IHFnnb+q08v5FS1RRb
 IZ6BR67yBy7guCA67SICo42dJaY6SxD6UqxhzTzfE/7w5Q+2prhbGVTIZ4Kuocy4qrBV
 QZntYQQwn/R6dLhKdk3VIsMUA1l7abZz8+IKRW4/lYLm/75niNhM7R8drpfcp0wvygOl
 +QuQ==
X-Gm-Message-State: ABy/qLaYm/YpH/zB+G2a5mQNm9c9Cry1rmEMXsh4ecGv3rnA8rCZW5hw
 6QyGLPEykJ+3AMege/UTqvKiRQuX2M4=
X-Google-Smtp-Source: APBJJlEGhDRaKndv3KhETk8INTOEpj8wyYQNrpSphuEPwq7WN6PVuA5IEtE1yH/KE+Q3w6W8EjLctPNtnJc=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:dac4:b0:1bb:91c9:d334 with SMTP id
 q4-20020a170902dac400b001bb91c9d334mr11690plx.0.1690594573095; Fri, 28 Jul
 2023 18:36:13 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:21 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-16-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 15/29] KVM: drm/i915/gvt: Drop @vcpu from
 KVM's ->track_write() hook
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

Drop @vcpu from KVM's ->track_write() hook provided for external users of
the page-track APIs now that KVM itself doesn't use the page-track
mechanism.

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h |  5 ++---
 arch/x86/kvm/mmu/page_track.c         |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c      | 10 ++++------
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index eb186bc57f6a..8c4d216e3b2b 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -26,14 +26,13 @@ struct kvm_page_track_notifier_node {
 	 * It is called when guest is writing the write-tracked page
 	 * and write emulation is finished at that time.
 	 *
-	 * @vcpu: the vcpu where the write access happened.
 	 * @gpa: the physical address written by guest.
 	 * @new: the data was written to the address.
 	 * @bytes: the written length.
 	 * @node: this node
 	 */
-	void (*track_write)(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
-			    int bytes, struct kvm_page_track_notifier_node *node);
+	void (*track_write)(gpa_t gpa, const u8 *new, int bytes,
+			    struct kvm_page_track_notifier_node *node);
 	/*
 	 * It is called when memory slot is being moved or removed
 	 * users can drop write-protection for the pages in that memory slot
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 23088c90d2fd..891e5cc52b45 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -272,7 +272,7 @@ void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 	hlist_for_each_entry_srcu(n, &head->track_notifier_list, node,
 				srcu_read_lock_held(&head->track_srcu))
 		if (n->track_write)
-			n->track_write(vcpu, gpa, new, bytes, n);
+			n->track_write(gpa, new, bytes, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 
 	kvm_mmu_track_write(vcpu, gpa, new, bytes);
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 034be0655daa..e9276500435d 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -106,9 +106,8 @@ struct gvt_dma {
 #define vfio_dev_to_vgpu(vfio_dev) \
 	container_of((vfio_dev), struct intel_vgpu, vfio_device)
 
-static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
-		const u8 *val, int len,
-		struct kvm_page_track_notifier_node *node);
+static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
+				   struct kvm_page_track_notifier_node *node);
 static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 		struct kvm_memory_slot *slot,
 		struct kvm_page_track_notifier_node *node);
@@ -1603,9 +1602,8 @@ int intel_gvt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 	return 0;
 }
 
-static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
-		const u8 *val, int len,
-		struct kvm_page_track_notifier_node *node)
+static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
+				   struct kvm_page_track_notifier_node *node)
 {
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
-- 
2.41.0.487.g6d72f3e995-goog

