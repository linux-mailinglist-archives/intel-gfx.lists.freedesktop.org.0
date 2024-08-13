Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FA0950734
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 16:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65FC10E365;
	Tue, 13 Aug 2024 14:10:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="bJeTZ2ZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61DB10E366
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 14:09:59 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5a22874fcfdso556059a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 07:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1723558198; x=1724162998; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6wIuGnMOCf6HICKY0KiNbUqYDEiOfhDrcmS0v77eMHc=;
 b=bJeTZ2ZOU8Gm1sAAyRwZLvpI1ShdTDg2HmrorHYZK3mVEB001rDAP6CIOer2U6CWQB
 Z1HAP0KE2Jkura6/i/UEnAMDPHGl2A1BM81HO4vV570B3lr0seVaSrJUEe8U/8pWjdFN
 Pov49VRaOE+3lMs1DPbQHg1DuPK4KUvorcHTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723558198; x=1724162998;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6wIuGnMOCf6HICKY0KiNbUqYDEiOfhDrcmS0v77eMHc=;
 b=mZKv/+PrezWObl3NWgSJ+0TagoB4RIwKJKnueMyEoeb87wtdBE5VRkENJtoroQK/r/
 8trYmIfJL+dEtCyu3f/ZR85bMI0YcbK7VqXx8bSrgHMcAFPWJuCYc+mNaBDeC5XIfsy+
 V/SXwPqZySxdFtLEgjVyADMUjoKM2jQgm/ip7xUnweRVnVNLNID4o9XxZhxC7FONBVZK
 JCUOgAeL64PAF9aSDAzlmEKPga2p/JuZx0hSVY0M21/JeJECPuot7era9PRVx//3BqtK
 cJ7KoihdHUVgHagaxs3QPNvSCKG+0e2yK3VYUlU2twPfjEU22qI9YiISEmlmMerFzwp2
 bBKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9zKACndSHT3cXkel/FHhgNtcmj1SQkaP0QgpUS7LifBqBoj/C/IK3EnuAT9NUIvlpoOI7V4MvnrI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxtLEq6sWRSItzonosfGQU0mc8EVuDEvyqG6gL5/oHVc5QGwWWL
 vQ/8S5NzLU5ujoEpKzhE3tw1FQ52uD0lz1D36tiN/YIEuPAvgLXfzn7qksvhaqo=
X-Google-Smtp-Source: AGHT+IGKtkosZh2d3bP6G/R3p4rhdg3/uzNlgHJLJxc2e0Ybtx5SegOs8tdUzeXeLN5gm2G0DVAMHw==
X-Received: by 2002:a17:907:60cb:b0:a80:a1b0:12ec with SMTP id
 a640c23a62f3a-a80f41de9b7mr115668466b.3.1723558197850; 
 Tue, 13 Aug 2024 07:09:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a80f3fb3575sm73807866b.90.2024.08.13.07.09.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2024 07:09:57 -0700 (PDT)
Date: Tue, 13 Aug 2024 16:09:55 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH 0/2] Allow partial memory mapping for cpu memory
Message-ID: <ZrtpM6ILa0laVR1N@phenom.ffwll.local>
References: <20240807100521.478266-1-andi.shyti@linux.intel.com>
 <ZrXZEpplb6YA9T_d@phenom.ffwll.local>
 <ZrXtiBKyCCh0a_ym@ashyti-mobl2.lan>
 <ZrnRuRGjxHe5zxuf@phenom.ffwll.local>
 <Zrn3QqOvOEW2EYB0@ashyti-mobl2.lan>
 <ZrogDGT326oSUZls@phenom.ffwll.local>
 <ZrrK5yjirbjJQSFL@DUT025-TGLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrrK5yjirbjJQSFL@DUT025-TGLU.fm.intel.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
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

