Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A30C9344A05
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F316E4CF;
	Mon, 22 Mar 2021 16:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2036E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:00:15 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id w3so22146720ejc.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 09:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p7bfP/Jv9m+CuKopP6dZiGBXARW+4AF1swxGm5PUXzk=;
 b=hriz/G0V7ghY9dIFj/41Pg2k6G+p5tBKc9w87L7+sd7+sT7DKQsT6JDv3x4F5pFw0Q
 EN4j/WJc1qA3qvz891P1PN5vqDMl1NZQUp90QknkUj66nSc/382PSqhRAv2VTbg9Ywwl
 BZtjHLeZ/Za9XUfypY1y89JEOJWkxxa1PBu0B1th0U3sLWLIap1WTDLtv0G0tn9BPOoH
 UNzC4ptkCKOh9WXUMzcJnS8Jbk8+0/ayiojy2fH5BWm0eQtB+UST3Wwd3sB07+k5dmTY
 v18umsmJ69A2lcojdOf+mAmpjWiv1e/8XxSTcEJ0ZXIiAF7BypgNtr9nvaq6CLSiW9Tb
 YecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p7bfP/Jv9m+CuKopP6dZiGBXARW+4AF1swxGm5PUXzk=;
 b=k759oxln71v+bea06FaIAJCVly1B99IE9oOgPZQmw3HjS3RH65NdxAXPggLo78/Knw
 VRc/EI76Vpz0EWz9a2Oooj6q31BuGsGEaybbv+sthY4RHb+QsYyGVqI5dsJiWSx4PBm1
 5OAWrfpbyDEsPKH9bXNqpQzXg2CSVdNuxchOr4eA4SE+BkGIpNDERHrloQBhocEAwIFD
 krWfRLyGL2bQrqCaDqjxJ4HHOsuiGpwBhe1LelN6zLgPyaRwESK+491gcz3/zii8Kj6K
 Mb9vGOtTWi6SUjHfO9mh8LDywpzYD4xM1qzwjYn6Qu2SIX0mxiXoAZ0e4yWmBxNYbkgB
 /vrA==
X-Gm-Message-State: AOAM532MvYuXfsSmjz5UtdRGUH5odigJP30mVyAjNvm+d6E7ATIIA4PE
 sB2wCyZanSLboKzhKIYJVSahIGv9r9/STaEWJQiKF635Pmo=
X-Google-Smtp-Source: ABdhPJxOhe6OnCFs++7sRVt0TsMFCWX8uJAGqUXVk54Cl0rBF+Fhwwc4VLQaPMogTyJcpimM2YVLX80CXV9/fo2p0LY=
X-Received: by 2002:a17:906:f2d2:: with SMTP id
 gz18mr480359ejb.454.1616428813734; 
 Mon, 22 Mar 2021 09:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <20210319223856.2983244-2-jason@jlekstrand.net>
 <CAOFGe94ggJUBH_+bbxAVLUge8NZQYHK55ZzjnQ2erXhh+r8c=A@mail.gmail.com>
 <CAM0jSHPZCAJwaNHWPpKW1xhbm4Y8rBuQeWf+=egmY7VTKXaLwg@mail.gmail.com>
In-Reply-To: <CAM0jSHPZCAJwaNHWPpKW1xhbm4Y8rBuQeWf+=egmY7VTKXaLwg@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 22 Mar 2021 11:00:02 -0500
Message-ID: <CAOFGe95m-wS4yo25cC_zFvxkYnY4AE-o-gadmtuMixy5HP3M+A@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Drop
 I915_CONTEXT_PARAM_RINGSIZE
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
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 5:52 AM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Sat, 20 Mar 2021 at 14:48, Jason Ekstrand <jason@jlekstrand.net> wrote:
> >
> > On Fri, Mar 19, 2021 at 5:39 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> > >
> > > This reverts commit 88be76cdafc7e60e2e4ed883bfe7e8dd7f35fa3a.  This API
> > > has never been used by any real userspace.
> >
> > After further digging, there is a compute-runtime PR for this.  I
> > still think we should drop it and I've updated the commit message
> > locally with the following rationale:
> >
> >     This reverts commit 88be76cdafc7e60e2e4ed883bfe7e8dd7f35fa3a.  This API
> >     was originally added for OpenCL but the compute-runtime PR has sat open
> >     for a year without action so we can still pull it out if we want.  I
> >     argue we should drop it for three reasons:
> >
> >      1. If the compute-runtime PR has sat open for a year, this clearly
> >         isn't that important.
> >
> >      2. It's a very leaky API.  Ring size is an implementation detail of the
> >         current execlist scheduler and really only makes sense there.  It
> >         can't apply to the older ring-buffer scheduler on pre-execlist
> >         hardware because that's shared across all contexts and it won't
> >         apply to the GuC scheduler that's in the pipeline.
>
> Just a drive-by-comment. I thought the lrc model was shared between
> execlists and the GuC, so in both cases we get something like a ring
> per engine per context which the driver can emit commands into. Why
> doesn't ring size still apply with the GuC scheduler?

Even if they both have a ring in some sense, the number of bytes which
correspond to a single request is going to be different and that
difference isn't visible to userspace so bytes is the wrong unit.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
