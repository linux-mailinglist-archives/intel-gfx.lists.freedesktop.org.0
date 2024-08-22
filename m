Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5973F95B239
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 11:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6B310E839;
	Thu, 22 Aug 2024 09:50:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="LIYIDL4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29AF10E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 09:50:01 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5bef4d9e7f8so933959a12.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 02:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1724320200; x=1724925000; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2YGsehbOKtBbYeuaH2Ggxsq9jjGQjvJWiz4pI6jUv+8=;
 b=LIYIDL4wcdggYyLTBkDuoWQsfrfA55cjVz5c3o62q/Vxl2SUbTO39dKRKFe7kolGs6
 H4WfVzCTfXUUK2hR4pgz3qRitiXcMLV1KEdSDTg4j6EfsO7APOAelagBkFeAlNuFHm/n
 S1O6orNKUQfDToKCw+9gKu5RUuSVYgAqUfvi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724320200; x=1724925000;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2YGsehbOKtBbYeuaH2Ggxsq9jjGQjvJWiz4pI6jUv+8=;
 b=m75orpGCLslaULh3yC+u7W/7NhKhS8i4jpvZGj1ZZMPycojqhz8wkWLW3obhE4TXJj
 futG9eRBLfVCk+dlYI7Bx5tSQ8D6SkmJ3ZhBncvnTI/k7xpIXDli+B6gTcfvE8VLfait
 +Vm7J1iC7bhpojgXYYCbT/dQQzFBNUeROvQ35QESFRu0mzdksldBUcKpWo+1xag6Aewy
 ApGWijGal/Pm84NUht7xTLbSFpGTCWVMx+Q7Xl8cPKO5AhrhvlUFtSUAklsuWAIXELHl
 YVg+TrNdIgMqvvWUnQYuywPF3AOy6NRLgk08P8kmrG1y7cgknT3B5D+zDHG2L/1GRrUK
 8uSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9fJZBuRc0/DWSKSm3n6JwPcRL+LNwsCqeukyZlsid0Y2Qpm7A9zGMguoC4XKPLmThvDK2PRSxLJQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9fySSQA8zMHxcnD9+xEq0oDtUB0YKUjkyN4AHdL5H+bvfNYbW
 vpwvD9fBlrdGoVJ/Gu1VwtL2CA6dpJzumbQHgDAd7NweloEKj4PqkPP7bjmg0EU=
X-Google-Smtp-Source: AGHT+IGrYhZDLmGxitTB2zrrZuH6crvfqK5M+J9MwEjeRTNJFeJKt1KHoeIXQ+3uwo68zCWhGt2Elg==
X-Received: by 2002:a17:907:86a9:b0:a86:8cfe:ec0e with SMTP id
 a640c23a62f3a-a868cfeef2dmr147420066b.36.1724320199666; 
 Thu, 22 Aug 2024 02:49:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f47c68bsm93051666b.155.2024.08.22.02.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 02:49:59 -0700 (PDT)
Date: Thu, 22 Aug 2024 11:49:57 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sima <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH v2 0/2] Allow partial memory mapping for cpu memory
Message-ID: <ZscJxR12ANaAaZmF@phenom.ffwll.local>
References: <20240814134837.116498-1-andi.shyti@linux.intel.com>
 <ZrzWJiJ2Yr0DJPG2@DUT025-TGLU.fm.intel.com>
 <ZsNhua9FIrDT92-r@ashyti-mobl2.lan>
 <ZsN4ldv+LdyJJ0nO@DUT025-TGLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZsN4ldv+LdyJJ0nO@DUT025-TGLU.fm.intel.com>
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

On Mon, Aug 19, 2024 at 04:53:41PM +0000, Matthew Brost wrote:
> On Mon, Aug 19, 2024 at 05:16:09PM +0200, Andi Shyti wrote:
> > Hi Matt,
> > 
> > On Wed, Aug 14, 2024 at 04:07:02PM +0000, Matthew Brost wrote:
> > > On Wed, Aug 14, 2024 at 03:48:32PM +0200, Andi Shyti wrote:
> > > > I am resending this patch series, not to disregard the previous
> > > > discussions, but to ensure it gets tested with the IGTs that
> > > > Krzysztof has provided.
> > > > 
> > > > This patch series finalizes the memory mapping fixes and
> > > > improvements by enabling partial memory mapping for CPU memory as
> > > > well.
> > > > 
> > > > The concept of partial memory mapping, achieved by adding an
> > > > object offset, was implicitly introduced in commit 8bdd9ef7e9b1
> > > > ("drm/i915/gem: Fix Virtual Memory mapping boundaries
> > > > calculation") for GTT memory.
> > > > 
> > > > To address a previous discussion with Sima and Matt, this feature
> > > > is used by Mesa and is required across all platforms utilizing
> > > > Mesa. Although Nirmoy suggested using the Fixes tag to backport
> > > 
> > > Other vendors than Intel too?
> > 
> > Yes, that's what I understood.
> > 
> > I hope Lionel can jump in and explain the use cases from Mesa
> > perspective.
> > 
> 
> Hearing from Lionel would be helpful.

I'm pretty sure there's no other driver doing this except i915-gem.

> > > > this to previous kernels, I view this as a new feature rather
> > > > than a fix.
> > > > 
> > > > Lionel, please let me know if you have a different perspective
> > > > and believe this should be treated as a bug fix, requiring it
> > > > to be backported to stable kernels.
> > > > 
> > > > The IGTs have been developed in collaboration with the Mesa team
> > > > to replicate the exact Mesa use case[*].
> > > > 
> > > > Thanks Chris for the support, thanks Krzysztof for taking care of
> > > > the IGT tests, thanks Nirmoy for your reviews and thanks Sima and
> > > > Matt for the discussion on this series.
> > > > 
> > > > Andi
> > > > 
> > > > [*] https://patchwork.freedesktop.org/patch/608232/?series=137303&rev=1
> > > 
> > > So here is really quick test [1] which I put together in Xe to test
> > > partial mmaps, not as complete as the i915 one though.
> > > 
> > > It fails on the Xe baseline.
> > > 
> > > It pass if with [2] in drm_gem.c:drm_gem_mmap. Blindly changing that
> > > function might not be the correct solution but thought I'd share as a
> > > reference.
> > 
> > Thanks for sharing it. I took a quick look and I think there are
> > a few things missing there. If you want and if this is not in
> > anyone's task list, I can try to "port" this in XE.
> > 
> 
> That would be great as I'm sure you undertstand what needs to be done
> the best. Thanks for volunteering here.
> 
> > Is there any other objection to getting this merged into i915?
> >
> 
> No as long as sima is ok with it, and we prioritize this for Xe as I
> don't want to remove force probe with an incongruence in behavior from
> the i915 or have a mesa use case broken.

I've actually gone back to the ggtt fix, and I don't see the security
aspect. Like sure if you do a partial unmap you screw up the offset
calculation and get unexpected aliasing and a mess and the igt you've
linked will fail. But I don't see how that's a security bug?

And if it is, then it's a drm wide issue, because they all work like that.
And so probably we need a drm wide fix first.

So yeah I'm still stuck on the fundamentals here of why this is even done.

And for the uapi extension of allowing partial mmaps, we need the full
uapi dance. Which means some driver flag so userspace can figure out this
is supported, and a link to the mesa MR that uses this all.

Without a link to a mesa MR this won't go anywhere, because that's the
rules for new uapi.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