On Tue, Aug 13, 2024 at 02:54:31AM +0000, Matthew Brost wrote:
> On Mon, Aug 12, 2024 at 04:45:32PM +0200, Daniel Vetter wrote:
> > On Mon, Aug 12, 2024 at 01:51:30PM +0200, Andi Shyti wrote:
> > > Hi Daniel,
> > > 
> > > On Mon, Aug 12, 2024 at 11:11:21AM +0200, Daniel Vetter wrote:
> > > > On Fri, Aug 09, 2024 at 11:20:56AM +0100, Andi Shyti wrote:
> > > > > On Fri, Aug 09, 2024 at 10:53:38AM +0200, Daniel Vetter wrote:
> > > > > > On Wed, Aug 07, 2024 at 11:05:19AM +0100, Andi Shyti wrote:
> > > > > > > This patch series concludes on the memory mapping fixes and
> > > > > > > improvements by allowing partial memory mapping for the cpu
> > > > > > > memory as well.
> > > > > > > 
> > > > > > > The partial memory mapping by adding an object offset was
> > > > > > > implicitely included in commit 8bdd9ef7e9b1 ("drm/i915/gem: Fix
> > > > > > > Virtual Memory mapping boundaries calculation") for the gtt
> > > > > > > memory.
> > > > > > 
> > > > > > Does userspace actually care? Do we have a flag or something, so that
> > > > > > userspace can discover this?
> > > > > > 
> > > > > > Adding complexity of any kind is absolute no-go, unless there's a
> > > > > > userspace need. This also includes the gtt accidental fix.
> > > > > 
> > > > > Actually this missing functionality was initially filed as a bug
> > > > > by mesa folks. So that this patch was requested by them (Lionel
> > > > > is Cc'ed).
> > > > > 
> > > > > The tests cases that have been sent previously and I'm going to
> > > > > send again, are directly taken from mesa use cases.
> > > > 
> > > > Please add the relevant mesa MR to this patch then, and some relevant
> > > > explanations for how userspace detects this all and decides to use it.
> > > 
> > > AFAIK, there is no Mesa MR. We are adding a feature that was
> > > missing, but Mesa already supported it (indeed, Nimroy suggested
> > > adding the Fixes tag for this).
> > > 
> > > Also because, Mesa was receiving an invalid address error and
> > > asked to support the partial mapping of the memory.
> > 
> > Uh this sounds a bit too much like just yolo'ing uabi. There's two cases:
> > 
> > - Either this is a regression, it worked previously, mesa is now angry.
> >   Then we absolutely need a Fixes: tag, and we also need that for the
> >   preceeding work to re-enable this for gtt mappings.
> > 
> > - Or mesa is just plain wrong here, which is what my guess is. Because bo
> >   mappings have always been full-object (except for the old-style shm
> >   mmaps). In that case mesa needs to be fixed (because we're not going to
> >   backport old uapi).
> > 
> >   Also in that case, _if_ (and that's a really big if) we really want this
> >   uapi, we need it in xe too, it needs a proper mesa MR to use it, it
> 
> I looked at this code from Xe PoV to see if we support this and I think
> we actually do as our CPU fault handler more or less just calls
> ttm_bo_vm_fault_reserved which has similar code to this patch. So I
> think this actually a valid fix. Can't be 100% sure though as I quickly
> just reversed engineered this code and TTM.

That's the fault path, which isn't relevant here since you already have
the vma set up. The relevant path is the mmap path, which is common for
all gem drivers nowadays and the lookup handled entirely in the core. Well
except for i915-gem being absolutely massively over the top special in
everything. i915-gem being extremely special here is also why this patch
caught my attention, because it just furthers the divergence instead of at
least stopping. Since we've given up on trying to get i915-gem onto common
code and patterns that's not an option, and the reason why xe exists ...

Anyway that common gem bo mmap code code is in drm_gem_mmap and still only
allows exact matches.

Unless I'm completely blind, it does happen :-)

> We don't have IGT test cases for this in Xe though, we likely should add
> some if mesa is doing this.

I'd expect they would fail ...

Cheers, Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
