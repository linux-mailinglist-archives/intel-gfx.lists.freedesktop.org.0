Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAA7B41F61
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86FC10E27B;
	Wed,  3 Sep 2025 12:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph5ZWbw/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DADE10E21E;
 Wed,  3 Sep 2025 12:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756903263; x=1788439263;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+HfNmqgOO8dos3gYTQo6wy70HVyA44s8H2upQ1heAhc=;
 b=Ph5ZWbw/UyskppUHlpOEu11YOjzOwwQrplAXm0/8/tTg6FMkj37gSQwN
 CLl5m5Y7yZrEgf9xEcqYeW+FVShnhY+7G7xahIZUlYr1vFwCfu7PCxHkC
 TkJ+cP5W8C+6Ax1//TvwXgXrv09TacZDsdxy18t72+sGVd6xt7yvK3aih
 OPhEyNUB46KvVWirfoStMu9MF6AlVswWXJT39wQgNu9SqGz7QjIEncwvp
 K7BO6Zmxw4BjTOwcIqnRjH8h3G4QcO4gaNJq+sgB5Bafy3/+nNi3MpCW7
 Walf2li2QhGpYhf1KRdrhVMEtrzeE/sUjNwfQLHJAatdhxdVDrrfAT8Bw g==;
X-CSE-ConnectionGUID: m3Rvsj5yQq2TYExOsQWogg==
X-CSE-MsgGUID: myjkK8w+QVu2iCgdS2H4MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59281646"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="59281646"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:41:02 -0700
X-CSE-ConnectionGUID: EcKCyk6uQkazP8sh/pwAhg==
X-CSE-MsgGUID: /RFyONE7Q6aYvEfIsyK/Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="176862800"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:41:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initialize phy and ch variables
In-Reply-To: <DS4PPF69154114F895D5FD0289E7008DC83EF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903120147.1799446-1-mika.kahola@intel.com>
 <4007cf393a333c1ffe62c2245c098bb99751f55e@intel.com>
 <DS4PPF69154114F895D5FD0289E7008DC83EF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
Date: Wed, 03 Sep 2025 15:40:57 +0300
Message-ID: <8a7129a9d1954dfbf0a3963d982fabe9feda7659@intel.com>
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

On Wed, 03 Sep 2025, "Kahola, Mika" <mika.kahola@intel.com> wrote:
> Ok good to know. Let's just ignore this patch.

That said, all places that use bxt_port_to_phy_channel(),
vlv_dig_port_to_channel(), vlv_dig_port_to_phy(), vlv_pipe_to_channel(),
or vlv_pipe_to_phy() need *both* the phy and channel.

So I'm thinking you could add

struct {
        enum dpio_phy phy;
	enum dpio_channel channel;
} dpio_phy_channel;

and convert the above functions to always return that struct. It's small
enough to return as a whole. Something like:

	struct dpio_phy_channel phy_channel;

	phy_channel = bxt_port_to_phy_channel(display, port);

and

	phy_channel = vlv_dig_port_to_phy_channel(dig_port);

and

	phy_channel = vlv_pipe_to_phy_channel(pipe);

Then you can also do s/phy/phy_channel.phy/ and s/ch/phy_channel.ch/ as
cleanup (if it actually cleans things up, maybe not).

Bonus points if you can come up with a better name than
"phy_channel". ;)

With that, the interface gets reduced for vlv, and it's obvious to
static analyzers the stuff gets initialized. Win-win?


BR,
Jani.


>
> Thanks!
>
> -Mika-
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, 3 September 2025 15.19
>> To: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Kahola, Mika <mika.kahola@intel.com>
>> Subject: Re: [PATCH] drm/i915/display: Initialize phy and ch variables
>> 
>> On Wed, 03 Sep 2025, Mika Kahola <mika.kahola@intel.com> wrote:
>> > phy and ch variables are potentially used uninitialized.
>> 
>> They're not, bxt_port_to_phy_channel() initializes them in all code paths.
>> 
>> > To make absolutely sure that these variables are not used
>> > uninitialized let's initialize these with known values as
>> > DPIO_PHY0 and DPIO_CH0, respectively.
>> >
>> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
>> >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > index 8ea96cc524a1..45b67a3716e9 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > @@ -2174,8 +2174,8 @@ static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
>> >  	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>> >  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
>> >  	intel_wakeref_t wakeref;
>> > -	enum dpio_phy phy;
>> > -	enum dpio_channel ch;
>> > +	enum dpio_phy phy = DPIO_PHY0;
>> > +	enum dpio_channel ch = DPIO_CH0;
>> >  	u32 val;
>> >  	bool ret;
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
