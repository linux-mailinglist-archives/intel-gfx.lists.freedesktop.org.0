Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7712F589CD6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 15:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A8198CF4;
	Thu,  4 Aug 2022 13:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CA718BA40
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 17:21:01 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id x23so2424337pll.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Aug 2022 10:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc;
 bh=fCk/XHp8B9iXH6n1wItqgYGmM7fwmMYgI5yP8mbmH3U=;
 b=IDqkq0RRB5/0q0fvX92do69q1cmAV0EFEgHWrW70RErB2+5n+m61no3QcSCeUCyUlx
 uvEQW4vuCXpwC5S61++fwjKgE3nUx0FQnjgPU3XFVIVpP+LUmI7iynZ6/f65Ejd1AaC9
 NvU5Y1vDmH5Dko03H7Y0arebgyzLqYB/j7gHew5AaaCS3ISq94S1W4PACPtorR2QfRd5
 L14zFBc9ZRRBZUzZr469ACZiS9xJCL4dWXy4JX/+sw2KPfdGq2DlaXW85e1qylNvtxw6
 awyxapPLGplyeVQ3VjeAEr8lvkfl6G5kgatCXsmSgZOAdBt2P5yKrAC5ZsxLZ1d6RHz1
 lHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=fCk/XHp8B9iXH6n1wItqgYGmM7fwmMYgI5yP8mbmH3U=;
 b=OndkM3KPc7yO24RX30ExyxQgMz8VkNU6Fa7uLU+OKJnADrUrCqnkliR6qGihMsALns
 4J6LW1ZSGxl/NxDZOXZXE2w9PRMNeCqO/jgvzeRp8n1z4v9rkaT6WVCvFUuHNsKHsMlr
 QtMxQZgWPuDChqH5fNoQ2D0Z7iEz4kyPRidp2ytmA8l4ExcQlR+Mjh+FH7NJja/dnIlc
 6TenXYO8qtpLutG6fzhx/BVuufsjmPtxh99l8Yi+5rmdlInVfDNJKblI0gMcfceVv5mI
 3r0/X7Ysj1dX6D33d2uHuwpPdD4aswPgprPlVwbcEUKZQRAXZJxhQhcpBIoKp4nxOktq
 NEJw==
X-Gm-Message-State: ACgBeo3s2n9QyPRGcBhQiP4Oj0xcBDO+PIz5KviIPQ2CSHSOSVRhwHxm
 na35g0yMn3ypTd/tyBp0hFkGgg==
X-Google-Smtp-Source: AA6agR72h6LzCvsibpvxaxXVJaAf1hKXItzbo4mmcP0PdraAjvoT0eodhuHPNH3+KjI/0w/NW86UyA==
X-Received: by 2002:a17:90b:1c85:b0:1f1:d78a:512b with SMTP id
 oo5-20020a17090b1c8500b001f1d78a512bmr20754163pjb.92.1659374460388; 
 Mon, 01 Aug 2022 10:21:00 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 n3-20020a170902d2c300b0016bdf2220desm3355943plc.263.2022.08.01.10.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Aug 2022 10:20:58 -0700 (PDT)
Date: Mon, 1 Aug 2022 17:20:51 +0000
From: Sean Christopherson <seanjc@google.com>
To: Maxim Levitsky <mlevitsk@redhat.com>
Message-ID: <YugLc5LLPJkt89z6@google.com>
References: <20220427200314.276673-1-mlevitsk@redhat.com>
 <20220427200314.276673-5-mlevitsk@redhat.com>
 <YoZyWOh4NPA0uN5J@google.com>
 <5ed0d0e5a88bbee2f95d794dbbeb1ad16789f319.camel@redhat.com>
 <c22a18631c2067871b9ed8a9246ad58fa1ab8947.camel@redhat.com>
 <Yt6/9V0S9of7dueW@google.com>
 <7c4cf32dca42ab84bdb427a9e4862dbf5509f961.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c4cf32dca42ab84bdb427a9e4862dbf5509f961.camel@redhat.com>
X-Mailman-Approved-At: Thu, 04 Aug 2022 13:37:57 +0000
Subject: Re: [Intel-gfx] [RFC PATCH v3 04/19] KVM: x86: mmu: allow to enable
 write tracking externally
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, "H. Peter Anvin" <hpa@zytor.com>,
 Brijesh Singh <brijesh.singh@amd.com>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, intel-gfx@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Jim Mattson <jmattson@google.com>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 28, 2022, Maxim Levitsky wrote:
