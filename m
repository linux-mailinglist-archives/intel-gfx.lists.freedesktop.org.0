Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B7A767B13
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A5210E7D2;
	Sat, 29 Jul 2023 01:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E007610E7CE
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:24 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-c64ef5bde93so2556172276.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594584; x=1691199384;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=sjdh8J0gvvhDfyi3Y7M0qGNctknbuuLpD3NKv/xuzW0=;
 b=5Ls2eO7uvFwC0PPFc7UJ2IkhKFMIkgmjwQmc+E/yKUQPWRdL0TlGQPxmbu+KH2KDd5
 IriE/GBQcHAtndYIjZyM1wUvGXe9KmYun7gKNNpRWj/bmojZ+0VKfgAzsIliXWAwDbcA
 l9bfdOq0SN++0letMb3iAi/M+S0Xacc/B4uUjLeUtoyFhdgZPvf9cEAXWiQ3T47G+nF7
 6xQMAWH0M8H3NpkYtk1RWN7Ocyxy3GNURLGoRH0zoE3HmDvsiZiVoMyUuY2TA+mqF2Bi
 ZBkuL6lrQ7Ml8AVQTUTbxvh+UUqxTWZBCcoWN2WBtaLSD0Ld3wpZ8hE8m7vmLH6SK395
 RW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594584; x=1691199384;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sjdh8J0gvvhDfyi3Y7M0qGNctknbuuLpD3NKv/xuzW0=;
 b=LsO6d29hnSv45ZDlSnAg7PzKZFvj0tZr3hyZadIxiB1HK+rNUPJy10sme5yZbcMnfB
 OzWWPBANPVOVUrOsVc3pjPD9Kr2a1azAx3x7oH7Z7CkAaZPihBntPgfOqujRUs40/4Nv
 gZx73lU20ZIQkHqBAx5+UADyggm3dalAplmY+2Amk6SCbfwq3plfFloZ4WTkP4CHFnc7
 gIqn19MsV8IaR2cKn+tP30xzMRhRxxM+W7g3PsLbbONdfLSjH8M1L5ztN3OJuFrgkPlV
 BOCChnM2Z3JJHP6GDxxDKducYEqkoNafeerglhW663G/KFbpv/TWZ7gNXKQi0sK6AHcw
 jNwA==
X-Gm-Message-State: ABy/qLa3s6N2kzpRSplAOhD4bDxkDkc31sneY/emuRT/0osl5Wi3NgGw
 d+nZHriktT7zI5pgDGSDhoyi3l3JW+k=
X-Google-Smtp-Source: APBJJlEwkpDVGUxuAwRFwJekbmXbmBWGjX6JxvPejmR/MHn/XDo0w5s1/peKYv/7b88UpULdqraGIbybXq4=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:160e:b0:d09:6ba9:69ec with SMTP id
 bw14-20020a056902160e00b00d096ba969ecmr19380ybb.4.1690594584144; Fri, 28 Jul
 2023 18:36:24 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:27 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-22-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 21/29] KVM: x86/mmu: Move KVM-only page-track
 declarations to internal header
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

Bury the declaration of the page-track helpers that are intended only for
internal KVM use in a "private" header.  In addition to guarding against
unwanted usage of the internal-only helpers, dropping their definitions
avoids exposing other structures that should be KVM-internal, e.g. for
memslots.  This is a baby step toward making kvm_host.h a KVM-internal
header in the very distant future.

Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h | 21 ++---------------
 arch/x86/kvm/mmu/mmu.c                |  3 ++-
 arch/x86/kvm/mmu/page_track.c         |  8 +------
 arch/x86/kvm/mmu/page_track.h         | 33 +++++++++++++++++++++++++++
 arch/x86/kvm/x86.c                    |  1 +
 5 files changed, 39 insertions(+), 27 deletions(-)
 create mode 100644 arch/x86/kvm/mmu/page_track.h

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 5c348ffdc194..76c0070dfe2a 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_X86_KVM_PAGE_TRACK_H
 #define _ASM_X86_KVM_PAGE_TRACK_H
 
+#include <linux/kvm_types.h>
+
 enum kvm_page_track_mode {
 	KVM_PAGE_TRACK_WRITE,
 	KVM_PAGE_TRACK_MAX,
@@ -46,26 +48,12 @@ struct kvm_page_track_notifier_node {
 				    struct kvm_page_track_notifier_node *node);
 };
 
