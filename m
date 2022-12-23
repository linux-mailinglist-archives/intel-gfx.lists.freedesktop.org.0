Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67243654A21
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C3310E190;
	Fri, 23 Dec 2022 00:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D20410E5EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:07 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 t13-20020a056902018d00b0074747131938so3648341ybh.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=tTYp657RV3f6OWCBTwP1Ico5ltwPOdlqPIOy28hvvc8=;
 b=TgKSelY3BZKddDJU33MkrreJCxryFlBA+1WmAEgJzpPyAUxDUEhSub/jTCmikK4WcV
 S5gkndGcULbcRzKEMYVP5FQqOMgtFcXZLFheV+XOIgin5X6tEAeAM6bQWvKP7yZVF9Ry
 Xm9XwgbMxSPSTo2ZEyqi3wKJSnTkVqJLNFNBByHuMXRfCYj4P0iRSzORpBkGrEARBLgv
 vTn/3CekNTKCoEREFqyU2mBlrLUxs0YubhczF2l/VEeBhIYKKV4aBLpJARke1/Bc7Rw7
 alQePw2Tz6Tw/mmaj9vPzdaY29kc2hOJExw9SkLOIRG0bJD18lS8p3TbLDoTY6HW2nWP
 +JQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tTYp657RV3f6OWCBTwP1Ico5ltwPOdlqPIOy28hvvc8=;
 b=a8ydDTh1XR1t7ajqAtGg3/DQgM6nPxytKyO3N1ipDoh9/PTQjHumd0zfEcVVp/Aplo
 5X6TGrpEIMKkdvGOBhBeVj+ls/F05YEz0OCFfIENA1tPJ4moux1p8Rlzq3cQSSMEnAKj
 eeoWY85QSw4XN+pX8JRJpmE2bwCvOCDPYu+9cn7xs26s2n6XK1yBdx2y4XklAsfbCXgn
 1EIbl+P8+sGZYpdJ2l2GXz+moZsfMF5szHnCraZOMe2PqZOLZJByeE+98qHYHFL5EUQH
 fHRx0bqBZUZc2CTxFNcLTy7qcD/SjtdBaeFRAp+MLrkIEc7QYPMk+yvny89IjfGZ30Ca
 r+3A==
X-Gm-Message-State: AFqh2kpmfHGlYuLW8vp3RpR/5wvzdfdZVrAcKI2Snd2kHnWt2zKmI5EK
 rXNB6ei++xJtOv+LuxAqL+yeNUukXkE=
X-Google-Smtp-Source: AMrXdXtk0haqZ9uKo/Anv4Tarco7/FhQRLORJkuD6ov40UlBr5tunkzR6pAO3bcqpM8GBARIsrl1smmbZpk=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:ef0e:0:b0:766:504a:2a85 with SMTP id
 g14-20020a25ef0e000000b00766504a2a85mr273770ybd.597.1671757086843; Thu, 22
 Dec 2022 16:58:06 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:25 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-14-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 13/27] KVM: x86: Reject memslot MOVE operations
 if KVMGT is attached
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

Disallow moving memslots if the VM has external page-track users, i.e. if
KVMGT is being used to expose a virtual GPU to the guest, as KVM doesn't
correctly handle moving memory regions.

Note, this is potential ABI breakage!  E.g. userspace could move regions
that aren't shadowed by KVMGT without harming the guest.  However, the
only known user of KVMGT is QEMU, and QEMU doesn't move generic memory
regions.  KVM's own support for moving memory regions was also broken for
multiple years (albeit for an edge case, but arguably moving RAM is
itself an edge case), e.g. see commit edd4fa37baa6 ("KVM: x86: Allocate
new rmap and large page tracking when moving memslot").

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h | 3 +++
 arch/x86/kvm/mmu/page_track.c         | 5 +++++
 arch/x86/kvm/x86.c                    | 7 +++++++
 3 files changed, 15 insertions(+)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 0d65ae203fd6..6a287bcbe8a9 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -77,4 +77,7 @@ kvm_page_track_unregister_notifier(struct kvm *kvm,
 void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 			  int bytes);
 void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
+
+bool kvm_page_track_has_external_user(struct kvm *kvm);
+
 #endif
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 32357599cb09..c474a0ff24ba 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -320,3 +320,8 @@ enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
 	return max_level;
 }
 EXPORT_SYMBOL_GPL(kvm_page_track_max_mapping_level);
+
+bool kvm_page_track_has_external_user(struct kvm *kvm)
+{
+	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
+}
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index af0d83e33bc4..b587858e878e 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -12419,6 +12419,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
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
2.39.0.314.g84b9a713c41-goog

