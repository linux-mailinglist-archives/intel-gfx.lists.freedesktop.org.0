Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5976B566E
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314AA10EA4D;
	Sat, 11 Mar 2023 00:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8D810EA4E
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:34 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 w3-20020aa78583000000b005d244af158eso3648189pfn.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494214;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=ESyGipRYk4Ln/Kp6qC+rdgnoNy41fSsqxhODjzs0Phg=;
 b=nrjkFrHs9nfahticnmpPuzM1CYGMtDvBGeJ80H++4AvdgBokB4ZvMSpboVXR6DnKwz
 rIrMxNOEpTJIbuDC451LiJD1sJD3A8vuRizVcYrS9DGK3p2ELkmjCt5Z04Ew7mYeQG99
 abO3WqdodG/z7VlBDvMGTwDpoYnVcdAyUjfitCfgT/YOhex7js+4OGHeNDmUtaacWeFR
 lakQe7TmqrZXF1uwepDOEl2OXS6bzVd4Nf2hJUarjHWDJiq3nKrS93ZACBW4D6ZXsdik
 ggHfLj17lKdB6jzVaXg1+OIqfai9+ixjDr2YJPEQHHKfDgh2ts89Xy1knXUupwP/3zLt
 MYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494214;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ESyGipRYk4Ln/Kp6qC+rdgnoNy41fSsqxhODjzs0Phg=;
 b=IuwBCD4QNfBkqKiX/vM72UxMVrzv9dx7JSZsVv/OjICMnLxz6c/3Ja92pcyHNl0lqE
 SXPilvF0V41glUiVHxjeiro/7BpKXlGGI1kkugq+DTmYYgfjlIz5Memz7Osipk0eB6FJ
 k50qYCUEEcum1dCWX+5jAtSI07SL8QZ4M9GUtZa7ofK99MHusVWaMMdxozXL3rA9u0G4
 UzXhas2u5YrSAmqv8bYpUpAYCskNYeljywBfxh7Wbx9/mQt3sVYcigj6Jia5UHXQJ01t
 X8mByZM94CYc3fJALRheWe9sNPkfYiIB6OndjXFm5hZoGbmgWw7sVI+xQzEsMg3rpKoG
 bzFQ==
X-Gm-Message-State: AO0yUKXAUJ4ykMiCkeiRXCWYZqR5J1PpPhieJk2W0xtqlWz6JnKC07ut
 iE+DRUZjJnkKC6iYCRSbR1JqfBHK94Q=
X-Google-Smtp-Source: AK7set8ALguNt/xEXYjM2EKJOWmie4pyNNfYyh6xWvVQ0vhlbgx8Y3S01gp5F3vekW87OoBuxJLe6aI201U=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:1088:b0:237:6178:297d with SMTP id
 gj8-20020a17090b108800b002376178297dmr10196936pjb.2.1678494214249; Fri, 10
 Mar 2023 16:23:34 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:46 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-16-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 15/27] drm/i915/gvt: Don't bother removing
 write-protection on to-be-deleted slot
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

When handling a slot "flush", don't call back into KVM to drop write
protection for gfns in the slot.  Now that KVM rejects attempts to move
memory slots while KVMGT is attached, the only time a slot is "flushed"
is when it's being removed, i.e. the memslot and all its write-tracking
metadata is about to be deleted.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 292750dc819f..577712ea4893 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1644,14 +1644,8 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 
 	for (i = 0; i < slot->npages; i++) {
 		gfn = slot->base_gfn + i;
-		if (kvmgt_gfn_is_write_protected(info, gfn)) {
-			write_lock(&kvm->mmu_lock);
-			kvm_slot_page_track_remove_page(kvm, slot, gfn,
-						KVM_PAGE_TRACK_WRITE);
-			write_unlock(&kvm->mmu_lock);
-
+		if (kvmgt_gfn_is_write_protected(info, gfn))
 			kvmgt_protect_table_del(info, gfn);
-		}
 	}
 	mutex_unlock(&info->vgpu_lock);
 }
-- 
2.40.0.rc1.284.g88254d51c5-goog

