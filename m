Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8876B5679
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9990D10EA47;
	Sat, 11 Mar 2023 00:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D25210EA50
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:38 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 f1-20020a17090aa78100b00239fd9e3e17so3349117pjq.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494218;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=OMGdyparKm8+Gefw73vC5jleoqDZScQomW9SzOoSMJg=;
 b=ajb/7CAdzoT35PUWdYahi131IY8cxIXYUmWbU3wxwnKIBxxsHK89VejSvnX9gPFXKV
 8T8M2MQ5qLFEJwFF7065/DtXjrWK5KDid68DBsbQqdbuHpDsBapRoTQnssTg9iU7v9aO
 W3O661JIaer2LspHtmzrEw/PzdpLM0tWNomDVlVvK3UMOXkliymk4EGDN1m1+ZzJbIjo
 z0JXfNMR+7wnIFuzi/4ZXa9UxnYm0l+lrGMAJWIXD0F1irQaKal08+zi3JQ1zRDeUz75
 gC+HwThfWZZ7qParKjPirjREefLcpYQcsbDTVSHvU3UunCBdpe0aH1RzH5c9Fl9Suirg
 0Tjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494218;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OMGdyparKm8+Gefw73vC5jleoqDZScQomW9SzOoSMJg=;
 b=0D23rLQrwwlGC8X3GEmkt8FyJJV9zYevu3sJotpQSPwAnUGjcVlgmBckbOWNauIstY
 +F7VCgxS7vWVnzzTup5UZ4bcBsHjiNcubD46iuYWHtfWi8upcW+YL2PYOGs1H9wMRzFQ
 FtWC5KfM9nJ2FzRniRxTWQCSEompArlJ5yA6SoYQWu10dPrbNH1bcfwTy9K8TWoieYYY
 w6etF/WyXf4xfztjW6S0OxdnAhuS6Ux5D/ANk6P5CgJxhwXvxSxA2O8MdNvhXX/z1+HF
 LKFP1obvov+m1fsJYPQPHNyhYxO3ZIz9X1R9wRnsoszAUHIvxRkj2JKv6ZPkCmzOMT41
 ZBlA==
X-Gm-Message-State: AO0yUKVWI0eKGulwnIj/jIdDODWt02na01oABQek/4UDOx9taWFEuQh1
 WAkESYWRkqzJxGFVfjbewZDxOJ2T2/0=
X-Google-Smtp-Source: AK7set88pl2QPb1K0bOmfg6auaZYvfaRkd4edAczPhcZ95QVckYZlY7Ht+z9TDRm6nMSKMQOyXp7Q1oMlgc=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a63:f543:0:b0:4fb:9902:fc4a with SMTP id
 e3-20020a63f543000000b004fb9902fc4amr9411181pgk.10.1678494217911; Fri, 10 Mar
 2023 16:23:37 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:48 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-18-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 17/27] drm/i915/gvt: switch from
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
 drivers/gpu/drm/i915/gvt/kvmgt.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 577712ea4893..9f188b6c3edf 100644
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
@@ -680,7 +679,7 @@ static int intel_vgpu_open_device(struct vfio_device *vfio_dev)
 		return -EEXIST;
 
 	vgpu->track_node.track_write = kvmgt_page_track_write;
-	vgpu->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
+	vgpu->track_node.track_remove_region = kvmgt_page_track_remove_region;
 	kvm_get_kvm(vgpu->vfio_device.kvm);
 	kvm_page_track_register_notifier(vgpu->vfio_device.kvm,
 					 &vgpu->track_node);
@@ -1631,22 +1630,20 @@ static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
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
 
 	mutex_lock(&info->vgpu_lock);
 
-	for (i = 0; i < slot->npages; i++) {
-		gfn = slot->base_gfn + i;
-		if (kvmgt_gfn_is_write_protected(info, gfn))
-			kvmgt_protect_table_del(info, gfn);
+	for (i = 0; i < nr_pages; i++) {
+		if (kvmgt_gfn_is_write_protected(info, gfn + i))
+			kvmgt_protect_table_del(info, gfn + i);
 	}
+
 	mutex_unlock(&info->vgpu_lock);
 }
 
-- 
2.40.0.rc1.284.g88254d51c5-goog

