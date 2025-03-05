Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B6FA4FF0A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 13:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A3A897FB;
	Wed,  5 Mar 2025 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gOmrLxqz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2149897FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741179290; x=1772715290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dSdr4qBnIgsgNXOphOzwVXr1QoT8oVUOO/go3TewxgY=;
 b=gOmrLxqznQycBrv1ZFFEXiMKhHcUj63tCKzlxp9nW11sY37xa19G/omG
 DcTdsgtwM0TEBxG7MkCKHTHelzwKQd6w021nZNptTZLT5c7J5vxpyo04p
 Cb6AzSIiqbfEYJX0IW54sofDwzsUDZRaQnn8rhXa7iGpoGb7k2+n6y/BL
 B+UT1sFGuLeikvflrLQGaeeWOAp+nkEdn4hB6oukZiZxcTq6PCOyPSKUF
 AKu26+11aqlBl5zXdXmbvHOsVsdc41vHeAwdv0PyOnGYFQb/S8jXVcjss
 TaJpC5y+xHnPUVTo+UyaVZSRppeL997fgWUUC7QI1O6wO06/xWfKp2iqW w==;
X-CSE-ConnectionGUID: jiO+lMVgRZqKVbDDbfR2AA==
X-CSE-MsgGUID: wCAexmP3SfazVKNGhTJ4Rw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42028731"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42028731"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:54:50 -0800
X-CSE-ConnectionGUID: fpCBA2rhQQirvjSbuJiv+g==
X-CSE-MsgGUID: 25m7SvtFSIK5q1vNg/tzWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="119355873"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:54:48 -0800
Date: Wed, 5 Mar 2025 13:54:45 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Message-ID: <Z8hJldMDuEvSj3Cg@ashyti-mobl2.lan>
References: <20250224063104.308242-1-nitin.r.gote@intel.com>
 <Z8cPWZOkAQxlkOOZ@ashyti-mobl2.lan>
 <SJ0PR11MB5867ACD997AC34B7069815B1D0CB2@SJ0PR11MB5867.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ0PR11MB5867ACD997AC34B7069815B1D0CB2@SJ0PR11MB5867.namprd11.prod.outlook.com>
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

Hi Nitin,

On Wed, Mar 05, 2025 at 07:45:31AM +0000, Gote, Nitin R wrote:
> > On Mon, Feb 24, 2025 at 12:01:04PM +0530, Nitin Gote wrote:
> > > Sometimes engine reset fails because the engine resumes from an
> > > incorrect RING_HEAD. Engine head failed to set to zero even after
> > > writing into it. This is a timing issue and we experimented different
> > > values and found out that 20ms delay works best based on testing.
> > >
> > > So, add a 20ms delay to let engine resumes from correct RING_HEAD.
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13650
> > > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > index 6e9977b2d180..5576f000e965 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > @@ -365,6 +365,13 @@ static void reset_prepare(struct intel_engine_cs
> > *engine)
> > >  			     ENGINE_READ_FW(engine, RING_HEAD),
> > >  			     ENGINE_READ_FW(engine, RING_TAIL),
> > >  			     ENGINE_READ_FW(engine, RING_START));
> > > +		/*
> > > +		 * Sometimes engine head failed to set to zero even after writing
> > into it.
> > > +		 * Use 20ms delay to let engine resumes from correct
> > RING_HEAD.
> > > +		 * Experimented different values and determined that 20ms
> > works best
> > > +		 * based on testing.
> > > +		 */
> > > +		mdelay(20);
> > 
> > Is there any extremely strong reason for using mdelay here, rather than any other
> > delay function?
> > 
> > Andi
> 
> Yes. Firstly I checked with udelay(20000) and while testing a test for 1000 times, 
> a couple of times got an issue of "BUG: scheduling while atomic: i915_selftest/10313/0x00000201" from the scheduler.
> Adding here a failure stack trace in case you want to take a look.
> 
> And that's why I used mdelay(20), where I have not seen this issue. I have tested with mdelay(20), thousands of times and it worked.

it's not a good reason for using mdelay. We would be very bad
citizens for wanting to use mdelay for such a long time.

mdelay keeps busy waiting and gets one core stuck for just this
purpose. This is a straight nack.

can you try with fsleep?

Thanks,
Andi
