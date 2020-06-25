Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC65020A19D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 17:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CCC6E2A5;
	Thu, 25 Jun 2020 15:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AC56E2A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 15:12:31 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z13so6234867wrw.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 08:12:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bdxVf6vP79BMfcPB59swOSXedDJpX0cQVnYY/hZ9KZQ=;
 b=tN2pfMVMHz8hCFf3m7Hr/YQM4VvvTvcEfaKeLZqpSBXmS2uZwQ+R0J4nn2DL2e5Pg3
 RAJLArrQViTcYFWghL35jiGLukXnPUPjT/dwaHGp9+/sN+EgGzVqnbIwOJPRMkJhllBS
 CTRnZvEyAH9YamZEVpYhckI16+mf3037LhyBpHAZ6DUgFsO93cK9Q9d9SPAMNa08gPmg
 hiOBUWUBCwXMLVApui+az2fCzrFyFz5xERS5WCMfY7A9R7+0ElOYFWBtuQg/Jp2Nykhp
 kl9lxoptEbxi2gbxQpfa/kdK/F6cxujkgth6CKsASTVaGXy8/wc7HNSy54I/57Pf8j3v
 csHA==
X-Gm-Message-State: AOAM530nnBv+/adcy9t/CXfphzRN2NuR9TW0AAxRBD7umrxaY2h1eG2h
 1/wMKtKOW0hM20tbrIeL2II=
X-Google-Smtp-Source: ABdhPJwGVQIqx5ePGDHbr6RmWFkkyWM9E3xiJlzfuHlZjnvupf4cZ5UBiAyLNuseyyaLSlxPtcPRrA==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr1554369wrs.365.1593097949960; 
 Thu, 25 Jun 2020 08:12:29 -0700 (PDT)
Received: from localhost (ip-37-188-168-3.eurotel.cz. [37.188.168.3])
 by smtp.gmail.com with ESMTPSA id t2sm12315490wma.43.2020.06.25.08.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 08:12:28 -0700 (PDT)
Date: Thu, 25 Jun 2020 17:12:27 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200625151227.GP1320@dhcp22.suse.cz>
References: <20200624191417.16735-1-chris@chris-wilson.co.uk>
 <20200625075725.GC1320@dhcp22.suse.cz>
 <159308284703.4527.16058577374955415124@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159308284703.4527.16058577374955415124@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH] mm: Skip opportunistic reclaim for dma
 pinned pages
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
Cc: Jan Kara <jack@suse.cz>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu 25-06-20 12:00:47, Chris Wilson wrote:
> Quoting Michal Hocko (2020-06-25 08:57:25)
> > On Wed 24-06-20 20:14:17, Chris Wilson wrote:
> > > A general rule of thumb is that shrinkers should be fast and effective.
> > > They are called from direct reclaim at the most incovenient of times when
> > > the caller is waiting for a page. If we attempt to reclaim a page being
> > > pinned for active dma [pin_user_pages()], we will incur far greater
> > > latency than a normal anonymous page mapped multiple times. Worse the
> > > page may be in use indefinitely by the HW and unable to be reclaimed
> > > in a timely manner.
> > > 
> > > A side effect of the LRU shrinker not being dma aware is that we will
> > > often attempt to perform direct reclaim on the persistent group of dma
> > > pages while continuing to use the dma HW (an issue as the HW may already
> > > be actively waiting for the next user request), and even attempt to
> > > reclaim a partially allocated dma object in order to satisfy pinning
> > > the next user page for that object.
> > 
> > You are talking about direct reclaim but this path is shared with the
> > background reclaim. This is a bit confusing. Maybe you just want to
> > outline the latency in the reclaim which is more noticeable in the
> > direct reclaim to the userspace. This would be good to be clarified.
> > 
> > How much memory are we talking about here btw?
> 
> It depends. In theory, it is used sparingly. But it is under userspace
> control, exposed via Vulkan, OpenGL, OpenCL, media and even old XShm. If
> all goes to plan the application memory is only pinned for as long as the
> HW is using it, but that is an indefinite period of time and an indefinite
> amount of memory. There are provisions in place to impose upper limits
> on how long an operation can last on the HW, and the mmu-notifier is
> there to ensure we do unpin the memory on demand. However cancelling a
> HW operation (which will result in data loss and often process
> termination due to an unfortunate sequence of events when userspace
> fails to recover) for a try_to_unmap on behalf of the LRU shrinker is not
> a good choice.

OK, thanks for the clarification. What and when should MM intervene to
prevent potential OOM?
  
[...]
> > Btw. overall intention of the patch is not really clear to me. Do I get
> > it right that this is going to reduce latency of the reclaim for pages
> > that are not reclaimable anyway because they are pinned? If yes do we
> > have any numbers for that.
> 
> I can plug it into a microbenchmark ala cycletest to show the impact...
> Memory filled with 64M gup objects, random utilisation of those with
> the GPU; background process filling the pagecache with find /; reporting
> the time difference from the expected expiry of a timer with the actual:
> [On a Geminilake Atom-class processor with 8GiB, average of 5 runs, each
> measuring mean latency for 20s -- mean is probably a really bad choice
> here, we need 50/90/95/99]
> 
> direct reclaim calling mmu-notifier:
> gem_syslatency: cycles=2122, latency mean=1601.185us max=33572us
> 
> skipping try_to_unmap_one with page_maybe_dma_pinned:
> gem_syslatency: cycles=1965, latency mean=597.971us max=28462us
> 
> Baseline (background find /; application touched all memory, but no HW
> ops)
> gem_syslatency: cycles=0, latency mean=6.695us max=77us
> 
> Compare with the time to allocate a single THP against load:
> 
> Baseline:
> gem_syslatency: cycles=0, latency mean=1541.562us max=52196us
> Direct reclaim calling mmu-notifier:
> gem_syslatency: cycles=2115, latency mean=9050.930us max=396986us
> page_maybe_dma_pinned skip:
> gem_syslatency: cycles=2325, latency mean=7431.633us max=187960us
> 
> Take with a massive pinch of salt. I expect, once I find the right
> sequence, to reliably control the induced latency on the RT thread.
> 
> But first, I have to look at why there's a correlation with HW load and
> timer latency, even with steady state usage. That's quite surprising --
> ah, I had it left to PREEMPT_VOLUNTARY and this machine has to scan
> every request submitted to HW. Just great.
> 
> With PREEMPT:
> Timer:
> Base:    gem_syslatency: cycles=0, latency mean=8.823us max=83us
> Reclaim: gem_syslatency: cycles=2224, latency mean=79.308us max=4805us
> Skip:    gem_syslatency: cycles=2677, latency mean=70.306us max=4720us
> 
> THP:
> Base:    gem_syslatency: cycles=0, latency mean=1993.693us max=201958us
> Reclaim: gem_syslatency: cycles=1284, latency mean=2873.633us max=295962us
> Skip:    gem_syslatency: cycles=1809, latency mean=1991.509us max=261050us
> 
> Earlier caveats notwithstanding; confidence in results still low.
> 
> And refine the testing somewhat, if at the very least gather enough
> samples for credible statistics.

OK, so my understanding is that the overall impact is very low. So what
is the primary motivation for the patch? Prevent from a pointless work -
aka invoke the notifier?

-- 
Michal Hocko
SUSE Labs
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
