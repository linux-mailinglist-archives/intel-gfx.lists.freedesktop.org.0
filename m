Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F181E79715D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 11:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8856310E220;
	Thu,  7 Sep 2023 09:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDAA10E220
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694080679; x=1725616679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zgVoAU1qO7FLKT/4LSy6Zbr7ChRvFWWMTfGn3W9gqLY=;
 b=OPaCknfKt+jZGdoh+9YnWD+/vQ+vDepfELbVI1rC7pBQBDUK/wvKJnK9
 90y6Xjb2MCWX5JfDHF2u3PbvjEa4fWOC480NWEmDenzFGXPDliR7g15yU
 gsfRymLAkNsGGOjvyeIqIP1oWiEvFl0yqZwHWaXmG8dBUGpJ6NRl+Hayx
 oB2U9Kxt/96WAr328x9vvL9b5qCfFzovG6pjd7Rvat5dINOV0gUcs05vq
 dRx9hznXXyrjmy0kHPHFNTl6ZrqAxG09KkZ9h+9qWUo/Wn7DZHjcUOR58
 IPFHHKyUYcWWHLEinx1zqrgTwKjqa4jDYZsMh3nrk8xlZ1UGEGUTAKkEI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="374704234"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="374704234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 02:57:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="807481540"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="807481540"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 02:57:57 -0700
Date: Thu, 7 Sep 2023 11:57:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZPmeorZbpibu3VpE@ashyti-mobl2.lan>
References: <20230905193614.69771-1-andi.shyti@linux.intel.com>
 <20230905193614.69771-2-andi.shyti@linux.intel.com>
 <277afcee-b956-4b21-7d79-a973a4591192@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <277afcee-b956-4b21-7d79-a973a4591192@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Split gt cache flushing and
 gt idling functions
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

please ignore this series... I'm going to send Tvrtko's original
work. The changes in patch 1 are not required.

Thank you!
Andi

On Thu, Sep 07, 2023 at 11:04:33AM +0200, Nirmoy Das wrote:
> 
> On 9/5/2023 9:36 PM, Andi Shyti wrote:
> > In preparation for multi-gt cache flushing debugfs interface,
> > split the cache dropping function and gt idling.
> > 
> > Based on a patch by Tvrtko.
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_debugfs.c | 32 +++++++++++++++++++++--------
> >   1 file changed, 24 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 7a90a2e32c9f1..3dfe8a8b7cdfe 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -703,11 +703,25 @@ i915_drop_caches_get(void *data, u64 *val)
> >   	return 0;
> >   }
> > +static int gt_idle(struct intel_gt *gt, u64 val)
> > +{
> > +	if (val & (DROP_RETIRE | DROP_IDLE))
> > +		intel_gt_retire_requests(gt);
> > +
> > +	if (val & DROP_IDLE) {
> > +		int ret;
> > +
> > +		ret = intel_gt_pm_wait_for_idle(gt);
> return intel_gt_pm_wait_for_idle(gt) should work fine.
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >   static int
> >   gt_drop_caches(struct intel_gt *gt, u64 val)
> >   {
> > -	int ret;
> > -
> >   	if (val & DROP_RESET_ACTIVE &&
> >   	    wait_for(intel_engines_are_idle(gt), 200))
> >   		intel_gt_set_wedged(gt);
> > @@ -716,13 +730,9 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
> >   		intel_gt_retire_requests(gt);
> >   	if (val & (DROP_IDLE | DROP_ACTIVE)) {
> > -		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> > -		if (ret)
> > -			return ret;
> > -	}
> > +		int ret;
> > -	if (val & DROP_IDLE) {
> > -		ret = intel_gt_pm_wait_for_idle(gt);
> > +		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> >   		if (ret)
> >   			return ret;
> >   	}
> > @@ -746,10 +756,16 @@ i915_drop_caches_set(void *data, u64 val)
> >   	drm_dbg(&i915->drm, "Dropping caches: 0x%08llx [0x%08llx]\n",
> >   		val, val & DROP_ALL);
> > +	/* Flush all the active requests across both GT ... */
> For now it is just GT0 so this comment should be in next patch ?
> >   	ret = gt_drop_caches(to_gt(i915), val);
> >   	if (ret)
> >   		return ret;
> > +	/* ... then wait for idle as there may be cross-gt wakerefs. */
> 
> same as above.
> 
> Regards,
> 
> Nirmoy
> 
> > +	ret = gt_idle(to_gt(i915), val);
> > +	if (ret)
> > +		return ret;
> > +
> >   	fs_reclaim_acquire(GFP_KERNEL);
> >   	flags = memalloc_noreclaim_save();
> >   	if (val & DROP_BOUND)
