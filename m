Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5D3767AFE
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9635510E227;
	Sat, 29 Jul 2023 01:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FE810E7CD
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:11 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-1bbd4f526caso20385965ad.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594571; x=1691199371;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=qnG2Q2O9+M14LIcRNjXeXqIGSpkqLQtPzrXrnR7kbFQ=;
 b=DipKfATrzm1i1GdU40pmEnUMbAgMLUO5TMhacXhDY5mtEPPaOQ+JkJAdQWDF/kRuAy
 AOaH6XDUEUFCxCWPCo3J56iInKAkZAxTR3kZ/Ues030T0Hw1UaId5poJwJTDHtrV5C30
 FmZ4rf26vnjLvEE+5ymBf14uV7YlNP4DdoSKSU30fdS8sYa9Cltm5nILw/Mi3XPSBYkC
 2cyxCE+NDO8sw5ZH3aw/jXpROV0SsnnzVaaQcI/siXf878O8tBo3aNg0rIQ46D4Yj3I+
 QbCgMQmSBjH5LnWuAQ6jOtb2HR/q+9R9UFO50ZjlcH3chJa4Fd5jFmqGYwZPUuaevOrD
 a0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594571; x=1691199371;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qnG2Q2O9+M14LIcRNjXeXqIGSpkqLQtPzrXrnR7kbFQ=;
 b=E/9gtS+nUIfHvVSJya++fDWvtzTpf+T8uCI4mOua+IZqWGrhVHRi1Mgb1xE+gEHX7/
 rMWql8b8DPhqF052sa8a3ZaM4+W6csSk6dhCKEfvZ7dLZSBYb1H7V6D561szH6U/5aSs
 APbTpGEImht7zohEjcb+ZZn5CSq/RnJajj2cdTFpWZK3uILv8xq18556Jsb04VQrqHQU
 4GyN8TiowJqcT6gWLzEfR6W8jYTeTujJomV9A3MDZcfZyVtv01b3vU9Wjd7EYORDY43C
 9u824BMmuxZOK3XeQn/6Y4Y2JE85Hsi+ZvxEVr05ZCU85dV11/5c0jDh9ALoBbs65m6O
 pzIw==
X-Gm-Message-State: ABy/qLZ28F90ojsz+eiDZxlvKCM6q/gxRC3gzekcL3DsCPBnLnW4NoDl
 udVF8zSkp/DFY8fgBSY9ikRuT0WqF0w=
X-Google-Smtp-Source: APBJJlEmpqoldB5HLiXOXmDMeDpqcZVijCQmxmKjmrftnp9ux2TGM4zwv9XCY8wtFiz0yH/B8FBpkDpXs9c=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:903:1cb:b0:1b9:df8f:888c with SMTP id
 e11-20020a17090301cb00b001b9df8f888cmr12866plh.8.1690594570871; Fri, 28 Jul
 2023 18:36:10 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:20 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-15-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 14/29] KVM: x86/mmu: Don't bounce through
 page-track mechanism for guest PTEs
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

Don't use the generic page-track mechanism to handle writes to guest PTEs
in KVM's MMU.  KVM's MMU needs access to information that should not be
exposed to external page-track users, e.g. KVM needs (for some definitions
of "need") the vCPU to query the current paging mode, whereas external
users, i.e. KVMGT, have no ties to the current vCPU and so should never
need the vCPU.

Moving away from the page-track mechanism will allow dropping use of the
page-track mechanism for KVM's own MMU, and will also allow simplifying
and cleaning up the page-track APIs.

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h |  1 -
 arch/x86/kvm/mmu.h              |  2 ++
 arch/x86/kvm/mmu/mmu.c          | 13 ++-----------
 arch/x86/kvm/mmu/page_track.c   |  2 ++
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 856ec22aceb6..85605f2497bb 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1247,7 +1247,6 @@ struct kvm_arch {
 	 * create an NX huge page (without hanging the guest).
 	 */
 	struct list_head possible_nx_huge_pages;
-	struct kvm_page_track_notifier_node mmu_sp_tracker;
 	struct kvm_page_track_notifier_head track_notifier_head;
 	/*
 	 * Protects marking pages unsync during page faults, as TDP MMU page
diff --git a/arch/x86/kvm/mmu.h b/arch/x86/kvm/mmu.h
index 92d5a1924fc1..253fb2093d5d 100644
--- a/arch/x86/kvm/mmu.h
+++ b/arch/x86/kvm/mmu.h
@@ -121,6 +121,8 @@ void kvm_mmu_unload(struct kvm_vcpu *vcpu);
 void kvm_mmu_free_obsolete_roots(struct kvm_vcpu *vcpu);
 void kvm_mmu_sync_roots(struct kvm_vcpu *vcpu);
 void kvm_mmu_sync_prev_roots(struct kvm_vcpu *vcpu);
+void kvm_mmu_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
+			 int bytes);
 
 static inline int kvm_mmu_reload(struct kvm_vcpu *vcpu)
 {
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 79ea57396d97..c404264f8de5 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -5684,9 +5684,8 @@ static u64 *get_written_sptes(struct kvm_mmu_page *sp, gpa_t gpa, int *nspte)
 	return spte;
 }
 
-static void kvm_mmu_pte_write(struct kvm_vcpu *vcpu, gpa_t gpa,
-			      const u8 *new, int bytes,
-			      struct kvm_page_track_notifier_node *node)
+void kvm_mmu_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
+			 int bytes)
 {
 	gfn_t gfn = gpa >> PAGE_SHIFT;
 	struct kvm_mmu_page *sp;
@@ -6201,7 +6200,6 @@ static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
 
 int kvm_mmu_init_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
 	int r;
 
 	INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
@@ -6215,9 +6213,6 @@ int kvm_mmu_init_vm(struct kvm *kvm)
 			return r;
 	}
 
-	node->track_write = kvm_mmu_pte_write;
-	kvm_page_track_register_notifier(kvm, node);
-
 	kvm->arch.split_page_header_cache.kmem_cache = mmu_page_header_cache;
 	kvm->arch.split_page_header_cache.gfp_zero = __GFP_ZERO;
 
@@ -6238,10 +6233,6 @@ static void mmu_free_vm_memory_caches(struct kvm *kvm)
 
 void kvm_mmu_uninit_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
-
-	kvm_page_track_unregister_notifier(kvm, node);
-
 	if (tdp_mmu_enabled)
 		kvm_mmu_uninit_tdp_mmu(kvm);
 
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 0a2ac438d647..23088c90d2fd 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -274,6 +274,8 @@ void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 		if (n->track_write)
 			n->track_write(vcpu, gpa, new, bytes, n);
 	srcu_read_unlock(&head->track_srcu, idx);
+
+	kvm_mmu_track_write(vcpu, gpa, new, bytes);
 }
 
 /*
-- 
2.41.0.487.g6d72f3e995-goog

