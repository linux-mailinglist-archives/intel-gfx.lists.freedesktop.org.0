Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C6236EF9D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 20:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4FB6F428;
	Thu, 29 Apr 2021 18:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D086F428
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 18:42:01 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id u17so101488325ejk.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 11:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kNrwZrhUN67pxODdsCBIg72qxjj7x299L+dsb3H5BVU=;
 b=TyvV6vAujrXLbj63zAmtl1GETcayDysFgjw5mKKFWXvBk940asPJuPamOsGRtakbBL
 T5x5dQSRU/odPWfL/WsMRsq62mAk4W4G9OZjMJsJlJpswX+ug9NjF+HGgN0ovZRVra7Z
 0t/GOfFkF9S1pQlygCr2n1oTT0W8MgnQc8HO5HorpIaJlgLNVIL9jBREuW5FS1HA5ETV
 dJGhBNPkPyV4P/g9tzabedYX4+WiKeT4a02BcDJBrB2isJ/WZRwSDy8T586Q9AChzfYA
 4bBjpOMUfI4m2S0nV1QRsbzxlcS52F1ckANAwQ30x8uUPYLXa89w4L+sVhDoBmnsvLIP
 SYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kNrwZrhUN67pxODdsCBIg72qxjj7x299L+dsb3H5BVU=;
 b=GVZ6Bkv2GRjPrgCxmbxSSlFfpBCGknG8llXHRlam96H9v4pDdWAjaux+0tQUfmch+0
 awXlFDzv00Kfjc1RloYeGpZAFabItKPXjjq3h5FfLB6bjGvjqWa4F9Quqpcl3R22pICt
 hzeI8VrF6YRgIxUxgRPQxMgMKVwPEQaHnfPK9mrfvIKwi38GuPbHWc06S4v8rGgDggzH
 WvFPTj0uC8LGwjTBEptEmbyhfEAx2CrfMLOZgMAoar0Q+Hs+1v1c9u4u1X3jkcfO9lE2
 E5E1hTuR/g55rSgJwkY1oBA6rpM5FMNuZxYJcGW8nO+DAca1oEI+qBOFhXCzq95RWeL9
 Hc2w==
X-Gm-Message-State: AOAM531SSMQsboN9BsYMHTpn7Py2990zjGLOA2cYf0OwRNH1SpGwyWCk
 5MWPYDkCu8E5gx9AoIKM2/+kJmmKCh17EWeL6ANQjA==
X-Google-Smtp-Source: ABdhPJzkBHNfHJlsNfKATe+5OoRKWvfPal2KDLdzClpc6p51R5K3oxkPQx7q2qcj7uQ/G0kxKK/F35O50f2z7zSleQU=
X-Received: by 2002:a17:906:5c52:: with SMTP id
 c18mr1442693ejr.354.1619721720517; 
 Thu, 29 Apr 2021 11:42:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-4-jason@jlekstrand.net>
 <417fe44a-61f9-c90a-c255-309db5bb48ab@linux.intel.com>
 <CAOFGe96jXtyx2-hiYBmZPFqSx1G32Ph7SGguJQ=ZD4im=ZPJ5A@mail.gmail.com>
 <19ee110c-f251-20b1-5ca8-d280b724ccbf@linux.intel.com>
 <CAOFGe95D81vvT1AQPF_sbqWQMZAJeZmr92xgd2m=GZY4TxGYUw@mail.gmail.com>
 <YIro5QLQQcf0CI4v@phenom.ffwll.local> <YIrpKQPXSCUUaDiI@phenom.ffwll.local>
In-Reply-To: <YIrpKQPXSCUUaDiI@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 29 Apr 2021 13:41:48 -0500
Message-ID: <CAOFGe97tPwX1sDbdLdpWU0935PCFmvHLmgiiDP2cGmmGy8t1BQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915/gem: Set the watchdog
 timeout directly in intel_context_set_gem
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

On Thu, Apr 29, 2021 at 12:13 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Thu, Apr 29, 2021 at 07:12:05PM +0200, Daniel Vetter wrote:
> > On Thu, Apr 29, 2021 at 09:54:15AM -0500, Jason Ekstrand wrote:
> > > On Thu, Apr 29, 2021 at 3:04 AM Tvrtko Ursulin
> > > <tvrtko.ursulin@linux.intel.com> wrote:
> > > >
> > > >
> > > > On 28/04/2021 18:24, Jason Ekstrand wrote:
> > > > > On Wed, Apr 28, 2021 at 10:55 AM Tvrtko Ursulin
> > > > > <tvrtko.ursulin@linux.intel.com> wrote:
> > > > >> On 23/04/2021 23:31, Jason Ekstrand wrote:
> > > > >>> Instead of handling it like a context param, unconditionally set it when
> > > > >>> intel_contexts are created.  This doesn't fix anything but does simplify
> > > > >>> the code a bit.
> > > > >>>
> > > > >>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > >>> ---
> > > > >>>    drivers/gpu/drm/i915/gem/i915_gem_context.c   | 43 +++----------------
> > > > >>>    .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 --
> > > > >>>    drivers/gpu/drm/i915/gt/intel_context_param.h |  3 +-
> > > > >>>    3 files changed, 6 insertions(+), 44 deletions(-)
> > > > >>>
> > > > >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > >>> index 35bcdeddfbf3f..1091cc04a242a 100644
> > > > >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > > >>> @@ -233,7 +233,11 @@ static void intel_context_set_gem(struct intel_context *ce,
> > > > >>>            intel_engine_has_timeslices(ce->engine))
> > > > >>>                __set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
> > > > >>>
> > > > >>> -     intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
> > > > >>> +     if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
> > > > >>> +         ctx->i915->params.request_timeout_ms) {
> > > > >>> +             unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
> > > > >>> +             intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
> > > > >>
> > > > >> Blank line between declarations and code please, or just lose the local.
> > > > >>
> > > > >> Otherwise looks okay. Slight change that same GEM context can now have a
> > > > >> mix of different request expirations isn't interesting I think. At least
> > > > >> the change goes away by the end of the series.
> > > > >
> > > > > In order for that to happen, I think you'd have to have a race between
> > > > > CREATE_CONTEXT and someone smashing the request_timeout_ms param via
> > > > > sysfs.  Or am I missing something?  Given that timeouts are really
> > > > > per-engine anyway, I don't think we need to care too much about that.
> > > >
> > > > We don't care, no.
> > > >
> > > > For completeness only - by the end of the series it is what you say. But
> > > > at _this_ point in the series though it is if modparam changes at any
> > > > point between context create and replacing engines. Which is a change
> > > > compared to before this patch, since modparam was cached in the GEM
> > > > context so far. So one GEM context was a single request_timeout_ms.
> > >
> > > I've added the following to the commit message:
> > >
> > > It also means that sync files exported from different engines on a
> > > SINGLE_TIMELINE context will have different fence contexts.  This is
> > > visible to userspace if it looks at the obj_name field of
> > > sync_fence_info.
> > >
> > > How's that sound?
> >
> > If you add "Which media-driver as the sole user of this doesn't do" then I
> > think it's perfect.
>
> Uh I think you replied to the wrong thread :-)

Indeed!

> This here is about watchdog, not timeline.
> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
