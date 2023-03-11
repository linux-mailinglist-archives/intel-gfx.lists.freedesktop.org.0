Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EF66B564F
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A82010EA34;
	Sat, 11 Mar 2023 00:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8239B10EA2F
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:10 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 iw4-20020a170903044400b0019ccafc1fbeso3602148plb.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494190;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=eHqcqPuh0X7PQYReRTzohsMCRBED7m2vs4Y/3/bIpTQ=;
 b=tQGcDl0LzQbxToMGy5qxSYm8BEkXfhbWlTvTCiUHeYOQgTHbWZTZZRkA7ZqcvX9S86
 3KiDsW9HNTSISW2P73wBpcZ88hyQ+IeGlvy5TgSamFq6NZTm/UCrON8iXa2dzvIiWiGp
 +W4KemfD5UbSRZai7O68Kru+sWhdpFoikAvEsG8v0bmcf6DxSsz56ky4hZo8E4ooAgFs
 IspDuedJicbD6DnDrr+rpTcXPSUmA74Zy61zSlLY4/K0RTTs/UISui5nZTVB4TEsa+jv
 TweVwST4EA6OgArjt0oJ45NmU6Sj1e+QIO04KVV0l5mDaDbix4kdjntEKEREKSIzJqHJ
 LaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494190;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=eHqcqPuh0X7PQYReRTzohsMCRBED7m2vs4Y/3/bIpTQ=;
 b=n/WnmaYBq+E0Wt1xqxIBQ0kmZoWVtehdbdbXny2dZBjmjX1dLiGXk2R2+zpejU8y4p
 zIZfkYEUXDU1qp/sN6BqjM5QghbtNDhIar6aW4eghJspBsbHQt2ub2cr8QvIivkG+jrs
 ICdfbQwJIf0GuWhjB0gQPGFDegUIhJU9SU+IqM9VVnkrtLS4cVITbzSgu5CafYAJYUTK
 pzeorpBhr2fppc7MHB/B66mQs2B4xkC9Cd64nEcCXHWOeQdwl8TBMYRGeIrgGjiVujzR
 JnRo/dUg+oqw+qmAkT47gB5Fau8f70NqukAVokS2hUxAL4rgThraVcVIwWSeLhOaxeGK
 zc/g==
X-Gm-Message-State: AO0yUKXOJueaUPO3zn7ByY45I/iarJfSKF6zWNKE3x3pWasdl9HkfbuT
 clMcAJbRWzmlbpRWKvsdLh/9G+TEstc=
X-Google-Smtp-Source: AK7set9jx7Uy7PzVJsl0JZUMlerJnH1eqXkOWuYf0hsbDX1FhGPzk3Q6AIFhADI5JkJoBFyLT7Lz5rpwrlo=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:c688:b0:22c:89b:8e97 with SMTP id
 n8-20020a17090ac68800b0022c089b8e97mr1510024pjt.1.1678494189968; Fri, 10 Mar
 2023 16:23:09 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:33 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-3-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 02/27] KVM: x86/mmu: Factor out helper to get
 max mapping size of a memslot
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

Extract the memslot-related logic of kvm_mmu_max_mapping_level() into a
new helper so that KVMGT can determine whether or not mapping a 2MiB page
into the guest is (dis)allowed per KVM's memslots.

No functional change intended.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/mmu/mmu.c          | 21 +++++++++++++++------
 arch/x86/kvm/mmu/mmu_internal.h |  2 ++
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index c8ebe542c565..4685c80e441b 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3083,20 +3083,29 @@ static int host_pfn_mapping_level(struct kvm *kvm, gfn_t gfn,
 	return level;
 }
 
+int kvm_mmu_max_slot_mapping_level(const struct kvm_memory_slot *slot,
+				   gfn_t gfn, int max_level)
+{
+	struct kvm_lpage_info *linfo;
+
+	for ( ; max_level > PG_LEVEL_4K; max_level--) {
+		linfo = lpage_info_slot(gfn, slot, max_level);
+		if (!linfo->disallow_lpage)
+			break;
+	}
+	return max_level;
+}
+
 int kvm_mmu_max_mapping_level(struct kvm *kvm,
 			      const struct kvm_memory_slot *slot, gfn_t gfn,
 			      int max_level)
 {
-	struct kvm_lpage_info *linfo;
 	int host_level;
 
 	max_level = min(max_level, max_huge_page_level);
-	for ( ; max_level > PG_LEVEL_4K; max_level--) {
-		linfo = lpage_info_slot(gfn, slot, max_level);
-		if (!linfo->disallow_lpage)
-			break;
-	}
+	max_level = kvm_mmu_max_slot_mapping_level(slot, gfn, max_level);
 
+	/* Avoid walking the host page tables if a hugepage is impossible. */
 	if (max_level == PG_LEVEL_4K)
 		return PG_LEVEL_4K;
 
diff --git a/arch/x86/kvm/mmu/mmu_internal.h b/arch/x86/kvm/mmu/mmu_internal.h
index cc58631e2336..9db7fa0b3bf9 100644
--- a/arch/x86/kvm/mmu/mmu_internal.h
+++ b/arch/x86/kvm/mmu/mmu_internal.h
@@ -328,6 +328,8 @@ static inline int kvm_mmu_do_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa,
 	return r;
 }
 
+int kvm_mmu_max_slot_mapping_level(const struct kvm_memory_slot *slot,
+				   gfn_t gfn, int max_level);
 int kvm_mmu_max_mapping_level(struct kvm *kvm,
 			      const struct kvm_memory_slot *slot, gfn_t gfn,
 			      int max_level);
-- 
2.40.0.rc1.284.g88254d51c5-goog

