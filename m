Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A386B5658
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A0210EA3D;
	Sat, 11 Mar 2023 00:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB13710EA38
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:13 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 h14-20020aa786ce000000b005a89856900eso3613496pfo.14
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494193;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=GxkVI4HQZUPjFtqWtq8zWKxzvCJDOEnAK71W0aJ+/Qw=;
 b=p2UvAf1DVD1I9Vv3IyqhkRPRi2ht61bry9FiYRjI1G9P2ZXtw/ThDSOk8tTC7ERcfy
 GYocsDfpOEp7b4OBhddgwPABFim5wgx2XnaAAlmczmszC5HUtG0Ou8RhddIcH0zFtTIK
 tUoTXo2GkZQNfpn4UE+t22hdQe0kzr3rVl+uhiNqcR6Y6q8CReaMqpPwSCtSsHmkgL+Y
 RS0eY2/Nc79o/TZQChAvsgVXQ6L31YHySo8tCZRAlDheLEaAH7j5Ux5F9PmWx7a1ufi2
 ZqOBTYZ1hM+mIHDi5SuFZKMCKlYtcDuhho/6juXL5ZItmBxXm9EL3vcETYxOt23otyU+
 Tc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494193;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GxkVI4HQZUPjFtqWtq8zWKxzvCJDOEnAK71W0aJ+/Qw=;
 b=JD3Hx1SvkgRnYWq1kjW+5j9lYFcfn236GlGr9UEXrr2llqBckeOgIdVjFCQmE21J4F
 iAfltUzNHRsFupnMHAqVUw00Iekvp83O+TRS6661eHs8r5ptt2U1uzstRYFpv5qvc0V2
 1JbZYLGlxezfJ6pWh6ZWhKEkUdA62ItkoSlet/+wRBUt2ZrUWic+oeX5qFFzxA2jPXLu
 +IbIYXKeFWNjtZztjaq4TGVp1EvxQrMzWjTcJSvKWXg32dWDBgCgrLbrdRXDIOJhbXbn
 61a1QSA4FCs15RAqmpBUPKBW4R9QukfiBxfUlMV/MF6mgPH3qBNCsaovpEnNj0nqRu8+
 ErMA==
X-Gm-Message-State: AO0yUKUu7LzJne9LaJ6eSmzLtRpu0pcQ2inzwUM+pbdBk7wye4QTGZq9
 lnHe0dqm7wpCIAK5uhHDyCykdbSfoSI=
X-Google-Smtp-Source: AK7set83btvjSQZKjEV5leWaffCmnkftpRMOhK46UUzcSKRH6pCrd+ozRzIvde3BLDYjpzbSCL+vg/1+zvQ=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:f7c4:b0:19a:f80f:9619 with SMTP id
 h4-20020a170902f7c400b0019af80f9619mr10451565plw.3.1678494193558; Fri, 10 Mar
 2023 16:23:13 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:35 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-5-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 04/27] drm/i915/gvt: Incorporate KVM memslot
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
Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
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
index 0a2ac438d647..e739dcc3375c 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -301,3 +301,21 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
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
index f30922c55a0c..d59c7ab9d224 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1157,14 +1157,22 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	struct intel_gvt_gtt_entry *entry)
 {
 	const struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
+	unsigned long gfn = ops->get_pfn(entry);
 	kvm_pfn_t pfn;
+	int max_level;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
 
 	if (!test_bit(INTEL_VGPU_STATUS_ATTACHED, vgpu->status))
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
2.40.0.rc1.284.g88254d51c5-goog

