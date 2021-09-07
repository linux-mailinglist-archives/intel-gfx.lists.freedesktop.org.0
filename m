Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFE9402E3D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 20:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5EF6E082;
	Tue,  7 Sep 2021 18:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146DB6E082
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 18:14:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="199814319"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="199814319"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 11:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="503181869"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 07 Sep 2021 11:14:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Sep 2021 21:14:40 +0300
Date: Tue, 7 Sep 2021 21:14:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Message-ID: <YTesEIggFQ+5TULb@intel.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
 <87mtoq86ct.fsf@intel.com>
 <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
 <CAKMK7uHeujMMWoo-AJuuksg7HBpQu0oqMEbgDHUx8_rDv2GDng@mail.gmail.com>
 <CAPM=9tysQAgk5Buum5r4y1wYqt4JutmMP+1tn_tnD6ukFcT+NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPM=9tysQAgk5Buum5r4y1wYqt4JutmMP+1tn_tnD6ukFcT+NQ@mail.gmail.com>
X-Patchwork-Hint: comment
Content-Type: text/plain; charset="iso-8859-1"
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

On Tue, Sep 07, 2021 at 07:52:17PM +1000, Dave Airlie wrote:
> On Tue, 7 Sept 2021 at 18:15, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Sep 6, 2021 at 9:45 PM Dave Airlie <airlied@gmail.com> wrote:
> > > On Mon, 6 Sept 2021 at 18:18, Jani Nikula <jani.nikula@linux.intel.co=
m> wrote:
> > > > On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > > > From: Dave Airlie <airlied@redhat.com>
> > > > >
> > > > > This is the first step in an idea to refactor the display code
> > > > > into a bit more of a corner.
> > > >
> > > > So, do we want to make i915->display a pointer?
> > > >
> > > > If we do, and we're about to touch every place accessing the display
> > > > struct, we might just as well have:
> > > >
> > > > struct drm_i915_private {
> > > >         struct drm_i915_display _display;
> > > >         struct drm_i915_display *display;
> > > > };
> > > >
> > > > and initialize i915->display =3D &i915->_display, and make all acce=
ss
> > > > happen via the pointer. If we want to allocate it dynamically at so=
me
> > > > point, it'll be a *much* easier task.
> > > >
> > > > But the first question to figure out is whether we want to do that =
or
> > > > not.
> > >
> > > I think the advantage is that we can hide a lot more structs from the
> > > main struct,
> > > the disadvantage is additional pointer chasing, esp for the drm_devic=
e and other
> > > i915_priv members.
> >
> > For display pointer chasing doesn't matter at all. Imo the case is
> > more what make sense as object hierarchy, and embedding vs pointer has
> > quite different meaning. We've discussed in the past that the split
> > into display/gem with branches seems to work ok-ish, but could
> > probably be improved a lot in code org. If we make display a lot more
> > a free-standing thing (i.e. pointer, not embedding) with a much more
> > clearer/cleaner api contract to other pieces, then maybe there's some
> > case to be made for all this churn.
> =

> I'd like to make it at least have some form of API between display and co=
re/gt.
> =

> I think the main things I've noticed where it's kinda free for all at
> the moment are:
> - display funcs has pm internal funcs, display<->pm funcs, display
> only audio funcs,
> display only color funcs, other display internal funcs all mixed into
> one super struct.

I think the solution for these is mostly just more localized function
pointer structs/etc. Never been a fan of the old catch-all display
funcs thing. Pretty sure I even have eg. a cdclk_funcs struct sitting
in some branch somewhere.

> There's no split between things that provide service to display and vice-=
versa.
> I've started looking at splitting this.
> - tracepoints - i915_trace.h pulls in display and gt stuff, no idea if
> we can split that,
> but lots of things include i915_trace.h which means everyone sees
> everyone elses guts.

Yeah, I've been thinking of splitting this but haven't actually looked
into how feasible it is. The convoluted macro stuff makes it hard to
see how any of it really works, and in the past I did have some real
include order problems with it.

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

