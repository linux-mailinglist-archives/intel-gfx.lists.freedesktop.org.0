Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D254D767B20
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A04610E7D8;
	Sat, 29 Jul 2023 01:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F32810E7D5
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:36:34 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d1851c52f3dso2448853276.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594593; x=1691199393;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=lQFySAI8ixNkwor8unzmA5lNJLwbWRJXY2r7PDxDqgA=;
 b=Vk09KIBuuFUtjM2rE+1nDWmYKQL5pm9DKxQFW0O+5hvfGSmawRS6O256mYyZYndNTj
 UjieXPs0KDQGbAiIJNNsT7QUCDcPUfSEphNC0wiZnfHp9UdPWPprMBTmwOTcCn91kOvJ
 iOIF5MpH8QvTlMjjwZ1wAKaj+csKGy8+L6OmaGzc7GosyiU8zk6dnFL8fT2n9TKG6vMZ
 HFGpzVx1iZvAL/sL6lUMT45dQMCMz4rYo4qZmLNwnqpaD8cpTcsXjjf1uVWbYwFZp3si
 q48A/0mIaRi5XKWBZnzdk6LLSQ+DLl7WR9M9ExoYtj5DSwRegg9lKxzVe8HjRSdgerTT
 mfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594593; x=1691199393;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lQFySAI8ixNkwor8unzmA5lNJLwbWRJXY2r7PDxDqgA=;
 b=Q+4AxIcodsVEds3pwsonynFmdSYhOxbi3PGhnFsPt4VZV+dZ7THxfWn9Ha5AvL8hQv
 tmngbga5iCmemcY9hQz5pra38fO3m3+0634bFhSkvZMk8accHpP0hu1TMT9D8inEF+gp
 XOZTu3S4duOvG94QsAMT1TXDFwSeOggIGi1Nb8+u3hZGulcRbhlfB9QQTWoLJoCtCg81
 Nk9uPo3b53/fL1oJQUXjtAR+3Qdj8aGN781MMXEX/15MADpuRy/tvFkNOabU9BNoQzSi
 WgSYe/sQkQIi0NqWRMbrOklixCYzcZ1V3/V4sfVZK2ZfW+3gUJAlRJMTJ3qHoswdv5ef
 JJXQ==
X-Gm-Message-State: ABy/qLZf300UlF9qdmP1IBn5Ipds9X2GKaD6NkTVGpG5pYudUOapMAIw
 KfBt0K2nCFtTA5bxLhR4o+qaTUZicHg=
X-Google-Smtp-Source: APBJJlFibJWXTKGEP5Hhvqbgc5csEaktnfkVuZvLD3ZY315FF6kCuS5mwmwwc+2rL+l4ooxXzKEqfkJcyy8=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:3626:0:b0:d0b:4b15:8136 with SMTP id
 d38-20020a253626000000b00d0b4b158136mr16700yba.12.1690594593340; Fri, 28 Jul
 2023 18:36:33 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:32 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-27-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 26/29] KVM: x86/mmu: Bug the VM if
 write-tracking is used but not enabled
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

Bug the VM if something attempts to write-track a gfn, but write-tracking
isn't enabled.  The VM is doomed (and KVM has an egregious bug) if KVM or
KVMGT wants to shadow guest page tables but can't because write-tracking
isn't enabled.

Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 arch/x86/kvm/mmu/page_track.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 29ae61f1e303..eedb5889d73e 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -90,7 +90,7 @@ void kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
 	lockdep_assert_once(lockdep_is_held(&kvm->slots_lock) ||
 			    srcu_read_lock_held(&kvm->srcu));
 
-	if (WARN_ON(!kvm_page_track_write_tracking_enabled(kvm)))
+	if (KVM_BUG_ON(!kvm_page_track_write_tracking_enabled(kvm), kvm))
 		return;
 
 	update_gfn_write_track(slot, gfn, 1);
@@ -122,7 +122,7 @@ void kvm_write_track_remove_gfn(struct kvm *kvm,
 	lockdep_assert_once(lockdep_is_held(&kvm->slots_lock) ||
 			    srcu_read_lock_held(&kvm->srcu));
 
-	if (WARN_ON(!kvm_page_track_write_tracking_enabled(kvm)))
+	if (KVM_BUG_ON(!kvm_page_track_write_tracking_enabled(kvm), kvm))
 		return;
 
 	update_gfn_write_track(slot, gfn, -1);
-- 
2.41.0.487.g6d72f3e995-goog

