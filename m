Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EDF65C84D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 21:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641FE10E21C;
	Tue,  3 Jan 2023 20:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C57D10E21B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 20:43:21 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id v23so34094987pju.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Jan 2023 12:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xa61Ou7j/846wt97LkeShrQLxxw8hvcUHjRwhnCxBCc=;
 b=TRm8LLcbBZjdkaye1ciJYctw6wm9URMlqbJ1906WJVxLDuKmUx722YaaZouoCB+fM/
 fx7xcyib0PtiWeUlApsonrBo5Qi5OZO5MatQeKw68gjkWsuYOsTkMR69iP4M8rDi1RrG
 +yB0Xg0oyShcZT+u0OaOXMecYFnIFyLe9cBVIsCTCJHFUH9mufMqZgrQGPv845H9x8Im
 oLQY3EzoIHULs3TQlMcP36a18sgdW9CtLFirUBznKSMM4V+FS7zmwX0YYO4BST1+yvCi
 LulcuShq9RZKVGqael5KMpKjulXoP2pEXztql/1ZIOMcGNV9rw6f0MKqvRd2rox3NBFs
 cWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xa61Ou7j/846wt97LkeShrQLxxw8hvcUHjRwhnCxBCc=;
 b=RMuUHCrng9OaBvBrJ3GWHJ/MUVXfMWugIcsRrymr0HGuqNb1V7JjcoQCoZywrU6Qlx
 U1RpGtVT1b3ltJwjVKy9hdCDDnzlDKnxPBb9K1bx6tLRpVTTGaDVE2MIHsteMJw/vHMM
 FlnlSYBS66x6HHlQkytbMq+QA7w4ng3P4iZ9+cG20m+k0BbnE2CUp4o12sJV2KbPYHIB
 Itf8MHKADjhv3mATVsKQpkVRlL28daSkd0xKL2UdiNHE0M1pMvdDx7eXuk0zJEdsaNja
 kr1rGyWAKfv0r9UGOfLEx9Skg/pexGSjQd2N2po5Gu7vOknKiRgXUTuDIWRWRA29aAmC
 +cJA==
X-Gm-Message-State: AFqh2kqWV9VtuP/ciPGHhsyltT31ImXiFe6dALsVslaYFNE6iW1hxrqO
 fMCcYsrJn1R6luEhC03605NHoQ==
X-Google-Smtp-Source: AMrXdXunwdEn9XsOkAK37phwnHpqU8JPscGX/vIB459rXA0SHYQW7eVPVrszViDVGf0nnCl3jmsVxQ==
X-Received: by 2002:a17:903:41ca:b0:189:6624:58c0 with SMTP id
 u10-20020a17090341ca00b00189662458c0mr4304764ple.3.1672778601095; 
 Tue, 03 Jan 2023 12:43:21 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 t14-20020a1709027fce00b0019141c79b1dsm22670248plb.254.2023.01.03.12.43.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jan 2023 12:43:20 -0800 (PST)
