Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5984A78E0F8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 22:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FB510E5DF;
	Wed, 30 Aug 2023 20:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3082110E5DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 20:50:45 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-1c0cfc2b995so839685ad.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 13:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1693428644; x=1694033444;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZbCG0tdyar/6+EAaNY79S340Vu6kvaT6TpEIPobVhxc=;
 b=BIfGaWWKTAOYqgBzMf5ryoD2cArORvN4zUQI23Ts43WfjyOKmK+mvHkKWwWqCm+dOR
 TZ3oQZyrnUtfFo25qy7vILEGGDsZZe6a4zs7bkVYfIFAXaZlmUAFt+7kkAyTR7h8uSkM
 +iGgNwdda4nZTDY0UTuoFVbiHAbTeZSKiT1+LB4E5z7EjWGkHwe+kLziDjz6riRvhfu3
 ErY3eGbozVfc9tlBGUJqnpQTkhWwPWf815UjkDNN29LiUZKsUgFP38SCMyHx7gRw+Ut9
 0YzI8iXEax2TWs+UsrfzMdYqafyFlEgiqemFwJofOV/jj9HW4zDRD2Ookds2oYo06yQU
 JThg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693428644; x=1694033444;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZbCG0tdyar/6+EAaNY79S340Vu6kvaT6TpEIPobVhxc=;
 b=PJn8NCE60iLCQzcAHkmH/MQ1CmDH5kdsKkzol66rFsV+WuwEOeCawM6vq5GMl5440/
 rS6fUD5ALOF04CQmpwmzWuvFfRDgG1+1dUo5bgF2SGnhhGFjzfZygvcM3OuT8+kyfKhX
 1ECPam3ZM2B7OTOEdgeGentcyYaIKGEzpyIl5JJs/nFXnK2GbNYQsRjlEmjh5MuNpsZn
 Dhjk2ZFUXlC0o6qQ96Tqy9iQr/YUr2kLWNfzrzd7xttrBALvxrYmU8HsTlF1SJV0MGwn
 qO5dmOCiDfeNe986jZgn07DpBHl26b7iqSllVOn2dAECRDMukuLp4iEE+cq4m39QFSGN
 il/w==
X-Gm-Message-State: AOJu0YwSA4BgED3Pni1MjqASRCFPVvp2lIG13jMngNu40VfkZe5KqiLo
 Rv83j3+Q0hLtUA2iMCGQb4dTB2C/Llk=
X-Google-Smtp-Source: AGHT+IF5b6gqdFR2LDLZ3RJxfd4VjOhdzQk4NFKot509LSj0408O/0vZ9+YO40BiHXDBFLY89BYeBDPkQrA=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:903:234a:b0:1bc:5182:1de2 with SMTP id
 c10-20020a170903234a00b001bc51821de2mr856300plh.1.1693428644421; Wed, 30 Aug
 2023 13:50:44 -0700 (PDT)
Date: Wed, 30 Aug 2023 13:50:42 -0700
In-Reply-To: <6c691bc5-dbfc-46f9-8c09-9c74c51d8708@gmail.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
 <20230729013535.1070024-17-seanjc@google.com>
 <6c691bc5-dbfc-46f9-8c09-9c74c51d8708@gmail.com>
Message-ID: <ZO+roobNH2QbZZWn@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Like Xu <like.xu.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v4 16/29] KVM: x86: Reject memslot MOVE
 operations if KVMGT is attached
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
Cc: Yan Zhao <yan.y.zhao@intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 30, 2023, Like Xu wrote:
> On 2023/7/29 09:35, Sean Christopherson wrote:
> > Disallow moving memslots if the VM has external page-track users, i.e. if
> > KVMGT is being used to expose a virtual GPU to the guest, as KVMGT doesn't
> > correctly handle moving memory regions.
> > 
> > Note, this is potential ABI breakage!  E.g. userspace could move regions
> > that aren't shadowed by KVMGT without harming the guest.  However, the
> > only known user of KVMGT is QEMU, and QEMU doesn't move generic memory
> 
> This change breaks two kvm selftests:
> 
> - set_memory_region_test;
> - memslot_perf_test;

It shoudn't.  As of this patch, KVM doesn't register itself as a page-track user,
i.e. KVMGT is the only remaining caller to kvm_page_track_register_notifier().
Unless I messed up, the only way kvm_page_track_has_external_user() can return
true is if KVMGT is attached to the VM.  The selftests most definitely don't do
anything with KVMGT, so I don't see how they can fail.

Are you seeing actually failures?

> Please help confirm if the tests/doc needs to be updated,
> or if the assumption needs to be further clarified.

What assumption?

> > regions.  KVM's own support for moving memory regions was also broken for
> > multiple years (albeit for an edge case, but arguably moving RAM is
> > itself an edge case), e.g. see commit edd4fa37baa6 ("KVM: x86: Allocate
> > new rmap and large page tracking when moving memslot").
> > 
> > Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
> > Tested-by: Yongwei Ma <yongwei.ma@intel.com>
> > Signed-off-by: Sean Christopherson <seanjc@google.com>
> > ---
> >   arch/x86/include/asm/kvm_page_track.h | 3 +++
> >   arch/x86/kvm/mmu/page_track.c         | 5 +++++
> >   arch/x86/kvm/x86.c                    | 7 +++++++
> >   3 files changed, 15 insertions(+)
> > 
> > diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
> > index 8c4d216e3b2b..f744682648e7 100644
> > --- a/arch/x86/include/asm/kvm_page_track.h
> > +++ b/arch/x86/include/asm/kvm_page_track.h
> > @@ -75,4 +75,7 @@ kvm_page_track_unregister_notifier(struct kvm *kvm,
> >   void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
> >   			  int bytes);
> >   void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot);
> > +
> > +bool kvm_page_track_has_external_user(struct kvm *kvm);
> > +
> >   #endif
> > diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
> > index 891e5cc52b45..e6de9638e560 100644
> > --- a/arch/x86/kvm/mmu/page_track.c
> > +++ b/arch/x86/kvm/mmu/page_track.c
> > @@ -303,3 +303,8 @@ void kvm_page_track_flush_slot(struct kvm *kvm, struct kvm_memory_slot *slot)
> >   			n->track_flush_slot(kvm, slot, n);
> >   	srcu_read_unlock(&head->track_srcu, idx);
> >   }
> > +
> > +bool kvm_page_track_has_external_user(struct kvm *kvm)
> > +{
> > +	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
> > +}
> > diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> > index 059571d5abed..4394bb49051f 100644
> > --- a/arch/x86/kvm/x86.c
> > +++ b/arch/x86/kvm/x86.c
> > @@ -12606,6 +12606,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
> >   				   struct kvm_memory_slot *new,
> >   				   enum kvm_mr_change change)
> >   {
> > +	/*
> > +	 * KVM doesn't support moving memslots when there are external page
> > +	 * trackers attached to the VM, i.e. if KVMGT is in use.
> > +	 */
> > +	if (change == KVM_MR_MOVE && kvm_page_track_has_external_user(kvm))
> > +		return -EINVAL;
> > +
> >   	if (change == KVM_MR_CREATE || change == KVM_MR_MOVE) {
> >   		if ((new->base_gfn + new->npages - 1) > kvm_mmu_max_gfn())
> >   			return -EINVAL;
