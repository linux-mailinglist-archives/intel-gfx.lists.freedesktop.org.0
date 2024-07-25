Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9241093C18C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 14:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F65510E21A;
	Thu, 25 Jul 2024 12:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aCuTtBHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C6310E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 12:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721909755; x=1753445755;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9IYCIJDiloBeP0xAehuYND+tskIEfOtme4IOgHiHXnM=;
 b=aCuTtBHK8QbbaaFkjvudvTQojHndhNDrGZK0pmqVqQcwnhFYOvYJcjeB
 3mzoj6WqiufUpMEG5zZEHqNIfDK5NeVVA4RnQCWxSanVk+wH2gy9f7kf6
 NKPQUkJDNgdfgiQFfPev+QWYvHywzG43MmbrxMhV8XBKGdkxY0pmbQUwL
 sGxYkDyexV1linzl1/WegprAL03/QAn47i9RAvutAnk3J1I+08tAbIX8t
 nqHqapH1zjHbZoV91mHHjJV8YNrkuQQwissrLuCBPI/zJ2Mv3oKjGoqGO
 9pNE3Oz575xl1TrvNSCEhZYc3omCQBLdK9KIR7rYaj0d9bM2+LSrNKzwi Q==;
X-CSE-ConnectionGUID: NSlvw+ZxSV24vfMNPk/dVw==
X-CSE-MsgGUID: 47OC4gfNR1ywXKLl/Bu0iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="37160713"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="37160713"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 05:15:55 -0700
X-CSE-ConnectionGUID: 8rwNkHO4RUe7zZoJFWI+Lg==
X-CSE-MsgGUID: VY6Kk11eT6e/VaejnYG3WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="90352547"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 05:15:53 -0700
Date: Thu, 25 Jul 2024 15:16:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 13/14] drm/i915/dp_mst: Ensure link parameters are
 up-to-date for a disabled link
Message-ID: <ZqJCCL9yBPeaJrHi@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-14-imre.deak@intel.com>
 <SN7PR11MB6750F74D3657EDBD34FA6F57E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750F74D3657EDBD34FA6F57E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Thu, Jul 25, 2024 at 08:26:38AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Monday, July 22, 2024 10:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 13/14] drm/i915/dp_mst: Ensure link parameters are up-to-
> > date for a disabled link
> >
> > As explained in the previous patch, the MST link BW reported by branch
> > devices during topology probing/path resources enumeration depends on
> > the link parameters programmed to DPCD to be up-to-date. After a sink is
> 
> I think you maybe missed a couple of words here maybe fix that

Not sure, it looks ok to me.

> Rest LGTM
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> > plugged this is not ensured, as those DPCD values start out zeroed. The
> > target link parameters (for a subsequent modeset) are the maximum that is
> > supported, so make sure these maximum values are programmed before
> > the topology probing.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     |  3 ++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 +++++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
> >  3 files changed, 35 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0771e4c6357ba..41f5d82ca75d8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4262,6 +4262,9 @@ intel_dp_mst_configure(struct intel_dp *intel_dp)
> >
> >       intel_dp->is_mst = intel_dp->mst_detect != DRM_DP_SST;
> >
> > +     if (intel_dp->is_mst)
> > +             intel_dp_mst_prepare_probe(intel_dp);
> > +
> >       drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp-
> > >is_mst);
> >
> >       /* Avoid stale info on the next detect cycle. */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 19c8b6878b030..faee7af0a8a48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -43,6 +43,7 @@
> >  #include "intel_dp_hdcp.h"
> >  #include "intel_dp_mst.h"
> >  #include "intel_dp_tunnel.h"
> > +#include "intel_dp_link_training.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_hdcp.h"
> >  #include "intel_hotplug.h"
> > @@ -2031,3 +2032,33 @@ bool intel_dp_mst_crtc_needs_modeset(struct
> > intel_atomic_state *state,
> >
> >       return false;
> >  }
> > +
> > +/**
> > + * intel_dp_mst_prepare_probe - Prepare an MST link for topology
> > +probing
> > + * @intel_dp: DP port object
> > + *
> > + * Prepare an MST link for topology probing, programming the target
> > + * link parameters to DPCD. This step is a requirement of the
> > +enumaration
> > + * of path resources during probing.
> > + */
> > +void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp) {
> > +     int link_rate = intel_dp_max_link_rate(intel_dp);
> > +     int lane_count = intel_dp_max_lane_count(intel_dp);
> > +     u8 rate_select;
> > +     u8 link_bw;
> > +
> > +     if (intel_dp->link_trained)
> > +             return;
> > +
> > +     if (intel_mst_probed_link_params_valid(intel_dp, link_rate,
> > lane_count))
> > +             return;
> > +
> > +     intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
> > +
> > +     intel_dp_link_training_set_mode(intel_dp, link_rate, false);
> > +     intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select,
> > lane_count,
> > +                                   drm_dp_enhanced_frame_cap(intel_dp-
> > >dpcd));
> > +
> > +     intel_mst_set_probed_link_params(intel_dp, link_rate, lane_count);
> > }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > index 8ca1d599091c6..fba76454fa67f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > @@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct
> > intel_atomic_state *state,
> >                                  struct intel_link_bw_limits *limits);  bool
> > intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
> >                                    struct intel_crtc *crtc);
> > +void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp);
> >
> >  #endif /* __INTEL_DP_MST_H__ */
> > --
> > 2.44.2
> 