> On Mon, 2022-07-25 at 16:08 +0000, Sean Christopherson wrote:
> > On Wed, Jul 20, 2022, Maxim Levitsky wrote:
> > And on that topic, do you have performance numbers to justify using a single
> > shared node?  E.g. if every table instance has its own notifier, then no additional
> > refcounting is needed. 
> 
> The thing is that KVM goes over the list of notifiers and calls them for
> every write from the emulator in fact even just for mmio write, and when you
> enable write tracking on a page, you just write protect the page and add a
> mark in the page track array, which is roughly 
> 
> 'don't install spte, don't install mmio spte, but just emulate the page fault if it hits this page'
> 
> So adding more than a bare minimum to this list, seems just a bit wrong.

Hmm, I see what you're saying.  To some extent, having a minimal page tracker
implementation is just that, an implementation detail.  But for better or worse,
the existing API effectively pushes range checking to the callers.  I agree that
breaking from that pattern would be odd.

> >  It's not obvious that a shared node will provide better performance, e.g.
> >  if there are only a handful of AVIC tables being shadowed, then a linear
> >  walk of all nodes is likely fast enough, and doesn't bring the risk of a
> >  write potentially being stalled due to having to acquire a VM-scoped
> >  mutex.
> 
> The thing is that if I register multiple notifiers, they all will be called anyway,
> but yes I can use container_of, and discover which table the notifier belongs to,
> instead of having a hash table where I lookup the GFN of the fault.
> 
> The above means practically that all the shadow physid tables will be in a linear
> list of notifiers, so I could indeed avoid per vm mutex on the write tracking,
> however for simplicity I probably will still need it because I do modify the page,
> and having per physid table mutex complicates things.
> 
> Currently in my code the locking is very simple and somewhat dumb, but the performance
> is very good because the code isn't executed often, most of the time the AVIC hardware
> works alone without any VM exits.

Yes, but because the code isn't executed often, pretty much any solution will
provide good performance.

> Once the code is accepted upstream, it's one of the things that can be improved.
> 
> Note though that I still need a hash table and a mutex because on each VM entry,
> the guest can use a different physid table, so I need to lookup it, and create it,
> if not found, which would require read/write of the hash table and thus a mutex.

One of the points I'm trying to make is that a hash table isn't strictly required.
E.g. if I understand the update rules correctly, I believe tables can be tracked
via an RCU-protected list, with vCPUs taking a spinlock and doing synchronize_rcu()
when adding/removing a table.  That would avoid having to take any "real" locks in
the page track notifier.

The VM-scoped mutex worries me as it will be a bottleneck if L1 is running multiple
L2 VMs.  E.g. if L1 is frequently switching vmcs12 and thus avic_physical_id, then
nested VMRUN will effectively get serialized.  That is mitigated to some extent by
an RCU-protected list, as a sane L1 will use a single table for each L2, and so a
vCPU will need to add/remove a table if and only if it's the first/last vCPU to
start/stop running an L2 VM.

> > > I can also stash this boolean (like 'bool registered;') into the 'struct
> > > kvm_page_track_notifier_node',  and thus allow the
> > > kvm_page_track_register_notifier to be called more that once -  then I can
> > > also get rid of __kvm_page_track_register_notifier. 
> > 
> > No, allowing redundant registration without proper refcounting leads to pain,
> > e.g. X registers, Y registers, X unregisters, kaboom.
> > 
> 
> True, but then what about adding a refcount to 'struct kvm_page_track_notifier_node'
> instead of a boolean, and allowing redundant registration?
> Probably not worth it, in which case I am OK to add a refcount to my avic code.

Ya, I would rather force AVIC to do the refcounting.  Existing users don't need a
refcount, and doing the refcounting in AVIC code means kvm_page_track_notifier_node
can WARN on redundant registration, i.e. can sanity check the AVIC code to some
extent.

> Or maybe just scrap the whole thing and just leave registration and
> activation of the write tracking as two separate things? Honestly now that
> looks like the most clean solution.

It's the easiest, but IMO it's not the cleanest.  Allowing notifiers to be
registered without tracking being enabled is undesirable, especially since we know
we can prevent it.
