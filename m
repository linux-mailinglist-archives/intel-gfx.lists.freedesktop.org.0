Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C99822D69AD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 22:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEAE6E44D;
	Thu, 10 Dec 2020 21:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE3506E44D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 21:24:45 +0000 (UTC)
IronPort-SDR: BX8IXlH51ssInyWGV7xmtUPAsnMGNdXJ2URNJw0BjiTXpkJDYuAccTm1YUdkGcLPo9bh8GIp2r
 mYuW8/43pVdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="259051545"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="259051545"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 13:24:45 -0800
IronPort-SDR: XfNDVI4NSOXeJfyMySTG5eJ5piz5ag2EywQZpufqHEBpoy63HArwUW7wvtFjHPJwvuvoiOgdkc
 cxsbkz+kRx6Q==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="372935191"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 13:24:45 -0800
Date: Thu, 10 Dec 2020 13:18:59 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210211859.GA21293@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-18-chris@chris-wilson.co.uk>
 <20201210192806.GB6255@sdutt-i7>
 <160763405359.21588.11912750748685482852@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160763405359.21588.11912750748685482852@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 18/21] drm/i915/gt: Add timeline "mode"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 09:00:53PM +0000, Chris Wilson wrote:
> Quoting Matthew Brost (2020-12-10 19:28:06)
> > On Thu, Dec 10, 2020 at 08:02:37AM +0000, Chris Wilson wrote:
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
> > > index f187c5aac11c..32c51425a0c4 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
> > > @@ -20,6 +20,12 @@ struct i915_syncmap;
> > >  struct intel_gt;
> > >  struct intel_timeline_hwsp;
> > >  
> > > +enum intel_timeline_mode {
> > > +     INTEL_TIMELINE_ABSOLUTE = 0,
> > > +     INTEL_TIMELINE_CONTEXT = BIT(0),
> > > +     INTEL_TIMELINE_GLOBAL = BIT(1),
> > > +};
> > > +
> > 
> > Not sure I like these names.
> > 
> > How about:
> > INTEL_TIMELINE_ABSOLUTE_GGTT
> > INTEL_TIMELINE_RELATIVE_PPGTT
> > INTEL_TIMELINE_RELATIVE_GGTT
> 
> They are all in the GGTT, including the ppHWSP.
>

Ah, got it. The 'MI_FLUSH_DW_USE_GTT' in a later patch threw me off. I
see now that it is picking between global status page and per-process
page in that case.

> One is relative to the context, the other relative to the engine.
> 
>   INTEL_TIMELINE_ABSOLUTE
>   INTEL_TIMELINE_RELATIVE_CONTEXT
>   INTEL_TIMELINE_RELATIVE_ENGINE
>

I like these names better.

> > Also not convinced we need the 'RELATIVE' modes. See my comments in 'Use
> > indices for writing into relative'.
> 
> It saves extra allocations for when we don't (e.g. gen8, and other
> contexts where we know we will never require disposable slots), and
> there's a strong incentive to not use absolute addressing with GVT

Understand using the status page to save on allocations.

I could see relative addressing helping with GVT.

With the name nits:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
