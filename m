Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 516DD701331
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFB810E6FE;
	Sat, 13 May 2023 00:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0615510E6FE
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:36 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-b8f324b3ef8so13055815276.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938196; x=1686530196;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=9ozwCpjHnKuZzXt2q5sOivdZFc4Nc1/ByY918eytKG8=;
 b=D9PGBYXz14YFqZyr7IaovRbgDiR6WTvi3zlRF2wwdcP+lzW1RfSJxQO8VTuiPcnxEM
 CqTHM2DXnYP5uIsznTvGnaln6DkLckevCJYMK8R5xVAYe7Ve8MWuYBwF7qU2pJ7x5bJ2
 CRKIfVxtWC6jP8UdqdKQbHUkXsag1bZanrjOwpVhT6xZYBGU3k5WoZP2fPkei9/38eGW
 yyfkF1CDlpWwIxUAYH6rvX28AYs+14C9GuWSgxLLOiczuTEko1ZHbXiJ2lsM9uaASBhD
 xMpec4KcBm5RcsTRAjtN6BzapbEqUqjwVe4DcS4kuDgcw19s1NGWMGBEMLpaOXWAk6cR
 zUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938196; x=1686530196;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9ozwCpjHnKuZzXt2q5sOivdZFc4Nc1/ByY918eytKG8=;
 b=LrrKKPcaBO0B8qwwcjJYayPrUfs3EkG5G/kymeJaN5HNzOWaEmJvCcBkRpmRBqEJm5
 RWiowrWmx3OgXIaBWHboQkxh7DrtqvX7JW24U0PPiSw6tHynMX5RD7pVc0A32iBt0nIz
 3+VvOXJw4wTgPbrD6gHB5U6P5qRvqdqrWd9jdcYeXK13JCGp/+NbOec2Zu8r9cZ+OvRE
 Ux+CCcYZo8aKy9omHLnuQttcvRbGBAhQoGsJRMkgKxcxu+8PZudLGeIeuRUsBfLUqd5C
 bvH/lA6xO/toqzKveGZLvQcdq83JFSP7PIgAsWx94wMZnPFG+i7OEyY5LJsF5kTlj8x9
 xoTg==
X-Gm-Message-State: AC+VfDw1jWEpHpDp8NtSRayIQRLq+k1WZ5VNTMFhkcnl7kyxKeUqpBAz
 gQ1l1WykvWA5ENg8yn3cwh0Hcy7XpbA=
X-Google-Smtp-Source: ACHHUZ4TYtt7IPY3gV/SDUTNpHg0VKTyBm4IgdvOZZTxQSyFY/VZvBmxbUmZDydpyT7ilx8mpMjqlhAo3x8=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:5282:0:b0:ba6:3564:661a with SMTP id
 g124-20020a255282000000b00ba63564661amr7139261ybb.13.1683938196053; Fri, 12
 May 2023 17:36:36 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:48 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-17-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 16/28] drm/i915/gvt: Don't bother removing
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

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index aaebb44c139f..c309a77f495f 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1629,14 +1629,8 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 
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
2.40.1.606.ga4b1b128d6-goog

