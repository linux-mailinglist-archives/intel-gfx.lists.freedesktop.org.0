Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6E6B00657
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 17:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3D110E8F8;
	Thu, 10 Jul 2025 15:21:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMJ321Ke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E7F10E8F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 15:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752160874; x=1783696874;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d0E5n0/EB+UH7WM6S6v655lTkEKHYB74BAQhnlrxQXY=;
 b=LMJ321Kes38KUTdc5aqskNywKKvnOYpcdk5DSp7MTBYlG8FeNzKJyIXR
 6VvGNESu5YnBrhyO5nCMtmn2haIf9QHHsNyBfnEiES9LXYaGtbwhSZUtW
 jSVZTMum/EQnFMhGR2bZo/ap6DkkLsgRZwdq5cuw3Ajbcibe3vyqVBPFM
 ZtsyCHeMwuuxdjfgbLFLs+xToesmqh1ANVI1Tq8Ku05LJZEl+CwVWJvFd
 Ln86B69JnEpYSXcXxkreBalyNlaWHElEQLkgY/NhyMtX90UOhJb/6ofLR
 OJMeI4OPPOae6CpoaKTeOgZNxcDXEsgBGW208Mrrcex1wK462wsC4vEFC w==;
X-CSE-ConnectionGUID: Z5mlOW/JSw6SJsvwL0mo7A==
X-CSE-MsgGUID: bpjrFW2ZT2mFxhPE/opFVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54323321"
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="54323321"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 08:21:14 -0700
X-CSE-ConnectionGUID: Nw711/NGSGSeuiptHPRZzw==
X-CSE-MsgGUID: ryLfEY8nQey8Ea7OPoMRyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="161807075"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 08:21:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 18:21:10 +0300
Date: Thu, 10 Jul 2025 18:21:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG_aZYhDxGVZXVDa@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
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

On Wed, Jul 09, 2025 at 03:04:27PM -0700, Matthew Brost wrote:
> On Wed, Jul 09, 2025 at 11:09:22PM +0300, Ville Syrjälä wrote:
> > On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> > > On 2025-07-09 20:30:26 [+0300], Ville Syrjälä wrote:
> > > > > 
> > > > > It seems like the critical uncore lock is currently held in a lot of
> > > > > places and potentially for a long time.
> > > > 
> > > > It shouldn't be held for that long. I think it should just be
> > > > a raw spinlock.
> > > 
> > > What about I resubmit the series and we look again? I don't think the
> > > lock should be made raw just to be done with it.
> > 
> > Until someone actually does the work to confirm the thing is working
> > reliably there's no point in posting anything.
> > 
> > And IIRC the other remaining problem with RT was the spinlocks used
> > inside tracepoints (which is uncore lock, and probably some vblank
> > locks). So that too needs some kind of solution because it's going to
> > very hard to debug the timing sensitive parts without the tracepoints.
> 
> A bit of a drive-by comment, but taking locks inside tracepoints seems
> like a pretty horrible idea in general. We've managed to write an entire
> driver (Xe) from scratch and bring it up without doing this.

For xe gt stuff specifically the one reason for needing a lock
could be forcewake. Ie. if you read a register that needs
forcewake from a tracepoint you might need some kind of protection
against concurrent access. But xe lacks any kind of forcewake
sanity checker, so no one would likely even know if you get that
wrong. Unless they notice a bogus register value in the
trace that is. But maybe xe doesn't use such registers in its
tracepoints atm, who knows.

And speaking for hardware in general, indexed registers aren't
exactly an uncommon thing. So the tracing stuff really should
have a sane standard way to deal with them...

> I'd be very
> surprised if this is truly necessary in i915.

The most fundemental reason is the hardware issue present on
some platforms which can hang the machine if you access the
same cacheline from multiple threads simultaneously.

The other reason is that some machines lack the hardware
frame counter so we have to cook one up based on cpu side
timestamps, and that involves the vblank machinery locks.

-- 
Ville Syrjälä
Intel
