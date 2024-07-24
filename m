Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC7693B054
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 13:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFEA510E2FB;
	Wed, 24 Jul 2024 11:32:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkEnYppi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7398810E2FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 11:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721820767; x=1753356767;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=/iSnv657CrAW32XuG8nQeJYGA9h1lSQJN0l0Fh8VCPo=;
 b=UkEnYppi2i9hnyUcMlneU8APFSISniMx4ms67eGkXg0neOPKhns+VdPI
 D8dd33eCv8mVIu5GIfJ9lhQkyHoAb7WuvpXb/0+WJ/W12ea5eErYcuzAn
 2uPW9hJv7Dcv4uJxobL3R8Qb8wh8y2QYb6zUox2KujAbYF0cifKew5325
 dMsYxLhhnFBiwsjCpRjceNtDRoDAEcmMv+fqb6Pzo9RnkrrYNcL1QoXSt
 35cHEwK2t8UTkrn1O2bOb1rPTgN66ObTsG1H5mZsM1YMggY7TEdzSlXoI
 sKWDJg2UszX793b0q7bdd/F9SM9dT4ig90tS0AOHYVagF1gIf5KInbhbA g==;
X-CSE-ConnectionGUID: hbDH/pedQOyC2oMLnzfF3g==
X-CSE-MsgGUID: 9mGzegCGQUa2eaQFcNnMRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30881508"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="30881508"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 04:32:47 -0700
X-CSE-ConnectionGUID: Z4D9uX4kTF2YUvCmWyrtWQ==
X-CSE-MsgGUID: zXFdx5w/R+i3tf8GMNM/dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="52260450"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 04:32:45 -0700
Date: Wed, 24 Jul 2024 14:33:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Message-ID: <ZqDmbHRnmjHhXwDb@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-15-imre.deak@intel.com>
 <SN7PR11MB6750527EE7E48291BE184B6BE3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750527EE7E48291BE184B6BE3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Wed, Jul 24, 2024 at 11:52:14AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Monday, July 22, 2024 10:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
> > UHBR/non-UHBR link rates
> >
> > Enable switching between UHBR and non-UHBR link rates on MST links
> > when reducing the link parameters after an LT failure.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 -----
> >  1 file changed, 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 0c8e0d6437b5b..270080b2735f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1188,11 +1188,6 @@ static bool
> > reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> >                    intel_dp->link.force_lane_count != lane_count))
> >                       continue;
> >
> > -             /* TODO: Make switching from UHBR to non-UHBR rates
> > work. */
> > -             if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=
> > -                 drm_dp_is_uhbr_rate(link_rate))
> > -                     continue;
> > -
> 
> Do we need to remove this here, I mean why introduce this piece of
> todo code to begin with specially in this function as
> reduce_link_params_in_bw_order is being defined in this series in one
> of the previous patches.

That's basically the rule of containing only one change in one patch.
That rule is for different reasons, one is to help with bisecting an
issue. In the earlier patch you refer to the change is to switch the
fallback logic to happen in BW order, but keeping the behavior not to
switch between UHBR <-> non-UHBR rates as it was before. Here at the end
of the patchset is also the point to enable this rate switching, after
addressing all the dependencies for that.

> Just omit this condition while defining it
> 
> Regards,
> Suraj Kandpal
> 
> >       }
> >
> > --
> > 2.44.2
> 
