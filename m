Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1363B654A1D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4E410E602;
	Fri, 23 Dec 2022 00:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0155810E5FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:12 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 j1-20020aa78001000000b0057d28e11cb6so1843350pfi.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=rKCW8m8IAHoIRlubB2TYcWLgdcBH42t3bfi5TuBdz08=;
 b=h9aMawpy9BBBaLOtJV17IMJCudTgWyQsradbxq24d9j0tXeeNHTbfFvAizPtxlAKK2
 yzYhnZ7sAPDfr8hApkk5FKvdqiYvRbqI4EPACiWF3Lthmi9fcUsINEAgR5NE2Rn0UYot
 mcq8G+GbgcpUH1mH0yBxHISJ5hAemaGExIUWBy0+CPIi8IY9jnx1RgyPZ4AKL3V1k6Ej
 A/a1i1OR1h52x76FPdDPGFrashJy4LswSqDS53/YkQYWeyfsP9V/DyQBaIVlXq7VrR0l
 Od0sRkGnnafTiHbuZVFzL8KNNmnOwIdnbxzZMw6TufSAI3L0VUideimQ2i5jjuUNPoU1
 zu8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rKCW8m8IAHoIRlubB2TYcWLgdcBH42t3bfi5TuBdz08=;
 b=q/vm0Pmr1fe9497lJKfAaREGkikavn3TUpS+eUbQ55dnhUjk0UTXVi5CHNHFG7JyO3
 rG/OFMj2gKihdxT+o4hLcKd/jzn4Cb8UqnNblxevTxaQehxu/h5lQp9J37gDDSEdeShb
 ne3mpmTJCVeuAF3KdMi875BZWdNVAV5IApMxaZvFq6rn5m5Dq/m5Xt7jVqoNSUJwHF/2
 lAQQ4sKBwmJXmCzlGfRlfNC0fTdlui7yE1/NJ6L2xOSYRYuxMwsK1Bc3ZedsGwzD3d5b
 qRvhMc8tQcjGVUdakFQqRCXvxUsCX4D1FT83qjSz75s2L6CdIQtQNGVhYcduNyw/a3fw
 PboQ==
X-Gm-Message-State: AFqh2koALRlrPOmoR2Ujj75I0BppCcbXOJ9Z+mdd33ZeLXYknmzvNQaB
 bn7/2Kx+crN7EtYmC9ssuUiIKpnXlEU=
X-Google-Smtp-Source: AMrXdXusrG5wCodfdwxI7qje0UNrTbPqLuDOsUiG9EVI28zgf+jPQnw6lBq7jCHkYuAfiJD8F+h684U1/h0=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:a006:b0:21d:203f:a306 with SMTP id
 q6-20020a17090aa00600b0021d203fa306mr598567pjp.148.1671757092679; Thu, 22 Dec
 2022 16:58:12 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:28 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-17-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 16/27] drm/i915/gvt: switch from
 ->track_flush_slot() to ->track_remove_region()
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

From: Yan Zhao <yan.y.zhao@intel.com>

Switch from the poorly named and flawed ->track_flush_slot() to the newly
introduced ->track_remove_region().  From KVMGT's perspective, the two
hooks are functionally equivalent, the only difference being that
->track_remove_region() is called only when KVM is 100% certain the
memory region will be removed, i.e. is invoked slightly later in KVM's
memslot modification flow.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Suggested-by: Sean Christopherson <seanjc@google.com>
Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
[sean: handle name change, massage changelog, rebase]
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 3c59e7cd75d9..9f251bc00a7e 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -108,9 +108,8 @@ struct gvt_dma {
 
 static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
 				   struct kvm_page_track_notifier_node *node);
-static void kvmgt_page_track_flush_slot(struct kvm *kvm,
-		struct kvm_memory_slot *slot,
-		struct kvm_page_track_notifier_node *node);
+static void kvmgt_page_track_remove_region(gfn_t gfn, unsigned long nr_pages,
+					   struct kvm_page_track_notifier_node *node);
 
 static ssize_t intel_vgpu_show_description(struct mdev_type *mtype, char *buf)
 {
@@ -690,7 +689,7 @@ static int intel_vgpu_open_device(struct vfio_device *vfio_dev)
 	gvt_cache_init(vgpu);
 
 	vgpu->track_node.track_write = kvmgt_page_track_write;
-	vgpu->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
+	vgpu->track_node.track_remove_region = kvmgt_page_track_remove_region;
 	kvm_get_kvm(vgpu->vfio_device.kvm);
 	kvm_page_track_register_notifier(vgpu->vfio_device.kvm,
 					 &vgpu->track_node);
@@ -1647,20 +1646,17 @@ static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
 	mutex_unlock(&info->vgpu_lock);
 }
 
-static void kvmgt_page_track_flush_slot(struct kvm *kvm,
-		struct kvm_memory_slot *slot,
-		struct kvm_page_track_notifier_node *node)
+static void kvmgt_page_track_remove_region(gfn_t gfn, unsigned long nr_pages,
+					   struct kvm_page_track_notifier_node *node)
 {
 	unsigned long i;
-	gfn_t gfn;
 	struct intel_vgpu *info =
 		container_of(node, struct intel_vgpu, track_node);
 
 	mutex_lock(&info->gfn_lock);
-	for (i = 0; i < slot->npages; i++) {
-		gfn = slot->base_gfn + i;
-		if (kvmgt_gfn_is_write_protected(info, gfn))
-			kvmgt_protect_table_del(info, gfn);
+	for (i = 0; i < nr_pages; i++) {
+		if (kvmgt_gfn_is_write_protected(info, gfn + i))
+			kvmgt_protect_table_del(info, gfn + i);
 	}
 	mutex_unlock(&info->gfn_lock);
 }
-- 
2.39.0.314.g84b9a713c41-goog

