Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C19D701349
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC32A10E70A;
	Sat, 13 May 2023 00:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F4610E6FA
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:46 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 98e67ed59e1d1-24e205905d4so10044216a91.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938205; x=1686530205;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=PenAcxg/JHFM0RHpmNwDt3kzSEBo2CwwQ28tzGufALc=;
 b=sJmKJ+NwpYXzM8XxrSgDYycwmS+3zynuz2HoXasVi+z41FOTgr+aX1UzDbJuyOztGz
 J8FW02gAvD2WYLHxwhYUk6O7nXCqo1i/RSpGbPC74LkdXkYriNeEMP0u2kMA2RUXjRMB
 ePnNw+RuLXw+nxNFU3VUpUmZTg+9Bt9wIRTjQWirwS0deLyZiP7J0LVUpAYc0ydYibNL
 KJnpNuyEEXxg7H6jYB5rfPaJOsTbD0XsjZHcOOby8nIXh1BAurA+hDVZa2aPM18OJ7+t
 p/LT7alIfhkSFhJDdxw4S5LRrFIYds+kfoKylJWPDLsKYB4zQPXKx5rVlyr7bHDOpTX2
 92Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938205; x=1686530205;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PenAcxg/JHFM0RHpmNwDt3kzSEBo2CwwQ28tzGufALc=;
 b=Y5m+IXeQr4Rw3nbzP3lh3zIQqBT9vxW5Wp0e4vMybaVwTU6Y0GY6E0J32TOOq6Kahe
 u0G3HHI7CzSjXojcBJMx2+Qq0M+Qyj76dai17vpeeviJmS28s+zd5VwSbl+lH6l9IGbc
 nGRR1vTAvCBTijF49maEBfRAAGGKlsitxKHe7tWWz0wj/l3ptttQCNYz6CYuj8Q246gv
 wLsCWI9P9EKkEUnMWraYkaz6P1PhiOFj6Ir32VdKSnU6+PBfjbcKY2W/Y2bs6hnOjstn
 sw9+xRrIpyNsHRyFDtFmWDnFC/l0OSchroBoRf5v8BO4rA6XCvSsAyiTVqQcn5vzGkqU
 r+zQ==
X-Gm-Message-State: AC+VfDxghOqjvtfhv7N6JjeWnHrvcuf9ikjxT6ietzUo/cuPE9nCNCN8
 4zN9znamFoFI7aI9WSUJRzYfvYCP434=
X-Google-Smtp-Source: ACHHUZ7/FXVthf0IoGT35VGAplldg9X7u57mgH7H1+PMfiSEAbhALFDjBFg0AyXQ02xAVr2M07jpaadHWoY=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:954:b0:247:9111:9d0d with SMTP id
 dw20-20020a17090b095400b0024791119d0dmr7933898pjb.4.1683938205340; Fri, 12
 May 2023 17:36:45 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:53 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-22-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 21/28] KVM: x86/mmu: Use page-track notifiers
 iff there are external users
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

Disable the page-track notifier code at compile time if there are no
external users, i.e. if CONFIG_KVM_EXTERNAL_WRITE_TRACKING=n.  KVM itself
now hooks emulated writes directly instead of relying on the page-track
mechanism.

Provide a stub for "struct kvm_page_track_notifier_node" so that including
headers directly from the command line, e.g. for testing include guards,
doesn't fail due to a struct having an incomplete type.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_host.h       |  2 ++
 arch/x86/include/asm/kvm_page_track.h | 22 +++++++++++++-------
 arch/x86/kvm/mmu/page_track.c         | 10 ++++-----
 arch/x86/kvm/mmu/page_track.h         | 29 +++++++++++++++++++++++----
 4 files changed, 47 insertions(+), 16 deletions(-)

diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index 113598d3e886..5ce06a75d3de 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1247,7 +1247,9 @@ struct kvm_arch {
 	 * create an NX huge page (without hanging the guest).
 	 */
 	struct list_head possible_nx_huge_pages;
+#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
 	struct kvm_page_track_notifier_head track_notifier_head;
+#endif
 	/*
 	 * Protects marking pages unsync during page faults, as TDP MMU page
 	 * faults only take mmu_lock for read.  For simplicity, the unsync
diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 76c0070dfe2a..61adb07b5927 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -9,6 +9,14 @@ enum kvm_page_track_mode {
 	KVM_PAGE_TRACK_MAX,
 };
 
+void kvm_slot_page_track_add_page(struct kvm *kvm,
+				  struct kvm_memory_slot *slot, gfn_t gfn,
+				  enum kvm_page_track_mode mode);
+void kvm_slot_page_track_remove_page(struct kvm *kvm,
+				     struct kvm_memory_slot *slot, gfn_t gfn,
+				     enum kvm_page_track_mode mode);
+
+#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
 /*
  * The notifier represented by @kvm_page_track_notifier_node is linked into
  * the head which will be notified when guest is triggering the track event.
@@ -48,18 +56,18 @@ struct kvm_page_track_notifier_node {
 				    struct kvm_page_track_notifier_node *node);
 };
 
-void kvm_slot_page_track_add_page(struct kvm *kvm,
-				  struct kvm_memory_slot *slot, gfn_t gfn,
-				  enum kvm_page_track_mode mode);
-void kvm_slot_page_track_remove_page(struct kvm *kvm,
-				     struct kvm_memory_slot *slot, gfn_t gfn,
-				     enum kvm_page_track_mode mode);
-
 void
 kvm_page_track_register_notifier(struct kvm *kvm,
 				 struct kvm_page_track_notifier_node *n);
 void
 kvm_page_track_unregister_notifier(struct kvm *kvm,
 				   struct kvm_page_track_notifier_node *n);
+#else
+/*
+ * Allow defining a node in a structure even if page tracking is disabled, e.g.
+ * to play nice with testing headers via direct inclusion from the command line.
+ */
+struct kvm_page_track_notifier_node {};
+#endif /* CONFIG_KVM_EXTERNAL_WRITE_TRACKING */
 
 #endif
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index e15329d48f95..b20aad7ac3fe 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -194,6 +194,7 @@ bool kvm_slot_page_track_is_active(struct kvm *kvm,
 	return !!READ_ONCE(slot->arch.gfn_track[mode][index]);
 }
 
+#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
 void kvm_page_track_cleanup(struct kvm *kvm)
 {
 	struct kvm_page_track_notifier_head *head;
@@ -255,14 +256,13 @@ EXPORT_SYMBOL_GPL(kvm_page_track_unregister_notifier);
  * The node should figure out if the written page is the one that node is
  * interested in by itself.
  */
-void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
-			  int bytes)
+void __kvm_page_track_write(struct kvm *kvm, gpa_t gpa, const u8 *new, int bytes)
 {
 	struct kvm_page_track_notifier_head *head;
 	struct kvm_page_track_notifier_node *n;
 	int idx;
 
-	head = &vcpu->kvm->arch.track_notifier_head;
+	head = &kvm->arch.track_notifier_head;
 
 	if (hlist_empty(&head->track_notifier_list))
 		return;
@@ -273,8 +273,6 @@ void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 		if (n->track_write)
 			n->track_write(gpa, new, bytes, n);
 	srcu_read_unlock(&head->track_srcu, idx);
-
-	kvm_mmu_track_write(vcpu, gpa, new, bytes);
 }
 
 /*
@@ -299,3 +297,5 @@ void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
 			n->track_remove_region(slot->base_gfn, slot->npages, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 }
+
+#endif
diff --git a/arch/x86/kvm/mmu/page_track.h b/arch/x86/kvm/mmu/page_track.h
index 89712f123ad3..931b26b8fc8f 100644
--- a/arch/x86/kvm/mmu/page_track.h
+++ b/arch/x86/kvm/mmu/page_track.h
@@ -6,8 +6,6 @@
 
 #include <asm/kvm_page_track.h>
 
-int kvm_page_track_init(struct kvm *kvm);
-void kvm_page_track_cleanup(struct kvm *kvm);
 
 bool kvm_page_track_write_tracking_enabled(struct kvm *kvm);
 int kvm_page_track_write_tracking_alloc(struct kvm_memory_slot *slot);
@@ -21,13 +19,36 @@ bool kvm_slot_page_track_is_active(struct kvm *kvm,
 				   const struct kvm_memory_slot *slot,
 				   gfn_t gfn, enum kvm_page_track_mode mode);
 
-void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
-			  int bytes);
+#ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
+int kvm_page_track_init(struct kvm *kvm);
+void kvm_page_track_cleanup(struct kvm *kvm);
+
+void __kvm_page_track_write(struct kvm *kvm, gpa_t gpa, const u8 *new, int bytes);
 void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
 
 static inline bool kvm_page_track_has_external_user(struct kvm *kvm)
 {
 	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
 }
+#else
+static inline int kvm_page_track_init(struct kvm *kvm) { return 0; }
+static inline void kvm_page_track_cleanup(struct kvm *kvm) { }
+
+static inline void __kvm_page_track_write(struct kvm *kvm, gpa_t gpa,
+					  const u8 *new, int bytes) { }
+static inline void kvm_page_track_delete_slot(struct kvm *kvm,
+					      struct kvm_memory_slot *slot) { }
+
+static inline bool kvm_page_track_has_external_user(struct kvm *kvm) { return false; }
+
+#endif /* CONFIG_KVM_EXTERNAL_WRITE_TRACKING */
+
+static inline void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
+					const u8 *new, int bytes)
+{
+	__kvm_page_track_write(vcpu->kvm, gpa, new, bytes);
+
+	kvm_mmu_track_write(vcpu, gpa, new, bytes);
+}
 
 #endif /* __KVM_X86_PAGE_TRACK_H */
-- 
2.40.1.606.ga4b1b128d6-goog

