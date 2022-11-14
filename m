Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D36327E8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2155C10E2F7;
	Mon, 21 Nov 2022 15:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804DF10E2F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 16:32:38 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id v28so11472278pfi.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 08:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fl4vYZukq8gCsaclrBinKemUC9Y9RD4y/Lg/kykiAyY=;
 b=XFGuwBJF6z0EaYkVgH7A1bZ2UQoEDGL3sPwz22b5mFQxOIeujyJE2gfJDMdKfrtpHM
 DuQJSDBoA0+EDkiTUeFS2HSSmU/FgIS/ATGyTSjlTyGL3zxDEldXu0WcH72VAbC8KZAg
 iJ7+P54da1SxIBlHzXmYIKrsBw2BneA+Ie3X4hjtrIhSRVznVHDTmny6TGuow/kk7MhM
 T0dlTil8s7AVow4Sp1tYtU0768iGCC7N4qoQUpWEcqbMRxjUjukCdoenIL4GYo5z/gzF
 jNJP7twdpR9AJiLK01IFbxmWkyHx9fnD3J3K9yhWFxPkxSiIIX7cXG0ohcizBUng9YUQ
 tOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fl4vYZukq8gCsaclrBinKemUC9Y9RD4y/Lg/kykiAyY=;
 b=oUp01G/R7h4C4KFUdWqS0jQS8DuNNVfmUQdQu1MZSCSTOUhBw7myEWrNgD509/ak27
 /yUDmWw3BFkXtbotnl0FdveD9YFoqropeVS8eIc662DPlWSs2Rb7IwzO1cNNZJGj8/t5
 hupfzIwKXsFIJoJvFfpGIsQUOh9mdVY2eAPRkhw4YBFIV+AGdvV5KuHHCTd7mxaqyPzn
 LZwC1iUghybsM+0g1smw7W143yL7OIP8UuQYT0KjWIVYJGCbuRnRfsPFyjeUO9BEFR6o
 G3JgZivL+OTT140K2NUBalrBVWkM9W/eLfV4zbBJ7RqykhCmX/7s7b2dsaZ3Cob2mbz4
 Iybw==
X-Gm-Message-State: ANoB5pkmSSPS0iMcvDrGjmS6RSKbJCgFnTwU5RYqpdw+1n4lGqGBv3Ez
 0sqcuTol6FLswZ7m/NqWd4I1rQ==
X-Google-Smtp-Source: AA0mqf5F2NsLGqG6wSNJ5DDtUghQHmhby8l34F1Ns+grkLUucvyPskfdoa29mstcGu3oXagS03J/Gw==
X-Received: by 2002:a62:403:0:b0:572:5be2:505b with SMTP id
 3-20020a620403000000b005725be2505bmr1140379pfe.52.1668443557888; 
 Mon, 14 Nov 2022 08:32:37 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 l29-20020a63ba5d000000b00438834b14a1sm6064695pgu.80.2022.11.14.08.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Nov 2022 08:32:37 -0800 (PST)
Date: Mon, 14 Nov 2022 16:32:34 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y3JtonYdDYOhbmfG@google.com>
References: <20221111103247.22275-1-yan.y.zhao@intel.com>
 <20221111103350.22326-1-yan.y.zhao@intel.com>
 <Y26SI3uh8JV0vvO6@google.com>
 <Y27ivXea5SjR5lat@yzhao56-desk.sh.intel.com>
 <Y27sG3AqVX8yLUgR@google.com>
 <Y3GUdqxnPJvc6SPI@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y3GUdqxnPJvc6SPI@yzhao56-desk.sh.intel.com>
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:24 +0000
Subject: Re: [Intel-gfx] [PATCH v2 1/3] KVM: x86: add a new page track hook
 track_remove_slot
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 14, 2022, Yan Zhao wrote:
> On Sat, Nov 12, 2022 at 12:43:07AM +0000, Sean Christopherson wrote:
> > On Sat, Nov 12, 2022, Yan Zhao wrote:
> > > And I'm also not sure if a slots_arch_lock is required for
> > > kvm_slot_page_track_add_page() and kvm_slot_page_track_remove_page().
> > 
> > It's not required.  slots_arch_lock protects interaction between memslot updates
> In kvm_slot_page_track_add_page() and kvm_slot_page_track_remove_page(),
> slot->arch.gfn_track[mode][index] is updated in update_gfn_track(),
> do you know which lock is used to protect it?

mmu_lock protects the count, kvm->srcu protects the slot, and shadow_root_allocated
protects that validity of gfn_track, i.e. shadow_root_allocated ensures that KVM
allocates gfn_track for all memslots when shadow paging is activated.

The cleanup series I'm prepping adds lockdep assertions for the relevant paths, e.g. 

$ git grep -B 8 -E "update_gfn_write_track.*;"
arch/x86/kvm/mmu/page_track.c-void __kvm_write_track_add_gfn(struct kvm *kvm, struct kvm_memory_slot *slot,
arch/x86/kvm/mmu/page_track.c-                         gfn_t gfn)
arch/x86/kvm/mmu/page_track.c-{
arch/x86/kvm/mmu/page_track.c-  lockdep_assert_held_write(&kvm->mmu_lock);
arch/x86/kvm/mmu/page_track.c-
arch/x86/kvm/mmu/page_track.c-  if (KVM_BUG_ON(!kvm_page_track_write_tracking_enabled(kvm), kvm))
arch/x86/kvm/mmu/page_track.c-          return;
arch/x86/kvm/mmu/page_track.c-
arch/x86/kvm/mmu/page_track.c:  update_gfn_write_track(slot, gfn, 1);
--
arch/x86/kvm/mmu/page_track.c-void __kvm_write_track_remove_gfn(struct kvm *kvm,
arch/x86/kvm/mmu/page_track.c-                            struct kvm_memory_slot *slot, gfn_t gfn)
arch/x86/kvm/mmu/page_track.c-{
arch/x86/kvm/mmu/page_track.c-  lockdep_assert_held_write(&kvm->mmu_lock);
arch/x86/kvm/mmu/page_track.c-
arch/x86/kvm/mmu/page_track.c-  if (KVM_BUG_ON(!kvm_page_track_write_tracking_enabled(kvm), kvm))
arch/x86/kvm/mmu/page_track.c-          return;
arch/x86/kvm/mmu/page_track.c-
arch/x86/kvm/mmu/page_track.c:  update_gfn_write_track(slot, gfn, -1);

