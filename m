Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB44772C98
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 19:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC74710E347;
	Mon,  7 Aug 2023 17:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D2310E34F
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 17:19:10 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d061f324d64so5396264276.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Aug 2023 10:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691428749; x=1692033549;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=27WqhWvu/ZsxgO0eaScHpZFEDzQn0I8scFjtchyFjMc=;
 b=tdqLt24osgHVvtPDkbBoS3gs2oYLYwf78ndKbYVPt6nuRqasJvTqaqHOTtXRjyk6dB
 TLa32Y4FjbMlQUmMgakR+L9b7u2unem/+pECTeIrmzmM5/poCie23rtV/gvmk4MQEp74
 Ar7PDV1K4MGynfnCOGSPyHDwvrLh86FZKUUtLQ8Ec/sQ9yamEgcD83eWViiid2EFrMAM
 N4fM6cwbr1b5ApFSqs8OH15uoqDQYNQVCV8LNdaiEjZdN9m+twmh1JMr5eXxe/zT4YJh
 Oz8jknsiJLYGJZQ5IjHmfdUcLyKYzAn8638CMi8+lUY0jWEIOPzscXrnArwRiqNFoaR+
 XN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691428749; x=1692033549;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=27WqhWvu/ZsxgO0eaScHpZFEDzQn0I8scFjtchyFjMc=;
 b=kL0+5vrONsGKO3Gi2FL+bLX2CyoCJfRBhfaxP55dIDdPfN5IXocaYoKjW+/NuT/v+0
 qxobSYRfebqyLoDS3FkCQXsfR91M/AuuFeDQt9pPS2/f31WxOK3gOupCZ/cNAws+gOpp
 nJfaSg+G+RcnUBjiXYtjoRz5lwrQQRdqlSPYYh8uwJvo0aNEVghW1q72h59E5p4Ls8oC
 YcuyNkbkOn+L8tkRQCdYdmMyhK3Eb8+8b/fSo19amBP52XSwK9V//+OsmkbFcgHxsaLn
 VQjfmjV8lEerjrHJBzBlF6j7Lt/j+Ptgg1LTet5eTeOgeCBcEZ0aG1rQJK8up8uTncok
 VyiQ==
X-Gm-Message-State: AOJu0YyF4q/ICKwlHKeP6SiqFiF+c3UkfcXIwXeD9YpnMUa7vPu3D+23
 IT18CncAvkyZMaspsKTY7yHL76S/jhI=
X-Google-Smtp-Source: AGHT+IFApew+XDb0Q4kYRgsV58wREJAAY6JgXAxkEQkzqnSpBI8akykTQqeF+k7dKfbQrCT3r/q5RrMz++U=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:aa0e:0:b0:d0c:1f08:5fef with SMTP id
 s14-20020a25aa0e000000b00d0c1f085fefmr48511ybi.12.1691428749646; Mon, 07 Aug
 2023 10:19:09 -0700 (PDT)
Date: Mon, 7 Aug 2023 10:19:07 -0700
In-Reply-To: <5581418b-2e1c-6011-f0a4-580df7e00b44@gmail.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-20-seanjc@google.com>
 <5581418b-2e1c-6011-f0a4-580df7e00b44@gmail.com>
Message-ID: <ZNEni2XZuwiPgqaC@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Like Xu <like.xu.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH 19/27] KVM: x86/mmu: Use page-track
 notifiers iff there are external users
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
 Ben Gardon <bgardon@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 07, 2023, Like Xu wrote:
> On 23/12/2022 8:57 am, Sean Christopherson wrote:
> > +static inline void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
> > +					const u8 *new, int bytes)
> > +{
> > +	__kvm_page_track_write(vcpu, gpa, new, bytes);
> > +
> > +	kvm_mmu_track_write(vcpu, gpa, new, bytes);
> > +}
> 
> The kvm_mmu_track_write() is only used for x86, where the incoming parameter
> "u8 *new" has not been required since 0e0fee5c539b ("kvm: mmu: Fix race in
> emulated page table writes"), please help confirm if it's still needed ? Thanks.
> A minor clean up is proposed.

Hmm, unless I'm misreading things, KVMGT ultimately doesn't consume @new either.
So I think we can remove @new from kvm_page_track_write() entirely.

Feel free to send a patch, otherwise I'll get to it later this week.
