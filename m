Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8C7654A12
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5604310E608;
	Fri, 23 Dec 2022 00:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0040B10E199
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:50 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 v16-20020a17090a899000b00219b1f0ddebso4002238pjn.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=j9glXQlCcjBPy6z6EtMDUxvhVYrjcVK6NuBTr5d5jMM=;
 b=mkY/HDRSL1Z6rYMsp5aXb9DxEbw3gk63aqofEQZb3aH6jx7uKj9w6DLcqGi4YUt4GK
 USLw0pllD+LT2V0T4rKGxQ4b/Lblx2DVggISei1TzjSVCnc8zMjn1lio4lsBy9BbecDd
 1OQVdcI3QScS20VMK/rqf/8ZZwsNlbifWB5BVSA/j7sCaOREjYXVLJMn61rP+5G+CLVb
 XgXuOIs4pXoXR8H4Mu8tIH7tMRiw3NgBhXAaeIbbagBzgXz4ricByiRWhna+M7g7iLFh
 37Mo0NbuZa1D2jhxiZvNFCoF/tNc67hLo5Iiu6h+YklyXPtB7Jlz3JOEXdZfa3yDJTWx
 11GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=j9glXQlCcjBPy6z6EtMDUxvhVYrjcVK6NuBTr5d5jMM=;
 b=d8GTde3IRukzffzOTGuGAfw15ib9rhnfZuYGWYk06DIG57J2RY+Y4RTpN3gnaYFTF7
 Ngrcb4Kb3L7DXJ/by/mXSxvmaR4zQfr0g3iR88myHZjU4GlPkhf2T7b9kfL/lAK8xZoz
 znW2obbdKlqjvylKZZyvf2r2XkLaDitcXhb+n++Hnqm4k6THrLixWnRD+FDpNXIN7JQS
 iYMCf0M+QbWyzE7KWbxdn9BtoYMaZ50lL9dRlmgmAh7aPndZXfYtcy27TxqhA++ag0Pt
 G+uI59kaRDz46gYVgYEipUooH9DffqOQgZ577hyTNzK/WUsnSDMGUBfSYoWEFnk2Dflp
 wdIg==
X-Gm-Message-State: AFqh2krFkC6bt/HYC5D+Skhxrmsa5oVHSpnPK8ZcF2YG9DsIfHD/ZSV8
 2caoLXjk4bDspySkqNyTZ/26DsHkpDg=
X-Google-Smtp-Source: AMrXdXtMbZNNIlGG/KYBUr4YpZKchMqLawm/s6Awbw8/z1k3argf7yO0AX13QDZvc3DFh6qwcnZWOCffa1w=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a62:6242:0:b0:580:9554:d267 with SMTP id
 w63-20020a626242000000b005809554d267mr23193pfb.20.1671757070371; Thu, 22 Dec
 2022 16:57:50 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:15 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-4-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 03/27] drm/i915/gvt: Incorporate KVM memslot
 info into check for 2MiB GTT entry
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

Honor KVM's max allowed page size when determining whether or not a 2MiB
GTT shadow page can be created for the guest.  Querying KVM's max allowed
size is somewhat odd as there's no strict requirement that KVM's memslots
and VFIO's mappings are configured with the same gfn=>hva mapping, but
the check will be accurate if userspace wants to have a functional guest,
and at the very least checking KVM's memslots guarantees that the entire
2MiB range has been exposed to the guest.

Note, KVM may also restrict the mapping size for reasons that aren't
relevant to KVMGT, e.g. for KVM's iTLB multi-hit workaround or if the gfn
is write-tracked (KVM's write-tracking only handles writes from vCPUs).
However, such scenarios are unlikely to occur with a well-behaved guest,
and at worst will result in sub-optimal performance.

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h |  2 ++
 arch/x86/kvm/mmu/page_track.c         | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gvt/gtt.c        | 10 +++++++++-
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index eb186bc57f6a..3f72c7a172fc 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -51,6 +51,8 @@ void kvm_page_track_cleanup(struct kvm *kvm);
 
 bool kvm_page_track_write_tracking_enabled(struct kvm *kvm);
 int kvm_page_track_write_tracking_alloc(struct kvm_memory_slot *slot);
+enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
+					       enum pg_level max_level);
 
 void kvm_page_track_free_memslot(struct kvm_memory_slot *slot);
 int kvm_page_track_create_memslot(struct kvm *kvm,
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 2e09d1b6249f..69ea16c31859 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -300,3 +300,21 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
 			n->track_flush_slot(kvm, slot, n);
 	srcu_read_unlock(&head->track_srcu, idx);
 }
+
+enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
+					       enum pg_level max_level)
+{
+	struct kvm_memory_slot *slot;
+	int idx;
+
+	idx = srcu_read_lock(&kvm->srcu);
+	slot = gfn_to_memslot(kvm, gfn);
+	if (!slot || slot->flags & KVM_MEMSLOT_INVALID)
+		max_level = PG_LEVEL_4K;
+	else
+		max_level = kvm_mmu_max_slot_mapping_level(slot, gfn, max_level);
+	srcu_read_unlock(&kvm->srcu, idx);
+
+	return max_level;
+}
+EXPORT_SYMBOL_GPL(kvm_page_track_max_mapping_level);
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index d0fca53a3563..6736d7bd94ea 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1178,14 +1178,22 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	struct intel_gvt_gtt_entry *entry)
 {
 	const struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
+	unsigned long gfn = ops->get_pfn(entry);
 	kvm_pfn_t pfn;
+	int max_level;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
 
 	if (!vgpu->attached)
 		return -EINVAL;
-	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
+
+	max_level = kvm_page_track_max_mapping_level(vgpu->vfio_device.kvm,
+						     gfn, PG_LEVEL_2M);
+	if (max_level < PG_LEVEL_2M)
+		return 0;
+
+	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, gfn);
 	if (is_error_noslot_pfn(pfn))
 		return -EINVAL;
 
-- 
2.39.0.314.g84b9a713c41-goog

