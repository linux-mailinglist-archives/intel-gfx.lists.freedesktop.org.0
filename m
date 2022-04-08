Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E97D84F9BFE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 19:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768C810E673;
	Fri,  8 Apr 2022 17:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BCA10E55D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 17:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649440108; x=1680976108;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wGGJaJVBcG5zQzzz0066pz6xpHq3nYDLB9APn4ipYgU=;
 b=S9D6DEuR7KttyNJlOZ8G5raMi7tD0obaX2jH1Tg1aGXPLHnRJ4nbo3wB
 QQlHm+fWutHJbv5Lu9AT04bChrgQHJlT7LAtfiqYo/+FTKFDY+rS+l3ve
 ugxyyC2tSJvcl55EKeCBYPjSqR5EnDng8ujXoDBVXUjz/QKeeR9/L+ZXw
 LyD8mITzRpfIk8E+06AKFp+9a8tFFj0/bWBHubY5gMtk0PIbd2S6NqKas
 sKyG0A2mn7qpERmSbJJFjoBTXURVBjMGU5Asbtp9qervV/BgclwPoI16b
 cmEMVwoA2a1wARi5OkJFF7WB/op+QCIfGJu4DA1k9TfguBBKFNP4dx3dZ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="242247026"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="242247026"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 10:48:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="659570525"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 10:48:26 -0700
Date: Fri, 8 Apr 2022 20:49:13 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220408174913.GB9608@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
 <20220408125200.9069-2-stanislav.lisovskiy@intel.com>
 <YlBYuMZz1m9IiYFg@intel.com> <YlBbyyXagWLsw0pd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YlBbyyXagWLsw0pd@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix skl_pcode_try_request
 function
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 08, 2022 at 06:59:07PM +0300, Ville Syrjälä wrote:
> On Fri, Apr 08, 2022 at 06:46:00PM +0300, Ville Syrjälä wrote:
> > On Fri, Apr 08, 2022 at 03:51:59PM +0300, Stanislav Lisovskiy wrote:
> > > Currently skl_pcode_try_request function doesn't
> > > properly handle return value it gets from
> > > snb_pcode_rw, but treats status != 0 as success,
> > > returning true, which basically doesn't allow
> > > to use retry/timeout mechanisms if PCode happens
> > > to be busy and returns EGAIN or some other status
> > > code not equal to 0.
> > > 
> > > We saw this on real hw and also tried simulating this
> > > by always returning -EAGAIN from snb_pcode_rw for 6 times, which
> > > currently will just result in false success, while it should
> > > have tried until timeout is reached:
> > > 
> > > [   22.357729] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> > > 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> > > [   22.357831] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> > > [   22.357892] i915 0000:00:02.0: [drm:skl_pcode_request [i915]] Success, exiting
> > > [   22.357936] i915 0000:00:02.0: [drm] ERROR Failed to inform PCU about cdclk change (err -11, freq 307200)
> > > 
> > > We see en error because higher level api, still notices that status was wrong,
> > > however we still did try only once.
> > > 
> > > We fix it by requiring _both_ the status to be 0 and
> > > request/reply match for success(true) and function
> > > should return failure(false) if either status turns
> > > out to be EAGAIN, EBUSY or whatever or reply/request
> > > masks do not match.
> > > 
> > > So now we see this in the logs:
> > > 
> > > [   22.318667] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> > > 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> > > [   22.318782] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> 
> Hmm. That is weird. The timestamp difference is only ~100 usec even
> though we are supposed to use that 500 usec timeout. So did some
> previous pcode access already timeout and leave the mailbox busy 
> before we even do this request, or what is going on?

Ah that is not the real example. 
What I did to check how it works is just added something like this:

+ static int retries = 0;

+  if (++retry < 6)
+      return -EAGAIN

to _snb_pcode_rw.

So before the patch, skl_pcode_try_request returned True when getting -EAGAIN and 
immediately bailed out, assigning ret = 0 and goto out, as if it succeeded while it obvously not.

> 
> > > [   22.318849] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 2
> > > [   22.319006] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 3
> > > [   22.319091] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 4
> > > [   22.319158] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 5
> > > [   22.319224] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 6

That is how it behaves with this patch, i.e status != 0 makes skl_pcode_try_request
return False(as it should) which then enables skl_pcode_request retry machinery.

In real case we have something similar to this but can't really reproduce it that easily,
so was kinda simulating that issue to check.

Stan

> > > 
> > > Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pcode.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> > > index 391a37492ce5..fb6c43e8a02f 100644
> > > --- a/drivers/gpu/drm/i915/intel_pcode.c
> > > +++ b/drivers/gpu/drm/i915/intel_pcode.c
> > > @@ -136,7 +136,7 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
> > >  {
> > >  	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
> > >  
> > > -	return *status || ((request & reply_mask) == reply);
> > > +	return (*status == 0) && ((request & reply_mask) == reply);
> > 
> > The problem with this is that now we'll keep pointlessly banging it
> > even if it returns a real error.
> > 
> > We should never really see that -EAGAIN since it indicates that our
> > timeout is too short. So the real fix should be to increase that
> > timeout. But I guess we could do a belt-and-suspenders approach
> > where we also keep repeating on -EGAIN. But I'm thinking -EAGAIN
> > should WARN as well to make sure we notice that our timeout is wrong.
> > 
> > >  }
> > >  
> > >  /**
> > > -- 
> > > 2.24.1.485.gad05a3d8e5
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel
