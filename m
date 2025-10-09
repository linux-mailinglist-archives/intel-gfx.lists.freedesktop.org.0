Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFD8BC9341
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 15:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA4910EA3D;
	Thu,  9 Oct 2025 13:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="sr18lMkZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9750B10EA3D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 13:08:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 31D2D43D40;
 Thu,  9 Oct 2025 13:08:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A1C8C4CEE7;
 Thu,  9 Oct 2025 13:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760015312;
 bh=+Tv4QqjzLnqOG6noumG4PSZX/u3Hyls+NhPekWtf71I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sr18lMkZmBwKP2uoS6f7smY0jN/iV8/LBXQZSwruxdkrRnLSVLYqcNrWWw0Pl4NCo
 TQ3rrESv5CU8ypiZmtab3Hfnzum4bMdvmINQ3xCHUuW6V1czboS945SP+QpcuS+6yr
 D1BePqSqvqeFaJnLQzae9TCR6ur+axJWRb1IPMVjNmcnFCg2M16jj94CNnxSrW5j6L
 m/d1XDcgtzr6BDmnJpRXZ63rRUvSh3ViJLgPo5fgwtkmiXbaR9xVu/z5OzdtNsuwh1
 7ankmMDzr8Oz6WXpbTQ6YNWiBsmVHJutVTfAMNzED3zO82aNfkSwMB3Rd77yF4c9EK
 ua1zsDilTof+A==
Date: Thu, 9 Oct 2025 15:08:28 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <j3gmjykrxu4q5txs2kum5kh2uzcezdte63hh64eljuek44liv6@avyzhf3ucgfu>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
 <aOad4gBFCtuKcbsh@msatwood-mobl>
 <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
 <aObY74gMUQwr__a2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aObY74gMUQwr__a2@intel.com>
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

On Wed, Oct 08, 2025 at 05:34:39PM -0400, Rodrigo Vivi wrote:
> On Wed, Oct 08, 2025 at 10:37:13AM -0700, Matt Roper wrote:
> > On Wed, Oct 08, 2025 at 10:22:42AM -0700, Matt Atwood wrote:
> > > On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
> > > > On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> > > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > > and will be needed for WA_BB implementation later.
> > > > > 
> > > > > Let's move this function and i915_range struct to its own file, as we are
> > > > > trying to move away from i915_utils files.
> > > > 
> > > > It looks like this is a new revision of this patch from a couple years
> > > > ago, right?
> > > > 
> > > >         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
> > > > 
> > > > Even though it's been a long time, it would still be a good idea to
> > > > include a patch changelog so that it's clear what's been changed and
> > > > what review feedback was/wasn't incorporated.
> > > Sorry, I will include it if theres another version
> > > > 
> > > > I'm also wondering if we should be thinking about moving i915 to use
> > > > 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
> > > > rather than maintaining our own i915-specific versions of the logic.
> > > > regmap in general does a bunch of other stuff that isn't relevant to
> > > > i915, but it seems like we might be able to re-use the type definitions
> > > > and basic lookups to avoid reinventing the wheel.
> > > This is doable but just requires a rewrite of the current implementation
> > > as it's not a 1:1 conversion.
> > 
> > The idea is that we'd eliminate 'struct i915_range' and related
> > functions and just use the regmap types and functions instead.  It looks
> > like the main difference is that the regmap lists are size-based, while
> > our lists use a sentinel to mark the end of the table.
> > 
> > Although I did just notice that even the basic types and helpers for
> > regmap rely on CONFIG_REGMAP, so that might be an argument against
> > switching over since we'd need to add an extra kconfig dependency, and
> > most of what it brings in isn't useful to us.  But probably more
> > something for Rodrigo and the other maintainers to weigh in on.
> 
> Cc: all other maintainers.
> 
> I could easily be convinced either way.
> 
> I like the idea of reusing something existing and this helper and struct
> does fit to our needs.
> I don't mind having to include another config dependency here.
> The part that is not good is to bring a lot more than we need :/
> 
> Perhaps the really right thing to do there would be to split regmap
> into a generic map part and the support to the other different bus stuff.
> Then we start using the generic part.

It's true that they are similar (regmap_reg_in_ranges() is
basically a copy paste), but regmap and mmio are two different
things (although conceptually similar in some cases). Working to
expose regmap_range so that we can use it as mmio_range looks to
me a bit of an overkill.

Andi
