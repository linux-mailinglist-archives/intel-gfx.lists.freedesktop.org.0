Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A61A670132E
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE4910E709;
	Sat, 13 May 2023 00:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA8110E6FA
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:31 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-5309b380b41so712220a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938190; x=1686530190;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=gF9fJRYQ5xVKQXn2bwgoZvOjz4z2Ll5cyCfNNtyVwMg=;
 b=vwUyFRiI2jhPK04ANhxuC5BN5ihFmUiF7vejqhwPruKPQM+8IZy3LDf2mwOs7zwQOf
 zrb9faivtFvgSMANRj7q5ShS5h+PM5EHMiRquHcit7RXEsEDNpn9lC0D2z92i1KtSUmi
 eEhWoI1W8jAjR3h2BCTdzSAqJY2ljHNhqfldh4EzDb9sffawMfM+AKFzOpgdORzOe4+G
 3pj7pDo0aRxAqM04gTLuiHECI0y8m9uV1XFG0yqbkVJpXNwUQrS/YapX+76bMSNVWRrB
 Ymjt8MLl2Xad0ny3TLSsIa1UPQiPjr8acoBSpM3C68NS1C/KA4Kihx8RC2tMQEMX2CVx
 8Q8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938190; x=1686530190;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gF9fJRYQ5xVKQXn2bwgoZvOjz4z2Ll5cyCfNNtyVwMg=;
 b=k7P/1LkJcDQlWUX6HV+zB3aUHKICMTnudxg8ywi+gTIrg6/P5ZD5N+xTmXMLGe/Ggt
 FQB15gCRS4fySKjFL4/VbR0SDgHsd5ViLIqvg5t5Ok3oVX/VGt71O43NV/l9XAr81qR1
 DKhnjPbBDGfAV+/10GT/PLcsQMOJ/A480EdfZGJGmG8sP4LapMbZzLGNnIgXNHEgU74c
 3KX4l6fLQ2UXKqOCIH5GlgCcK49uH2P+0OgaEhZolqzjIJ9RF0u5Jd+qoic8p2QhpKse
 TJktfTzhJCbqMqqSOnpR6jg7JKP2nWFpz9jQcBM51QKlXlXKvb1nXWNWyTOnfOelIiG3
 LXcA==
X-Gm-Message-State: AC+VfDwFoJxcM5KclSX11vkKt6IuYbiZ8FiR0ZvHbZpQj6bc790sYuep
 fT9EfALID/2pXX73qPnzxtRtsY4lroI=
X-Google-Smtp-Source: ACHHUZ5ZSBD4Okz419AUDZXohxIrXzgiVtOHan5K73FnIRk7oNduvyzRhEJyto4BrmCqxh7gT5oPUYSO/wA=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a63:283:0:b0:503:7bcd:89e9 with SMTP id
 125-20020a630283000000b005037bcd89e9mr7255973pgc.1.1683938190507; Fri, 12 May
 2023 17:36:30 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:45 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-14-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 13/28] KVM: x86/mmu: Don't bounce through
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

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h |  1 -
 arch/x86/kvm/mmu.h              |  2 ++
 arch/x86/kvm/mmu/mmu.c          | 13 ++-----------
 arch/x86/kvm/mmu/page_track.c   |  2 ++
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 564a29153cee..113598d3e886 100644
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
index 23a79723031b..af3e562d3106 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -5677,9 +5677,8 @@ static u64 *get_written_sptes(struct kvm_mmu_page *sp, gpa_t gpa, int *nspte)
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
@@ -6186,7 +6185,6 @@ static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
 
 int kvm_mmu_init_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
 	int r;
 
 	INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
@@ -6200,9 +6198,6 @@ int kvm_mmu_init_vm(struct kvm *kvm)
 			return r;
 	}
 
-	node->track_write = kvm_mmu_pte_write;
-	kvm_page_track_register_notifier(kvm, node);
-
 	kvm->arch.split_page_header_cache.kmem_cache = mmu_page_header_cache;
 	kvm->arch.split_page_header_cache.gfp_zero = __GFP_ZERO;
 
@@ -6223,10 +6218,6 @@ static void mmu_free_vm_memory_caches(struct kvm *kvm)
 
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
2.40.1.606.ga4b1b128d6-goog

