Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 870B727E6C8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 12:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFAD89ED3;
	Wed, 30 Sep 2020 10:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C188289ED3;
 Wed, 30 Sep 2020 10:38:16 +0000 (UTC)
IronPort-SDR: mPQc74XQIiZJyZKmWvCfDgx2ZUPLBFaIW/5K7nOYSn7IOHvFFk5Qluy3LCS5z9zsOg/PD3HGkp
 3KcCvAXe7m5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159803185"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159803185"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 03:38:16 -0700
IronPort-SDR: voHijax8CoRg6bsNAVNbul+w2EUKg78wat9kpWN5/CXtCFDOmT6abSuaF4jG+4aEoV/WXeRJiC
 ZEnpZelBYXZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="350633987"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 30 Sep 2020 03:38:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 13:38:12 +0300
Date: Wed, 30 Sep 2020 13:38:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200930103812.GL6112@intel.com>
References: <20200929121127.254086-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <d235e6f34182e327d8bb46383f6c3ef518b5fc23.camel@intel.com>
 <20200929200201.GH6112@intel.com>
 <a4a075597c7d3e65b25598ab696a59eccbd2a069.camel@intel.com>
 <20200929203022.GI6112@intel.com>
 <20200929210144.GA2214475@mdroper-desk1.amr.corp.intel.com>
 <20200929211148.GJ6112@intel.com> <20200929215958.GK6112@intel.com>
 <20200929233822.GC2214475@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233822.GC2214475@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 04:38:22PM -0700, Matt Roper wrote:
> On Wed, Sep 30, 2020 at 12:59:58AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Sep 30, 2020 at 12:11:48AM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Sep 29, 2020 at 02:01:44PM -0700, Matt Roper wrote:
> > > > On Tue, Sep 29, 2020 at 11:30:22PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Tue, Sep 29, 2020 at 08:20:22PM +0000, Souza, Jose wrote:
> > > > > > On Tue, 2020-09-29 at 23:02 +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > > On Tue, Sep 29, 2020 at 07:33:45PM +0000, Souza, Jose wrote:
> > > > > > > > On Tue, 2020-09-29 at 17:41 +0530, Tejas Upadhyay wrote:
> > > > > > > > > JSL has update in vswing table for eDP
> > > > > > > > =

> > > > > > > > Would be nice to mention in the commit description why PCH =
is being used, that would avoid Ville's question.
> > > > > > > =

> > > > > > > If the thing has nothing to do PCH then it should not use the=
 PCH type
> > > > > > > for the the check. Instead we should just do the EHL/JSL spli=
t.
> > > > > > =

> > > > > > In the first version Matt Roper suggested to use PCH to differe=
ntiate between EHL and JSL, Jani also agreed with this solution.This 2 PCHs=
 can only be
> > > > > > associate with EHL and JSL respectively, so no downsides here.
> > > > > =

> > > > > The downside is that the code makes no sense on the first glance.
> > > > > It's going to generate a "wtf?" exception in the brain and require
> > > > > me to take a second look to figure what is going on. Exception
> > > > > handling is expensive and shouldn't be needed in cases where it's
> > > > > trivial to make the code 100% obvious.
> > > > =

> > > > The bspec documents EHL and JSL as being the same platform and iden=
tical
> > > > in all programming since they are literally the same display IP; th=
is
> > > > vswing table is the one and only place where the two are treated in=
 a
> > > > distinct manner for reasons that lie outside the display controller=
.  If
> > > > you had to stop and take a closer look at the code here, that's a
> > > > probably a good thing since in general there should generally never=
 be a
> > > > difference in the behavior between the two.  Adding an additional
> > > > clarifying comment is probably in order too since this is a very
> > > > exceptional special case.
> > > > =

> > > > If we deviate from the bspec's guidance and try to split IS_ELKHART=
LAKE
> > > > and IS_JASPERLAKE across the whole driver, that's going to be a lot=
 more
> > > > pain to maintain down the road since we'll almost certainly have ca=
ses
> > > > where someone silently leaves one or the other off a condition and =
gets
> > > > unexepcted behavior.  I could see arguments for using a SUBPLATFORM=
 here
> > > > like we do for TGL_U vs TGL_Y, but even that seems like overkill if=
 we
> > > > already have a clear way to distinguish the two cases (PCH pairing)=
 and
> > > > can just leave a clarifying comment.
> > > =

