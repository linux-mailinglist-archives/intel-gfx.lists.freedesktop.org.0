Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FB66B5687
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4913510EA5F;
	Sat, 11 Mar 2023 00:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CA610EA4F
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:49 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 i7-20020a626d07000000b005d29737db06so3632570pfc.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494229;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=/BQVuzY+1aniIxFwV3nAIhGW3ZAM3GsrQzHkvtpaNHU=;
 b=Ab0v8YmpDERByolnb028YKVIlfH4MiO7yQrc4RKRFL5GBnbXvna4+5GVmm19EWQOhj
 egIfhucrWh67+17xUMC+0ozgET86EcLL8gnfW3xTY437OsCd7ohRm5I91JQSjbDvGVei
 dxWVJkzKLqqg0c0shd3w8KO9sXN0xg9lUPSDNOCubHZ/a7B1QgL0e+FDanDFF0/DULCS
 LHcCjqWQV6U+85Rp05fZB7kujyhcAXUJtL7t5mdIK0oGB6Qi/WSWx7CHQVZHOz+RwLY5
 rrcbP1RyosYGKPBD9kFA2WvKZVxc6aJmOd7YPCqPh6RRazY0E+Z0WNTZjUfo5H8kFcEs
 IDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494229;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/BQVuzY+1aniIxFwV3nAIhGW3ZAM3GsrQzHkvtpaNHU=;
 b=5GyAtd8D3JTZn3lP3oeC67Vw/JzZjpH5MpTTs90Oa1eO1ll4cF1kjf6BXXliZXMdqS
 YvEQjxmEEcA02fbweCSGV+ePQsSj+35wX2G3DQ2TjqtCfJfU3rQn5J2LdQDb0JF7+GXO
 5M+QIUawRHfxEG+1ZjIZp/DJ6KBLR1QEc4qI5Ldu3wentwGJ9pHDPmH3G1xfeOUKWppm
 QV30vmqKxtQOCO4tfpuVwNE6b3fzeeIPrONPPeP1szYYhaUsaeDib0KKnlWPCu8WJ0BW
 Im/bzMn/J5f04IaICe1JLkak72oMYPL1B6HyA83M3phKQ4j6Z/NNDou0/GOj7XQ1b67+
 lnKw==
X-Gm-Message-State: AO0yUKXbvzNKLB2KNK9BtqZhqgKt0F49oEMX6VkvTtWellJ7KG9bM/gB
 c4kcDiZAM9JkfmnS/bM2Ja0WBkXTsDg=
X-Google-Smtp-Source: AK7set/WL/vPfDG+0upzro4oNam3+F1L+Ja1Dx0YWA0HV59XxvzT36tQS14IvXsQT0H8w5tlcGKiql7qadE=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:716:b0:231:1d90:7b1b with SMTP id
 l22-20020a17090a071600b002311d907b1bmr9612096pjl.2.1678494229325; Fri, 10 Mar
 2023 16:23:49 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:54 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-24-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 23/27] KVM: x86/mmu: Assert that correct
 locks are held for page write-tracking
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

When adding/removing gfns to/from write-tracking, assert that mmu_lock
is held for write, and that either slots_lock or kvm->srcu is held.
mmu_lock must be held for write to protect gfn_write_track's refcount,
and SRCU or slots_lock must be held to protect the memslot itself.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/mmu/page_track.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 1993db4578e5..ffcd7ac66f9e 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -12,6 +12,7 @@
  */
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/lockdep.h>
 #include <linux/kvm_host.h>
 #include <linux/rculist.h>
 
@@ -77,9 +78,6 @@ static void update_gfn_write_track(struct kvm_memory_slot *slot, gfn_t gfn,
  * add guest page to the tracking pool so that corresponding access on that
  * page will be intercepted.
  *
- * It should be called under the protection both of mmu-lock and kvm->srcu
- * or kvm->slots_lock.
- *
  * @kvm: the guest instance we are interested in.
  * @slot: the @gfn belongs to.
  * @gfn: the guest page.
@@ -87,6 +85,11 @@ static void update_gfn_write_track(struct kvm_memory_slot *slot, gfn_t gfn,
 void kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
 			     gfn_t gfn)
 {
+	lockdep_assert_held_write(&kvm->mmu_lock);
+
+	lockdep_assert_once(lockdep_is_held(&kvm->slots_lock) ||
+			    srcu_read_lock_held(&kvm->srcu));
+
 	if (WARN_ON(!kvm_page_track_write_tracking_enabled(kvm)))
 		return;
 
@@ -107,9 +110,6 @@ EXPORT_SYMBOL_GPL(kvm_write_track_add_gfn);
  * remove the guest page from the tracking pool which stops the interception
  * of corresponding access on that page.
  *
- * It should be called under the protection both of mmu-lock and kvm->srcu
- * or kvm->slots_lock.
- *
  * @kvm: the guest instance we are interested in.
  * @slot: the @gfn belongs to.
  * @gfn: the guest page.
@@ -117,6 +117,11 @@ EXPORT_SYMBOL_GPL(kvm_write_track_add_gfn);
 void kvm_write_track_remove_gfn(struct kvm *kvm,
 				struct kvm_memory_slot *slot, gfn_t gfn)
 {
+	lockdep_assert_held_write(&kvm->mmu_lock);
+
+	lockdep_assert_once(lockdep_is_held(&kvm->slots_lock) ||
+			    srcu_read_lock_held(&kvm->srcu));
+
 	if (WARN_ON(!kvm_page_track_write_tracking_enabled(kvm)))
 		return;
 
-- 
2.40.0.rc1.284.g88254d51c5-goog

