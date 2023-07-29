Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ADC767B02
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D4310E7C6;
	Sat, 29 Jul 2023 01:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF7B10E7C6
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:15 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-5844a99c268so27852337b3.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594575; x=1691199375;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=z6dQLmm/StL+nbdYI6kfPQ6ebivx3KtEw65/p6OzGX0=;
 b=PYLMQsUpqHGHMegWWt06xlTjghMitn7mO2KnrzDNEwNAoXINfqnOQJ5ev/u5TXiCKP
 2+yGvwd3++Y3BgWFCL1PAfl6WvEWEOlYBM1PAw9/uevnNbMBzA31dU/PCLUz14Ze086P
 3mWp6DpT/1yOv5NxTWnhRi/7KAYKYV4EJTEP4DgubEh7CYvnmn7e40/tCw1mQt/fSP8K
 rgwQCD0pKzsWpApeenl8X3TWcD3e8hrwkA67+KSSpPTZGPWd02uGqR06syUiL8++5vFJ
 RjtVpZ3MQgE0WTDOnWzCe0gRzokdWSbf9Noet+nTzkmdPSwQ5smVPkLS5Cwky6MgdsL8
 c+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594575; x=1691199375;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=z6dQLmm/StL+nbdYI6kfPQ6ebivx3KtEw65/p6OzGX0=;
 b=c+T2ou0nUrsgq9VfRhoVcUlTcryZP5ScD3a7bZudLGfTUa7nu8L27cXwOm2MvOfQwS
 DdrzF1K0okQGW4tbahaFCekfFOXMjw50/rivA1Jp5EmsUGZY4q222f/J38lg+IZq14Bk
 k33REpLmNlpUFv3cSZDR1pLysp0M8Srr4noGIA9xa4BHbi+r6lBmAkVRkiOqNwmsD8LN
 PU7ki8duJMY+NBjfVMdkUIaek2kZpO5Dj++0yBoSYvfdmUeDhjURNWfwc3s0VSUe77xy
 hMU3nh2gpkeKsxilwuG9FirIxxqVzRkGpUTqz6BJa2d8l6vtAlOVK3uvoeMNtML21z8a
 oeJg==
X-Gm-Message-State: ABy/qLZzRvnU8Z2ZK2BjRcpNAX9a9YD98mmWf3y2Ky09q6tlcmzumUgd
 OKZutgKnvJk4qpAWDwGX+BOpQJqZLZ4=
X-Google-Smtp-Source: APBJJlFGULXl4PqCQNSQFmFcVEnY/ekj07EmioiWFETFiYYL9jc2rJPUfLki4VnlE7xVmkymK5py2AcArU4=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a81:ad5f:0:b0:579:fa4c:1f25 with SMTP id
 l31-20020a81ad5f000000b00579fa4c1f25mr22783ywk.7.1690594574877; Fri, 28 Jul
 2023 18:36:14 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:22 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-17-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 16/29] KVM: x86: Reject memslot MOVE
 operations if KVMGT is attached
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

Disallow moving memslots if the VM has external page-track users, i.e. if
KVMGT is being used to expose a virtual GPU to the guest, as KVMGT doesn't
correctly handle moving memory regions.

Note, this is potential ABI breakage!  E.g. userspace could move regions
that aren't shadowed by KVMGT without harming the guest.  However, the
only known user of KVMGT is QEMU, and QEMU doesn't move generic memory
regions.  KVM's own support for moving memory regions was also broken for
multiple years (albeit for an edge case, but arguably moving RAM is
itself an edge case), e.g. see commit edd4fa37baa6 ("KVM: x86: Allocate
new rmap and large page tracking when moving memslot").

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h | 3 +++
 arch/x86/kvm/mmu/page_track.c         | 5 +++++
 arch/x86/kvm/x86.c                    | 7 +++++++
 3 files changed, 15 insertions(+)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 8c4d216e3b2b..f744682648e7 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -75,4 +75,7 @@ kvm_page_track_unregister_notifier(struct kvm *kvm,
 void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 			  int bytes);
 void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
+
+bool kvm_page_track_has_external_user(struct kvm *kvm);
+
 #endif
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 891e5cc52b45..e6de9638e560 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -303,3 +303,8 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
 			n->track_flush_slot(kvm, slot, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 }
+
+bool kvm_page_track_has_external_user(struct kvm *kvm)
+{
+	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
+}
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 059571d5abed..4394bb49051f 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12606,6 +12606,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 				   struct kvm_memory_slot *new,
 				   enum kvm_mr_change change)
 {
+	/*
+	 * KVM doesn't support moving memslots when there are external page
+	 * trackers attached to the VM, i.e. if KVMGT is in use.
+	 */
+	if (change == KVM_MR_MOVE && kvm_page_track_has_external_user(kvm))
+		return -EINVAL;
+
 	if (change == KVM_MR_CREATE || change == KVM_MR_MOVE) {
 		if ((new->base_gfn + new->npages - 1) > kvm_mmu_max_gfn())
 			return -EINVAL;
-- 
2.41.0.487.g6d72f3e995-goog

