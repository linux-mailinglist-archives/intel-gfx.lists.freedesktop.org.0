Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E2D6B5665
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB5C10EA2F;
	Sat, 11 Mar 2023 00:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A377910EA49
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:27 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 d7-20020a25adc7000000b00953ffdfbe1aso7472473ybe.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494207;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=Q6pZnJVg25eyMveIv3/duenR4ioTSWK21ILUn7ktJtk=;
 b=fW7SIHxJHBoSqAPEBOS5mWe5gfPekz/J4gy/C9npc9LGXg1kzzQmPSW2KEO5NfzKlp
 jis4mUml6dDwPYEJ5EZcT7y+L/sifVjanJbvSe1dSA76S2a3KcL+RGWUWj51mHMSGMK4
 23dVrVI1ebYRhkXY9xvQdAzQr5WZCSmGMsUEAL50y6nt/qHXnrf5wFxpXeQM1bXSuF96
 RrUQQVwdizUqSPQQZnZBxSly3MAIDFNYxQJCirto1mxjd6kBRO1QifVyyAt9NcJvSVCD
 QeD8M6UW1G8Rtt3ZXqUFXprmDp5ZSEdcEjgHi/biCE9qe7KO3/AZcKgH9hIp2RkMU2Nn
 Owqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494207;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q6pZnJVg25eyMveIv3/duenR4ioTSWK21ILUn7ktJtk=;
 b=Wyx8ua5oLgSn9JgKfrxjryAPGoASM/AXTjBJEN9iXGmrzY2M+dEVZ+uqp3wYQ02Lc8
 JLDj2aQcwP2SawCrq7uDyb5C0roL+cCE2ANDJm2vPfK0aYek+31Us4PZ2o3zxljSvyEo
 C/SYk9fbgOW3tE0Zo6XGAvsXu6DV3wG+3m+ryg/mplqe3p1T6TLEdXUB11/jE0Mjonbm
 HfXRR/TVEeic3d5hcnzcB/ZVc7UdwQNLKNlRNDTB/ZOZB115NqDAz3mFqTbLkDt/Sgem
 E1A2gbXpu3gegj81D1HbqAzyC/DAMcGYkEa1CkuoEMZ/DN3Vzp9oWEYzu7bm0EuwZ687
 FRGQ==
X-Gm-Message-State: AO0yUKVXUXTc4F4t5wzivi4PvkZ8mOgY/1ON+RPmi1qhQ9zDo1UwjJJ5
 QWOxGH/lZONu2qAva+d7cQdA8mfNCrQ=
X-Google-Smtp-Source: AK7set8PLWS0LgJdEMlnGsWe/+oN00JCQoIoDrltuwf20ow6dvSbBI2QU7f6C7ZLsFu9kLElsim6V3gV2u4=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:188:b0:a99:de9d:d504 with SMTP id
 t8-20020a056902018800b00a99de9dd504mr16643426ybh.12.1678494206913; Fri, 10
 Mar 2023 16:23:26 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:42 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-12-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 11/27] KVM: x86/mmu: Don't rely on page-track
 mechanism to flush on memslot change
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

Call kvm_mmu_zap_all_fast() directly when flushing a memslot instead of
bouncing through the page-track mechanism.  KVM (unfortunately) needs to
zap and flush all page tables on memslot DELETE/MOVE irrespective of
whether KVM is shadowing guest page tables.

This will allow changing KVM to register a page-track notifier on the
first shadow root allocation, and will also allow deleting the misguided
kvm_page_track_flush_slot() hook itself once KVM-GT also moves to a
different method for reacting to memslot changes.

No functional change intended.

Cc: Yan Zhao <yan.y.zhao@intel.com>
Link: https://lore.kernel.org/r/20221110014821.1548347-2-seanjc@google.com
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h |  1 +
 arch/x86/kvm/mmu/mmu.c          | 10 +---------
 arch/x86/kvm/x86.c              |  2 ++
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 808c292ad3f4..17281d6825c9 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1844,6 +1844,7 @@ void kvm_mmu_zap_collapsible_sptes(struct kvm *kvm,
 void kvm_mmu_slot_leaf_clear_dirty(struct kvm *kvm,
 				   const struct kvm_memory_slot *memslot);
 void kvm_mmu_zap_all(struct kvm *kvm);
+void kvm_mmu_zap_all_fast(struct kvm *kvm);
 void kvm_mmu_invalidate_mmio_sptes(struct kvm *kvm, u64 gen);
 void kvm_mmu_change_mmu_pages(struct kvm *kvm, unsigned long kvm_nr_mmu_pages);
 
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 4685c80e441b..409dabec69df 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -6030,7 +6030,7 @@ static void kvm_zap_obsolete_pages(struct kvm *kvm)
  * not use any resource of the being-deleted slot or all slots
  * after calling the function.
  */
-static void kvm_mmu_zap_all_fast(struct kvm *kvm)
+void kvm_mmu_zap_all_fast(struct kvm *kvm)
 {
 	lockdep_assert_held(&kvm->slots_lock);
 
@@ -6086,13 +6086,6 @@ static bool kvm_has_zapped_obsolete_pages(struct kvm *kvm)
 	return unlikely(!list_empty_careful(&kvm->arch.zapped_obsolete_pages));
 }
 
-static void kvm_mmu_invalidate_zap_pages_in_memslot(struct kvm *kvm,
-			struct kvm_memory_slot *slot,
-			struct kvm_page_track_notifier_node *node)
-{
-	kvm_mmu_zap_all_fast(kvm);
-}
-
 int kvm_mmu_init_vm(struct kvm *kvm)
 {
 	struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;
@@ -6110,7 +6103,6 @@ int kvm_mmu_init_vm(struct kvm *kvm)
 	}
 
 	node->track_write = kvm_mmu_pte_write;
-	node->track_flush_slot = kvm_mmu_invalidate_zap_pages_in_memslot;
 	kvm_page_track_register_notifier(kvm, node);
 
 	kvm->arch.split_page_header_cache.kmem_cache = mmu_page_header_cache;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index f706621c35b8..29dd6c97d145 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12662,6 +12662,8 @@ void kvm_arch_flush_shadow_all(struct kvm *kvm)
 void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
 				   struct kvm_memory_slot *slot)
 {
+	kvm_mmu_zap_all_fast(kvm);
+
 	kvm_page_track_flush_slot(kvm, slot);
 }
 
-- 
2.40.0.rc1.284.g88254d51c5-goog

