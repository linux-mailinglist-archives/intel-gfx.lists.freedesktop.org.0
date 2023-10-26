Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D46FE7D80A0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66EA10E7A2;
	Thu, 26 Oct 2023 10:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B968C10E7A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315764; x=1729851764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AI7FI6R64zyBp8B8qGB0vK7M09tGfLS2eebun2XRyXI=;
 b=bK3aOu3meeIhzj+617lskzCQ+xD/rrIzCudS3OwfEnctpG+SN4g9ux7d
 ntjla0H4nnf3bQq9KFiUO54InwK+XDuAP7NTljx5CCWlCcgDz513ZOh9B
 PF0Au/SiaKaXjqAIytbXyBK6tPdj9P/dPl08tWybNpnRwIby5M6Z+TX5O
 R0AOTrSy+O11fj/vdCRFqmj4p2LQ5fU65g0psWqHfMJ2EW5kdnYzXGxjg
 RWTRP4sBFBLXymFJl5vhyiUbC5qUNyzPQ2RqVK51QU3wEOTQxE4EyjNa7
 Aku8v90OMmR2CcKAdCIwZvd8bSVcL5aS6fSBvE8qMWXLZXbV5ReNOf0Gg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372559940"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="372559940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:22:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6880097"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:21:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
 <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan>
Date: Thu, 26 Oct 2023 13:22:39 +0300
Message-ID: <8734xx8yz4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> On Wed, Oct 25, 2023 at 11:20:25AM +0100, Tvrtko Ursulin wrote:
>> 
>> On 24/10/2023 13:42, Jani Nikula wrote:
>> > On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> > > Hi Jani,
>> > > 
>> > > On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
>> > > > It's tedious to duplicate the container_of() everywhere. Add a helper.
>> > > > 
>> > > > Also do the logical steps of first getting from struct perf_event to
>> > > > struct i915_pmu, and then from struct i915_pmu to struct
>> > > > drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
>> > > > places even need the i915 pointer.
>> > > > 
>> > > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > > > ---
>> > > >   drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
>> > > >   1 file changed, 20 insertions(+), 25 deletions(-)
>> > > > 
>> > > > diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> > > > index dcae2fcd8d36..d45b40ec6d47 100644
>> > > > --- a/drivers/gpu/drm/i915/i915_pmu.c
>> > > > +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> > > > @@ -31,6 +31,11 @@
>> > > >   static cpumask_t i915_pmu_cpumask;
>> > > >   static unsigned int i915_pmu_target_cpu = -1;
>> > > > +static struct i915_pmu *event_to_pmu(struct perf_event *event)
>> > > 
>> > > I would call it perfevent (or perf_event), event is too generic.
>> > > We have other kind of events, too.
>> > 
>> > Fair enough.
>> 
>> Counter argument is that i915_pmu.c consistently names this event (which is
>> likely lifted from other PMU drivers) so is the proposal to churn it all, or
>> create an inconsistency?
>
> The first that comes to my mind is that the debugger is also
> using the term "event"... on the other hand there is no debugger
> in i915.

Have you settled on this? I don't care either way, could apply either
patch.

BR,
Jani.



-- 
Jani Nikula, Intel
