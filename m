Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67240654A06
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DD210E60B;
	Fri, 23 Dec 2022 00:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBE710E5F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:05 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 ep17-20020a17090ae65100b00219702c495cso1787357pjb.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=UJqJNBCtoIdtgXVefU003hR1jHk/HxGUadf/YE96ml8=;
 b=ehIgRqg3a6k4McJEM8+rXSkfH8/QJVgBGxAYJJUVWiDAelM5ThIZw710Ty5BrS30HC
 OTB2weq0uJmPWd0Kk9Ph7aSwtW3nHE/J+G4PV+kf5ardGkmxlfB7Vx5WC050TwmGLXG3
 S8IoYck/O8bJ8vxa3qdjtgXTDbVY4Q+7vjnRDi6oLkLBysYAUQRKatvWOmB4qnH3h7SQ
 uKW1d/yEvhSVOD7tM6jo73VsNpWXcig35pHDVvMRc8gftFcMX10t4O5Zp90Io1KYR0dD
 qRVeQevSTslsRtRE8+aOrMT2xnuXNGg20NExLe3dkrIDHZyjB1ef9F9NrakwB358bvIt
 Wc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UJqJNBCtoIdtgXVefU003hR1jHk/HxGUadf/YE96ml8=;
 b=L802LH70/bWktotexeBLbnrtBePV09oZ1jXX3IL+pXi06ik++mFjoFYZB/cA6ROCm/
 X5JnssM1B8FJnyj+KfHKfvMye3Vkzs24+ipo2uQTuiLAE5qAy6JOWg+Im4vYO5btXBNX
 cye3EyapLB2fuP42LqaKupV4l+pK9NcF4BzoF4O7x3pm+HcCtmq93bLPPZSkforC8LRG
 aeNSJhlRSOHigZkMj0684HpMue+92EMhGLf5GgSUR5bMWSlkxuoCO4KWgMWHfAw3xfJH
 3UHFgdrT7OGbPl3Xu8Ej7MFPZkcX38PLIvYSR20Ev1Hji7K2KC2PVn1/LbwBFocBg+yV
 XhSQ==
X-Gm-Message-State: AFqh2kpVjM/CYfmWNH+lkxAfOC+g33arRKDnXTgkmlcXSajSeITxg30x
 JwSNQMtrauFKjWIL8LkLRZth+V9g3WI=
X-Google-Smtp-Source: AMrXdXt1cfJEB1PRRdr+nZjc7eMf2xhMVgYztFn4P4iczZLTAS6njK5i4LMBNadpTx0YcMHzsOc4Rlqga1c=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:ec89:b0:189:848d:675f with SMTP id
 x9-20020a170902ec8900b00189848d675fmr645303plg.141.1671757085017; Thu, 22 Dec
 2022 16:58:05 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:24 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-13-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 12/27] KVM: drm/i915/gvt: Drop @vcpu from KVM's
 ->track_write() hook
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

Drop @vcpu from KVM's ->track_write() hook provided for external users of
the page-track APIs now that KVM itself doesn't use the page-track
mechanism.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h |  5 ++---
 arch/x86/kvm/mmu/page_track.c         |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c      | 10 ++++------
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 3f72c7a172fc..0d65ae203fd6 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -26,14 +26,13 @@ struct kvm_page_track_notifier_node {
 	 * It is called when guest is writing the write-tracked page
 	 * and write emulation is finished at that time.
 	 *
-	 * @vcpu: the vcpu where the write access happened.
 	 * @gpa: the physical address written by guest.
 	 * @new: the data was written to the address.
 	 * @bytes: the written length.
 	 * @node: this node
 	 */
-	void (*track_write)(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
-			    int bytes, struct kvm_page_track_notifier_node *node);
+	void (*track_write)(gpa_t gpa, const u8 *new, int bytes,
+			    struct kvm_page_track_notifier_node *node);
 	/*
 	 * It is called when memory slot is being moved or removed
 	 * users can drop write-protection for the pages in that memory slot
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 407128bcabc8..32357599cb09 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -271,7 +271,7 @@ void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
 	hlist_for_each_entry_srcu(n, &head->track_notifier_list, node,
 				srcu_read_lock_held(&head->track_srcu))
 		if (n->track_write)
-			n->track_write(vcpu, gpa, new, bytes, n);
+			n->track_write(gpa, new, bytes, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 
 	kvm_mmu_track_write(vcpu, gpa, new, bytes);
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index a4747e153dad..5ff17a212107 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -106,9 +106,8 @@ struct gvt_dma {
 #define vfio_dev_to_vgpu(vfio_dev) \
 	container_of((vfio_dev), struct intel_vgpu, vfio_device)
 
-static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
-		const u8 *val, int len,
-		struct kvm_page_track_notifier_node *node);
+static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
+				   struct kvm_page_track_notifier_node *node);
 static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 		struct kvm_memory_slot *slot,
 		struct kvm_page_track_notifier_node *node);
@@ -1631,9 +1630,8 @@ int intel_gvt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 	return ret;
 }
 
-static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
-		const u8 *val, int len,
-		struct kvm_page_track_notifier_node *node)
+static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
+				   struct kvm_page_track_notifier_node *node)
 {
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
-- 
2.39.0.314.g84b9a713c41-goog

