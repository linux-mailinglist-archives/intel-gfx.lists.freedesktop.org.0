Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D354024ED
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 10:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B8D89DA7;
	Tue,  7 Sep 2021 08:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ABAB89DA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 08:15:03 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id r26so11823978oij.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Sep 2021 01:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iyaLNySbhh45lJT//R/2ibyQzwlerV4MwYqvcybxoiI=;
 b=erSvtHL6a+XPvcGTK79Y7SHAx69EBrL5eIEz5SERc5yLwY5grat8RTOHDZqsQcAyjM
 COvtcuR3KKw8Pe7vkRdt15i8cQWm6lMrdEnemLPZb0MFd3GmNTaTixxqcsPLzeJWzNBU
 +tLc1Z76wdaUomY0Ha2F9xyF5rODzuXV1GdzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iyaLNySbhh45lJT//R/2ibyQzwlerV4MwYqvcybxoiI=;
 b=mO687QrfTYbMmcrq72VmwSR/WfIWvSwXgiz6k6ctpt73Qon+KAqThGhMgeWw3HUCdn
 clmNFxs4DuHz4YK/Ftmkau3uVWAG9o7Ermew5jKIsm5RcHd1dk/qOaKCTYbZ10l7F+ix
 du57YT3P1BmpKaXCw6iiMKx9wnOAmPJwZO0GLDoPoA3sZ7YK3FepTU7Wam7KfyvJJ5aB
 xNQ4K6TBVBduKJlHFfoCICyBTtIjWkVv8t3z/CQUD5kuucPOgA/gdeZlxaVTQC7g630c
 AIy9Api5ATIcbavl1JzJCKOvILwEFr+Ezojvp8Klb5A/j0Nsv4QgGTUv2Es9cC9M6IMu
 Bhwg==
X-Gm-Message-State: AOAM533UcnbdDsyoi2hRa2/sNsZZnNRm3wnnbrziGcRZ7s/155D/v8Mq
 pTtyNIr/jUqIGn5k9jWTHRl9mx86f/KPOBnJBkqXBw==
X-Google-Smtp-Source: ABdhPJzwB/hhM1dA/SWJwRK2U7IbtZuhJ/CpG50AL1jAzS+fPGUVitC5wzS3w2xRAbVQSigik2fAG3O9hzuGoiRTY5U=
X-Received: by 2002:aca:3954:: with SMTP id g81mr2057351oia.101.1631002502266; 
 Tue, 07 Sep 2021 01:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
 <87mtoq86ct.fsf@intel.com>
 <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
In-Reply-To: <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 7 Sep 2021 10:14:51 +0200
Message-ID: <CAKMK7uHeujMMWoo-AJuuksg7HBpQu0oqMEbgDHUx8_rDv2GDng@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: move display funcs into a
 display struct.
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

On Mon, Sep 6, 2021 at 9:45 PM Dave Airlie <airlied@gmail.com> wrote:
> On Mon, 6 Sept 2021 at 18:18, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > From: Dave Airlie <airlied@redhat.com>
> > >
> > > This is the first step in an idea to refactor the display code
> > > into a bit more of a corner.
> >
> > So, do we want to make i915->display a pointer?
> >
> > If we do, and we're about to touch every place accessing the display
> > struct, we might just as well have:
> >
> > struct drm_i915_private {
> >         struct drm_i915_display _display;
> >         struct drm_i915_display *display;
> > };
> >
> > and initialize i915->display = &i915->_display, and make all access
> > happen via the pointer. If we want to allocate it dynamically at some
> > point, it'll be a *much* easier task.
> >
> > But the first question to figure out is whether we want to do that or
> > not.
>
> I think the advantage is that we can hide a lot more structs from the
> main struct,
> the disadvantage is additional pointer chasing, esp for the drm_device and other
> i915_priv members.

For display pointer chasing doesn't matter at all. Imo the case is
more what make sense as object hierarchy, and embedding vs pointer has
quite different meaning. We've discussed in the past that the split
into display/gem with branches seems to work ok-ish, but could
probably be improved a lot in code org. If we make display a lot more
a free-standing thing (i.e. pointer, not embedding) with a much more
clearer/cleaner api contract to other pieces, then maybe there's some
case to be made for all this churn.

The problem with all that is that we'd then essentially need to
backpointers everywhere in all display structures: One to the
drm_device provided by base structs, and the other to the i915_display
struct, which is what our code uses. This way display would stay
display. In a way this would then look similarly-ish to amdgpu's DC.

But I'm honestly not sure how much that would improve anything, and
whether it's worth all the churn to make drm/i915/display more
self-contained.
-Daniel

> Has anyone any non-anecdotal knowledge of how bad the latter problem
> actually is?
> Other drivers seem to do a lot of it and nobody has complained about it.
>
> I'm happy to move to a pointer for it all to be honest,
> Dave.



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
