Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CAF654A2B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5818410E616;
	Fri, 23 Dec 2022 00:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2649D10E60D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:27 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-45c1b233dd7so36910007b3.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=Y7zEbg+PSBgNbPNr2JJBZnWLIxANb15omDzgAKJnsIE=;
 b=o77zEn6e0lZU7teoBJjqB7krlFtzyTsCga/b0+MoJZsVE2rhXbcj9FUdTSG46jzU3K
 GWBJMGO6jqtL4wojLdGnZCxz/nvCDW6PtcMJPMDDITo0yWej1k52ILxW0VBi9GcRk/Dr
 CVYBz9s8ot7zzIwYqcQcpVtg5IB65YmjAJ8BsBmFeNI7Nd0BuRXc84AuZlxiu5i/xQw6
 2uJjpjJkoX6PiqPSU4tLQHMTl59LPwHuJE8baJCgxIGHUh57aFKfjWxnJBfrkzvqp0Vh
 x2Au1mVsMc9NigZud9tmpUa8NHQVHe2EZvaQNFYWYSPHdSyPT+OlMSRQWJIYH4b0Q4IW
 mJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Y7zEbg+PSBgNbPNr2JJBZnWLIxANb15omDzgAKJnsIE=;
 b=W5uFYucmANis3HC+0fgYFPqf4B7S79tmhCSosjHwL7KmfIOrvsX0EAlc3CFL8LzOjc
 kx4WS2JkZgO/+530E3V9kx+tYzQM6XGCO+1z9NJoRQZd2ZanStN4ukLzjbJEZbs3gWL5
 gf1usdHINvrp17ItRDjxww86zr9rpkaHCVwPhDX98LcDuQ0aN5EFWYSK4BG5hJeN4VD3
 gWx55ofMQTKFUKuGU1ZZvRL4jFysmBVH2oPayHr5yTtdkg9SwrYEWVSDE9+CJNRAIh8W
 YYt0uH7UBmqYTF/T0znJjYHGT3UQ35Khmg5fCjTyLoSH5JywSVtCK+oKOCucY2v4xI1V
 Eijw==
X-Gm-Message-State: AFqh2kpOCLqeOhYvXIyZbD/zfa3MPQ4+lV3TrExrheIeLu7i4PQHfRiy
 5/7r/RLYR2mK/LkC8KVYj34oG+UAnc4=
X-Google-Smtp-Source: AMrXdXt4IcE+pfJHE1SZ3WY28DAtr8RT3YXR9sK1DH2psAKIsK8pR0qm4KExLZ2U1uCN/n5kpdVCm0vI7JA=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:27c8:0:b0:73f:b500:8d90 with SMTP id
 n191-20020a2527c8000000b0073fb5008d90mr707402ybn.284.1671757106385; Thu, 22
 Dec 2022 16:58:26 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:36 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-25-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 24/27] KVM: x86/mmu: Drop @slot param from
 exported/external page-track APIs
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

Refactor KVM's exported/external page-track, a.k.a. write-track, APIs
to take only the gfn and do the required memslot lookup in KVM proper.
Forcing users of the APIs to get the memslot unnecessarily bleeds
KVM internals into KVMGT and complicates usage of the APIs.

No functional change intended.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h |  8 +--
 arch/x86/kvm/mmu/mmu.c                |  4 +-
 arch/x86/kvm/mmu/page_track.c         | 86 ++++++++++++++++++++-------
 arch/x86/kvm/mmu/page_track.h         |  5 ++
 drivers/gpu/drm/i915/gvt/kvmgt.c      | 44 +++-----------
 5 files changed, 82 insertions(+), 65 deletions(-)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 20055064793a..415537ce45b4 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -43,11 +43,6 @@ struct kvm_page_track_notifier_node {
 				    struct kvm_page_track_notifier_node *node);
 };
 
-void kvm_write_track_add_gfn(struct kvm *kvm,
-			     struct kvm_memory_slot *slot, gfn_t gfn);
-void kvm_write_track_remove_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
-				gfn_t gfn);
-
 #ifdef CONFIG_KVM_EXTERNAL_WRITE_TRACKING
 enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
 					       enum pg_level max_level);
