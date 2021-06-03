Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB43539A469
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 17:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F4FF6E0D5;
	Thu,  3 Jun 2021 15:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5586E0EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 15:20:52 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id x6so9309260ybl.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 08:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+ayR+oC2ZCFKyXSE4/7tCBP1MfALSswdduEpz8GZerc=;
 b=NElpKBptFZbTDMXan23Mnqj0BrbJdvPhV8W+DQXUML46ULiH1SstwZbM1mimNlFfgw
 Pvr6NaGNgze5HdZIRCkUei5uHloYe+Cwmj33zMfJfOcQMvpJAuDnl7tJPTjCag2G2olS
 GdE/IBmnjMURsSLZdX031SJmEzJ8OB1oXrxVEt3aybm0MEdEpsBdGaonO7WGOK5e89bR
 mYMShUCAQ6lth31cXqBH5sSEGLfGcmbn15kwVd0Rm9sSCwC4QrtdMV8AWvENcEINiFpc
 XmgY8enECpHT8+bcrpeh2QeklKHCp5QGA+ja2xIRJrD3uUJE/OR6T5BuYBoZJnyn0mI7
 NFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+ayR+oC2ZCFKyXSE4/7tCBP1MfALSswdduEpz8GZerc=;
 b=QwbCGmfElh9jIZ3VYoGCEHXwmR6yMop5IbS9iv7egY6yI8qYRMlIbRzVfzF2PV99Dn
 1MC92SQA5DBSrVrq4Hx8WhzxT1K6QEVSmqkVbaAqOn706l7KhtsFLlXkvcTavLjbgFoU
 0ZKks+8Jxlzk8LDpRv9uadzg7Dl9UBYV3YTzuqRPuF5gyxYG85dR9NxQwpv5HFuEOitA
 BvfTyCwlEgjbiSFqM0uawCkKogVoGBs7Vh896t7PXpyV+o21qT1CwlH5hPAAQPhC3Acb
 BxuTzo5U8C7TQleEFdimvHwKSfeTO0BqDseQx0pnCK86sFhpt5IGVrwnXIgkYcPRHces
 A1Rg==
X-Gm-Message-State: AOAM532EEgZIo1VT/9LbHMk44C9VpN3App0R+esPmibg8VxfuakrbO+U
 +Zoy/ud00zQ9wlNwjSRWLREqBsh5m/Sr3tbhrYFYEQ==
X-Google-Smtp-Source: ABdhPJz1uxXV2HvKlEryO48j6H9WVHqK2SCo6XIyvkynEWGc3K+9WFLqTJMcFkrA2sDOASxkCOMj6WE9Tu0Dox76OyY=
X-Received: by 2002:a25:cd85:: with SMTP id d127mr687297ybf.432.1622733651962; 
 Thu, 03 Jun 2021 08:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210602164149.391653-1-jason@jlekstrand.net>
 <20210602164149.391653-2-jason@jlekstrand.net>
 <YLiRYMZQjTwLzkbM@phenom.ffwll.local>
In-Reply-To: <YLiRYMZQjTwLzkbM@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 3 Jun 2021 10:20:40 -0500
Message-ID: <CAOFGe94CzTkL9mfBfCjL339+T30mNVFtufzS5gzv1NHXvfOCiA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Revert "drm/i915/gem:
 Asynchronous cmdparser"
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

On Thu, Jun 3, 2021 at 3:22 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Wed, Jun 02, 2021 at 11:41:45AM -0500, Jason Ekstrand wrote:
> > This reverts 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser").  The
> > justification for this commit in the git history was a vague comment
> > about getting it out from under the struct_mutex.  While this may
> > improve perf for some workloads on Gen7 platforms where we rely on the
> > command parser for features such as indirect rendering, no numbers were
> > provided to prove such an improvement.  It claims to closed two
> > gitlab/bugzilla issues but with no explanation whatsoever as to why or
> > what bug it's fixing.
> >
> > Meanwhile, by moving command parsing off to an async callback, it leaves
> > us with a problem of what to do on error.  When things were synchronous,
> > EXECBUFFER2 would fail with an error code if parsing failed.  When
> > moving it to async, we needed another way to handle that error and the
> > solution employed was to set an error on the dma_fence and then trust
> > that said error gets propagated to the client eventually.  Moving back
> > to synchronous will help us untangle the fence error propagation mess.
> >
> > This also reverts most of 0edbb9ba1bfe ("drm/i915: Move cmd parser
> > pinning to execbuffer") which is a refactor of some of our allocation
> > paths for asynchronous parsing.  Now that everything is synchronous, we
> > don't need it.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
>
> This needs the same Cc: stable and Fixes: lines as the dma_fence error
> propagation revert. Otherwise the cmd parser breaks, which isn't great.

Done.  I may have to create multiple versions of this patch for Greg
but I can do that.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
