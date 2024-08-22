Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EA495B1A7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 11:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6341010E81D;
	Thu, 22 Aug 2024 09:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="I6azbDeX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BBB10E81B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 09:29:11 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4280ca0791bso4059445e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 02:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1724318950; x=1724923750; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nhcJeS0O9wiie/96SWyofNA+VZ5btHbUFY4D40/IR5E=;
 b=I6azbDeX/ylVoBfuWt6ArMB1zThR+liDDlLNOEWwPlcDPKgo9A76bCgstEPTfQ3CMA
 GI23UdG78qcH81RqbAy0gMRwOowwyexXVjrCK41+cnr4wnuHfQZkgxXzK15znZMQxpcO
 p9RQjKRsr7dKvGtWFCFdkstfhH/M5P8hbujmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724318950; x=1724923750;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nhcJeS0O9wiie/96SWyofNA+VZ5btHbUFY4D40/IR5E=;
 b=M1fCE65fGqC4RtVsoMrZN67BZJdr+RzbMvXstgG+SsZx6ygh6FdO5vtDDq2NReWuNL
 DCJlxbzZ/eOAf1fWkFsTuAriL+ZRygmSU1HOcTyzD/H6/G+jvuEpWxLoiLBS170f3zoS
 15OrOHMNMbRUupCrMa1Zx+78NXGoWjFMjIsQ4LwAle/+HqxU2JGCrG6TD/QclM12VvuQ
 L8rwrleRJO8LI5/VZZjuef3a3gyy6T3IS8KUGdf37xe42Jpk8+8dQkelHiae47Gd5vL3
 1wHfKDy4g+we5fMhrZLeYyA7KZkaFX43iCTzr1YmiVCUF1MW/4QIgO/gKHVFxswLVptt
 w3Sg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAXrycPhD89LcqrWHcdGQZOUPci8piHTJ76JpzpaZmk//ih3RDXEYq4gcXOelsZ4x5GIxwVzWz/Ew=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzoE5Buvby6hS+Dy5Yo3gcvD65RJg6QaXyfD5rW/fHCYtIw2iib
 xHLD+sihDwq+qNdL24EujQf+fzOHyn5L8NK6Pp1aBQ0f44O7hkbG3qNTFmKjTPE=
X-Google-Smtp-Source: AGHT+IEZwtG6k7bWYJrtyNtclHX6r4z6ah6tguGFSCIBLXSlshk3d9TybCbaxRsqy6Wa855QhXLkqA==
X-Received: by 2002:a5d:5f56:0:b0:371:728e:d000 with SMTP id
 ffacd0b85a97d-372fd57fc28mr4040401f8f.1.1724318949489; 
 Thu, 22 Aug 2024 02:29:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ac514e093sm18099745e9.7.2024.08.22.02.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 02:29:09 -0700 (PDT)
Date: Thu, 22 Aug 2024 11:29:07 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Brost <matthew.brost@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH 0/2] Allow partial memory mapping for cpu memory
Message-ID: <ZscE49uOmYaZNsEZ@phenom.ffwll.local>
References: <ZrXtiBKyCCh0a_ym@ashyti-mobl2.lan>
 <ZrnRuRGjxHe5zxuf@phenom.ffwll.local>
 <Zrn3QqOvOEW2EYB0@ashyti-mobl2.lan>
 <ZrogDGT326oSUZls@phenom.ffwll.local>
 <ZrrK5yjirbjJQSFL@DUT025-TGLU.fm.intel.com>
 <ZrtpM6ILa0laVR1N@phenom.ffwll.local>
 <ZruvEu0BafdsVjSi@DUT025-TGLU.fm.intel.com>
 <ZrwRsXT3gu3WgjCe@DUT025-TGLU.fm.intel.com>
 <ZsNT3aCHSXoD5N2a@phenom.ffwll.local>
 <ZsNlWP6v2pwvx00L@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZsNlWP6v2pwvx00L@ashyti-mobl2.lan>
