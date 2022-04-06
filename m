Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B84F14F56E0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 09:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A45F10F2C7;
	Wed,  6 Apr 2022 07:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DA610F2C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649231253; x=1680767253;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=L5NtqGIWkgVuB1EvrzI7TeMO98Fnwepdmp/GFB34yZ0=;
 b=RmcXFRsU19aeCs/GiVKklmoT8WgQHu1am+jmHwVaSWcZcTIiOihBeVt0
 rNKfIde9zIyz7Akkn3aQw/NkrKFLv73oBs1vWOCrViQyZ0OSJNeREn7EO
 0ssHOw2sq56zKM5iwk1B1f41tuf2l6vGoPwfYI2WYJbrZWEk4QIoYkHge
 XNj4WLnCVyLCErvrCFbIaxz4X7TtivC8+zCs50Ikla9E49yraMuKgbCEv
 j0yoN57blXPNA0dE9VB7OeRynHLqWPBF47bOGeFDvFsCocQ+FJ5jfX8NI
 vG4aapVABrxzj34mgiXG0fklbxsffWdVMIuj2yiqjmGPYgme548gtfJE6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="248500317"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="248500317"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 00:47:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="524363716"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 00:47:31 -0700
Date: Wed, 6 Apr 2022 10:48:13 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <20220406074813.GA14848@intel.com>
References: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
 <9436bf0c9b30a5d69a4d3a5cb23304b2f2ed1c5c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9436bf0c9b30a5d69a4d3a5cb23304b2f2ed1c5c.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 06, 2022 at 12:51:29AM +0300, Govindapillai, Vinod wrote:
> Hi Stan
> 
> Nice Find! Couple of clarifications, please check inline...
> 
> On Tue, 2022-04-05 at 13:41 +0300, Stanislav Lisovskiy wrote:
> > Currently skl_pcode_try_request function doesn't
> > properly handle return value it gets from
> > snb_pcode_rw, but treats status != 0 as success,
> > returning true, which basically doesn't allow
> > to use retry/timeout mechanisms if PCode happens
> > to be busy and returns EGAIN or some other status
> > code not equal to 0.
> >
> > We saw this on real hw and also tried simulating this
> > by always returning -EAGAIN from snb_pcode_rw for 6 times, which
> > currently will just result in false success, while it should
> > have tried until timeout is reached:
> >
> > [   22.357729] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> > 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> > [   22.357831] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> > [   22.357892] i915 0000:00:02.0: [drm:skl_pcode_request [i915]] Success, exiting
> > [   22.357936] i915 0000:00:02.0: [drm] ERROR Failed to inform PCU about cdclk change (err -11,
> > freq 307200)
> >
> > We see en error because higher level api, still notices that status was wrong,
> > however we still did try only once.
> >
> > We fix it by requiring _both_ the status to be 0 and
> > request/reply match for success(true) and function
> > should return failure(false) if either status turns
> > out to be EAGAIN, EBUSY or whatever or reply/request
> > masks do not match.
> >
> > So now we see this in the logs:
> >
> > [   22.318667] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> > 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> > [   22.318782] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> > [   22.318849] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 2
> > [   22.319006] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 3
> > [   22.319091] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 4
> > [   22.319158] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 5
> > [   22.319224] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 6
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/intel_pcode.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> > index 391a37492ce5..fb6c43e8a02f 100644
> > --- a/drivers/gpu/drm/i915/intel_pcode.c
> > +++ b/drivers/gpu/drm/i915/intel_pcode.c
> > @@ -136,7 +136,7 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
> >  {
> >       *status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
> >
> > -     return *status || ((request & reply_mask) == reply);
> > +     return (*status == 0) && ((request & reply_mask) == reply);
> 
> Here I wonder whether you need to check what sort of __snb_pcode_rw return values need the retry!
> Isn't only ETIMEDOUT need the retry? Other return error codes can be probably be ignored from retry?

Hi Vinod! Thanks for comments.

Well theoretically yes, but in practice I think we would prefer to retry in almost all of the cases.
There are also multiple error codes when you need to retry, such as "EAGAIN", "EBUSY" and probably
some others. Thats is probably why original code also doesn't make a difference.

> 
> And should the, "return ret ? ret : status;" in "skl_pcode_request" be change to "return ret ?
> status : ret;" to reflect the correct error code to calling functions after this change?

I think the logic here is such that ret value is somewhat more important than the status, so 
if ret is something not zero - we always prefer returning ret, for the enduser to know what
was the ret ERROR code.
If ret is 0, then we can "afford" to let the enduser know, what was actually the status.

To me it actually sounds a bit wrong, I think we should get status pointer, like "&status"
and modify it, so that calling site _always_ knows both status and ret, mixing those two
is a dangerous strategy which exactly caused some coder confusion and probably the bug, that
this patch is fixing.

Stan

> 
> 
> >  }
> >
> >  /**
