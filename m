Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 771DB6B5674
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9EF10EA5A;
	Sat, 11 Mar 2023 00:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB32510EA47
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:28 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 i15-20020aa78d8f000000b005edc307b103so3604745pfr.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494208;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=3/u8rHQUeVKNiV3UckABDv1skeiiaOcFBmTXvpUl8gY=;
 b=iUpMHNEVF4B8XQ8FcrszXxgFOCI20uKUpUrhV9xf6jRrhRvn9leptOV4xgv05rhBSS
 rYJPjT/IhtRgG5WggMQS1TR/2SKW+ihkzxRXdM2GrQM7WI86AvK8irbDB/iQWlxSoe0U
 76xKc0EgfaiHHtBzE1LmJMvz5gmMhB2YkMGBSJ18o7lu5W1mUdLCeq3xeVOeXlLgg4p2
 k9dRwr6qNPb1jo8NJfbfrlwg5kksW5Ii9l2twi0be3vZj+dN14tBZoHYJq0gQlFNvZ22
 QP+v4d+fwERnE1PZskZI+bo6GwWtWwe4wFtQ/n+l8N0XHdsfg17fOZhCq6EElCLhosgr
 +VcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494208;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3/u8rHQUeVKNiV3UckABDv1skeiiaOcFBmTXvpUl8gY=;
 b=3gsWMopLnkZWlSEDegZWgtNKLzbwqncuvswvyYExxOkZamfAUZfFmygKAxXOGyGWs6
 nfs+gqSfAwxs16Kc81g0W99mWpIsdZOAR94LNaGkxFi23C8oI5XJIx8NlOiSTFNmDj8u
 yS+ROos25NpBW9Z/jAMiwJ7fVu5giG1Utvhmen3wURS1dOFtIVURlzX9a6PmBk/vXEAE
 FNZ23Wng6LwljESmiTOHnNlwpssKvozsXhdL6ZQI4rAL4r4fByLDEFCBoN7JBI4C+04Y
 dl+l4CWMpmApCdiivO8pTohCJxoGgDIE/J0FT9v6ply+VIiXtRksVgBjL8mcGotajvSL
 B3Mw==
X-Gm-Message-State: AO0yUKUa/Xn0rtTYfnctOCWAVgcz8RTMrZLM/PnAJI7EvSI7Vuz3K1Tr
 u9LTweWfdsNC90YCS4txOeQOgrvk7vs=
X-Google-Smtp-Source: AK7set+E+txA6LbwPoqugwbwHMxcmBatF7OT+mmw6KHzyTLm5JF5qTbdm1Mv03adlGbam3UNcPn54kawz98=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:903:26d6:b0:19b:fe3:c948 with SMTP id
 jg22-20020a17090326d600b0019b0fe3c948mr10129538plb.12.1678494208460; Fri, 10
 Mar 2023 16:23:28 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:43 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-13-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 12/27] KVM: x86/mmu: Don't bounce through
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
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
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

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h |  1 -
 arch/x86/kvm/mmu.h              |  2 ++
 arch/x86/kvm/mmu/mmu.c          | 13 ++-----------
 arch/x86/kvm/mmu/page_track.c   |  2 ++
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 17281d6825c9..1a4225237564 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1265,7 +1265,6 @@ struct kvm_arch {
 	 * create an NX huge page (without hanging the guest).
 	 */
 	struct list_head possible_nx_huge_pages;
-	struct kvm_page_track_notifier_node mmu_sp_tracker;
 	struct kvm_page_track_notifier_head track_notifier_head;
 	/*
 	 * Protects marking pages unsync during page faults, as TDP MMU page
diff --git a/arch/x86/kvm/mmu.h b/arch/x86/kvm/mmu.h
index 168c46fd8dd1..b8bde42f6037 100644
--- a/arch/x86/kvm/mmu.h
+++ b/arch/x86/kvm/mmu.h
@@ -119,6 +119,8 @@ void kvm_mmu_unload(struct kvm_vcpu *vcpu);
 void kvm_mmu_free_obsolete_roots(struct kvm_vcpu *vcpu);
 void kvm_mmu_sync_roots(struct kvm_vcpu *vcpu);
 void kvm_mmu_sync_prev_roots(struct kvm_vcpu *vcpu);
+void kvm_mmu_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
+			 int bytes);
 
 static inline int kvm_mmu_reload(struct kvm_vcpu *vcpu)
 {
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 409dabec69df..4f2f83d8322e 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -5603,9 +5603,8 @@ static u64 *get_written_sptes(struct kvm_mmu_page *sp, gpa_t gpa, int *nspte)
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
@@ -6088,7 +6087,6 @@ static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
 
 int kvm_mmu_init_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
 	int r;
 
 	INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
@@ -6102,9 +6100,6 @@ int kvm_mmu_init_vm(struct kvm *kvm)
 			return r;
 	}
 
-	node->track_write = kvm_mmu_pte_write;
-	kvm_page_track_register_notifier(kvm, node);
-
 	kvm->arch.split_page_header_cache.kmem_cache = mmu_page_header_cache;
 	kvm->arch.split_page_header_cache.gfp_zero = __GFP_ZERO;
 
@@ -6125,10 +6120,6 @@ static void mmu_free_vm_memory_caches(struct kvm *kvm)
 
 void kvm_mmu_uninit_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
-
-	kvm_page_track_unregister_notifier(kvm, node);
-
 	if (tdp_mmu_enabled)
 		kvm_mmu_uninit_tdp_mmu(kvm);
 
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index e739dcc3375c..f39f190ad4ae 100644
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
2.40.0.rc1.284.g88254d51c5-goog