@@ -58,6 +53,9 @@ kvm_page_track_register_notifier(struct kvm *kvm,
 void
 kvm_page_track_unregister_notifier(struct kvm *kvm,
 				   struct kvm_page_track_notifier_node *n);
+
+int kvm_write_track_add_gfn(struct kvm *kvm, gfn_t gfn);
+int kvm_write_track_remove_gfn(struct kvm *kvm, gfn_t gfn);
 #endif /* CONFIG_KVM_EXTERNAL_WRITE_TRACKING */
 
 #endif
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index b4cc762cfe11..5c1369072146 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -807,7 +807,7 @@ static void account_shadowed(struct kvm *kvm, struct kvm_mmu_page *sp)
 
 	/* the non-leaf shadow pages are keeping readonly. */
 	if (sp->role.level > PG_LEVEL_4K)
-		return kvm_write_track_add_gfn(kvm, slot, gfn);
+		return __kvm_write_track_add_gfn(kvm, slot, gfn);
 
 	kvm_mmu_gfn_disallow_lpage(slot, gfn);
 
@@ -853,7 +853,7 @@ static void unaccount_shadowed(struct kvm *kvm, struct kvm_mmu_page *sp)
 	slots = kvm_memslots_for_spte_role(kvm, sp->role);
 	slot = __gfn_to_memslot(slots, gfn);
 	if (sp->role.level > PG_LEVEL_4K)
-		return kvm_write_track_remove_gfn(kvm, slot, gfn);
+		return __kvm_write_track_remove_gfn(kvm, slot, gfn);
 
 	kvm_mmu_gfn_allow_lpage(slot, gfn);
 }
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index d4c3bd6642b3..bc54afc1919c 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -73,16 +73,8 @@ static void update_gfn_write_track(struct kvm_memory_slot *slot, gfn_t gfn,
 	slot->arch.gfn_write_track[index] += count;
 }
 
-/*
- * add guest page to the tracking pool so that corresponding access on that
- * page will be intercepted.
- *
- * @kvm: the guest instance we are interested in.
- * @slot: the @gfn belongs to.
- * @gfn: the guest page.
- */
-void kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
-			     gfn_t gfn)
+void __kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
+			       gfn_t gfn)
 {
 	lockdep_assert_held_write(&kvm->mmu_lock);
 
@@ -103,18 +95,9 @@ void kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
 	if (kvm_mmu_slot_gfn_write_protect(kvm, slot, gfn, PG_LEVEL_4K))
 		kvm_flush_remote_tlbs(kvm);
 }
-EXPORT_SYMBOL_GPL(kvm_write_track_add_gfn);
 
