Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DB6767B00
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE4710E7C1;
	Sat, 29 Jul 2023 01:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB55F10E7C6
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:17 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d05883d850fso2539989276.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594577; x=1691199377;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=NKdCtniWiAg1ywOiZ6YDPXm5HtZo7eRagpKdBNR7xpg=;
 b=5Uv4EcFsDMD9NsYdJZO7/8bilal5ddhv5oXjy9nAKQerIStaoVew/onb+SGkfBqNof
 2A3L/r6MHTGAjoy91PbYkNyIZqhSj+Rg5jo5GTtNjedp97sPqdaRQOHc7gwlvo5jU8vA
 kxfdHRIh4lvv6FD1geSFpk4NwkD+WEEwwGy3B85/dF9ect82C0iAl04aq+Y6Af05FV+X
 eXrW2treDagoJmIR73mRzrOOWVmuG7OOwd2Ma2xFq/LHuAyy666HGuXj9cqbQY3SU40h
 VSBG/8KN0SLJPWJ5J61UOibT5kgPqqUSxMYjl2PUOWixvTmfEoaYCwnesh8KVRoki6BH
 JQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594577; x=1691199377;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NKdCtniWiAg1ywOiZ6YDPXm5HtZo7eRagpKdBNR7xpg=;
 b=DBSX+zPY9+89i9KwWtfugNjrm/zTfiHBpt5wkA29zpn7a8LCQIsvKR3B/m3uiRqJ3g
 VELWrwAkcFlIWZerw8YgMDR6B6o3EhiEoJv2x25YjErPq4+ywQbRPZpXjydQc9zMd0OT
 VhdAwliT9jRiGzesv1g6ZPp3lBKomouU0Cvv9+bpQSKIBLc1R/yQEzMLkO2HxL2YFxOz
 pZ9lGoTZ3OiIjT5vCN99Ycta2Y3JTCn3OklrTOzNhNSitd1jUH7TZj3S9OBjsI/ocAj9
 9QP5huHm9vP6WjR/IUbHfkioo7X/uWDfDxu8LB/ae8GO6yKjiWLNFmv+PRCd7JcHBtNo
 m1IA==
X-Gm-Message-State: ABy/qLbIqCwPRplTYzb7oLPVcgI2yCAZV6b0zMt1yGYjhRLClo9PAzCz
 dj++0cCJuMhfdcYlxZ2woRrgjY+yRww=
X-Google-Smtp-Source: APBJJlF751SnqTSnU6vTW0Y18Fw9691eJmjowXxwgAdnr7jOeokEcu/hShizd7Z5E3jpc33zhy+X2tt4XMM=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:2086:0:b0:d07:a03b:38a2 with SMTP id
 g128-20020a252086000000b00d07a03b38a2mr19106ybg.10.1690594576926; Fri, 28 Jul
 2023 18:36:16 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:23 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-18-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 17/29] drm/i915/gvt: Don't bother removing
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
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When handling a slot "flush", don't call back into KVM to drop write
protection for gfns in the slot.  Now that KVM rejects attempts to move
memory slots while KVMGT is attached, the only time a slot is "flushed"
is when it's being removed, i.e. the memslot and all its write-tracking
metadata is about to be deleted.

Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index e9276500435d..3ea3cb9eb599 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1630,14 +1630,8 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 
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
2.41.0.487.g6d72f3e995-goog

