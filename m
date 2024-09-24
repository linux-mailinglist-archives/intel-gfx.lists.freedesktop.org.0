Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB3A9846F8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 15:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5CF10E6EC;
	Tue, 24 Sep 2024 13:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E27z2yWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9C810E6EC;
 Tue, 24 Sep 2024 13:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727185439; x=1758721439;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=avoZf59BDJUzY4KodOduyh1KNAaJlZp9OFsA2P8vNLg=;
 b=E27z2yWM1vU4fnLju9vw2aXKzJa7AIarRhhoxhpMcydmZEC4JO5EUSoQ
 Q/hVCrxTv8vtncPYWuiYidMquLiWcpfyfWXpNp4b9B6t029fB3XPaG7FC
 ztVnGQKP6psKrHDOdWlgncQSgRKDDKvI1sWE//+efQTkQPzIVwzqC+6T2
 GU5n3F5kf4fgQtxYHr2WZdFRYw5/QtBxAV7iKCrx20FDPof2GoQ0AdCWs
 6gRTfuAk/vXAMF3V7Ko+SRMie1mvOj/mY2/EvoBUQRUAwr3Lz3Tg7vRlf
 k9BPsf1r8mDo9iMV/G8gOml/Gy7xeXWjbYmA3XaK3LqHtDmVcNMR304ok w==;
X-CSE-ConnectionGUID: xnU8Nn01R6O8mzs2UmAIDQ==
X-CSE-MsgGUID: Lr4pJZkbSqaY+/cROLhH1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26275533"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="26275533"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:43:59 -0700
X-CSE-ConnectionGUID: ZJoteYFsQMuesaOBKJGUEg==
X-CSE-MsgGUID: E2+37tTFTfWkXR2LGgSqjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="71560721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Sep 2024 06:43:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Sep 2024 16:43:55 +0300
Date: Tue, 24 Sep 2024 16:43:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <ZvLCG3fRYoblouwd@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ldzh41hb.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Sep 24, 2024 at 04:37:04PM +0300, Jani Nikula wrote:
> On Tue, 24 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
> >>On Thu, 29 Aug 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
> >>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
> >>>> > v2 of [1]. Please read the cover letter there.
> >>>> >
> >>>> > This addresses review comments and adds a few more commits on top, in particular
> >>>> > the last one showcasing the approach.
> >>>> >
> >>>> > The main question remains, is this what we want?
> >>>>
> >>>> I don't know why, but the 'is' thing is still strange.
> >>>>
> >>>> I know I know... I'm bad with naming myself.
> >>>>
> >>>> I think about 'platform' but that get too big
> >>>>
> >>>> if (display->platform.BROADWELL)
> >>>>
> >>>> I think about 'gen' but then it is overloaded....
> >>>>
> >>>> then I think about 'ip' is worse...
> >>>>
> >>>> 'version'?
> >>>>
> >>>> 'name'?
> >>>>
> >>>> if (display->name.HASWELL)...
> >>>>
> >>>> ....
> >>>>
> >>>> But well, I like the overall simplification here in general.
> >>>> Without a better name to suggest, I guess let's just move ahead...
> >>>
> >>> One slight concern with the is.foo is whether it complicates finding
> >>> things with eg. cscope. But I suppose for platforms that doesn't matter
> >>> all that much. For the has_foo stuff it'd be much more relevant.
> >>
> >>It does make finding things harder with cscope and gnu global, but git
> >>grep for is.FOO is pretty accurate.
> >>
> >>> Anyways, can't think of anything particularly elegant myself either,
> >>> so go ahead I guess.
> >>
> >>So I haven't yet. I just still have that slightly uneasy feeling about
> >>whether this is a good thing or not. That doesn't usually make me shy
> >>away from things, because you can fix stuff later, but getting this
> >>wrong causes so much churn everywhere.
> >>
> >>The fact that it's not a macro makes it less flexible for future
> >>changes. The display->is.FOO is somewhat legible, but could be
> >>better. Would all lowercase make it better? I don't know.
> >>
> >>More alternatives? Not elegant for sure, but just alternatives:
> >>
> >>- Lowercase names:
> >>
> >>	if (display->is.rocketlake)
> >
> > what I really dislike is a struct named "is". Going full mesa-way would
> > be slightly better IMO:
> >
> > 	if (display->is_rockelake)
> >
> > or
> >
> > 	if (display->platform_rocketlake)
> >
> > or
> >
> > 	if (display->platform.rocketlake)
> 
> Fair enough.
> 
> >From implementation POV having a sub-struct is easier than not.
> 
> >>
> >>  Does not help with flexibility or cscope.
> >>
> >>- Lowercase macros for display, e.g. is_rocketlake().
> >>
> >>	if (is_rocketlake(display))
> >>
> >>- Macros based on just the platform name, e.g. ROCKETLAKE().
> >>
> >>	if (ROCKETLAKE(display))
> >>
> >>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
> >>
> >>	if (PLATFORM_ROCKETLAKE(display))
> >>
> >>  But that can get a bit long in some if ladders etc.
> >
> > Does it matter much? I think those would be the exception, particularly
> > because platform checks are kind of rare these days.
> 
> Well, they're maybe the exception for new platforms, but i915 display
> does have to deal with a lot of legacy with a lot of platform checks.

There are a lot of annoying exceptions for new platforms
as well. Feels like most features are doing some kind
of weird leap frogging between integrated vs. discrete
these days. So most new features seem to require an
exception one way or the other :(

-- 
Ville Syrjälä
Intel
