Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F914367363
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 21:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF30889E0E;
	Wed, 21 Apr 2021 19:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517B689E0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 19:23:18 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id n184so17453759oia.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 12:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8IJKDGX3BTvu2536eJ67tHTzeSLOA/Ecu0T5dQbV8lc=;
 b=G1Ph1HfYcQ0Ht2rQkf38XCSSASuD0vCqwozPbCXcULanhanq+lo5eKglE4ZrXhowfx
 BY+38EFMXl9/ivTpRFGDpkaNQiCqohWaiLlgBeaLK6ErxxTxP5i7FnBUhjxbC2sA/fzG
 SNob5iS/1Yo/8G8uv6kDL5HxdlCxOuvSDMfS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8IJKDGX3BTvu2536eJ67tHTzeSLOA/Ecu0T5dQbV8lc=;
 b=spDf3WZPeOXexZcQU230L8Bsvzhr8Rqm00gmsWzXN26F2JZamI1p6umtb1uGp3HVIW
 pHo+6iLsi1GYaynebWbsdjNrYovDTECXO4U0Rz/27oaVf/OFq2qZc0WWjn3xRLWbYrCF
 /7ZsAU7h4odM1xsEENfXDqyCBhxacYGfCALPQ+VjiFAz1f2RyskdJWVnulSCz34XcP1G
 vS8E6F9Ezh4WOZdg8ZWAZ4467xs/TSNJJAnAXSXqBKJcVJrCGrK8k4JzDdNp5DTaUEmu
 CLFHAlU+Q72Ve5d1pN3zjpkYySOPyh+2fQtEDNqTnmJsGDluxjsNu0hlvzEeax6MN4cz
 Aibg==
X-Gm-Message-State: AOAM531h628Qcw/uOfH/i0Degh7AJHbcrHYUmgrwLPcZuiPJ9LVUzX4u
 7rN33gj53XPizeKNcCHkAWaADWF0vK2Gw3CWoLpVsg==
X-Google-Smtp-Source: ABdhPJxoneVp2Y10jSZuthYbRZxrdkwsP9I6vXBPT1TcWPNnq2xxkxh891DQaZ6xKBcDpKYCOAu9xKqH8hmzLJDM02I=
X-Received: by 2002:a05:6808:9b0:: with SMTP id
 e16mr7264334oig.128.1619032997662; 
 Wed, 21 Apr 2021 12:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210415155958.391624-1-matthew.auld@intel.com>
 <20210415155958.391624-4-matthew.auld@intel.com>
 <CAOFGe96QALJa4FbWkVxczTdOA6b41zk1GxdYwRsrP7GwSZ4zvw@mail.gmail.com>
 <6cf790c7-84bf-4d35-c1c3-4cf826655faf@intel.com>
 <CAOFGe95gMUuqXX=Yn_xMRVxQmcwiqNEN0m3PgyNACcm0iNTyKg@mail.gmail.com>
 <5a412489-75ed-e971-0e0b-388f0f964fac@linux.intel.com>
 <CAOFGe97HuFOe08ttq7yyuiTVphjvwRB2542at6uEEb5YX671Rw@mail.gmail.com>
 <db6f3015-654b-17fa-0d72-4339c4ab338d@linux.intel.com>
 <CAOFGe95FqvMnnH82o_uQtffpFNKarB0Gvs+vLkhQ-UKjiXO0Mg@mail.gmail.com>
 <5c572f88-dac8-5b00-e75b-209a772e4082@linux.intel.com>
 <CAOFGe97BCf8YKUkJcXHFumv4aF44N91Y19CX4XUhOcLu-9gWyA@mail.gmail.com>
 <9841933a-e3ae-eabf-bcbe-88602378c88f@linux.intel.com>
In-Reply-To: <9841933a-e3ae-eabf-bcbe-88602378c88f@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Apr 2021 21:23:06 +0200
Message-ID: <CAKMK7uG+7we_mtTs7TDDWTecqbzzha8UBPVuhZm0EwrGpiCC7A@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [Mesa-dev] [PATCH v3 4/4] drm/doc/rfc: i915 DG1 uAPI
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 21, 2021 at 8:28 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
> On 21/04/2021 18:17, Jason Ekstrand wrote:
> > On Wed, Apr 21, 2021 at 9:25 AM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >> On 21/04/2021 14:54, Jason Ekstrand wrote:
> >>> On Wed, Apr 21, 2021 at 3:22 AM Tvrtko Ursulin
> >>> <tvrtko.ursulin@linux.intel.com> wrote:
> >>>> On 20/04/2021 18:00, Jason Ekstrand wrote:
> >>>> I am not claiming to know memory region query will end up the same, and
> >>>> I definitely agree we cannot guess the future. I am just saying rsvd
> >>>> fields are inconsequential really in terms of maintenance burden and
> >>>> have been proven useful in the past. So I disagree with the drive to
> >>>> kick them all out.
> >>>
> >>> Sure, it doesn't cost anything to have extra zeros in the struct.
> >>> However, if/when the API grows using rsvd fields, we end up with "if
> >>> CAP_FOO is set, rsvd[5] means blah" which makes for a horribly
> >>> confusing API.  As a userspace person who has to remember how to use
> >>> this stuff, I'd rather make another call or chain in a struct than try
> >>> to remember and/or figure out what all 8 rsvd fields mean.
> >>
> >> Well it's not called rsvd in the uapi which is aware of the new field
> >> but has a new name.
> >
> > Are we allowed to do that?  This is a genuine question.  When I've
> > tried in the past (cliprects), I was told we couldn't rename it even
> > though literally no one had used it in code for years.
>
> Well we did the union for pad_to_size so I thought we are allowed that
> trick at least. From my experience backward source level compatibility
> is not always there even with things like glibc. Despite that, are we
> generally required to stay backward source compatible I will not claim
> either way.

I think the anonymous union with exactly same sized field is ok. We
also try hard to be source compatible, but we have screwed up in the
past and shrugged it off. The one example that comes to mind is
extended structures at the bottom with new field, which the kernel
automatically zero-extends for old userspace. But when you recompile,
your new-old userspace might no longer clear the new fields because
the ioctl code didn't start out by memset()ing the entire struct.

But by&large we managed to not botch things up on source compat, but
it's definitely a lot tricker than ABI compat.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
