Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E310493A05A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF5810E57B;
	Tue, 23 Jul 2024 11:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ng0eUYJU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BDF310E57B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721735968; x=1753271968;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LFcEIrWYHzbxcWdHAkD+mr3geod0L+LKVAowBYzK6uM=;
 b=Ng0eUYJUwIl5dAT0OG89hwJ6FUrzyn7y0ENRb/GNbiYIZjGB2Uu92Kmn
 CQACiCtPakTD1Ap/+5/G3AkyfhOxZbKQ8+Ur1NWfJjgro0EBSvtX+j0la
 RrgfWfQGSeyXnzc6uWWwoJ2wi2kfExIjDqIPu6rdq2cXlvAh0IxHpKiFl
 Yn4ohvfYXW1rnn2KcGNtZtJ14M/CuIUTmGw3hjhqj7ULX40pxJm0UJg7s
 I7rj2mqtuCgVU+j8lLn5QJdxgjHSFK900jN6LsNfIku4FPNCE9+hb5iAu
 W9Oo5HeAt1FlX1nRofaZ/p7fQfI8Yp+BlR3/UheQqZ0pWI3K9FxFSbjno A==;
X-CSE-ConnectionGUID: Leh4F/atRmqMmkP+PctSpw==
X-CSE-MsgGUID: KFOjhnAWTcyotdQTBWMJFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117283"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23117283"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:59:28 -0700
X-CSE-ConnectionGUID: 9H4aC9DWRoCw9Bvjup5K5A==
X-CSE-MsgGUID: gURdvd+2RSasX2TlkN5JKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52956881"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:59:26 -0700
Date: Tue, 23 Jul 2024 14:59:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
 HW readout
Message-ID: <Zp-bLSQb5wr4-uq6@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-6-imre.deak@intel.com>
 <SN7PR11MB675009A3083E40276CD2BC3DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB675009A3083E40276CD2BC3DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Tue, Jul 23, 2024 at 11:34:58AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Monday, July 22, 2024 10:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
> > HW readout
> >
> > Initialize the DP link parameters during HW readout. These need to be up-
> > to-date at least for the MST topology probing, which depends on the link
> > rate and lane count programmed in DPCD. A follow-up patch will program
> > the DPCD values to reflect the maximum link parameters before the first
> > MST topology probing, but should do so only if the link is disabled
> > (link_trained==false).
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1e43e32e05199..421e970b3c180 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3352,8 +3352,11 @@ void intel_dp_sync_state(struct intel_encoder
> > *encoder,
> >
> >       intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
> >
> > -     if (crtc_state)
> > +     if (crtc_state) {
> >               intel_dp_reset_link_params(intel_dp);
> > +             intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> > crtc_state->lane_count);
> > +             intel_dp->link_trained = true;
> 
> Why are we setting link_trained as true here.

link_trained indicates whether the output is enabled or not, which must
be in sync with crtc_state being NULL (output disabled) or not NULL
(output enabled).

> Regards,
> Suraj Kandpal
> > +     }
> >  }
> >
> >  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> > --
> > 2.44.2
> 
