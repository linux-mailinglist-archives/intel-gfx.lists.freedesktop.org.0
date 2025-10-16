Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88768BE4369
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 17:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32D910EA1F;
	Thu, 16 Oct 2025 15:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZudgG50";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F64310EA1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760628383; x=1792164383;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Or+wXj9aZyGv2JXxA6CCofTWwvEOEfEv3O9ev3BoNQE=;
 b=VZudgG50SZZjdl5/KEdigE3eVGR999Id+WdUm/vPEAoxs+mhT2Pu5CoA
 sJXMM/zN0jV3Sz6Ra8X96syKE1996pRn3CeccrV7fRVH6GMp7hSSYPqBp
 tGnaybvP3hifkhjgCct7eSV3KMCT9Imlcmxxt3rZD8OMHZpHZXAZdC75s
 35H2KnPs9Q6X33euVZxdNzPEZ3uFmtp3qnBDML4ceH/0mZ61CFd4F/dHZ
 UQluYauB+8/afCojv75jEd/TNLdXnei2EwO6Aj3n4QKQs1tQo3tCuxd+P
 o55YqoYcfNfwhYxIxx8Z0en7GOxx/oQr3yLSWyjsUlUpqqFKeJXrT3tAn w==;
X-CSE-ConnectionGUID: aqXOwTKnSEG8apyjII1wUg==
X-CSE-MsgGUID: J6LMA7sUR+6Lew8m+sUpFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62871700"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62871700"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:26:23 -0700
X-CSE-ConnectionGUID: a8CoRTvlQGCMk94EbMt+CQ==
X-CSE-MsgGUID: /I1TR6RdQ4WMKq3O34bQZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="181695113"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:26:20 -0700
Date: Thu, 16 Oct 2025 17:26:17 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@kernel.org>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aPEOmdqD4YlijyU0@black.igk.intel.com>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
 <aOkH3NsPp8B0dTUl@intel.com>
 <cgnb24g7cpg4lrsneyfijfe4i7d6p47hahtsrewhaos6vsqm6t@joehsc2htikb>
 <aPDit9yNIhkGTx-A@intel.com>
 <bedf7c86774b9eb81bdd8e03107c7da04c9cd1f7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bedf7c86774b9eb81bdd8e03107c7da04c9cd1f7@intel.com>
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

On Thu, Oct 16, 2025 at 06:20:01PM +0300, Jani Nikula wrote:
> On Thu, 16 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Oct 14, 2025 at 01:09:46AM +0200, Andi Shyti wrote:
> > > Hi,
> > > 
> > > On Fri, Oct 10, 2025 at 09:19:24AM -0400, Rodrigo Vivi wrote:
> > > > On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> > > > > On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > > > and will be needed for WA_BB implementation later.
> > > > > >
> > > > > > Let's move this function and i915_range struct to its own file, as we are
> > > > > > trying to move away from i915_utils files.
> > > > > >
> > > > > > v2: move functions to their own file
> > > > > > v3: use correct naming convention
> > > > > 
> > > > > Okay, Message from the Department of Bikeshedding and Nitpicking.
> > > > > 
> > > > > There's really nothing mmio specific about the functionality being
> > > > > abstracted. You have a range represented by two u32's in a struct, and a
> > > > > function to check if another u32 is within that range.
> > > > > 
> > > > > The struct could just as well remain i915_range, the files could be
> > > > > i915_range.[ch], and the function could be, say,
> > > > > i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.
> > > > 
> > > > hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.
> > > > 
> > > > I suggested mmio in the name because i915_range is way to generic.
> > > > The other extreme side.
> > > > 
> > > > Perhaps i915_addr_range ?
> > > 
> > > If we use it only for mmio, why should we make it generic? If we
> > > want to keep things generic we could well use things from in
> > > range.h, as Jani has suggested in one of his reviews and add our
> > > function directly there.
> >
> > Well, I don't have strong feelings here.
> >
> > Perhaps i915_addr_range is more generic and middle ground.
> >
> > Jani?
> 
> Lots of bikeshedding here, but in the end just get it merged with
> whatever naming and move on?

We've all been here at some point, this is arguably the hardest part :D

Raag