X-Operating-System: Linux phenom 6.9.12-amd64 
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 19, 2024 at 05:31:36PM +0200, Andi Shyti wrote:
> Hi Sima,
> 
> On Mon, Aug 19, 2024 at 04:17:01PM +0200, Daniel Vetter wrote:
> > On Wed, Aug 14, 2024 at 02:08:49AM +0000, Matthew Brost wrote:
> > > On Tue, Aug 13, 2024 at 07:08:02PM +0000, Matthew Brost wrote:
> > > > On Tue, Aug 13, 2024 at 04:09:55PM +0200, Daniel Vetter wrote:
> > > > > On Tue, Aug 13, 2024 at 02:54:31AM +0000, Matthew Brost wrote:
> > > > > > On Mon, Aug 12, 2024 at 04:45:32PM +0200, Daniel Vetter wrote:
> > > > > > > On Mon, Aug 12, 2024 at 01:51:30PM +0200, Andi Shyti wrote:
> > > > > > > > On Mon, Aug 12, 2024 at 11:11:21AM +0200, Daniel Vetter wrote:
> > > > > > > > > On Fri, Aug 09, 2024 at 11:20:56AM +0100, Andi Shyti wrote:
> > > > > > > > > > On Fri, Aug 09, 2024 at 10:53:38AM +0200, Daniel Vetter wrote:
> > > > > > > > > > > On Wed, Aug 07, 2024 at 11:05:19AM +0100, Andi Shyti wrote:
> > > > > > > > > > > > This patch series concludes on the memory mapping fixes and
> > > > > > > > > > > > improvements by allowing partial memory mapping for the cpu
> > > > > > > > > > > > memory as well.
> > > > > > > > > > > > 
> > > > > > > > > > > > The partial memory mapping by adding an object offset was
> > > > > > > > > > > > implicitely included in commit 8bdd9ef7e9b1 ("drm/i915/gem: Fix
> > > > > > > > > > > > Virtual Memory mapping boundaries calculation") for the gtt
> > > > > > > > > > > > memory.
> > > > > > > > > > > 
> > > > > > > > > > > Does userspace actually care? Do we have a flag or something, so that
> > > > > > > > > > > userspace can discover this?
> > > > > > > > > > > 
> > > > > > > > > > > Adding complexity of any kind is absolute no-go, unless there's a
> > > > > > > > > > > userspace need. This also includes the gtt accidental fix.
> > > > > > > > > > 
> > > > > > > > > > Actually this missing functionality was initially filed as a bug
> > > > > > > > > > by mesa folks. So that this patch was requested by them (Lionel
> > > > > > > > > > is Cc'ed).
> > > > > > > > > > 
> > > > > > > > > > The tests cases that have been sent previously and I'm going to
> > > > > > > > > > send again, are directly taken from mesa use cases.
> > > > > > > > > 
> > > > > > > > > Please add the relevant mesa MR to this patch then, and some relevant
> > > > > > > > > explanations for how userspace detects this all and decides to use it.
> > > > > > > > 
> > > > > > > > AFAIK, there is no Mesa MR. We are adding a feature that was
> > > > > > > > missing, but Mesa already supported it (indeed, Nimroy suggested
> > > > > > > > adding the Fixes tag for this).
> > > > > > > > 
> > > > > > > > Also because, Mesa was receiving an invalid address error and
> > > > > > > > asked to support the partial mapping of the memory.
> > > > > > > 
> > > > > > > Uh this sounds a bit too much like just yolo'ing uabi. There's two cases:
> > > > > > > 
> > > > > > > - Either this is a regression, it worked previously, mesa is now angry.
> > > > > > >   Then we absolutely need a Fixes: tag, and we also need that for the
> > > > > > >   preceeding work to re-enable this for gtt mappings.
> > > > > > > 
> > > > > > > - Or mesa is just plain wrong here, which is what my guess is. Because bo
> > > > > > >   mappings have always been full-object (except for the old-style shm
> > > > > > >   mmaps). In that case mesa needs to be fixed (because we're not going to
> > > > > > >   backport old uapi).
> > > > > > > 
> > > > > > >   Also in that case, _if_ (and that's a really big if) we really want this
> > > > > > >   uapi, we need it in xe too, it needs a proper mesa MR to use it, it
> > > > > > 
> > > > > > I looked at this code from Xe PoV to see if we support this and I think
> > > > > > we actually do as our CPU fault handler more or less just calls
> > > > > > ttm_bo_vm_fault_reserved which has similar code to this patch. So I
> > > > > > think this actually a valid fix. Can't be 100% sure though as I quickly
> > > > > > just reversed engineered this code and TTM.
> > > > > 
> > > > > That's the fault path, which isn't relevant here since you already have
> > > > > the vma set up. The relevant path is the mmap path, which is common for
> > > > > all gem drivers nowadays and the lookup handled entirely in the core. Well
> > > > > except for i915-gem being absolutely massively over the top special in
> > > > > everything. i915-gem being extremely special here is also why this patch
> > > > > caught my attention, because it just furthers the divergence instead of at
> > > > > least stopping. Since we've given up on trying to get i915-gem onto common
> > > > > code and patterns that's not an option, and the reason why xe exists ...
> > > > > 
> > > > > Anyway that common gem bo mmap code code is in drm_gem_mmap and still only
> > > > > allows exact matches.
> > > > > 
> > > > > Unless I'm completely blind, it does happen :-)
> > > > > 
> > > > 
> > > > Not blind.
> > > > 
> > > > > > We don't have IGT test cases for this in Xe though, we likely should add
> > > > > > some if mesa is doing this.
> > > > > 
> > > > > I'd expect they would fail ...
> > > > >
> > > > 
> > > > Just wrote one, it fails.
> > > > 
> > > > So agree with everything you are saying. Sorry for the noise. 
> > > 
> > > To be clear what I agree with:
> > > 
> > > - Xe doesn't support partial mmaps, if the i915 / Mesa needs to support
> > >   partial mmaps Xe needs changed in step with the i915 (it is a 1 line
> > >   change in drm_gem_mmap which then will a community ack too)
> > > - We need IGTs for partial mmaps in both i915 and Xe
> > > - The Mesa use needs to be understood ensuring this isn't a bug on their
> > >   end and this actually required
> > > - If partial mmaps are actually required, I'd like to see this in 6.12
> > >   for Xe as we are about to remove force probe
> > 
> > Fwiw I concur on this all. Maybe one thing to add is that if i915/mesa do
> > not need partial mmaps, then we should also again removed them for gtt
> > mmaps since that patch already slipped in.
> 
> I'm sorry, but I am not understanding why i915 should
> deliberately stop supporting Mesa? This was requested by them
> because there were bug reports filed.
> 
> There is a test developed by Lionel[1] that is now taken into
> igt[2].
> 
> The gtt partial mapping did not slip in accidentaly, we fixed a
> security issue where the partial mapping needed to be taken into
> account.

Yeah the partial unmap looks like it could wrong, would be really good to
make sure we validate that on xe too (and any other mapping type i915
hase).

But I thought this was about allowing partial mmap to begin with, which is
a different beast?
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
