Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F79B402686
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 11:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB0689216;
	Tue,  7 Sep 2021 09:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A71C89216
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 09:52:30 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id r7so13067491edd.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Sep 2021 02:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zkK8fMPrVI3V0M8Y2sNr1j0loXfw8eqsDb5rLmxeMzQ=;
 b=jtoWi6SZzEMkrkCUIrnbCSa9hvSQlR+hx5d9AghQ0DmvO0JLv9BOLwfCRN10ZVAU6F
 Va/6M1RBlbvc2qOxt0MmurbhzbV6v4c2PyU9t/HqeJRtVJrR320md5y+JGqMc8xXRbcJ
 pEgAjaNe/vjnfCL6dXpfRKhKah+BpGo0avfg3A8HYbWTluCnAyTiuD89nKNlvY64SB39
 vEJls002HpNnaiWqEnH8fGpQcMRpGUE3tAwEAJ0gV1g2c16jL/ZfOgT060knEulls6Hn
 chuu6Q8oPpnGmfdAx8PdZteDgjdE2BBsXMLLjS8Vl3CY8lGtg3KAQFFyITz0MerCTbiJ
 YaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zkK8fMPrVI3V0M8Y2sNr1j0loXfw8eqsDb5rLmxeMzQ=;
 b=WQO/eaIN+xWoKG4/DyPpE7E24b8ReLUcJDfdAiMvpY5kZ+3Zb3Ovk06EOxKhf+hYKv
 fFOHMPnGdtYGydaXEVb3XqwAgCrkxS+OxKgucU4xAuu+OznxBcpxMPB2P9dzsmx8sLX1
 9yyHV8kyXHYuAu+G5r9FVTCPXMhtnVFdG4JihklJ4p8vXStEB3MOb+Tjso5Dd+ROrfJC
 QHypCEmsRhfLIrjPWTnnaun5NsCaP/9Rd01mKpRgYNdv4YpVdan1QfJidJteey4NZIgs
 WfIpvzje3g1AkMJxRiQBwII9W0XuiVkSQP7ylIcvjuhw3jSwFZ87c/IoU1zeXUcGPnp8
 9d8A==
X-Gm-Message-State: AOAM5328tWnQD3sgYyW6o8wJ8Nc4NnSsgejNKkTVvlQZO0/KMjtG4xDr
 MJgpw0f4q8tbgesMBhnqulOld821zm9ArSxth+K1RGdG
X-Google-Smtp-Source: ABdhPJyVDCa0ut18DKUMu2XhT+b0uV2ZRalXoOZoGnfbTtuy8kteWMveRBVhs0MyhoXY0VJTziEnyB4+3KrrGXtJV+k=
X-Received: by 2002:a05:6402:b0e:: with SMTP id
 bm14mr17618235edb.371.1631008348530; 
 Tue, 07 Sep 2021 02:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
 <87mtoq86ct.fsf@intel.com>
 <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
 <CAKMK7uHeujMMWoo-AJuuksg7HBpQu0oqMEbgDHUx8_rDv2GDng@mail.gmail.com>
In-Reply-To: <CAKMK7uHeujMMWoo-AJuuksg7HBpQu0oqMEbgDHUx8_rDv2GDng@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 7 Sep 2021 19:52:17 +1000
Message-ID: <CAPM=9tysQAgk5Buum5r4y1wYqt4JutmMP+1tn_tnD6ukFcT+NQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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

On Tue, 7 Sept 2021 at 18:15, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Sep 6, 2021 at 9:45 PM Dave Airlie <airlied@gmail.com> wrote:
> > On Mon, 6 Sept 2021 at 18:18, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > > On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > > From: Dave Airlie <airlied@redhat.com>
> > > >
> > > > This is the first step in an idea to refactor the display code
> > > > into a bit more of a corner.
> > >
> > > So, do we want to make i915->display a pointer?
> > >
> > > If we do, and we're about to touch every place accessing the display
> > > struct, we might just as well have:
> > >
> > > struct drm_i915_private {
> > >         struct drm_i915_display _display;
> > >         struct drm_i915_display *display;
> > > };
> > >
> > > and initialize i915->display = &i915->_display, and make all access
> > > happen via the pointer. If we want to allocate it dynamically at some
> > > point, it'll be a *much* easier task.
> > >
> > > But the first question to figure out is whether we want to do that or
> > > not.
> >
> > I think the advantage is that we can hide a lot more structs from the
> > main struct,
> > the disadvantage is additional pointer chasing, esp for the drm_device and other
> > i915_priv members.
>
> For display pointer chasing doesn't matter at all. Imo the case is
> more what make sense as object hierarchy, and embedding vs pointer has
> quite different meaning. We've discussed in the past that the split
> into display/gem with branches seems to work ok-ish, but could
> probably be improved a lot in code org. If we make display a lot more
> a free-standing thing (i.e. pointer, not embedding) with a much more
> clearer/cleaner api contract to other pieces, then maybe there's some
> case to be made for all this churn.

I'd like to make it at least have some form of API between display and core/gt.

I think the main things I've noticed where it's kinda free for all at
the moment are:
- display funcs has pm internal funcs, display<->pm funcs, display
only audio funcs,
display only color funcs, other display internal funcs all mixed into
one super struct.
There's no split between things that provide service to display and vice-versa.
I've started looking at splitting this.
- tracepoints - i915_trace.h pulls in display and gt stuff, no idea if
we can split that,
but lots of things include i915_trace.h which means everyone sees
everyone elses guts.

One problem area I've noticed after hacking on making display more
contained, was for
lots of things dev_priv can go away, however you'd have to duplicate
all the GRAPHICS_
and IS_* macros which might get messy quick, having access to core
stuff like device_info
and params might need more thought.


> The problem with all that is that we'd then essentially need to
> backpointers everywhere in all display structures: One to the
> drm_device provided by base structs, and the other to the i915_display
> struct, which is what our code uses. This way display would stay
> display. In a way this would then look similarly-ish to amdgpu's DC.
>
> But I'm honestly not sure how much that would improve anything, and
> whether it's worth all the churn to make drm/i915/display more
> self-contained.

It might make display more manageable or future proof if we have
distinct interfaces into it, instead of the free for all we have now.

Dave.
