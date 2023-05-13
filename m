Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD52701321
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BAD10E703;
	Sat, 13 May 2023 00:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11EF10E703
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:27 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-b9968fb4a8cso19362962276.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938187; x=1686530187;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=FkA1kDYxtUVHRHibS4MjAh7jt6yYy8zgAEbTcCm3Aro=;
 b=QcrHglgjQKdCLUAUPMt9T3ZETFuoebB3X4ZrPMqqN1eLxNZeHHFYM5Li0G7IRgqzrT
 fUVNXQwICEpsoThiTF/27ls8NtDVXRlUSaPuMKvwmyD/7uceYhmBrCPiy7GX0eueEu59
 sh9w4SiwmEFDhqqSLuUpF5qaASCXXyd5jyTm4pEA0+CY3bY1yazJ05Y5xvWzMU1c15df
 VoedXBsbFUxFrWiOjMFEcmY03nk0s1gkww2AJXLxZ81nvGUkTvoFTXrUmacMm6kuMB8i
 fh7hFM+tD29QS8LZlww8KRhvNvJE3Ob9njWh3aSLQLuqJGYvHbr4R0FjA8ENS9UaHnm/
 M1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938187; x=1686530187;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FkA1kDYxtUVHRHibS4MjAh7jt6yYy8zgAEbTcCm3Aro=;
 b=bKGb8GFjJpDhHQCp/ijStr/G3cvPw1D8iXWHejQqloSyjmsa4vn1fDBAKaqzgsEoRV
 Y/SztTb2meakjUKlt9nYWMTkwM0z9PjrUAgQ5cyqHoYGBrd/vU7wqgL5x0p6uwT3+3BM
 ZAkKBFQia59qAbq1vW7cPUz3TXSFlMRGH9KIVqQK2q7d5U6XHcpqFHaTsWA3q0lCalcO
 yiZwlqV/pvbtNsMT+/G2FpNJo1gyP8kaKepNM0x+bFohiTQW+AqulvRZV8DUsdds9/0T
 rYKSVkkArS0KVIFiJuDNpFGWruw5pa6SK40N1ojBC3ONzTm8PHon504ljkGNmueadV7c
 vyrw==
X-Gm-Message-State: AC+VfDwNN5GFl7H22phEmfBiOp3zFp6ZagqirwoqETL6l9MX2ZlNVWhT
 i3EaKCyjQBsVR/WAakBtOQSSMfwVWhM=
X-Google-Smtp-Source: ACHHUZ7+gIUnmBGvUuumWyI5g0GRGJ88QYrLdJ3wdv8MgxZd8U0nKSB4DYEio0yahHNKQwNut26HYiPeL6I=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:9d84:0:b0:b9d:c27c:3442 with SMTP id
 v4-20020a259d84000000b00b9dc27c3442mr11524411ybp.9.1683938186917; Fri, 12 May
 2023 17:36:26 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:43 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-12-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 11/28] KVM: x86/mmu: Move
 kvm_arch_flush_shadow_{all, memslot}() to mmu.c
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

Move x86's implementation of kvm_arch_flush_shadow_{all,memslot}() into
mmu.c, and make kvm_mmu_zap_all() static as it was globally visible only
for kvm_arch_flush_shadow_all().  This will allow refactoring
kvm_arch_flush_shadow_memslot() to call kvm_mmu_zap_all() directly without
having to expose kvm_mmu_zap_all_fast() outside of mmu.c.  Keeping
everything in mmu.c will also likely simplify supporting TDX, which
intends to do zap only relevant SPTEs on memslot updates.

No functional change intended.

Suggested-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h |  1 -
 arch/x86/kvm/mmu/mmu.c          | 13 ++++++++++++-
 arch/x86/kvm/x86.c              | 11 -----------
 3 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index fb9d1f2d6136..564a29153cee 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1832,7 +1832,6 @@ void kvm_mmu_zap_collapsible_sptes(struct kvm *kvm,
 				   const struct kvm_memory_slot *memslot);
 void kvm_mmu_slot_leaf_clear_dirty(struct kvm *kvm,
 				   const struct kvm_memory_slot *memslot);
-void kvm_mmu_zap_all(struct kvm *kvm);
 void kvm_mmu_invalidate_mmio_sptes(struct kvm *kvm, u64 gen);
 void kvm_mmu_change_mmu_pages(struct kvm *kvm, unsigned long kvm_nr_mmu_pages);
 
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index c8961f45e3b1..2e4476d38377 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -6717,7 +6717,7 @@ void kvm_mmu_slot_leaf_clear_dirty(struct kvm *kvm,
 	 */
 }
 
-void kvm_mmu_zap_all(struct kvm *kvm)
+static void kvm_mmu_zap_all(struct kvm *kvm)
 {
 	struct kvm_mmu_page *sp, *node;
 	LIST_HEAD(invalid_list);
@@ -6742,6 +6742,17 @@ void kvm_mmu_zap_all(struct kvm *kvm)
 	write_unlock(&kvm->mmu_lock);
 }
 
+void kvm_arch_flush_shadow_all(struct kvm *kvm)
+{
+	kvm_mmu_zap_all(kvm);
+}
+
+void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
+				   struct kvm_memory_slot *slot)
+{
+	kvm_page_track_flush_slot(kvm, slot);
+}
+
 void kvm_mmu_invalidate_mmio_sptes(struct kvm *kvm, u64 gen)
 {
 	WARN_ON(gen & KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS);
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 523c39a03c00..b2d9c5979df7 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12758,17 +12758,6 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 		kvm_arch_free_memslot(kvm, old);
 }
 
-void kvm_arch_flush_shadow_all(struct kvm *kvm)
-{
-	kvm_mmu_zap_all(kvm);
-}
-
-void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
-				   struct kvm_memory_slot *slot)
-{
-	kvm_page_track_flush_slot(kvm, slot);
-}
-
 static inline bool kvm_guest_apic_has_interrupt(struct kvm_vcpu *vcpu)
 {
 	return (is_guest_mode(vcpu) &&
-- 
2.40.1.606.ga4b1b128d6-goog