-int kvm_page_track_init(struct kvm *kvm);
-void kvm_page_track_cleanup(struct kvm *kvm);
-
-bool kvm_page_track_write_tracking_enabled(struct kvm *kvm);
-int kvm_page_track_write_tracking_alloc(struct kvm_memory_slot *slot);
-
-void kvm_page_track_free_memslot(struct kvm_memory_slot *slot);
-int kvm_page_track_create_memslot(struct kvm *kvm,
-				  struct kvm_memory_slot *slot,
-				  unsigned long npages);
-
 void kvm_slot_page_track_add_page(struct kvm *kvm,
 				  struct kvm_memory_slot *slot, gfn_t gfn,
 				  enum kvm_page_track_mode mode);
 void kvm_slot_page_track_remove_page(struct kvm *kvm,
 				     struct kvm_memory_slot *slot, gfn_t gfn,
 				     enum kvm_page_track_mode mode);
-bool kvm_slot_page_track_is_active(struct kvm *kvm,
-				   const struct kvm_memory_slot *slot,
-				   gfn_t gfn, enum kvm_page_track_mode mode);
 
 void
 kvm_page_track_register_notifier(struct kvm *kvm,
@@ -73,10 +61,5 @@ kvm_page_track_register_notifier(struct kvm *kvm,
 void
 kvm_page_track_unregister_notifier(struct kvm *kvm,
 				   struct kvm_page_track_notifier_node *n);
-void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
-			  int bytes);
-void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
-
-bool kvm_page_track_has_external_user(struct kvm *kvm);
 
 #endif
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index c1d3ac303964..88923b1eb510 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -25,6 +25,7 @@
 #include "kvm_cache_regs.h"
 #include "smm.h"
 #include "kvm_emulate.h"
+#include "page_track.h"
 #include "cpuid.h"
 #include "spte.h"
 
@@ -53,7 +54,7 @@
 #include <asm/io.h>
 #include <asm/set_memory.h>
 #include <asm/vmx.h>
-#include <asm/kvm_page_track.h>
+
 #include "trace.h"
 
 extern bool itlb_multihit_kvm_mitigation;
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 2a6ab7c455c0..e15329d48f95 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -15,10 +15,9 @@
 #include <linux/kvm_host.h>
 #include <linux/rculist.h>
 
-#include <asm/kvm_page_track.h>
-
 #include "mmu.h"
 #include "mmu_internal.h"
+#include "page_track.h"
 
 bool kvm_page_track_write_tracking_enabled(struct kvm *kvm)
 {
@@ -300,8 +299,3 @@ void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
 			n->track_remove_region(slot->base_gfn, slot->npages, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 }
-
-bool kvm_page_track_has_external_user(struct kvm *kvm)
-{
-	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
-}
diff --git a/arch/x86/kvm/mmu/page_track.h b/arch/x86/kvm/mmu/page_track.h
new file mode 100644
index 000000000000..89712f123ad3
--- /dev/null
+++ b/arch/x86/kvm/mmu/page_track.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __KVM_X86_PAGE_TRACK_H
+#define __KVM_X86_PAGE_TRACK_H
+
+#include <linux/kvm_host.h>
+
+#include <asm/kvm_page_track.h>
+
+int kvm_page_track_init(struct kvm *kvm);
+void kvm_page_track_cleanup(struct kvm *kvm);
+
+bool kvm_page_track_write_tracking_enabled(struct kvm *kvm);
+int kvm_page_track_write_tracking_alloc(struct kvm_memory_slot *slot);
+
+void kvm_page_track_free_memslot(struct kvm_memory_slot *slot);
+int kvm_page_track_create_memslot(struct kvm *kvm,
+				  struct kvm_memory_slot *slot,
+				  unsigned long npages);
+
+bool kvm_slot_page_track_is_active(struct kvm *kvm,
+				   const struct kvm_memory_slot *slot,
+				   gfn_t gfn, enum kvm_page_track_mode mode);
+
+void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
+			  int bytes);
+void kvm_page_track_delete_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
+
+static inline bool kvm_page_track_has_external_user(struct kvm *kvm)
+{
+	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
+}
+
+#endif /* __KVM_X86_PAGE_TRACK_H */
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index e9ecdf5fbdac..05a68d7d99fe 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -25,6 +25,7 @@
 #include "tss.h"
 #include "kvm_cache_regs.h"
 #include "kvm_emulate.h"
+#include "mmu/page_track.h"
 #include "x86.h"
 #include "cpuid.h"
 #include "pmu.h"
-- 
2.41.0.487.g6d72f3e995-goog

