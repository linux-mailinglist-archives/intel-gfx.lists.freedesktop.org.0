Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF31654A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7766410E5FA;
	Fri, 23 Dec 2022 00:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239D910E600
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:01 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 h66-20020a252145000000b0071a7340eea9so3625916ybh.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=YKmxahxi7v80+SveRWediRLA4L1C9QoF+MSyKdE1EyE=;
 b=pzqHiVzmbCJVgSP/zZazHvauSNJ1Xggxqch3d5hg80tPjabEMn22M++74adJKCEHyF
 i8th2MPbAWIBwGjsOYvN4xNxaNewsNAKvovLb2rXUnfjWOTrHbOrCKDA/K+ngWzEvK/d
 5IVrlHDUZ81XkD9u3J1N5fEl/6r+EWo7a/PbkGnCH/fzMgJDERcJM+yWgC+7U+OO9Dan
 8Wf0dwNRPDADxTTHPsvp8MGs9aoXfmTAfD1xoaNsk3XZ6rkWcyUfkOusx9EOZkJxVvww
 PReVGLaQZl29hEWj1ns0YlP6p8ukIgWQle5R0AdYGqHPue1OoCFaCL99LHV0hUql2p4C
 P67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YKmxahxi7v80+SveRWediRLA4L1C9QoF+MSyKdE1EyE=;
 b=LSJu1aQGmqVj4lrDdL9MGBdOM/c6gquAkSec7p0WbHbzWajtHdNC+meMMqCfslSoed
 1iJ6joWFSsQYtNM1hr0hKOg27gQ8rgWPkHCAs8NRMk/L+4f20fCFRA7hvUNmU7pD+K7H
 KPXS2G46KXHKb4pM5psnRgP4dDrLuTN4Bz1q09H9ibK7k0GoUzDqeOFgqeuu4vQBCvie
 KXkJRing2uOOpnadXweakNPPNjthh6MYSgNRDqLIIDCMjt/qywiiL9l3x2zHm7xizujM
 7aOlv5TCHx3J02N0b4cvrm8TTgIt8BTHKySmZI6iTvt4wGpmkj0CGKePzHUnR/xJ4GHA
 7PmQ==
X-Gm-Message-State: AFqh2kqLaP907cidunq8JFv0cFxaCaJu5D5Emm+Nz/QvBPj0sGZ3VHeC
 RjelQdf7MqtkI1uD6hPhnPvyjHaF1uY=
X-Google-Smtp-Source: AMrXdXvoUFaPDRgN/MYVxlWzmONSWd+36Q1F1tzda2IdXyOsPhZNxXJige4Mp7p/mHOVv/5YddCsVQjEBi8=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:9804:0:b0:6f4:57a4:7838 with SMTP id
 a4-20020a259804000000b006f457a47838mr811168ybo.648.1671757080342; Thu, 22 Dec
 2022 16:58:00 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:21 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-10-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 09/27] drm/i915/gvt: Protect gfn hash table with
 dedicated mutex
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

Add and use a new mutex, gfn_lock, to protect accesses to the hash table
used to track which gfns are write-protected when shadowing the guest's
GTT.  This fixes a bug where kvmgt_page_track_write(), which doesn't hold
kvm->mmu_lock, could race with intel_gvt_page_track_remove() and trigger
a use-after-free.

