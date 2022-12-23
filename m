Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CA8654A07
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7760510E5ED;
	Fri, 23 Dec 2022 00:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69BE10E199
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:49 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-4597b0ff5e9so37016637b3.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=BIUstVDoT6s4wHBx8tH1b6wi7gNM5cmrC590QJLnU+k=;
 b=P84tHODTrynNhdwBSDHNrxQLisM+BhYybSBCojVB/63wz1zWifGIfdd5+Pu04t7g9y
 +9zTX7G/UYvQjnElf0ibJnn+n/r7F1g8IOGyhM07oROfKPBCKEWpWaHxC2yRRxR2YIXx
 gI96EHJgCijYm/1ncMTKq9j1xLzlY3f+6bYt6gzKWP8s4CXW/oix2fcIDxJye8MUYPTk
 PHUWUupAlaFjQxaeCAslY4oMoZQKrNhKriuaMxDrzPpjHAg6ly1DgFDmhC2CwaZsnjjN
 xdcCdmgHTPervwSEitdWLEjfgm4TfySNkQAAvvpkEuVhOO3L03cFnyk2s7rr2r5qhtDT
 OnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BIUstVDoT6s4wHBx8tH1b6wi7gNM5cmrC590QJLnU+k=;
 b=425Gxt9Me7pcLk3alOy1ij3ij9Zhn9kyolh10RIgHrzrTAjuMGWwDwFaBK34Z+CWOH
 hj0l+bRqT1hEQfeHCpUz4bktkouRnWwa3ULr53gZzeZrxq7kNE/+RTs4UZJ0NnQQBUgn
 RBobRjeb8QMd6nwmxziem6h9NufVBBiaEE0orytvRfWvVijJadZNH5Pqfbkjz3dCxg3q
 ABkcVlhf77tu1HN+/gew2P4VkA/BPCR18xvo6lCv825rBrNVv1S/DzRlKcccvudz36UQ
 c72fa5GYs/LNHfhzJdOUGOkY52FBc9jLxhV+IgOr9O4UVOOCR2+RD9I8sysMDA7bvivO
 nb4A==
X-Gm-Message-State: AFqh2krvugSfzPDtMcIs6mP9bbzPI5zwOFnnFo077sB351BArsRGpShC
 vnsCP0fUYD6OyKH6truOyIE0K46wozk=
X-Google-Smtp-Source: AMrXdXv4bGDDi5QQRCJL+YPqg5st0+aZU++VjOVKB75nplXuiGLciZpny6R0v6NU0Om8fPi8KJFSW9/oFM0=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:e6c6:0:b0:746:cd75:3ab8 with SMTP id
 d189-20020a25e6c6000000b00746cd753ab8mr831064ybh.7.1671757068716; Thu, 22 Dec
 2022 16:57:48 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:14 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-3-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 02/27] KVM: x86/mmu: Factor out helper to get
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
index 254bc46234e0..ca7428b68eba 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3064,20 +3064,29 @@ static int host_pfn_mapping_level(struct kvm *kvm, gfn_t gfn,
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
index ac00bfbf32f6..b078c29e5674 100644
--- a/arch/x86/kvm/mmu/mmu_internal.h
+++ b/arch/x86/kvm/mmu/mmu_internal.h
@@ -314,6 +314,8 @@ static inline int kvm_mmu_do_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa,
 	return r;
 }
 
+int kvm_mmu_max_slot_mapping_level(const struct kvm_memory_slot *slot,
+				   gfn_t gfn, int max_level);
 int kvm_mmu_max_mapping_level(struct kvm *kvm,
 			      const struct kvm_memory_slot *slot, gfn_t gfn,
 			      int max_level);
-- 
2.39.0.314.g84b9a713c41-goog

