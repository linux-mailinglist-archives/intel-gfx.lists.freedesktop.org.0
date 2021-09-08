Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A49D740320D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4B36E0EA;
	Wed,  8 Sep 2021 01:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621496E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 01:05:50 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id q3so514472edt.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Sep 2021 18:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+uZmfpHFE9QRV2rxgWrLNcXBNxzw1b/k9b3K1bgP/0w=;
 b=g2M+Xk26T9XngMyVomCnH+bZBq7GndxkgLJ5yezWddv3oEL1jJ+4+BGLWo41NTZgUT
 2PNPrGo1rFDkLAj/zIQTjoh+w3It8aHWKWrhj0My25HmnS9rssmKvp0QrRDH2J+dBJ3H
 ME2Mh2MPOCogJ4BkdYJGiu+6FnXj66EVW2a/hVWTY6W5qwGfQz+TjF/6Pe/6KzMR8Tbi
 NQPNTMcDa/oN+oPOCbnobSZwk35cqlH1P23UsEEvjwC3uof8nejf6FhlAg4FbbcySVzY
 M7tNSQPaCLVvUvgi8ySU3FpNuBEJBXtxCRX1SNr3iOC/52POEQbtoc0Vy8RO9TIvc/Fj
 hksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+uZmfpHFE9QRV2rxgWrLNcXBNxzw1b/k9b3K1bgP/0w=;
 b=KGan8SScd2IarvvwGMo2031wBRORzSEQYVmxunyUFeqYVXm/Akb1YloiXSJ8X0vUOV
 5Qb/J17rpfNNTRA6ObuOjX8LTpwqu0itCjTfRYALh9Poa8WsOypH9XBMHu/rA3zfZKYa
 z6JKFmYdkqWi3B6JDEar6o8XWNjU/tpDQ2he7SXJcya/XblOuu6R3yRB9QUpRAKKjp7a
 RMG7etm+8eXIp+2XkxOg7hKBqepcG5d2NhRi+faX0EvUxZIGuB+GHwa3PyRJ9oUQb5ZC
 TaPtBndN3DJSmN7MHRwsF4MhVgCXH2FD5G43CEcS6G+W5NmhjPg9K3ovQyIgN8Vi1psK
 9SDg==
X-Gm-Message-State: AOAM531Y1HPCNSXEIk9BYinhgvNjWqonA9U4KVgBQFGekoVQq1L1CfSD
 taOMnkeWyYm5YlJJKRFBHdHWgIyVic9pFgs5Yn0=
X-Google-Smtp-Source: ABdhPJw6ddMWFZoecDt9YcTBtBqRoDrtnltyUWooWZW8lQL6MJol/okcu6UFnUJXxUQY/qVrlSp8zr6DJqCE/tLH8us=
X-Received: by 2002:a05:6402:b0e:: with SMTP id
 bm14mr1138862edb.371.1631063148744; 
 Tue, 07 Sep 2021 18:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
 <87mtoq86ct.fsf@intel.com>
 <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
 <CAKMK7uHeujMMWoo-AJuuksg7HBpQu0oqMEbgDHUx8_rDv2GDng@mail.gmail.com>
 <CAPM=9tysQAgk5Buum5r4y1wYqt4JutmMP+1tn_tnD6ukFcT+NQ@mail.gmail.com>
 <YTesEIggFQ+5TULb@intel.com>
In-Reply-To: <YTesEIggFQ+5TULb@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 8 Sep 2021 11:05:37 +1000
Message-ID: <CAPM=9txzT1nGRhstj8wqHYdjXK8FFX0U9eGOusaCivTWNjBf9g@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, 8 Sept 2021 at 04:14, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@intel.=
com> wrote:
>
> On Tue, Sep 07, 2021 at 07:52:17PM +1000, Dave Airlie wrote:
> > On Tue, 7 Sept 2021 at 18:15, Daniel Vetter <daniel@ffwll.ch> wrote:
> > >
> > > On Mon, Sep 6, 2021 at 9:45 PM Dave Airlie <airlied@gmail.com> wrote:
> > > > On Mon, 6 Sept 2021 at 18:18, Jani Nikula <jani.nikula@linux.intel.=
com> wrote:
> > > > > On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > > > > From: Dave Airlie <airlied@redhat.com>
> > > > > >
> > > > > > This is the first step in an idea to refactor the display code
> > > > > > into a bit more of a corner.
> > > > >
> > > > > So, do we want to make i915->display a pointer?
> > > > >
> > > > > If we do, and we're about to touch every place accessing the disp=
lay
> > > > > struct, we might just as well have:
> > > > >
> > > > > struct drm_i915_private {
> > > > >         struct drm_i915_display _display;
> > > > >         struct drm_i915_display *display;
> > > > > };
> > > > >
> > > > > and initialize i915->display =3D &i915->_display, and make all ac=
cess
> > > > > happen via the pointer. If we want to allocate it dynamically at =
some
> > > > > point, it'll be a *much* easier task.
> > > > >
> > > > > But the first question to figure out is whether we want to do tha=
t or
> > > > > not.
> > > >
> > > > I think the advantage is that we can hide a lot more structs from t=
he
> > > > main struct,
> > > > the disadvantage is additional pointer chasing, esp for the drm_dev=
ice and other
> > > > i915_priv members.
> > >
> > > For display pointer chasing doesn't matter at all. Imo the case is
> > > more what make sense as object hierarchy, and embedding vs pointer ha=
s
> > > quite different meaning. We've discussed in the past that the split
> > > into display/gem with branches seems to work ok-ish, but could
> > > probably be improved a lot in code org. If we make display a lot more
> > > a free-standing thing (i.e. pointer, not embedding) with a much more
> > > clearer/cleaner api contract to other pieces, then maybe there's some
> > > case to be made for all this churn.
> >
> > I'd like to make it at least have some form of API between display and =
core/gt.
> >
> > I think the main things I've noticed where it's kinda free for all at
> > the moment are:
> > - display funcs has pm internal funcs, display<->pm funcs, display
> > only audio funcs,
> > display only color funcs, other display internal funcs all mixed into
> > one super struct.
>
> I think the solution for these is mostly just more localized function
> pointer structs/etc. Never been a fan of the old catch-all display
> funcs thing. Pretty sure I even have eg. a cdclk_funcs struct sitting
> in some branch somewhere.

I've just posted a series cleaning this out, I've got some followups
that more of an RFC
https://cgit.freedesktop.org/~airlied/linux/log/?h=3Ddrm-i915-display-funcs=
-constify
(the last 7 patches there).

Those move the struct defs that are internal vtables into the display heade=
rs.

> > There's no split between things that provide service to display and vic=
e-versa.
> > I've started looking at splitting this.
> > - tracepoints - i915_trace.h pulls in display and gt stuff, no idea if
> > we can split that,
> > but lots of things include i915_trace.h which means everyone sees
> > everyone elses guts.
>
> Yeah, I've been thinking of splitting this but haven't actually looked
> into how feasible it is. The convoluted macro stuff makes it hard to
> see how any of it really works, and in the past I did have some real
> include order problems with it.

Yeah I started looking yesterday and ran into macro pain, I might try
another run at it.

Dave.
