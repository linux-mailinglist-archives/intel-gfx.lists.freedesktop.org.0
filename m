Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B82F767B1C
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1D910E7D5;
	Sat, 29 Jul 2023 01:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BAD10E7D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:32 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-1bbf8cb6143so2257165ad.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594591; x=1691199391;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=Cv+DsoDLVKC7M6FclOb2McPWSddb97LBT0B8H7opNaY=;
 b=T6dKn0Eqxyz2hq1pOTYEfIvzKdLREMUo3Eg9TGB/irJNqcwSL7N1U8s/qojB7Pomtd
 HajhioTnMF465M8X+PS/k6ettCzrCZomyoVuYFcv0Nz/JHAeLUu/JPrCRJs3IRY4Y3P+
 eY9C/JWu5kka2BzL4yTJsR+VP98afzcS2VbBYuLg7mbrhHcmSMJx1oQVVjfUUM65NxJw
 Mvmqplu8i0P/4ILWu1S78NWKp6Vz9QSIw7BZHTBZ/agXrwenZ/YSKCT1i4aZb6EvG3Tk
 CZIs+U82m251j7gMDbv/bLGUnBY17cIc3FNda3lpZHZWXsEku3CBzTn6AiLAuJCQM8Ro
 L+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594591; x=1691199391;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Cv+DsoDLVKC7M6FclOb2McPWSddb97LBT0B8H7opNaY=;
 b=dxm9mF4DcS7rOgI63mjlSAeHatIaNGfgpRT0UviWpzBZejq1f7K5a184+xDpgprwYY
 ldMICodI3OWx/IcsZgHUXr+1bbffFm0bPtu284OLvFt8Jd6geA0BS2Y+QW8w1/swHxvw
 xWXv88ICq69isCnWCUkizRWoI40yDFxD9sNP7RAYz4dawF4lxepOwWDjgXQyyJo1Xi2Q
 lewgPlB7jfNHqyDeD3dz14E2cvrxXRHiOCG6cey/8y7uIaflEibWlwCqx61unW5HzAto
 bqOlBfU5nYvB/KOMVVMTfdOPrcopUfZ8+MVns/4WePHJVY5qYPVp/AbqQpfp1ySI03L3
 IVbA==
X-Gm-Message-State: ABy/qLZSQ6CTYP4o1/mfCwWSjIt8RD7DKG53ZHSNBBZQs7ufBlc15jfl
 lcfYyqOdItdvHOnEqS1i0xgB1vSo1o8=
X-Google-Smtp-Source: APBJJlHqtoyrZzkA1RBEZPijpbgeZu0MncV0t8E8AkPf499XEff/G9cn4OJ6eavuvETRp4yMIx/pcoD/6Lk=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:d489:b0:1bb:83ec:841 with SMTP id
 c9-20020a170902d48900b001bb83ec0841mr12572plg.6.1690594591600; Fri, 28 Jul
 2023 18:36:31 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:31 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-26-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 25/29] KVM: x86/mmu: Assert that correct
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
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When adding/removing gfns to/from write-tracking, assert that mmu_lock
is held for write, and that either slots_lock or kvm->srcu is held.
mmu_lock must be held for write to protect gfn_write_track's refcount,
and SRCU or slots_lock must be held to protect the memslot itself.

Tested-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/mmu/page_track.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index b835ba7f325c..29ae61f1e303 100644
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
2.41.0.487.g6d72f3e995-goog

