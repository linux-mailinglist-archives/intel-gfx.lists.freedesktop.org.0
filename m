Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B228776292
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 16:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F0F10E083;
	Wed,  9 Aug 2023 14:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D82B10E083
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 14:33:47 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-1bbdced15f3so88680035ad.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Aug 2023 07:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1691591626; x=1692196426;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=jZmbaKKKm3CHbI/QJJpHHXp/km2ij6zusR5ThdOY8EE=;
 b=DUi7yCKZeHIQOn9Fthn5OjHUhJCT5ipdMgkg2xVzFQPT+Dno1JgMSzuaGqJnec7h2e
 k+Z7kpr+D6ku5ye4Y6Eo7mDbKoNBW9n6UpATdPMSt2qu7OS+JRrwoR8Bnl03vE6oqRed
 IdDFcMCZspBAGdgCY0gFnYb8aKK0+wCIjcoCRQhWqa5loj4vewG+g6iwkycBJQSMkLjj
 F3MgG8WkunnGIX9Tntelx5mF9rV8NItN1nwrgI3NHer6l3ddA7FkQSXwfAflMybwce6F
 EdaQfPWL6IZPj1YAXH1asOjn4XATl8RQIyRiPv89SVJFee5ERZGSewxIkqk4Plzps/v2
 kuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691591626; x=1692196426;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jZmbaKKKm3CHbI/QJJpHHXp/km2ij6zusR5ThdOY8EE=;
 b=acJ9hItFyb2ai1i2pnFj5kJB+jEuHkYHo6kyuDigncPQTmJfaX0QlNk1IJeKKBjqlZ
 LGYZ8SfSEThIEju5f032EsXBWhVFbkBEEFYmsZoE9m8hXQa58OCyKXFmQaYVHqh5juAc
 iwa0/LVy59qPTydFS3MplIKS/mAAshOOXumpojbS/wt9GCFRJMoOK5AeU6uTIYCTbb6l
 Hv9v4p4U5GcqG5r+VsEmb6OJLQFWULHONx3cNSSxQT8M9eRMQJ0VM89PI4ZB5OwNgbvl
 YFXI7PWPUubbiVFR/vInfXMbV6vcaefgxMBRWKCRwzcxKaq55/tvf4ku5Fkwj7m0ABH+
 Hm/A==
X-Gm-Message-State: AOJu0YzdnRLMaSAbnKaW4IoLp3XJXuZG/gNl5fh5kSh66t9CCymxpV/r
 V8BM90X7LgSjR4Pal/HPY12TFO1/DKo=
X-Google-Smtp-Source: AGHT+IFTcanp2PgeUlsBe6acnCorL6mrsLeGVUyMlUhGhob9bR6LKZlVBrq9Y6Q4E1OFc7EkekhTTOPkt/g=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:e542:b0:1b8:5541:9d3e with SMTP id
 n2-20020a170902e54200b001b855419d3emr300692plf.6.1691591626649; Wed, 09 Aug
 2023 07:33:46 -0700 (PDT)
Date: Wed, 9 Aug 2023 07:33:45 -0700
In-Reply-To: <ZNLlseYag5DniUg3@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-20-seanjc@google.com>
 <5581418b-2e1c-6011-f0a4-580df7e00b44@gmail.com> <ZNEni2XZuwiPgqaC@google.com>
 <ZNLlseYag5DniUg3@yzhao56-desk.sh.intel.com>
Message-ID: <ZNOjyf2OHQZYfMEJ@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
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
Cc: Like Xu <like.xu.linux@gmail.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 09, 2023, Yan Zhao wrote:
> On Mon, Aug 07, 2023 at 10:19:07AM -0700, Sean Christopherson wrote:
> > On Mon, Aug 07, 2023, Like Xu wrote:
> > > On 23/12/2022 8:57 am, Sean Christopherson wrote:
> > > > +static inline void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
> > > > +					const u8 *new, int bytes)
> > > > +{
> > > > +	__kvm_page_track_write(vcpu, gpa, new, bytes);
> > > > +
> > > > +	kvm_mmu_track_write(vcpu, gpa, new, bytes);
> > > > +}
> > > 
> > > The kvm_mmu_track_write() is only used for x86, where the incoming parameter
> > > "u8 *new" has not been required since 0e0fee5c539b ("kvm: mmu: Fix race in
> > > emulated page table writes"), please help confirm if it's still needed ? Thanks.
> > > A minor clean up is proposed.
> > 
> > Hmm, unless I'm misreading things, KVMGT ultimately doesn't consume @new either.
> > So I think we can remove @new from kvm_page_track_write() entirely.
> Sorry for the late reply.
> Yes, KVMGT does not consume @new and it reads the guest PTE again in the
> page track write handler.
> 
> But I have a couple of questions related to the memtioned commit as
> below:
> 
> (1) If "re-reading the current value of the guest PTE after the MMU lock has
> been acquired", then should KVMGT also acquire the MMU lock too?

No.  If applicable, KVMGT should read the new/current value after acquiring
whatever lock protects the generation (or update) of the shadow entries.  I
suspect KVMGT already does this, but I don't have time to confirm that at this
exact memory.

The race that was fixed in KVM was:

  vCPU0         vCPU1   
  write X
                 write Y
                 sync SPTE w/ Y
  sync SPTE w/ X

Reading the value after acquiring mmu_lock ensures that both vCPUs will see whatever
value "loses" the race, i.e. whatever written value is processed second ('Y' in the
above sequence).

> If so, could we move the MMU lock and unlock into kvm_page_track_write()
> as it's common.
> 
> (2) Even if KVMGT consumes @new,
> will kvm_page_track_write() be called for once or twice if there are two
> concurent emulated write?

Twice, kvm_page_track_write() is wired up directly to the emulation of the write,
i.e. there is no batching.
