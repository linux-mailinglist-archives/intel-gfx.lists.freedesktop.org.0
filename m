Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED0793C186
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 14:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B8610E7D9;
	Thu, 25 Jul 2024 12:14:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1MK1Ieo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A573310E7DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721909664; x=1753445664;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=zig9obk3jAy3ZoBVWnYr3ZZ7jkS7dLwxoaLXXsIf6I0=;
 b=M1MK1Ieo5I5EWF5P1zbxIZ60eGEUHrizwlkyyEhZ3X/sOObKFMcsEFTE
 JFEBgvyl8snI2SauSFgjmm5NSSeeVKNX8+3vBxu1NKHmjtvK2IumKPa/3
 uR0aNZu3Ko4W2fkUYMrkZmeMwLy3iJMIhg1Z5ffQeI/XdjEKXB8CqbmCl
 PTyJOv974ZwgByiyYu0L13U0HCjUYcyrh1uI+d1k3Ppygpqy02n9PBRMY
 BhEhvYr8z48dcg47jgfXVZq8NSDhX9CLd1yW2qotyGFuk52ZkpcTraOU0
 zJpoTc4zQRx575W3lavlnXT2QcOWaYsPopAZ5+LKSC/p0Tgr6HgGV6tvE g==;
X-CSE-ConnectionGUID: foQD8a5JTOqVDyfM8SLe/Q==
X-CSE-MsgGUID: WWESYwYeQU6gr+yL2uStSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="23450597"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="23450597"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 05:14:24 -0700
X-CSE-ConnectionGUID: WCODH8NzRtm29gqwhWhTkQ==
X-CSE-MsgGUID: OIR6gb6LTJ6AL3t1fE7cdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="53522833"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 05:14:23 -0700
Date: Thu, 25 Jul 2024 15:14:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Message-ID: <ZqJBrhYBeZd8phjj@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-8-imre.deak@intel.com>
 <IA0PR11MB730707E45A582AEB695B479ABAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqDjU66_p6yKpxUx@ideak-desk.fi.intel.com>
 <IA0PR11MB7307C9BD62D17A5924853AE3BAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307C9BD62D17A5924853AE3BAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 25, 2024 at 06:20:23AM +0300, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Wednesday, July 24, 2024 4:50 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
> > link parameters
> >
> > On Wed, Jul 24, 2024 at 07:55:03AM +0300, Murthy, Arun R wrote:
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Imre Deak
> > > > Sent: Monday, July 22, 2024 10:25 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [PATCH 07/14] drm/i915/dp: Add a separate function to
> > > > reduce the link parameters
> > > >
> > > > A follow-up patch will add an alternative way to reduce the link
> > > > parameters in BW order on MST links, prepare for that here.
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_dp_link_training.c | 39
> > > > +++++++++++++++----
> > > >  1 file changed, 31 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > index 58dea87a9fa28..57536ae200b77 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > @@ -1193,6 +1193,36 @@ static int reduce_lane_count(struct intel_dp
> > > > *intel_dp, int current_lane_count)
> > > >       return current_lane_count >> 1;  }
> > > >
> > > > +static bool reduce_link_params_in_rate_lane_order(struct intel_dp
> > *intel_dp,
> > > > +                                               const struct
> > > > +intel_crtc_state
> > > > *crtc_state,
> > > > +                                               int *new_link_rate,
> > > > + int
> > > > *new_lane_count) {
> > > > +     int link_rate;
> > > > +     int lane_count;
> > > > +
> > > > +     lane_count = crtc_state->lane_count;
> > > > +     link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
> > > > +     if (link_rate < 0) {
> > > > +             lane_count = reduce_lane_count(intel_dp, crtc_state-
> > > > >lane_count);
> > > > +             link_rate = intel_dp_max_common_rate(intel_dp);
> > > > +     }
> > > > +
> > >
> > > On link training failure reducing link rate or lane count is not
> > > linear. Sometime we fall from uhbr to hbr and then again with uhbr
> > > with lane reduction. So would it be better to have a table/list for
> > > the fallback link rate/lane count.
> >
> > This patch is meant to to keep the current way of reducing the rate and lane
> > count, just preparing for a follow-up change that adds the alternetive BW order
> > fallback logic for MST. I think later SST would need to be switched to the logic as
> > well, for now I didn't want to change this.
> >
> This series enables fallback for 128b/132b as well and the fallback
> linkrate and lanecount values for them are not in linear reducing
> manner.  Can we have a TODO in this function about this?

Not sure what you mean. I can add a TODO comment to change the fallback
logic on SST links to happen the same way as on MST links, decreasing
the link's BW at each step.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > > > +     if (lane_count < 0)
> > > > +             return false;
> > > > +
> > > > +     *new_link_rate = link_rate;
> > > > +     *new_lane_count = lane_count;
> > > > +
> > > > +     return true;
> > > > +}
> > > > +
> > > > +static bool reduce_link_params(struct intel_dp *intel_dp, const
> > > > +struct
> > > > intel_crtc_state *crtc_state,
> > > > +                            int *new_link_rate, int *new_lane_count) {
> > > > +     return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> > > > +                                                  new_link_rate,
> > > > new_lane_count); }
> > > > +
> > > >  static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > > >                                                  const struct
> > > > intel_crtc_state
> > > > *crtc_state)  { @@ -1206,14 +1236,7 @@ static int
> > > > intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > > >               return 0;
> > > >       }
> > > >
> > > > -     new_lane_count = crtc_state->lane_count;
> > > > -     new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
> > > > -     if (new_link_rate < 0) {
> > > > -             new_lane_count = reduce_lane_count(intel_dp, crtc_state-
> > > > >lane_count);
> > > > -             new_link_rate = intel_dp_max_common_rate(intel_dp);
> > > > -     }
> > > > -
> > > > -     if (new_lane_count < 0)
> > > > +     if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate,
> > > > +&new_lane_count))
> > > >               return -1;
> > > >
> > > >       if (intel_dp_is_edp(intel_dp) &&
> > > > --
> > > > 2.44.2
> > >