Date: Tue, 3 Jan 2023 20:43:17 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y7STZZkd3EaRXLTC@google.com>
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-10-seanjc@google.com>
 <Y6vOEjHZhOWulyo1@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6vOEjHZhOWulyo1@yzhao56-desk.sh.intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/27] drm/i915/gvt: Protect gfn hash table
 with dedicated mutex
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
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 28, 2022, Yan Zhao wrote:
> On Fri, Dec 23, 2022 at 12:57:21AM +0000, Sean Christopherson wrote:
> > Add and use a new mutex, gfn_lock, to protect accesses to the hash table
> > used to track which gfns are write-protected when shadowing the guest's
> > GTT.  This fixes a bug where kvmgt_page_track_write(), which doesn't hold
> > kvm->mmu_lock, could race with intel_gvt_page_track_remove() and trigger
> > a use-after-free.
> > 
> > Fixing kvmgt_page_track_write() by taking kvm->mmu_lock is not an option
> > as mmu_lock is a r/w spinlock, and intel_vgpu_page_track_handler() might
> > sleep when acquiring vgpu->cache_lock deep down the callstack:
> > 
> >   intel_vgpu_page_track_handler()
> >   |
> >   |->  page_track->handler / ppgtt_write_protection_handler()
> >        |
> >        |-> ppgtt_handle_guest_write_page_table_bytes()
> >            |
> >            |->  ppgtt_handle_guest_write_page_table()
> >                 |
> >                 |-> ppgtt_handle_guest_entry_removal()
> >                     |
> >                     |-> ppgtt_invalidate_pte()
> >                         |
> >                         |-> intel_gvt_dma_unmap_guest_page()
> >                             |
> >                             |-> mutex_lock(&vgpu->cache_lock);
> > 
> This gfn_lock could lead to deadlock in below sequence.
> 
> (1) kvm_write_track_add_gfn() to GFN 1
> (2) kvmgt_page_track_write() for GFN 1
> kvmgt_page_track_write()
> |
> |->mutex_lock(&info->vgpu_lock)
> |->intel_vgpu_page_track_handler (as is kvmgt_gfn_is_write_protected)
>    |
>    |->page_track->handler() (ppgtt_write_protection_handler())
>       |	
>       |->ppgtt_handle_guest_write_page_table_bytes()
>          |
>          |->ppgtt_handle_guest_write_page_table()
> 	    |
> 	    |->ppgtt_handle_guest_entry_add() --> new_present
> 	       |
> 	       |->ppgtt_populate_spt_by_guest_entry()
> 	          |
> 		  |->intel_vgpu_enable_page_track() --> for GFN 2
> 		     |
> 		     |->intel_gvt_page_track_add()
> 		        |
> 			|->mutex_lock(&info->gfn_lock) ===>deadlock

Or even more simply, 

  kvmgt_page_track_write()
  |
  -> intel_vgpu_page_track_handler()
     |
     -> intel_gvt_page_track_remove()

> 
> Below fix based on this patch is to reuse vgpu_lock to protect the hash table
> info->ptable.
> Please check if it's good.
> 
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index b924ed079ad4..526bd973e784 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -364,7 +364,7 @@ __kvmgt_protect_table_find(struct intel_vgpu *info, gfn_t gfn)
>  {
>         struct kvmgt_pgfn *p, *res = NULL;
> 
> -       lockdep_assert_held(&info->gfn_lock);
> +       lockdep_assert_held(&info->vgpu_lock);
> 
>         hash_for_each_possible(info->ptable, p, hnode, gfn) {
>                 if (gfn == p->gfn) {
> @@ -388,7 +388,7 @@ static void kvmgt_protect_table_add(struct intel_vgpu *info, gfn_t gfn)
>  {
>         struct kvmgt_pgfn *p;
> 
> -       lockdep_assert_held(&info->gfn_lock);
> +       lockdep_assert_held(&info->vgpu_lock);

I'll just delete these assertions, the one in __kvmgt_protect_table_find() should
cover everything and is ultimately the assert that matters.

> @@ -1629,12 +1629,11 @@ static void kvmgt_page_track_remove_region(gfn_t gfn, unsigned long nr_pages,
>         struct intel_vgpu *info =
>                 container_of(node, struct intel_vgpu, track_node);
>  
> -       mutex_lock(&info->gfn_lock);
> +       lockdep_assert_held(&info->vgpu_lock);

This path needs to manually take vgpu_lock as it's called from KVM.  IIRC, this
is the main reason I tried adding a new lock.  That and I had a hell of a time
figuring out whether or not vgpu_lock would actually be held.

Looking at this with fresh eyes, AFAICT intel_vgpu_reset_gtt() is the only other
path that can reach __kvmgt_protect_table_find() without holding vgpu_lock, by
way of intel_gvt_page_track_remove().  But unless there's magic I'm missing, that's
dead code and can simply be deleted.
