Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F97654A1F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F2610E604;
	Fri, 23 Dec 2022 00:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B7310E5F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:10 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 b16-20020a17090a551000b00225aa26f1dbso1772507pji.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=X9EHB+RzWsWWDtGZg2fi2KUK6Xky3sXoaWyuBFV7tYw=;
 b=faSnv4jQrmW5NUcqzJ2WGLzWcQllkNhqoyOREQMeig2czZ8KGDuFWyKa6x847GE+VX
 o/P3LUqleQwxYP3TQaf4XGOp37Ot02n5vwTtLgPoEsMUKlATkqax06ahv17x5FpsTCTu
 09SIQXfz/4xxcXAAaeUEvXMOXUISpYK0NVGDB9qKyC/vvx4ccCdga81eEfDrQt3zdISK
 6l2MeGCDHEvEu2ISC43VWNyFCpjNShBpzKR2UlRl7gJBVy/tzx0zv9NxzG2YoHaTUVPs
 Ay8tDsrQbxQ4W2KLa4J2F3Rx6KoRButgm6QkS0p8RbPT5LR7YtwxjQar0pZAc9bW3Zmb
 Nh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X9EHB+RzWsWWDtGZg2fi2KUK6Xky3sXoaWyuBFV7tYw=;
 b=XYSKZ+tZ429mmEADQrq0gI3idGpy5pGdmIsMvuoshbh14tnTU//PgexgnCeupIcxAE
 3LrAQkWhp6ttGK+5V0nOz5BvVJi1YbHmgFeJLRc2xF5mC20dMY2V3vUwqPqQU96WYoJX
 sI39+Lp6YuZnlfs18ZM1tQgKvrj2pfw0Uw1e7wdJwv5grtDfizMbH+RIZYR6CONTRArG
 OkakfRkPq85MsBTyurUF63os3GtL+F4Oqs1OzDtCy9aWntC5zfId4eRffolXu2caWdqN
 bmwBigV4d8zI3GIwMgrzHKd7tugFaAE8WZmxgL5g72f1WZnglPfeKUt7hbMeMm/b5Les
 pEKw==
X-Gm-Message-State: AFqh2kol2XjZNz1iYTDUrgGGiSSW6lUsEIRmmTPFBV2gEg0vtcgS3jly
 1bmIAvRvJBlZzadG+KEcV/EujMLqN+Q=
X-Google-Smtp-Source: AMrXdXvHntSuAvyCvkSHScjoEI+pXpAEx/uWsZ44sBr128HcVHu3yNpj/ax6VoZ1ZvxheE3B45dTuP6M/oE=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:903:2581:b0:18f:a4f8:31db with SMTP id
 jb1-20020a170903258100b0018fa4f831dbmr584202plb.28.1671757090047; Thu, 22 Dec
 2022 16:58:10 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:27 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-16-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 15/27] KVM: x86: Add a new page-track hook to
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
index c474a0ff24ba..959be672e2ad 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -303,6 +303,29 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
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
index b587858e878e..cb0005e4baf0 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12582,6 +12582,9 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
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
2.39.0.314.g84b9a713c41-goog

