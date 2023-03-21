Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7675E6C338B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 15:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3989910E151;
	Tue, 21 Mar 2023 14:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E825C10E156
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 14:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679407204; x=1710943204;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LbgiY0IokShCGPRgDPV/X9BnPBK6+oQLt5Kk+Pc6Uj0=;
 b=AM6RHvRPcP/zsNes6eKw46C44YlPSa/sHnbzqQogY5KYz2IDvaa72N1V
 fYER/VCD7eTuV+/m/b1bzMK42ygmLEL6I6WeLbd06UCe71w4q/TnHEB/k
 9IudT5cVSOuTsNVdsI7DTcYftKIwOOwoBOA8osE7TrMWBs/8TnREHmB12
 Cfk7qA3BK5QWfjA+3K3mNRprM3FsM+HZck011lWA0mABc8FTqxrkQQdpM
 2LsHtatuT4fXZ2b2AKRK+FC4qwbkxkZm2eFMvFUHRNVb7q/ylzFE42XEm
 dP+o8ofGvgBxoQGKyZF/4wKSxbpT90Snohmfh6PpKGmGx740RrN1akYQi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="366675880"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="366675880"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 07:00:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="792097260"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="792097260"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 07:00:03 -0700
Date: Tue, 21 Mar 2023 16:00:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <ZBm4YInDZnvtx1ix@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-3-imre.deak@intel.com>
 <MW4PR11MB7054FE3F9F2904F694633EEEEF819@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054FE3F9F2904F694633EEEEF819@MW4PR11MB7054.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref
 init for DP MST during HW readout
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 21, 2023 at 02:06:38PM +0200, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Thursday, March 16, 2023 3:17 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref init for DP
> > MST during HW readout
> >
> > An enabled TC MST port holds one TC port link reference, regardless of the
> > number of enabled streams on it, but the TC port HW readout takes one
> > reference for each active MST stream.
> >
> > Fix the HW readout, taking only one reference for MST ports.
> >
> > This didn't cause an actual problem, since the encoder HW readout doesn't yet
> > support reading out the MST HW state.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 20 +++++++++++---------
> >  1 file changed, 11 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> > b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 050f998284592..0b6fe96ab4759 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -660,11 +660,14 @@ static void intel_tc_port_update_mode(struct
> > intel_digital_port *dig_port,
> >       tc_cold_unblock(dig_port, domain, wref);  }
> >
> > -static void
> > -intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
> > -                              int refcount)
> > +static void __intel_tc_port_get_link(struct intel_digital_port
> > +*dig_port)
> >  {
> > -     dig_port->tc_link_refcount = refcount;
> > +     dig_port->tc_link_refcount++;
> > +}
> > +
> > +static void __intel_tc_port_put_link(struct intel_digital_port
> > +*dig_port) {
> > +     dig_port->tc_link_refcount--;
> >  }
> 
> When I read this first time, I had an impression that *_put_link() and
> *_get_link() would do something for the mst streams. However, these
> get/put just increases or decreases the link refcount. Should we
> rename these functions to restore the "refcount" to the function name
> as the replaced function had?

A link ref is taken whenever the port's TC mode should stay unchanged.
This may be because the port is enabled in any mode (DP-SST, -MST or HDMI)
or as here not necessarilty enabled, but not fully initialized yet
(which is done only once intel_tc_port_sanitize_mode() is called).

Based on the above get/put_link here means the same thing as later when
enabling/disabling outputs; hence I added the above functions used in
both cases.

> Otherwise, the patch does what is supposed to do here and looks ok.
> 
> -Mika-
> 
> >
> >  /**
> > @@ -690,7 +693,7 @@ void intel_tc_port_init_mode(struct intel_digital_port
> > *dig_port)
> >
> >       dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> >       /* Prevent changing dig_port->tc_mode until
> > intel_tc_port_sanitize_mode() is called. */
> > -     intel_tc_port_link_init_refcount(dig_port, 1);
> > +     __intel_tc_port_get_link(dig_port);
> >       dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port-
> > >tc_lock_power_domain);
> >
> >       tc_cold_unblock(dig_port, domain, tc_cold_wref); @@ -726,8 +729,6
> > @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
> >               active_links = to_intel_crtc(encoder->base.crtc)->active;
> >
> >       drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
> > -     intel_tc_port_link_init_refcount(dig_port, active_links);
> > -
> >       if (active_links) {
> >               if (!icl_tc_phy_is_connected(dig_port))
> >                       drm_dbg_kms(&i915->drm,
> > @@ -746,6 +747,7 @@ void intel_tc_port_sanitize_mode(struct
> > intel_digital_port *dig_port)
> >                                   dig_port->tc_port_name,
> >                                   tc_port_mode_name(dig_port->tc_mode));
> >               icl_tc_phy_disconnect(dig_port);
> > +             __intel_tc_port_put_link(dig_port);
> >
> >               tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
> >                               fetch_and_zero(&dig_port->tc_lock_wakeref));
> > @@ -864,14 +866,14 @@ void intel_tc_port_get_link(struct intel_digital_port
> > *dig_port,
> >                           int required_lanes)
> >  {
> >       __intel_tc_port_lock(dig_port, required_lanes);
> > -     dig_port->tc_link_refcount++;
> > +     __intel_tc_port_get_link(dig_port);
> >       intel_tc_port_unlock(dig_port);
> >  }
> >
> >  void intel_tc_port_put_link(struct intel_digital_port *dig_port)  {
> >       intel_tc_port_lock(dig_port);
> > -     --dig_port->tc_link_refcount;
> > +     __intel_tc_port_put_link(dig_port);
> >       intel_tc_port_unlock(dig_port);
> >
> >       /*
> > --
> > 2.37.1
> 
