Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D8F654A2E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B66F10E5F1;
	Fri, 23 Dec 2022 00:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7023D10E0D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:30 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 z3-20020a170903018300b0018fb8ca1688so2393566plg.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=E5mEvk7mhTbLTbI71CnckeUYfBuaX+0urxAADq0bdpk=;
 b=H4aiigdAaqzzU7IYxEhnMpAq+LO60LbHzZkIUHopuBtbH6R08DMSSogGhi16I6aE+4
 rBYIQ2VLojy92J2PjyPZiHasqVnT0Ui5kZCWTATNP1Cul9XqKd/nszUe4q3i+a4O0uNF
 bQZebRaR8FAgQDfzR6SWs/it4PXf9aFISvcDfu7stvlvsBejgW/qGrDacC5uvcsaP05G
 NzSEC5gIE0jjBIqUWtHqUP1Xyc9t0AIcTg6eWJlbLxpb0SMx/Yww3bYWtSkzpxW/rR/F
 c6ZwXZP4ooTQfKR+K5Oxmg1twSznhUSZNuMCeAD4BqJs9cvQednvW2HhTkFitU22C50d
 f7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=E5mEvk7mhTbLTbI71CnckeUYfBuaX+0urxAADq0bdpk=;
 b=Iy2JlrbjyXBulwz9maDXLrKvgFQ7LmUPXA/Xh0PsRd6rfNHKjeHDPqBc7spMi3jtxd
 /tvyWgsG7a4VKxA1oCn0SQ888I3iLN2VhM6TML6hZxBV9ad3abdSrBOJI/YKp19/kuAu
 faOPp1EI5ekCwwZ4IKudcMjGXpcYfzxaV+vwAEyVKJiDda6lURmLPiNxvDkggclVNj+B
 5D9EYJbeQQAfELuKieGPBnYpBQ3JBMWIgY4faFNAzuFogMEbNV1A0iSotA8THCNJS+F/
 OCvqDcKG5pDuZUDq0JkDDjwgE08mzwR+Q4e9PLp/dN+dQBPT9+PgfYgAbIDZkTOjmzE3
 nCcg==
X-Gm-Message-State: AFqh2kqRcA+9NrkMgoRsApY7CjFCFixG27kFgaUfU0PKLzA3v2nm3i0x
 Sb+DEBAVh6Vl+ijoP/7IsXEhlx4GbVw=
X-Google-Smtp-Source: AMrXdXsumktbf9ORj6WvpRUFhzGjzygFSn5YpEseKjoNgVCVrMAzWGMwc4HsbeZ8JZZkARlRq26lxPKoLnE=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:701:b0:219:1d0a:34a6 with SMTP id
 s1-20020a17090b070100b002191d0a34a6mr180831pjz.1.1671757109874; Thu, 22 Dec
 2022 16:58:29 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:38 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-27-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 26/27] KVM: x86/mmu: Add page-track API to query
 if a gfn is valid
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

Add a page-track API to query if a gfn is "valid", i.e. is backed by a
memslot and is visible to the guest.  This is one more step toward
removing KVM internal details from the page-track APIs.

Add a FIXME to call out that intel_gvt_is_valid_gfn() is broken with
respect to 2MiB (or larger) guest entries, e.g. if the starting gfn is
valid but a 2MiB page starting at the gfn covers "invalid" memory due
to running beyond the memslot.

No functional change intended.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/include/asm/kvm_page_track.h |  1 +
 arch/x86/kvm/mmu/page_track.c         | 13 +++++++++++++
 drivers/gpu/drm/i915/gvt/gtt.c        | 11 ++---------
 3 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 66a0d7c34311..99e1d6eeb0fb 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -52,6 +52,7 @@ int kvm_page_track_register_notifier(struct kvm *kvm,
 void kvm_page_track_unregister_notifier(struct kvm *kvm,
 					struct kvm_page_track_notifier_node *n);
 
+bool kvm_page_track_is_valid_gfn(struct kvm *kvm, gfn_t gfn);
 int kvm_write_track_add_gfn(struct kvm *kvm, gfn_t gfn);
 int kvm_write_track_remove_gfn(struct kvm *kvm, gfn_t gfn);
 #endif /* CONFIG_KVM_EXTERNAL_WRITE_TRACKING */
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 1af431a41f71..9da071a514b3 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -264,6 +264,19 @@ enum pg_level kvm_page_track_max_mapping_level(struct kvm *kvm, gfn_t gfn,
 }
 EXPORT_SYMBOL_GPL(kvm_page_track_max_mapping_level);
 
+bool kvm_page_track_is_valid_gfn(struct kvm *kvm, gfn_t gfn)
+{
+	bool ret;
+	int idx;
+
+	idx = srcu_read_lock(&kvm->srcu);
+	ret = kvm_is_visible_gfn(kvm, gfn);
+	srcu_read_unlock(&kvm->srcu, idx);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(kvm_page_track_is_valid_gfn);
+
 /*
  * add guest page to the tracking pool so that corresponding access on that
  * page will be intercepted.
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 59ba6639e622..43c4fc23205d 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -51,18 +51,11 @@ static int preallocated_oos_pages = 8192;
 
 static bool intel_gvt_is_valid_gfn(struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	struct kvm *kvm = vgpu->vfio_device.kvm;
-	int idx;
-	bool ret;
-
 	if (!vgpu->attached)
 		return false;
 
-	idx = srcu_read_lock(&kvm->srcu);
-	ret = kvm_is_visible_gfn(kvm, gfn);
-	srcu_read_unlock(&kvm->srcu, idx);
-
-	return ret;
+	/* FIXME: This doesn't properly handle guest entries larger than 4K. */
+	return kvm_page_track_is_valid_gfn(vgpu->vfio_device.kvm, gfn);
 }
 
 /*
-- 
2.39.0.314.g84b9a713c41-goog

