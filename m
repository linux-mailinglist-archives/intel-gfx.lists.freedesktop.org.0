Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8064878F0F0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 18:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A7610E5FF;
	Thu, 31 Aug 2023 16:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE6C10E6A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 16:11:03 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-26d43d10ce5so1189623a91.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 09:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1693498262; x=1694103062;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=iB3LXAZFghXeVvnwdo2HBopRNlG+ea2UbPoVCxVRfBA=;
 b=kE5Lgd4okXAqMadwVTlJVzCZ9ZY8sp389Vnwblb1byDUA3zfrYZqBATIpl2ij8ev2e
 iiTUZjv/enwt0J2YHkUl/G+uSHvtSgLz5NhMFN8iO1OXJ+L15vGIHb3FG9lZms5UMA/d
 RRkVLvQPudLHvkMF+BHbNWX7PCdbC0R+f5DWqxU71CGfHgK/RJ6OYEoLf3uKgImGsJam
 GCHaAjPywU8lIxXAcUboJ+DZU+2JanVgA1RgCahw/JrcqmF1y/q5SmvMKwIpNChjcOsc
 oeZNLUK3nRble6lygAkhmeuknViysBrd9w7Yz06lW/NDOOdtK4v7RbufEDAMrT0iEdZq
 Ccpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693498262; x=1694103062;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iB3LXAZFghXeVvnwdo2HBopRNlG+ea2UbPoVCxVRfBA=;
 b=eMnoVwm+osrmp82r2FYz5Q0kqxUEB6xZ8k6JRDtTTJtVOW41m2xlOtUZtZdpHg19I0
 B/bXlh871QkUPxaKAIjgaQfIY66N64wc2DmwR70wHc5wN6LJm+jMnf7smUYoKZfsvGTj
 sbfBIwZwCYyRWcrtLO5YJ8rNrg2iXBycDuemQvEAWLPeGyn9ygmjbVEeMyOnuSjcno63
 ARNwC8ZzJsVcqTlK1e+2uMiQa5y+3KyajD1vSe+7TamlpE1zER1jOD+pnFjF6atpIJfs
 E91zfiSULvQnyVeLF0VtYJhlcJMNUd4SnWB3zbn0cfNKEyODkAXpZbk21X3f/7f8rwjX
 NgEA==
X-Gm-Message-State: AOJu0YzQR5VY/guoio3tfQah9Z42+gy2knZNRznA+CSdL2nIVMJMz0Mw
 snzIcDJNJY0PHak3Z72BE5gWNrGJOMg=
X-Google-Smtp-Source: AGHT+IGyBhJnapmMHK4Z1oZ4+3bPLoyELO7vJv0KTl0PtWnmatDJoHfM6+bwBYhcreMVseAOjaV1D4vE6sA=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:e557:b0:263:3437:a0b0 with SMTP id
 ei23-20020a17090ae55700b002633437a0b0mr1008643pjb.3.1693498262512; Thu, 31
 Aug 2023 09:11:02 -0700 (PDT)
Date: Thu, 31 Aug 2023 09:11:00 -0700
In-Reply-To: <7a6488f2-fef4-6709-6a95-168b0c034ff4@gmail.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
 <20230729013535.1070024-17-seanjc@google.com>
 <6c691bc5-dbfc-46f9-8c09-9c74c51d8708@gmail.com> <ZO+roobNH2QbZZWn@google.com>
 <7a6488f2-fef4-6709-6a95-168b0c034ff4@gmail.com>
Message-ID: <ZPC7lLW8haAlQZu9@google.com>
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

On Thu, Aug 31, 2023, Like Xu wrote:
> On 31/8/2023 4:50 am, Sean Christopherson wrote:
> > On Wed, Aug 30, 2023, Like Xu wrote:
> > > On 2023/7/29 09:35, Sean Christopherson wrote:
> > > > Disallow moving memslots if the VM has external page-track users, i.e. if
> > > > KVMGT is being used to expose a virtual GPU to the guest, as KVMGT doesn't
> > > > correctly handle moving memory regions.
> > > > 
> > > > Note, this is potential ABI breakage!  E.g. userspace could move regions
> > > > that aren't shadowed by KVMGT without harming the guest.  However, the
> > > > only known user of KVMGT is QEMU, and QEMU doesn't move generic memory
> > > 
> > > This change breaks two kvm selftests:
> > > 
> > > - set_memory_region_test;
> > > - memslot_perf_test;
> > 
> > It shoudn't.  As of this patch, KVM doesn't register itself as a page-track user,
> > i.e. KVMGT is the only remaining caller to kvm_page_track_register_notifier().
> > Unless I messed up, the only way kvm_page_track_has_external_user() can return
> > true is if KVMGT is attached to the VM.  The selftests most definitely don't do
> > anything with KVMGT, so I don't see how they can fail.
> > 
> > Are you seeing actually failures?
> 
> $ set_memory_region_test

...

> At one point I wondered if some of the less common kconfig's were enabled,
> but the above two test failures could be easily fixed with the following diff:

Argh, none of the configs I actually ran selftests on selected
CONFIG_KVM_EXTERNAL_WRITE_TRACKING=y. 

> diff --git a/arch/x86/kvm/mmu/page_track.h b/arch/x86/kvm/mmu/page_track.h
> index 62f98c6c5af3..d4d72ed999b1 100644
> --- a/arch/x86/kvm/mmu/page_track.h
> +++ b/arch/x86/kvm/mmu/page_track.h
> @@ -32,7 +32,7 @@ void kvm_page_track_delete_slot(struct kvm *kvm, struct
> kvm_memory_slot *slot);
> 
>  static inline bool kvm_page_track_has_external_user(struct kvm *kvm)
>  {
> -	return hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
> +	return !hlist_empty(&kvm->arch.track_notifier_head.track_notifier_list);
>  }
>  #else
>  static inline int kvm_page_track_init(struct kvm *kvm) { return 0; }
> 
> , so I guess it's pretty obvious what's going on here.

Yes.  I'll rerun tests today and get the above posted on your behalf (unless you
don't want me to do that).

Sorry for yet another screw up, and thanks for testing!
