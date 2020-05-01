Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2501C1A4F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 18:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45EB66ECD1;
	Fri,  1 May 2020 16:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3021D6ECD1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 16:05:19 +0000 (UTC)
IronPort-SDR: PCNxAoweRRVPv7A8kfVWYUUP/f0aMc72ujyON/GZ1vIk9/wMdWKMr67x7AqCOdwE5SYLddBN5J
 KYK0qqLEMvdw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 09:05:18 -0700
IronPort-SDR: pyfUs/bwn++U3IgXXG2ZVkvgs1OEopbbAMSV5d3FrUx44V4ICwaISicl4VbRLZWiWisDC6L+A9
 HTscF4ZBEHBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="460302632"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with SMTP; 01 May 2020 09:05:18 -0700
Date: Fri, 1 May 2020 09:05:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200501160518.GH188376@mdroper-desk1.amr.corp.intel.com>
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
 <1470e1a6-34d0-f3f4-1402-cd6e42518a27@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470e1a6-34d0-f3f4-1402-cd6e42518a27@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/4] Steer multicast register workaround
 verification
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 01, 2020 at 09:01:42AM +0100, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> On 01/05/2020 00:15, Matt Roper wrote:
> > We're seeing some CI errors indicating that a workaround did not apply
> > properly on EHL/JSL.  The workaround in question is updating a multicast
> > register, the failures are only seen on specific CI machines, and the
> > failures only seem to happen on resets and such rather than on initial
> > driver load.  It seems likely that the culprit here is failure to steer
> > the multicast register readback on a SKU that has slice0 / subslice0
> > fused off.
> > 
> > This series makes a couple changes:
> >   * Workaround verification will explicitly steer MCR registers by
> >     calling read_subslice_reg rather than a regular read.
> >   * New multicast ranges are added for gen11 and gen12.  Sadly this
> >     information is still missing from the bspec (just like the updated
> >     forcewake tables).  The hardware guys have given us a spreadsheet
> >     with both the forcewake and the multicast information while they work
> >     on getting the spec properly updated, so that's where the new ranges
> >     come from.
> 
> I think there are multiple things here. To begin with, newly discovered
> ranges are of course a savior.
> 
> But I am not sure about the approach of using intel_read_subslice_reg in
> wa_verify. It is one suspicion that 0xfdc is lost on reset, but we do
> reprogram it afterwards don't we? And since it is the first register in the
> list it is supposed to be in place before the rest of verification runs, no?
> 
> A year or two I tried figuring this for Icelake and failed, but AFAIR (maybe
> my experiments can be found somewhere on trybot patchwork), I even tried
> both applying the affected ones via unicast (for each ss, or l3 where
> applicable) and also verifying a single register in all enabled ss. AFAIR
> there were still some issues there. Granted my memory could be leaky.. But I
> think this multiple write/verify could still be useful.
> 
> (Now that I think about it, I think that the problem area back when I
> experiementing with it was more suspend/resume.. hm..)
> 
> My main concern is that with current code we effectively have, after reset:
> 
> intel_gt_apply_workarounds:
>    program 0xfdc
>    program the rest of wa
> verify_wa
>    do reads using configured 0xfdc
> 
> So MCR should be correct. This series seems to be doing:
> 
> intel_gt_apply_workarounds:
>    program 0xfdc
> 	* store ss used for MCR configuration
>    program the rest of wa
> verify_wa
>    Do reads but reconfigure 0xfdc before every register in range,
>    but to the same value as in initial configuration.
> 
> Is this correct? Is the thinking then simply writing the same value to 0xfdc
> multiple times fixes things?

We stick the MCR steering at the beginning of the GT workaround list,
but the workaround that CI is complaining about is one of the RCS engine
workarounds, which is on a separate WA list.  At startup I think the RCS
workarounds are applied shortly after the GT workarounds, so the
steering is still in place, but on things like engine resets and such
that might not be the case.

A simpler approach might be to just stick the steering settings at the
front of the RCS workaround list, just as we do for the GT list.  That
was actually what I intended to try initially, but I started thinking
that we might want to handle registers invidually once we get the gen12
details about different steering registers for different ranges.  But I
guess we should probably hold off on that until we actually have all the
details documented and just keep things simple for now.

I'll send a v2 of this series later today that just sticks the steering
settings at the front of the RCS engine's WA list instead of trying to
individually steer each register.  That's probably a simpler and cleaner
approach for now.


Matt


> 
> Regards,
> 
> Tvrtko
> 
> P.S. Update, found the experiments, listing some of them:
> 
> https://patchwork.freedesktop.org/series/64183/
> https://patchwork.freedesktop.org/series/64013/
> 
> It reminded me that there were some unexplained issues with regards of where
> I used ffs or fls for finding the valid common MCR setting between L3 and
> SSEU. I think we use a different one than Windows but ours works better for
> our verification, empirically at least. Usual disclaimer about my leaky
> memory applies here.
> 
> > In addition to MCR and forcewake, there's supposed to be some more bspec
> > updates coming soon that deal with steering (i.e., different MCR ranges
> > should actually be using different registers to steer rather than just
> > the 0xFDC register we're familiar with); I don't have the full details
> > on that yet, so those updates will have to wait until we actually have
> > an updated spec.
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/1222
> > 
> > Matt Roper (4):
> >    drm/i915: Setup multicast register steering for all gen >= 10
> >    drm/i915: Steer multicast register readback in wa_verify
> >    drm/i915: Don't skip verification of MCR engine workarounds
> >    drm/i915: Add MCR ranges for gen11 and gen12
> > 
> >   drivers/gpu/drm/i915/gt/intel_engine.h        |   3 +
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  17 +-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 146 ++++++++++++------
> >   .../gpu/drm/i915/gt/intel_workarounds_types.h |   2 +
> >   4 files changed, 110 insertions(+), 58 deletions(-)
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
