Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF462BB15BE
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 19:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E47710E10D;
	Wed,  1 Oct 2025 17:26:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFv98Wj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDE610E10D;
 Wed,  1 Oct 2025 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759339578; x=1790875578;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2WENeiStDU7CVQQwCAYc0vbvdIdOhSJlBjB9zwxRgfM=;
 b=TFv98Wj6+xIMbY+F21pNzWNR03Ccw0UcMmFzKHhWePt4SGmMea8eJK6P
 eDun+oTh5Eq9hZKAZT3pfwlAhiObod8zZSaoxwT15fj18vArdvxkPmTFN
 gCvuIvtsjoPE905yuP1AoSFKlNmweTsErdxN1oVIa4BEHv/iVW2T3fTUB
 fDFIlbbMoWPmI9RHFPpllZ3U2Elq3oxWkRqJ79FfAGqHkWJXGXF6T9Bk9
 P5nQ6uvoLSMp4pfuojkY1F2H3O9Myxgt2BQKLlpUIAAXvx+oNNfGcO9c+
 sS0vvPu2JxbVZzLUI5GfzlHFVx3ZrYHaNWmfEsLqvM/4EfGPHVqo4GJUp A==;
X-CSE-ConnectionGUID: jIPCuu2cQeSIHzsTPHhvUQ==
X-CSE-MsgGUID: 5S1RrwSfR/aJzU+/saGrkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79042475"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="79042475"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:26:17 -0700
X-CSE-ConnectionGUID: gI0SQzt1SXK6xbKFQ7tDeQ==
X-CSE-MsgGUID: A/YuDfH7STO55b8BpMgkmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="209780438"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:26:17 -0700
Date: Wed, 1 Oct 2025 20:26:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Joshi, Kunal1" <kunal1.joshi@intel.com>,
 "ucas.demarchi@intel.com" <ucas.demarchi@intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Message-ID: <aN1kNh-KbmNETSOS@intel.com>
References: <20251001081209.272607-1-vinod.govindapillai@intel.com>
 <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
 <d0acfa805671edd1132ee01e6663e1fa17179623.camel@intel.com>
 <df8fdcbbc78e969de74af14ae6f28aa0ef42015a@intel.com>
 <fa08c44139b355510e51e591841ce9a208d26629.camel@intel.com>
 <aN1im_bLCqoiUns0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aN1im_bLCqoiUns0@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 01, 2025 at 08:19:23PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 01, 2025 at 01:20:20PM +0000, Govindapillai, Vinod wrote:
> > + I had Lucas' email id wrong. Fixed.
> > 
> > On Wed, 2025-10-01 at 16:10 +0300, Jani Nikula wrote:
> > > On Wed, 01 Oct 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com> wrote:
> > > > On Wed, 2025-10-01 at 13:03 +0300, Jani Nikula wrote:
> > > > > On Wed, 01 Oct 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> > > > > > wa_22014263786 is not applicable to the BMG and hence exclude it
> > > > > > from the wa.
> > > > > > 
> > > > > > v2: Limit this wa to display verion 11 to 14, drop DG2 from the
> > > > > >     exclusion list, use intel_display_wa (Lucas)
> > > > > > 
> > > > > > Bspec: 74212, 66624
> > > > > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display_wa.c | 12 ++++++++++++
> > > > > >  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
> > > > > >  drivers/gpu/drm/i915/display/intel_fbc.c        |  3 +--
> > > > > >  3 files changed, 14 insertions(+), 2 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > index 31cd2c9cd488..7ca238725e30 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > @@ -52,6 +52,16 @@ static bool intel_display_needs_wa_16025573575(struct intel_display
> > > > > > *display)
> > > > > >  	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
> > > > > >  }
> > > > > >  
> > > > > > +/*
> > > > > > + * Wa_22014263786:
> > > > > > + * Fixes: Screen flicker with FBC and Package C state enabled
> > > > > > + * Workaround: Forced SLB invalidation before start of new frame.
> > > > > > + */
> > > > > > +static bool intel_display_needs_wa_22014263786(struct intel_display *display)
> > > > > > +{
> > > > > > +	return DISPLAY_VERx100(display) >= 1100 && DISPLAY_VERx100(display) < 1401;
> > > > > 
> > > > > IS_DISPLAY_VERx100(display, 1100, 1400)
> > > > > 
> > > > > Also I'm not sure if we really need separate functions for one-liners
> > > > > like this. The documentation could be in the switch case too? *shrug*.
> > > > 
> > > > Thanks. I will update that. I will get rid of the comments. I dont think it adds any extra
> > > > information other than what it can be found from wa details.
> > > 
> > > But I did not say we should get rid of the comments! We don't want to
> > > make people look up the wa details, because it's not publicly available
> > > information.
> > > 
> > > I'm just wondering if we need the separate *function*.
> > 
> > I got that part. I thought I will remove the comments along with that change! Originally this wa
> > also did not have much information as comments other than the impacted platforms. 
> > 
> > Okay. Will wait for Ville's feedback before floating another version
> 
> I think production w/a should generally be included in the public PRMs.
> But I don't enjoy looking them up in either internal or public source.
> 
> What I would like to see described is the symptoms that are getting
> fixed, and whther those symptoms occur under specific circumstancs
> (esp. if we decided to apply the w/a as a bigger hammer without
> actually checking for those specific circumstances). That sort of
> information can be very useful when you're seeing some problem and
> pondering whether you might be missing some existing w/a.
> 
> Very low level details aren't probably particularly useful even to
> us. To really understand those you probably have to trawl the hsd(s)
> anyway.
> 
> So after some pondering I'm thinking the explanations should perhaps
> still stay where the w/a is implemented, and this w/a list would
> _only_ contain the platform checks. And I would also want to be able
> to immediately jump from the actual code to the relevant w/a platform
> check (as in with cscope/etc). Though that's still a somewhat annoying
> extra step or two, esp. since I can't directly jump to the defition of
> the enum value but rather need to jump to one of its uses in
> __intel_displa_wa() :/ I suppose if all of these were functions without
> the enum step in the middle that problem would be solved. But dunno if
> we want to have a function per w/a number?

The other annoyance is that soemtimes the same w/a lives under
a different number for each platform. What should we do with those?

Oh, and we do also have the unsolved problem of what to do with
w/as that predate the hsd based numbering (either using the skl
style w/a numbers or simply no numbers).

And we also have some undocumented w/as as well (eg. issues we
found long after the hw people had moved on).

-- 
Ville Syrjälä
Intel