-/*
- * remove the guest page from the tracking pool which stops the interception
- * of corresponding access on that page.
- *
- * @kvm: the guest instance we are interested in.
- * @slot: the @gfn belongs to.
- * @gfn: the guest page.
- */
-void kvm_write_track_remove_gfn(struct kvm *kvm,
-				struct kvm_memory_slot *slot, gfn_t gfn)
+void __kvm_write_track_remove_gfn(struct kvm *kvm,
+				  struct kvm_memory_slot *slot, gfn_t gfn)
 {
 	lockdep_assert_held_write(&kvm->mmu_lock);
 
@@ -132,7 +115,6 @@ void kvm_write_track_remove_gfn(struct kvm *kvm,
 	 */
 	kvm_mmu_gfn_allow_lpage(slot, gfn);
 }
-EXPORT_SYMBOL_GPL(kvm_write_track_remove_gfn);
 
 /*
  * check if the corresponding access on the specified guest page is tracked.
@@ -275,4 +257,64 @@ enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
 	return max_level;
 }
 EXPORT_SYMBOL_GPL(kvm_page_track_max_mapping_level);
+
+/*
+ * add guest page to the tracking pool so that corresponding access on that
+ * page will be intercepted.
+ *
+ * @kvm: the guest instance we are interested in.
+ * @gfn: the guest page.
+ */
+int kvm_write_track_add_gfn(struct kvm *kvm, gfn_t gfn)
+{
+	struct kvm_memory_slot *slot;
+	int idx;
+
+	idx = srcu_read_lock(&kvm->srcu);
+
+	slot = gfn_to_memslot(kvm, gfn);
+	if (!slot) {
+		srcu_read_unlock(&kvm->srcu, idx);
+		return -EINVAL;
+	}
+
+	write_lock(&kvm->mmu_lock);
+	__kvm_write_track_add_gfn(kvm, slot, gfn);
+	write_unlock(&kvm->mmu_lock);
+
+	srcu_read_unlock(&kvm->srcu, idx);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(kvm_write_track_add_gfn);
+
+/*
+ * remove the guest page from the tracking pool which stops the interception
+ * of corresponding access on that page.
+ *
+ * @kvm: the guest instance we are interested in.
+ * @gfn: the guest page.
+ */
+int kvm_write_track_remove_gfn(struct kvm *kvm, gfn_t gfn)
+{
+	struct kvm_memory_slot *slot;
+	int idx;
+
+	idx = srcu_read_lock(&kvm->srcu);
+
+	slot = gfn_to_memslot(kvm, gfn);
+	if (!slot) {
+		srcu_read_unlock(&kvm->srcu, idx);
+		return -EINVAL;
+	}
+
+	write_lock(&kvm->mmu_lock);
+	__kvm_write_track_remove_gfn(kvm, slot, gfn);
+	write_unlock(&kvm->mmu_lock);
+
+	srcu_read_unlock(&kvm->srcu, idx);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(kvm_write_track_remove_gfn);
 #endif
diff --git a/arch/x86/kvm/mmu/page_track.h b/arch/x86/kvm/mmu/page_track.h
index b27ccc588648..ee5c92083985 100644
--- a/arch/x86/kvm/mmu/page_track.h
+++ b/arch/x86/kvm/mmu/page_track.h
@@ -15,6 +15,11 @@ int kvm_page_track_create_memslot(struct kvm *kvm,
 				  struct kvm_memory_slot *slot,
 				  unsigned long npages);
 
+void __kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
+			       gfn_t gfn);
+void __kvm_write_track_remove_gfn(struct kvm *kvm,
+				  struct kvm_memory_slot *slot, gfn_t gfn);
+
 bool kvm_gfn_is_write_tracked(struct kvm *kvm,
 			      const struct kvm_memory_slot *slot, gfn_t gfn);
 
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 325afeb1246c..f9d21d29f533 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1563,9 +1563,7 @@ static struct mdev_driver intel_vgpu_mdev_driver = {
 
 int intel_gvt_page_track_add(struct intel_vgpu *info, u64 gfn)
 {
-	struct kvm *kvm = info->vfio_device.kvm;
-	struct kvm_memory_slot *slot;
-	int idx, ret = 0;
+	int ret = 0;
 
 	if (!info->attached)
 		return -ESRCH;
@@ -1575,21 +1573,9 @@ int intel_gvt_page_track_add(struct intel_vgpu *info, u64 gfn)
 	if (kvmgt_gfn_is_write_protected(info, gfn))
 		goto out;
 
-	idx = srcu_read_lock(&kvm->srcu);
-	slot = gfn_to_memslot(kvm, gfn);
-	if (!slot) {
-		srcu_read_unlock(&kvm->srcu, idx);
-		ret = -EINVAL;
-		goto out;
-	}
-
-	write_lock(&kvm->mmu_lock);
-	kvm_write_track_add_gfn(kvm, slot, gfn);
-	write_unlock(&kvm->mmu_lock);
-
-	srcu_read_unlock(&kvm->srcu, idx);
-
-	kvmgt_protect_table_add(info, gfn);
+	ret = kvm_write_track_add_gfn(info->vfio_device.kvm, gfn);
+	if (!ret)
+		kvmgt_protect_table_add(info, gfn);
 out:
 	mutex_unlock(&info->gfn_lock);
 	return ret;
@@ -1597,9 +1583,7 @@ int intel_gvt_page_track_add(struct intel_vgpu *info, u64 gfn)
 
 int intel_gvt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 {
-	struct kvm *kvm = info->vfio_device.kvm;
-	struct kvm_memory_slot *slot;
-	int idx, ret = 0;
+	int ret = 0;
 
 	if (!info->attached)
 		return 0;
@@ -1609,21 +1593,9 @@ int intel_gvt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 	if (!kvmgt_gfn_is_write_protected(info, gfn))
 		goto out;
 
-	idx = srcu_read_lock(&kvm->srcu);
-	slot = gfn_to_memslot(kvm, gfn);
-	if (!slot) {
-		srcu_read_unlock(&kvm->srcu, idx);
-		ret = -EINVAL;
-		goto out;
-	}
-
-	write_lock(&kvm->mmu_lock);
-	kvm_write_track_remove_gfn(kvm, slot, gfn);
-	write_unlock(&kvm->mmu_lock);
-	srcu_read_unlock(&kvm->srcu, idx);
-
-	kvmgt_protect_table_del(info, gfn);
-
+	ret = kvm_write_track_remove_gfn(info->vfio_device.kvm, gfn);
+	if (!ret)
+		kvmgt_protect_table_del(info, gfn);
 out:
 	mutex_unlock(&info->gfn_lock);
 	return ret;
-- 
2.39.0.314.g84b9a713c41-goog

