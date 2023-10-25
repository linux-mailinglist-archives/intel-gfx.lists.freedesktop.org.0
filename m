Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C70B07D687E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5832310E592;
	Wed, 25 Oct 2023 10:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7554C10E592
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229772; x=1729765772;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Gn4P6ZhVEo3UCSbh//iBFT6t42TrdMjwxXn/9bGj9NQ=;
 b=C2Lf6s1uFW0pr58oF2CfyQ/HSWEpXQ+mGunPVFStaXmiPrdcRbx1Qcb+
 fpO2mjSkwnm9ffBx3dG/ZcRfCsmAy0Fxyhz0R5Q20iKFAsUR5Ztm0m4g/
 RkUK23Zy3y9Xe0URrlUaAUPxHb4asn7gY7bURUZMSVZbpQ+nG2I2tN1U/
 tJ2CZWjm7tj5zCEQNuR6XoyKjn4TMySnrIwZoXVpmA7i1MD9U5v0di7sh
 OprnQKxV7AKSLj629lSz3J8vaH9nr5s0J1madPyWHrQbO1SwU5hEeF9e7
 O8w6+X+mjHYw7lc67eex7QxG0LJb5R05ZlUXuwAhVSffJe/5HR3CbU+5l w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453751759"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="453751759"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="735341961"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="735341961"
Received: from shenkel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.63.39])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:29:29 -0700
Date: Wed, 25 Oct 2023 12:29:25 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 11:20:25AM +0100, Tvrtko Ursulin wrote:
> 
> On 24/10/2023 13:42, Jani Nikula wrote:
> > On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > Hi Jani,
> > > 
> > > On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
> > > > It's tedious to duplicate the container_of() everywhere. Add a helper.
> > > > 
> > > > Also do the logical steps of first getting from struct perf_event to
> > > > struct i915_pmu, and then from struct i915_pmu to struct
> > > > drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
> > > > places even need the i915 pointer.
> > > > 
> > > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
> > > >   1 file changed, 20 insertions(+), 25 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> > > > index dcae2fcd8d36..d45b40ec6d47 100644
> > > > --- a/drivers/gpu/drm/i915/i915_pmu.c
> > > > +++ b/drivers/gpu/drm/i915/i915_pmu.c
> > > > @@ -31,6 +31,11 @@
> > > >   static cpumask_t i915_pmu_cpumask;
> > > >   static unsigned int i915_pmu_target_cpu = -1;
> > > > +static struct i915_pmu *event_to_pmu(struct perf_event *event)
> > > 
> > > I would call it perfevent (or perf_event), event is too generic.
> > > We have other kind of events, too.
> > 
> > Fair enough.
> 
> Counter argument is that i915_pmu.c consistently names this event (which is
> likely lifted from other PMU drivers) so is the proposal to churn it all, or
> create an inconsistency?

The first that comes to my mind is that the debugger is also
using the term "event"... on the other hand there is no debugger
in i915.

Andi
