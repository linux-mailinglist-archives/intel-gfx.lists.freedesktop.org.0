Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F96B1B505
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B79D110E691;
	Tue,  5 Aug 2025 13:35:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I9tAmnpJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D69610E691
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 13:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400902; x=1785936902;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Of9lkwDmVNjgbzTM2ABisddBANvFM7t3djO4ZclHRBA=;
 b=I9tAmnpJLMtmqM2/433bNCQbVd4rnIfkVF8tfJ8At+z8pYstEgxr/94d
 EF91R5dUhcoWXlbaBpd9qF6TTC075D7gbjI1Luvtukl8eyjmqEVgyAZfp
 aDJWB17iSIUP9IFSXRW0ZX2JLRjiTzpBogjgVJ5PE9wmoRBwkHhckEHnI
 +XCacak6jOuzOh81cdyKZCR3DcG1vlDBk0z6EpJHShEp2t2K6/T9+zXQB
 Xuj3CPJV6L2tMmo0ENGnM0Zba3bA00WH2LgPr7K4zgHVr+lzJDI2SvoQ7
 UlvLsclYhwR7e5tZ0jV92oGiefGU9mOq5lSUSyQIxo1G4tyGopE1bZJMx w==;
X-CSE-ConnectionGUID: TPKd4Y+DSJ2ea5h5EywCrA==
X-CSE-MsgGUID: wjPiLrDkTkib0L220TXsoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56771786"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56771786"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:35:02 -0700
X-CSE-ConnectionGUID: BM7agRzDR3OVYVrPIxCtxg==
X-CSE-MsgGUID: 0TI85yebR6e6InAooaTKOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164163068"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Ensure sleep calculations in
 wait_for_freq() do not use negative value of timeout_ms
In-Reply-To: <l2iqzdsj6uhpzya4eu4iaught7pbpmrtnfv6okgfa5hephl34y@q6oajdfdi5ha>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
 <5963b8713d45a543d5d35f43d3478ed9643a566b@intel.com>
 <l2iqzdsj6uhpzya4eu4iaught7pbpmrtnfv6okgfa5hephl34y@q6oajdfdi5ha>
Date: Tue, 05 Aug 2025 16:34:56 +0300
Message-ID: <c9620674f1ab623e9fd90615d100f4feb7aba495@intel.com>
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

On Tue, 05 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
>> On Tue, 05 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
>> > wait_for_freq() allows timeout_ms to be negative to pass it down
>> > to msecs_to_jiffies(). If the argument to the latter function is
>> > indeed negative, then MAX_JIFFY_OFFSET is returned from it.
>> >
>> > However, later in the wait_for_freq()'s "do while" loop,
>> > "timeout_ms" is used to calculate a new value for "sleep", which
>> > is a plain integer. While "sleep" being negative does not lead
>> > to erroneous behavior, as the "sleep" is cast to unsigned type
>> > in usleep_range(), it does not seem intentional.
>> >
>> > Change the type of "sleep" variable to unsigned and ensure it
>> > does not use "timeout_ms", when it is a negative value in the
>> > calculations.
>> 
>> That's an elaborate explanation for a case that never
>> occurs. wait_for_freq() is used in three places with fixed timeout
>> values.
> Which means that whoever decides to pass a negative value here
> in the future will be met with an unpleasant surprise when
> looking at sleep values, because we never validate the input to
> this function.

Honestly, if we started doing that for even the simplest stuff like
this, the driver would mostly consist of parameter validation and error
handling and propagation.

Input validation does not mean we'd have to validate all input
originating within the kernel.

It's better to fail early with that unpleasant surprise than to brush
the issue under the carpet.

>> What's the real reason for the change?
> Do you imply something was obscured?

No, just wondering how you stumbled on it and decided it really needed
to be changed.

> This patch is supposed to try and fix mishandling of int type
> variable, which represents time to sleep. Time should not be
> represented by a negative value, unless we are going back in
> time. Hence, the change to unsigned and additional check on
> timeout_ms.

Unfortunately, unsigned doesn't really protect you from mistakes like
this. Stuff just ends up being really, really big instead of negative.

BR,
Jani.

-- 
Jani Nikula, Intel