> > > That fixed PCH pairing is totally undocumented AFAICS. And vswing has
> > > nothing to do with the south display, so the wtf will still happen.
> > > Comment or no comment.
> > =

> > Oh and JSP does not show up in bspec even once. MCC appears exactly once
> > where it talks about the differences between MCC and ICL-N PCH (which I
> > guess is the same as JSP?).
> =

> No, ICL-N PCH is something different.  :-(  There were some early test
> chips created that paired the EHL/JSL graphics/media/display IP with an
> ICL PCH just for early debug/test purposes, but that pairing isn't
> something that actually exists as a real platform.
> =

> I think the confusion here arises because most driver developers only
> look at (or have access to) the bspec, which does not aim to document
> end-user platforms, but rather IP families that the
> graphics/media/display hardware IP teams design.  The bspec is not an
> authoritative document for anything that lies outside the GMD IP itself.
> The GMD architects do sometimes try to pull in additional information
> from external teams/sources (such as PCH pairing or the electrical
> details like the vswing programming here) to make life easier for the
> software teams like us that only really deal with the bspec, but that
> information comes from external sources, so it's a bit inconsistent in
> terms of how much detail there is (or even whether it's described at
> all).  We could probably file bspec defects to get them to include the
> PCH pairing details for EHL/JSL in the bspec, but ultimately EHL=3D"EHL
> G/M/D + MCC PCH" and JSL=3D"EHL G/M/D + JSP PCH;" this has already been
> confirmed in an offline email thread with the hardware teams.
> =

> Elkhart Lake and Jasper Lake are two separate end-user platforms, that
> both incorporated the same G/M/D IP design.  The name "Jasper Lake"
> existed as a codename first, so that's the name that shows up in the
> bspec; this wound up being a bit confusing when Elkhart Lake was
> actually the first of the two to be released and thus wound up being the
> name we have in our code.  But the situation seems similar to CHT vs BSW
> which are both referred to as "CHV" in the bspec and in our code
> (although obviously there was no PCH pairing for those SoCs).
> Steppings, workarounds, etc. are unified for EHL/JSL because they're
> literally the same IP, rather than one being a derivative of the other. =

> =

> If you want full details about the PCHs of a platform (most of which is
> unimportant to graphics drivers) or the electrical characteristics that
> feed into the vswing programming then there are other authoritative
> documents that cover that (like the Electrical Design Specification and
> such).  I'm not sure if those documents are posted anywhere publicly;
> fortunately we only need a small amount of information in those areas
> and the GMD architects are often nice enough to try to copy the relevant
> info into the bspec as a courtesy.
> =

> > =

> > Furthermore the spec never really talks about EHL except in very select
> > places. So the IS_ELKHARTLAKE is already totally confusing and IMO more
>  * > likely to cause maintenance problems than the split. Making it
> > IS_JSL||IS_EHL at least gives the reader some hint as to where they
> > should look in the spec.
> > =

> > Another argument why the split is fine is CFL/CML. Those are more
> > or less exactly in the same boat as EHL. Ie. only really mentioned
> > in the "configurations" section. Beyond that only KBL is ever really
> > mentioned. And yet we have separate IS_FOOs for all of them, and
> > apparently no one had any objections to that situation.
> > =

> > tldr;we have an established way to handle these things, so IMO lets
> > just follow it and stop adding special cases.
> =

> Isn't CML graphics a derivative of CFL (rather than being exactly the
> same IP)?

No idea, and I don't really see why it would matter anyway
from a driver developer's POV.

> The fact that we have differences in the GMD IP itself that
> need different workarounds implies that it's not quite the same
> situation we're talking about here (otherwise we'd have been able to
> just check the stepping revision ID).  IS_CML only got split out from
> IS_CFL a couple months ago, so it's probably too soon to see how many
> bugs eventually creep in when developers accidentally leave it off a CFL
> condition or vice versa.
> =

> And we do still unify WHL, AML, etc., in i915 as far as I can see even
> though the IP teams track those platforms separately, so the precedent
> appears to be keeping them combined as far as I can see?

We split when there is any functional difference. Eg. CML was
considered the same as CFL until an actual difference came up,
at which point it was split up.

Now we have an actual difference between EHL and JSL so we
should split. Granted it's a bit annoying to have to do it
just for some vswing tables. Ideally that stuff would be
specified in a sane way by the VBT. But since VBT is generally
useless we need to deal with this on a platform level.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
