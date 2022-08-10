Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 255F058EC10
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 14:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9738914AA20;
	Wed, 10 Aug 2022 12:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91868AB00
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660134901; x=1691670901;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6TK3oLgW6/JIU6JmNhxP5vkscTzoryvofRYUWyiJvBA=;
 b=FC3CP1EzrxwSxuQrKM6KA9Kqq+QvmjQJPSoOC5NOjPOiDYQV+yqYdO0y
 qxZaVFnYZ2ariBbfOuDhPfHnaIQ9O+HqsM6vqdnBPy2eJ9klcXsvDqd7i
 cnLszbMoKy1rBEu7q+adzq4AaL3WTPNQfj/WyCBrN/BfF05tsrdD+aSvW
 iL6SlE/zsHbbcsLLqI9bF/wEsyyfMjHePPNoL6w/RzWI9ak0V/RtJkYHC
 wcQd3tqxO9KG0ZiyGPc8RWb+l8JUVtGTW3XQdUsQroG724pjokY9bhWBK
 nF5fRfVmnqVGK0uiR1jn3HnFIYRC0nIPHO/O1Tl+3mqA9i1Jq8OyOQfFU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="292323173"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="292323173"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 05:35:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="555716934"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 05:34:58 -0700
Date: Wed, 10 Aug 2022 15:34:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <YvOl77u2X219NvpF@ideak-desk.fi.intel.com>
References: <20220808103054.3586074-1-imre.deak@intel.com>
 <DM6PR11MB3177D66964271F836828FC47BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB3177D66964271F836828FC47BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 10, 2022 at 06:48:24AM +0300, Murthy, Arun R wrote:
> [...]
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 00e18a4a5a5a4..6c35212c36256 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -383,6 +383,30 @@ static void disable_all_event_handlers(struct
> > drm_i915_private *i915)
> >       }
> >  }
> >
> > +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool
> > +enable) {
> > +     enum pipe pipe;
> > +
> > +     if (DISPLAY_VER(i915) != 13)
> > +             return;
> > +
> This function will be called from bxt_display_core_init() as well.

Yes, this function is called whenever the DMC firmware needs to be
loaded and initialized/uninitialized. 

> Do we need this WA for bxt as well?

The above display version check makes sure that the WA is only applied
on relevant platforms. For BXT DISPLAY_VER()==9 (for GLK it's 10), for
DG2/ADLP DISPLAY_VER()=13.

--Imre
