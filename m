Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE866B5672
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E9D10EA55;
	Sat, 11 Mar 2023 00:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BF310EA4E
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:36 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 z2-20020a170903018200b0019cfc0a566eso3644044plg.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494216;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=cBGww55IndFADhIi2gRbx4Eeimb9jS14b01/bq24sKw=;
 b=J8wTjmxdI+plA71tRLSg8eCh1bN9Lz2/OIIgJap9P5jXtPhLryn2LEF1p1sc9tZjU8
 4vS874K7XciuSgn0eiec1PcGsdqql108dxgZeKAqbXcPlDzxFFKAJemxT3cn0ycx4F8J
 t9L+hetSFEeVGYscMsUb5ZzpF9QwA35B2UKLfa4mhSm+ngdPkxKQq0JY1bx+ciShDMlC
 Wp/2I4IFek/KNChmcVOW31RdlZoZ7D5sM4+f0EEkuryJ+yNzTa5gnkVLftItV4cHkmjf
 XWuCayNALVHuXnaUNaoruV7E/vd1uL0dFBcXHDoSaZL9BfdzQ8jny/fVecLu7+dfQzI/
 oomg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494216;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cBGww55IndFADhIi2gRbx4Eeimb9jS14b01/bq24sKw=;
 b=PObsoduEpNqfcOpVWIRkj4XGSz3HxXFPtQTYhGqOrVtBjvSDRhfupSYAnfhXnztPTR
 ngDWeLcz0Jhf4wciurZ+TVV/12BZ2U9jEg2V/itLNRDhfGfw9Lv0sGpkcHHhbbM4B415
 zucEL2OaufstiAaFmiyLhdfcf/Ffw8CNxU6eFUMInysLlYdn88Rq6VpVadK3TwUw+6C3
 qsjUjOLK2ffCDhEQd4d3y2Ij2tUBB2xj7Mtd802ALkYwOHH3SO+bT03cntzI67VRIE6x
 IfSWRejHNQ+g99q6oocGkA2ZAC9hIRdt8wPfBDTcsS1XdFKSrg8lZ8mGjWBhQgcnRYX7
 Iq9g==
X-Gm-Message-State: AO0yUKUetqfdgXMoK1O6PQnj2gwGB7Lqlb2ac9DOF4pVEPCu4zOkUIO9
 KEIoCcGDpstykIxUe53ljkfPnSCELRY=
X-Google-Smtp-Source: AK7set+nqi2SIsWUy3sc4zAQWFcXXXBIr9W1CBybe0Jv9RMc0f5Y42RcGi60RF3FtsfsuFvm8air7ugvJu0=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:a23:b0:23b:353a:2e24 with SMTP id
 o32-20020a17090a0a2300b0023b353a2e24mr78453pjo.5.1678494216070; Fri, 10 Mar
 2023 16:23:36 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:47 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-17-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 16/27] KVM: x86: Add a new page-track hook to
 handle memslot deletion
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

From: Yan Zhao <yan.y.zhao@intel.com>

Add a new page-track hook, track_remove_region(), that is called when a
memslot DELETE operation is about to be committed.  The "remove" hook
will be used by KVMGT and will effectively replace the existing
track_flush_slot() altogether now that KVM itself doesn't rely on the
"flush" hook either.

The "flush" hook is flawed as it's invoked before the memslot operation
is guaranteed to succeed, i.e. KVM might ultimately keep the existing
memslot without notifying external page track users, a.k.a. KVMGT.  In
practice, this can't currently happen on x86, but there are no guarantees
that won't change in the future, not to mention that "flush" does a very
poor job of describing what is happening.

Pass in the gfn+nr_pages instead of the slot itself so external users,
i.e. KVMGT, don't need to exposed to KVM internals (memslots).  This will
help set the stage for additional cleanups to the page-track APIs.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
Co-developed-by: Sean Christopherson <seanjc@google.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h | 12 ++++++++++++
 arch/x86/kvm/mmu/page_track.c         | 23 +++++++++++++++++++++++
 arch/x86/kvm/x86.c                    |  3 +++
 3 files changed, 38 insertions(+)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 6a287bcbe8a9..152c5e7d7868 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -43,6 +43,17 @@ struct kvm_page_track_notifier_node {
 	 */
 	void (*track_flush_slot)(struct kvm *kvm, struct kvm_memory_slot *slot,
 			    struct kvm_page_track_notifier_node *node);
+
+	/*
+	 * Invoked when a memory region is removed from the guest.  Or in KVM
+	 * terms, when a memslot is deleted.
+	 *
+	 * @gfn:       base gfn of the region being removed
+	 * @nr_pages:  number of pages in the to-be-removed region
+	 * @node:      this node
+	 */
+	void (*track_remove_region)(gfn_t gfn, unsigned long nr_pages,
+				    struct kvm_page_track_notifier_node *node);
 };
 
 int kvm_page_track_init(struct kvm *kvm);
@@ -77,6 +88,7 @@ kvm_page_track_unregister_notifier(struct kvm *kvm,
 void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 			  int bytes);
 void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
+void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
 
 bool kvm_page_track_has_external_user(struct kvm *kvm);
 
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 1cfc0a0ccc23..d4a8a995276a 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -304,6 +304,29 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
 	srcu_read_unlock(&head->track_srcu, idx);
 }
 
+/*
+ * Notify external page track nodes that a memory region is being removed from
+ * the VM, e.g. so that users can free any associated metadata.
+ */
+void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
+{
+	struct kvm_page_track_notifier_head *head;
+	struct kvm_page_track_notifier_node *n;
+	int idx;
+
+	head = &kvm->arch.track_notifier_head;
+
+	if (hlist_empty(&head->track_notifier_list))
+		return;
+
+	idx = srcu_read_lock(&head->track_srcu);
+	hlist_for_each_entry_srcu(n, &head->track_notifier_list, node,
+				srcu_read_lock_held(&head->track_srcu))
+		if (n->track_remove_region)
+			n->track_remove_region(slot->base_gfn, slot->npages, n);
+	srcu_read_unlock(&head->track_srcu, idx);
+}
+
 enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
 					       enum pg_level max_level)
 {
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 47ac9291cd43..0da5ff007d20 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12645,6 +12645,9 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 				const struct kvm_memory_slot *new,
 				enum kvm_mr_change change)
 {
+	if (change == KVM_MR_DELETE)
+		kvm_page_track_delete_slot(kvm, old);
+
 	if (!kvm->arch.n_requested_mmu_pages &&
 	    (change == KVM_MR_CREATE || change == KVM_MR_DELETE)) {
 		unsigned long nr_mmu_pages;
-- 
2.40.0.rc1.284.g88254d51c5-goog

