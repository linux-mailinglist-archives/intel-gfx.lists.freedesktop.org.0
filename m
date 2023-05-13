Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 290E2701352
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A70210E718;
	Sat, 13 May 2023 00:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2D110E707
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:53 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 98e67ed59e1d1-24dfc3c668dso5548406a91.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938213; x=1686530213;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=txxFy4l/0CjWXE2Lls1C8TlXhZ8gDD/lHA0CcUxieGg=;
 b=1haVJ2yfzvTDJ7OWiHD70BYBmN550CeOMY4hpPZ+nSFvEJEzGlp9zifp2JC9DTsBnT
 RJZuYPoZBC56u7q5NVSap0DjOvLwxYApwLH9hRiHGYxDoZJvwxzHUiwRC9eia+w/uZP7
 EBybQwdiAWLVgS8BlsYrTOIiunclWLH+LI0gc9Tnj4BM3xt3lZRaMifAigMxY42RgfDp
 cwJG3qN9EWZwmkGrQazhnNhAbchLqLap871kMkvWtbxo/QXAGrSEZskw2tAXxrat7ud/
 D5ZrbarX8RzkvaRosayYzhljq+hKPOqhGf/8xnjwY+T70UILI2/0G0yJJiJRMoQtMPm0
 3+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938213; x=1686530213;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=txxFy4l/0CjWXE2Lls1C8TlXhZ8gDD/lHA0CcUxieGg=;
 b=C0tm1+Ni1DmQSls8TxWwUK2gPXQRVCN/AUicbXev7ia7cfvkXRHzqVQcec62F+OJMD
 NKrSaA54P/PVQL41AjQhD3RQ7M7AJmOr+nrEWyBY+XYapyEogtCHGdnfXsZHYyeaQgsS
 ka23rXAqd6nMXF/Y0u1puE8usSNU2xB7CRt2/Cfw9ZQ27GO28HzGjaCyMGtyPR3r5wd2
 BpOs3lvZVFSd9GIomwb2ygScb9QPDkf0E4s41jWrE061DYjy0F459lw+IlY9bhK3oXjs
 6kzkOPqCxDOU70DvfTU6tlSOR7uj2Y4mU8qyuIKF3wcB2p2xql+XfAAXSC1L9XP0fwf+
 OxBQ==
X-Gm-Message-State: AC+VfDz2nPradbDEt9gkKZrNt0dyprVcdlt2BsKLks/ssCjz8EpF2qDo
 nBDAC56LjGwxrZkeA6b1Z/uuGZ5UnMU=
X-Google-Smtp-Source: ACHHUZ43CFxrthXwP0PrBV5od9hQAGg5BAA+rVUflMCCD1sy9tgjBk8pzYcx5eiJpCd5q4pFPenl/fUx+Qk=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:148:b0:246:f99b:fd65 with SMTP id
 em8-20020a17090b014800b00246f99bfd65mr8121515pjb.5.1683938212995; Fri, 12 May
 2023 17:36:52 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:57 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-26-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 25/28] KVM: x86/mmu: Bug the VM if
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
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bug the VM if something attempts to write-track a gfn, but write-tracking
isn't enabled.  The VM is doomed (and KVM has an egregious bug) if KVM or
KVMGT wants to shadow guest page tables but can't because write-tracking
isn't enabled.

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
2.40.1.606.ga4b1b128d6-goog

