Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745C97E3B20
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 12:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB67810E086;
	Tue,  7 Nov 2023 11:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4B410E086
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 11:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699356575; x=1730892575;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=daLFrEE9bG/XvHaa9j4Rti45dTIEPqIOcU0KELeWu3o=;
 b=hUzu3W0QVpfl1hwS0DViUPtv613hNzpCUPInrSpHsq/vpAnMNXH4NoN1
 VikabrR9XhhImpJmq8r9qCzXmXGdYqcICNWKIlhC41l1KiY4I+riFHf6o
 A2az8mYJMbR1AP1nNBaPrc8jKWC98i72Yr++UGjUNfJcN5JdZVD0noZQR
 RsWnqbtbL9K5cxnfWVLH8CHfe1oth4nldu5G9FKxg3fzG345MAdHZRyGa
 EjxM0h71LzT/PMwCRtj3cONNstC0hoZ8mpqXBP2oPPvaK2aZwN5RyZDWH
 upkr9D5YthLiB0FhZDtHvAWlje5BL6ZSbcZk0rdIVia36MCUkBIt+l6Qw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="2493009"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; 
   d="scan'208";a="2493009"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 03:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="791786985"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="791786985"
Received: from ezorina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 03:29:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <4b259843-c3e2-4fd0-9160-14f1d67ed27d@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1698939671.git.jani.nikula@intel.com>
 <9941f1d6-8466-4c69-8b06-34177a658299@linux.intel.com>
 <87wmv014rc.fsf@intel.com>
 <4b259843-c3e2-4fd0-9160-14f1d67ed27d@linux.intel.com>
Date: Tue, 07 Nov 2023 13:29:31 +0200
Message-ID: <871qd1ztr8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915/pmu: hide struct i915_pmu
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

On Fri, 03 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 02/11/2023 16:47, Jani Nikula wrote:
>> On Thu, 02 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>> On 02/11/2023 15:42, Jani Nikula wrote:
>>>> The implementation details of pmu should be implementation details
>>>> hidden inside i915_pmu.c. Make it so.
>>>
>>> Don't tell me i915->pmu bothers xe somehow?
>> 
>> It doesn't bother xe, it bothers me...
>> 
>>> I am not a fan of the series
>>> on a glance. Replacing an increment with a function call for instance.
>> 
>> I think you glanced at the wart of this series. ;)
>> 
>> It just bugs me that we expose a plethora of data that should be
>> internal to pmu, basically just for that one increment.
>> 
>> And we pull in a bunch of headers to define struct i915_pmu, and then we
>> implicitly depend on those headers in a ton of places through incredible
>> chains of includes.
>> 
>> And we rebuild everything and a half when those headers change. Or when
>> the pmu implementation details change.
>
> On the other hand i915_pmu.h is a small header file, which does not 
> include _any_ other internal i915 headers (only uapi) and is always 
> present (if you ignore gens <= 2) which does not driver the allocate on 
> demand approach. In the past three years it had like seven edits.

It's really not about allocation on demand at all. It's about hiding the
implementation, using the mechanisms that C provides us for
abstractions, and reducing the header dependencies.

> Given all that, the change of direction you propose here sounds a bit 
> radical and I would rather not replace that increment with a function 
> call, when it is questionable if the same separation of components 
> approach can be, or will be, applied to the whole driver. Gut feeling 
> says it is bound to be hard and possibly not happen in which case I 
> don't see what is gained by churning on the tiny and quiet i915_pmu.h|c.

Yeah, the approach probably won't be applied to the whole driver anytime
soon. Maybe never. What matters to me though is that all of these set
the example. People look at drm_i915_private, and always just add a new
struct member, and never even stop to think if they could make it an
opaque pointer instead.

Heck, the same damn approach was copy-pasted to the xe driver, warts and
all.

Anyway.

All that said, I think I'm going to drop this, along with all
refactoring that isn't strictly related to display.

BR,
Jani.

-- 
Jani Nikula, Intel
