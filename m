Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D10654A17
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F0F10E5F3;
	Fri, 23 Dec 2022 00:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C3C10E600
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:03 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 f8-20020a170902ce8800b00190c6518e21so2395407plg.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=dM+X02Fxoz+xhccPaP4JUP/k3jd0Q+nR20fNGgV2g3M=;
 b=hXWPSF4Cq4WJbhHr7teYSvEgzL9cfRNxGJWStcZ6JB7wGkhKdSYzJerScqy4GR/nv0
 5RmMLLf1du+VWMSdFcYRU6nNL4OSwWejkh+OVIuWLHktnxcPmO+IfNY0iM8O0XC7hnKe
 kaUK42ekgbEANYuWEX3KwPsMpcgaRPDaXRNyP4CEBk+anDRT1eDuBAXKMmCLKeV9aKFu
 DYV51Zg/pjYVgN2t9I2UVEXbJvoLAi8zI9OeHA3bgVP3XUMDnFKoHQnTT+wEzI5EkJAg
 hqzXltWJRaDo7r0O8bv6cQn4ng8xywDJSfIlV+XBaWBejHNJqiWwnB1ufanwO1oxJO4B
 xpWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dM+X02Fxoz+xhccPaP4JUP/k3jd0Q+nR20fNGgV2g3M=;
 b=enrNzmFlrYmFp+IDla/ixEbkLfufwGKM8m4Gi4EkTrkGzGfTTLhAu/3ww0YPeE+F0n
 f3iHzD28j0daSmRlccdlLMrouK0Z9H33hAZFM0WUVL/IUO4GCVOym4hGIxTuAKY/gpV6
 skoa2loPKdNJcALT/YxOgGeFIwYRJMW2ZKmf3AdZcFLBPppRKVmd69X7o7ecGShi43X2
 1AW5WUN/YX7LR2ax44dGfhSnBJ70x42tVBRIpwJ6ZeSJLhu00sKPsAjV7LCh8iPOFzMd
 AIVNfI2Mmt/3rMIGJ2r2LPwLVeUvKMzZtk9VpZKEs/x/uMEk0BKTBTxjyU5LMDVyvgl8
 eLwQ==
X-Gm-Message-State: AFqh2kpTjUD/Gwp3crDOKlbwC/zIT2oQwTCcrNZyDDqE+X8XAU0oBA60
 l3E4b9sBlh0zOpCdG7TiUbvjZr4Jc8w=
X-Google-Smtp-Source: AMrXdXvaItZf9s47YSPII6DhtPptS1B5n4r9KS0QipWzn8GdydO2f4I+X56zgXZdTIA4xDINkh1DJbddKAg=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:187:b0:219:9a95:ac2b with SMTP id
 t7-20020a17090b018700b002199a95ac2bmr801451pjs.228.1671757083651; Thu, 22 Dec
 2022 16:58:03 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:23 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-12-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 11/27] KVM: x86/mmu: Don't bounce through
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
index fcb042f971ee..eec424fac0ba 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1223,7 +1223,6 @@ struct kvm_arch {
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
index 8c3a453554ed..dfeddea8148a 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -5582,9 +5582,8 @@ static u64 *get_written_sptes(struct kvm_mmu_page *sp, gpa_t gpa, int *nspte)
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
@@ -6067,7 +6066,6 @@ static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
 
 int kvm_mmu_init_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
 	int r;
 
 	INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
@@ -6081,9 +6079,6 @@ int kvm_mmu_init_vm(struct kvm *kvm)
 			return r;
 	}
 
-	node->track_write = kvm_mmu_pte_write;
-	kvm_page_track_register_notifier(kvm, node);
-
 	kvm->arch.split_page_header_cache.kmem_cache = mmu_page_header_cache;
 	kvm->arch.split_page_header_cache.gfp_zero = __GFP_ZERO;
 
@@ -6104,10 +6099,6 @@ static void mmu_free_vm_memory_caches(struct kvm *kvm)
 
 void kvm_mmu_uninit_vm(struct kvm *kvm)
 {
-	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
-
-	kvm_page_track_unregister_notifier(kvm, node);
-
 	if (tdp_mmu_enabled)
 		kvm_mmu_uninit_tdp_mmu(kvm);
 
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 69ea16c31859..407128bcabc8 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -273,6 +273,8 @@ void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 		if (n->track_write)
 			n->track_write(vcpu, gpa, new, bytes, n);
 	srcu_read_unlock(&head->track_srcu, idx);
+
+	kvm_mmu_track_write(vcpu, gpa, new, bytes);
 }
 
 /*
-- 
2.39.0.314.g84b9a713c41-goog

