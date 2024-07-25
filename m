Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F94593C110
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 13:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF71F10E1F5;
	Thu, 25 Jul 2024 11:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eeer0BqV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C8310E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 11:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721907882; x=1753443882;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=84ojEGnO/RgyTfmvIewv5aiWa2QPu+HMtbyzolzITgg=;
 b=eeer0BqVKeUQoRbflqvWwpMK14a6YboKLaLxpY+8uTGbOayEGHhJACHl
 W1Qf3lx8AKJav0i16ioDYBffyQr7pTGc28UnopGmhV3BabGy/ZQAsLwwk
 P2cghCs3/lXx9ohp4I5JbO9NZfjMpRswutESiAdOUU6ohyQUoGc020WkE
 j03Gve7KyeehPbVN2CIzzB2+YxCeaVIBqK84UwT9PpRyvcJY6zPDWyPpM
 LmTDxDaaAVzSJIniqRJCSZ2Yg2mjSkfexVxkeNEOxkTJnrS6+dCB/NvHo
 nNetOQIrcRs36jSYWB9evfF3St3ZIIWnAk0DFAfqLrn2Je5k+4LGw8AgW w==;
X-CSE-ConnectionGUID: i3Wzo1Z+QdGO6bLtGeOz+Q==
X-CSE-MsgGUID: 8zEH1qYVTdCDdeB409xGGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19595021"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="19595021"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 04:44:42 -0700
X-CSE-ConnectionGUID: FFYqWee4TSaZ6T5sS/j4JQ==
X-CSE-MsgGUID: OX7bIjEJTZ+roQO3dyGAyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="52915473"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 04:44:40 -0700
Date: Thu, 25 Jul 2024 14:44:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Message-ID: <ZqI6twTPr94Sdrd0@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-7-imre.deak@intel.com>
 <IA0PR11MB730719E68DD305BF254B5F2DBAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqDiegIe4mPSuZLU@ideak-desk.fi.intel.com>
 <IA0PR11MB730708C1C6C348D16DD3343FBAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB730708C1C6C348D16DD3343FBAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Thu, Jul 25, 2024 at 06:16:03AM +0300, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Wednesday, July 24, 2024 4:46 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
> > uevent for a commit
> >
> > On Wed, Jul 24, 2024 at 07:29:33AM +0300, Murthy, Arun R wrote:
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Imre Deak
> > > > Sent: Monday, July 22, 2024 10:25 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
> > > > uevent for a commit
> > > >
> > > > There are multiple failure cases a modeset-retry uevent can be sent
> > > > for a link (TBT tunnel BW allocation failure, unrecoverable link
> > > > training failure), a follow- up patch adding the handling for a new
> > > > case where the DP MST payload allocation fails. The uevent is the
> > > > same in all cases, sent to all the connectors on the link, so in
> > > > case of multiple failures there is no point in sending a separate
> > > > uevent for each failure; prevent this, sending only a single modeset-retry
> > uevent for a commit.
> > > >
> > > Is an exit condition required with some 'x' retry so that this retry
> > > doesn't end up in an infinite loop.  For link training failure the
> > > link rate/lane count is reduced and when it reaches the least can
> > > exit, but for BW allocation failures/payload failure this may not be
> > > the case.
> >
> > This is an error condition the driver reports (asynchronously) if a modeset
> > request by userspace/client failed. It would be incorrect not to report this error,
> > leaving the output in a blank, enabled state.
> >
> > I think that userspace/client should handle such failures - in the above case a
> > buggy sink - by disabling the output.
> >
> If user space doesn't then I think we end up in an infinite loop in
> KMD. So would it make some sense to have some exit condition in KMD.

It would be a bug in userspace to keep modesetting in an infinite loop,
instead of disabling the output; the same could happen already after LT
failures. Adding a workaround for such users wouldn't be simply not
returning any error to the user and is not the topic of this patchset.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> > > >  drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
> > > >  2 files changed, 7 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index a9d2acdc51a4a..3501125c55158 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1754,6 +1754,7 @@ struct intel_dp {
> > > >       u8 lane_count;
> > > >       u8 sink_count;
> > > >       bool link_trained;
> > > > +     bool needs_modeset_retry;
> > > >       bool use_max_params;
> > > >       u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > > >       u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 421e970b3c180..0882dddd97206 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -2876,6 +2876,11 @@ intel_dp_queue_modeset_retry_for_link(struct
> > > > intel_atomic_state *state,
> > > >       struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > >       int i;
> > > >
> > > > +     if (intel_dp->needs_modeset_retry)
> > > > +             return;
> > > > +
> > > > +     intel_dp->needs_modeset_retry = true;
> > > > +
> > > >       if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> > > >               intel_dp_queue_modeset_retry_work(intel_dp-
> > > > >attached_connector);
> > > >
> > > > @@ -3009,6 +3014,7 @@ void intel_dp_set_link_params(struct intel_dp
> > > > *intel_dp,  {
> > > >       memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
> > > >       intel_dp->link_trained = false;
> > > > +     intel_dp->needs_modeset_retry = false;
> > > >       intel_dp->link_rate = link_rate;
> > > >       intel_dp->lane_count = lane_count;  }
> > > > --
> > > > 2.44.2
> > >
