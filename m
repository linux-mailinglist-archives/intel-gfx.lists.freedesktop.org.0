Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF8BBC9B66
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 17:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7039910EA8B;
	Thu,  9 Oct 2025 15:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efki7MVh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBEF10EA8B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760022802; x=1791558802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B+KkNfoyTd9BI3XiAD88G317kTFdOfgCMt1Zd+h0p6U=;
 b=efki7MVh0qqOzgcm/2AdauqH91RwcFMcqgPw9wXpmKKgcLlbRCuqbOQS
 JyZN3TatUV9NcUbo39O4UDL6vb7Wl8J+unDTkBaVHxnrA8+RoBd1GCLZw
 rLTlkK3KnHrUXCzq/nosiJ0ySExs1RiJmK8JIxswdyGmCsiQ6KUosEtS4
 keqFFqpFSA40yxDT2c5H4kpbaaPcgP7bp4ShGGa/xtA9vOoA6AzuJW5Sy
 TaOz/RNLSKNvcTtsWfru5DwX4VVIOjnMXvYmapVTZvbhBQoPOYNNzYOeW
 cnVrTChHBHwfYcEAbw14Rt+GTpj15Y73GaWzuu3XemnSHAtwGGgyUCYCu Q==;
X-CSE-ConnectionGUID: qlhndVFkRbuPy2Oli0Kl7g==
X-CSE-MsgGUID: WcG+joR7TbyxLULiIeRg6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="87694362"
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="87694362"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 08:13:22 -0700
X-CSE-ConnectionGUID: HmqejZwTSPiVwzbsiwZWmQ==
X-CSE-MsgGUID: gV0/hhuURMuNICUEltywkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="217831552"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 08:13:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@kernel.org>
Cc: Matt Roper <matthew.d.roper@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Matt Atwood <matthew.s.atwood@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
In-Reply-To: <aOfC1YjjHbm88V5H@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
 <aOad4gBFCtuKcbsh@msatwood-mobl>
 <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
 <aObY74gMUQwr__a2@intel.com>
 <j3gmjykrxu4q5txs2kum5kh2uzcezdte63hh64eljuek44liv6@avyzhf3ucgfu>
 <aOfC1YjjHbm88V5H@intel.com>
Date: Thu, 09 Oct 2025 18:13:15 +0300
Message-ID: <f15e85530354f34d1630b52d0ea249b15da2be60@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 09 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Oct 09, 2025 at 03:08:28PM +0200, Andi Shyti wrote:
>> On Wed, Oct 08, 2025 at 05:34:39PM -0400, Rodrigo Vivi wrote:
>> > On Wed, Oct 08, 2025 at 10:37:13AM -0700, Matt Roper wrote:
>> > > On Wed, Oct 08, 2025 at 10:22:42AM -0700, Matt Atwood wrote:
>> > > > On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
>> > > > > On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
>> > > > > > reg_in_range_table is a useful function that is used in multiple places,
>> > > > > > and will be needed for WA_BB implementation later.
>> > > > > > 
>> > > > > > Let's move this function and i915_range struct to its own file, as we are
>> > > > > > trying to move away from i915_utils files.
>> > > > > 
>> > > > > It looks like this is a new revision of this patch from a couple years
>> > > > > ago, right?
>> > > > > 
>> > > > >         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
>> > > > > 
>> > > > > Even though it's been a long time, it would still be a good idea to
>> > > > > include a patch changelog so that it's clear what's been changed and
>> > > > > what review feedback was/wasn't incorporated.
>> > > > Sorry, I will include it if theres another version
>> > > > > 
>> > > > > I'm also wondering if we should be thinking about moving i915 to use
>> > > > > 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
>> > > > > rather than maintaining our own i915-specific versions of the logic.
>> > > > > regmap in general does a bunch of other stuff that isn't relevant to
>> > > > > i915, but it seems like we might be able to re-use the type definitions
>> > > > > and basic lookups to avoid reinventing the wheel.
>> > > > This is doable but just requires a rewrite of the current implementation
>> > > > as it's not a 1:1 conversion.
>> > > 
>> > > The idea is that we'd eliminate 'struct i915_range' and related
>> > > functions and just use the regmap types and functions instead.  It looks
>> > > like the main difference is that the regmap lists are size-based, while
>> > > our lists use a sentinel to mark the end of the table.
>> > > 
>> > > Although I did just notice that even the basic types and helpers for
>> > > regmap rely on CONFIG_REGMAP, so that might be an argument against
>> > > switching over since we'd need to add an extra kconfig dependency, and
>> > > most of what it brings in isn't useful to us.  But probably more
>> > > something for Rodrigo and the other maintainers to weigh in on.
>> > 
>> > Cc: all other maintainers.
>> > 
>> > I could easily be convinced either way.
>> > 
>> > I like the idea of reusing something existing and this helper and struct
>> > does fit to our needs.
>> > I don't mind having to include another config dependency here.
>> > The part that is not good is to bring a lot more than we need :/
>> > 
>> > Perhaps the really right thing to do there would be to split regmap
>> > into a generic map part and the support to the other different bus stuff.
>> > Then we start using the generic part.
>> 
>> It's true that they are similar (regmap_reg_in_ranges() is
>> basically a copy paste), but regmap and mmio are two different
>> things (although conceptually similar in some cases). Working to
>> expose regmap_range so that we can use it as mmio_range looks to
>> me a bit of an overkill.
>
> fair enough. Let's go then with this i915-only approach here, but
> renaming the functions and structs.

Agreed.

I'll note that there's also include/linux/range.h, which could be
expanded to our use case, but it deals with u64 offsets.

BR,
Jani.

-- 
Jani Nikula, Intel