Fixing kvmgt_page_track_write() by taking kvm->mmu_lock is not an option
as mmu_lock is a r/w spinlock, and intel_vgpu_page_track_handler() might
sleep when acquiring vgpu->cache_lock deep down the callstack:

  intel_vgpu_page_track_handler()
  |
  |->  page_track->handler / ppgtt_write_protection_handler()
       |
       |-> ppgtt_handle_guest_write_page_table_bytes()
           |
           |->  ppgtt_handle_guest_write_page_table()
                |
                |-> ppgtt_handle_guest_entry_removal()
                    |
                    |-> ppgtt_invalidate_pte()
                        |
                        |-> intel_gvt_dma_unmap_guest_page()
                            |
                            |-> mutex_lock(&vgpu->cache_lock);

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h   |  1 +
 drivers/gpu/drm/i915/gvt/kvmgt.c | 65 ++++++++++++++++++++------------
 drivers/gpu/drm/i915/gvt/vgpu.c  |  1 +
 3 files changed, 43 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index dbf8d7470b2c..fbfd7eafec14 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -176,6 +176,7 @@ struct intel_vgpu {
 	struct vfio_device vfio_device;
 	struct intel_gvt *gvt;
 	struct mutex vgpu_lock;
+	struct mutex gfn_lock;
 	int id;
 	bool active;
 	bool attached;
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index ca9926061cd8..a4747e153dad 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -366,6 +366,8 @@ __kvmgt_protect_table_find(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p, *res = NULL;
 
+	lockdep_assert_held(&info->gfn_lock);
+
 	hash_for_each_possible(info->ptable, p, hnode, gfn) {
 		if (gfn == p->gfn) {
 			res = p;
@@ -388,6 +390,8 @@ static void kvmgt_protect_table_add(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p;
 
+	lockdep_assert_held(&info->gfn_lock);
+
 	if (kvmgt_gfn_is_write_protected(info, gfn))
 		return;
 
@@ -1563,60 +1567,68 @@ int intel_gvt_page_track_add(struct intel_vgpu *info, u64 gfn)
 {
 	struct kvm *kvm = info->vfio_device.kvm;
 	struct kvm_memory_slot *slot;
-	int idx;
+	int idx, ret = 0;
 
 	if (!info->attached)
 		return -ESRCH;
 
+	mutex_lock(&info->gfn_lock);
+
+	if (kvmgt_gfn_is_write_protected(info, gfn))
+		goto out;
+
 	idx = srcu_read_lock(&kvm->srcu);
 	slot = gfn_to_memslot(kvm, gfn);
 	if (!slot) {
 		srcu_read_unlock(&kvm->srcu, idx);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	write_lock(&kvm->mmu_lock);
-
-	if (kvmgt_gfn_is_write_protected(info, gfn))
-		goto out;
-
 	kvm_slot_page_track_add_page(kvm, slot, gfn, KVM_PAGE_TRACK_WRITE);
+	write_unlock(&kvm->mmu_lock);
+
+	srcu_read_unlock(&kvm->srcu, idx);
+
 	kvmgt_protect_table_add(info, gfn);
-
 out:
-	write_unlock(&kvm->mmu_lock);
-	srcu_read_unlock(&kvm->srcu, idx);
-	return 0;
+	mutex_unlock(&info->gfn_lock);
+	return ret;
 }
 
 int intel_gvt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 {
 	struct kvm *kvm = info->vfio_device.kvm;
 	struct kvm_memory_slot *slot;
-	int idx;
+	int idx, ret = 0;
 
 	if (!info->attached)
 		return 0;
 
-	idx = srcu_read_lock(&kvm->srcu);
-	slot = gfn_to_memslot(kvm, gfn);
-	if (!slot) {
-		srcu_read_unlock(&kvm->srcu, idx);
-		return -EINVAL;
-	}
-
-	write_lock(&kvm->mmu_lock);
+	mutex_lock(&info->gfn_lock);
 
 	if (!kvmgt_gfn_is_write_protected(info, gfn))
 		goto out;
 
+	idx = srcu_read_lock(&kvm->srcu);
+	slot = gfn_to_memslot(kvm, gfn);
+	if (!slot) {
+		srcu_read_unlock(&kvm->srcu, idx);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	write_lock(&kvm->mmu_lock);
 	kvm_slot_page_track_remove_page(kvm, slot, gfn, KVM_PAGE_TRACK_WRITE);
+	write_unlock(&kvm->mmu_lock);
+	srcu_read_unlock(&kvm->srcu, idx);
+
 	kvmgt_protect_table_del(info, gfn);
 
 out:
-	write_unlock(&kvm->mmu_lock);
-	srcu_read_unlock(&kvm->srcu, idx);
-	return 0;
+	mutex_unlock(&info->gfn_lock);
+	return ret;
 }
 
 static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
@@ -1627,11 +1639,13 @@ static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
 		container_of(node, struct intel_vgpu, track_node);
 
 	mutex_lock(&info->vgpu_lock);
+	mutex_lock(&info->gfn_lock);
 
 	if (kvmgt_gfn_is_write_protected(info, gpa_to_gfn(gpa)))
 		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);
 
+	mutex_unlock(&info->gfn_lock);
 	mutex_unlock(&info->vgpu_lock);
 }
 
@@ -1644,16 +1658,19 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
 
-	write_lock(&kvm->mmu_lock);
+	mutex_lock(&info->gfn_lock);
 	for (i = 0; i < slot->npages; i++) {
 		gfn = slot->base_gfn + i;
 		if (kvmgt_gfn_is_write_protected(info, gfn)) {
+			write_lock(&kvm->mmu_lock);
 			kvm_slot_page_track_remove_page(kvm, slot, gfn,
 						KVM_PAGE_TRACK_WRITE);
+			write_unlock(&kvm->mmu_lock);
+
 			kvmgt_protect_table_del(info, gfn);
 		}
 	}
-	write_unlock(&kvm->mmu_lock);
+	mutex_unlock(&info->gfn_lock);
 }
 
 void intel_vgpu_detach_regions(struct intel_vgpu *vgpu)
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 56c71474008a..f2479781b770 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -277,6 +277,7 @@ struct intel_vgpu *intel_gvt_create_idle_vgpu(struct intel_gvt *gvt)
 	vgpu->id = IDLE_VGPU_IDR;
 	vgpu->gvt = gvt;
 	mutex_init(&vgpu->vgpu_lock);
+	mutex_init(&vgpu->gfn_lock);
 
 	for (i = 0; i < I915_NUM_ENGINES; i++)
 		INIT_LIST_HEAD(&vgpu->submission.workload_q_head[i]);
-- 
2.39.0.314.g84b9a713c41-goog

