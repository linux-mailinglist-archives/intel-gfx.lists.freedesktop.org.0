Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B827F532E99
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 18:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BC810E2B7;
	Tue, 24 May 2022 16:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2190510E2B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 16:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653408518; x=1684944518;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=5/oi4H/fboTBiku2B9FjFi4DsKEwuE6SFE3y+OYpFB8=;
 b=W0sOzoxUcGNlp6EqVXunkwWLkh/ty1J+Md8QBBGdw3M6xAqCvzcKQKru
 JAnxyYNiZO7XwZ3p23bN9NsgnTwwxwsmab78fSfc0v54wRaU/R3aapetd
 xXebvCPYC2bTcwOzrCZjrSQ5AjQBMTKpsZeSuQc0AvslLtrGlrDHqnXHU
 0ngleTInlHA8/1+Dz6uop2jTRasRkx467utYPlV4DMW0FBu6H47jAPg2y
 zIaPvUNvwgRvE6XA/Gk4sbDGDKJSWm1R1cXVpMbdyQ4y1aKyYQTJHa+ZN
 Bn1QKsyQBQuEO/83bjbiu1yRH4ZMyty7Dmp711DQJPdXzjN6HIbUof92G g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="298893543"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="298893543"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 09:08:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="548532999"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 09:08:35 -0700
Date: Tue, 24 May 2022 19:08:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <Yo0C7yUpdSBdnyof@ideak-desk.fi.intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
 <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
 <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
 <YotuSk4x8kcwX+Mk@ideak-desk.fi.intel.com>
 <68eff4780929468a97e68e40780b0cd5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68eff4780929468a97e68e40780b0cd5@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
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

On Tue, May 24, 2022 at 11:29:54AM +0300, Kasireddy, Vivek wrote:
> Hi Imre,
> 
> > On Fri, May 20, 2022 at 10:28:31AM +0300, Kasireddy, Vivek wrote:
> > > Hi Imre,
> > > [...]
> > > > > > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct
> > drm_connector *conn,
> > > > > > >
> > > > > > >  	crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
> > > > > > >
> > > > > > > +	/*
> > > > > > > +	 * The spec says that it is not safe to use a disconnected Type-C port.
> > > > > > > +	 * Therefore, check to see if this connector is connected and reject
> > > > > > > +	 * the modeset if there is no sink detected.
> > > > > > > +	 */
> > > > > > > +	if (dig_port && !dig_port->connected(encoder) &&
> > > > > >
> > > > > > This check is racy, as right after dig_port->connected() returns true,
> > > > > > the port can become disconnected.
> > > > >
> > > > > [Kasireddy, Vivek] Given that, do you think the only way to reliably determine
> > > > > if the Type-C port has a sink is to check the live status and ignore dig_port-
> > >tc_mode?
> > > > >
> > > > > If that is the case, should I just add a function pointer to dig_port to call
> > > > > tc_port_live_status_mask()? Or, should I just change intel_tc_port_connected()
> > > > > to ignore dig_port->tc_mode like below:
> > > > > @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encoder
> > *encoder)
> > > > >
> > > > >         intel_tc_port_lock(dig_port);
> > > > >
> > > > > -       is_connected = tc_port_live_status_mask(dig_port) &
> > > > > -                      BIT(dig_port->tc_mode);
> > > > > +       is_connected = tc_port_live_status_mask(dig_port);
> > > > >
> > > > > Or, are there any other elegant ways that you can think of to determine whether
> > > > > a tc port has a sink or not?
> > > >
> > > > I meant that I don't think there is a way to prevent a modeset on a
> > > > disconnected port.
> > >
> > > But we need to find a way right given that the spec clearly states that the driver
> > > must not use or access (PHY/FIA registers of) a disconnected tc port.
> > 
> > The driver does not access the PHY/FIA regs on a disconnected port/PHY.
>
> [Kasireddy, Vivek] I think it does after the first patch in this series is applied if
> the userspace (Weston) forces a modeset on a disconnected tc legacy port (HDMI).
> For instance, some of the FIA/PHY regs accesses I noticed include programming
> the lane count (intel_tc_port_set_fia_lane_count() called by intel_ddi_pre_pll_enable()),
> reading the pin assignment mask (intel_tc_port_get_pin_assignment_mask() called
> by icl_program_mg_dp_mode() which is called by intel_ddi_pre_enable_hdmi()), etc.

The FW/HW will setup a legacy TC port's PHY once during system boot and
resume, so I don't see any problem modesetting those later, regardless
of a sink being plugged on them or not. We need the first patch which
fixes a bug selecting the wrong PLL.

> Of-course, these accesses would probably not occur if the disconnected tc port
> defaults to TBT mode but this brings other problems like I described in the
> commit description of the first patch and the cover letter.
>  
> > > > Live status is what provides the connected state, but
> > > > it can change right after it is read out.
> > >
> > > Does this change happen after giving up the ownership (in
> > > icl_tc_phy_disconnect)?
> > 
> > The HPD live status changes whenever a user plugs/unplugs a sink.
> > 
> > > But shouldn't we distinguish between the cases where we are
> > > deliberately disconnecting the phy for power-savings reason vs when
> > > the port actually becomes disconnected? The port can still be
> > > considered connected in the former case right?
> > 
> > The driver - based on the spec - needs to avoid accessing the PHY/FIA
> > regs whenever the PHY is disconnected either by FW/HW (because the user
> > unplugged the sink) or the driver (during the suspend, modeset disable
> > sequence).
>
> [Kasireddy, Vivek] Regardless of whether the PHY/FIA regs are accessed or
> not, I don't think the driver should let the userspace's modeset to succeed on
> a disconnected tc port. Do you not agree?

I don't think a modeset can or should be prevented if the user unplugs a
monitor midway.

> > > Under what other situations would the live status change or become
> > > unreliable after the port has a connected sink?
> > 
> > It's not unreliable, it reflects the state of a sink being plugged to
> > the connector or not.
>
> [Kasireddy, Vivek] Ok, assuming that the state of the sink is "connected"
> during intel_atomic_check() phase (which is where this patch checks for
> connected status), are you concerned about the case where the user may
> unplug the sink before we get to the intel_atomic_commit() phase? Is
> this what you meant when you said this earlier: "This check is racy, as
> right after dig_port->connected() returns true, the port can become
> disconnected"? I am just trying to figure out the scenarios when this
> might happen.

Yes, checking the HPD live state and attempting to prevent a modeset
based on it doesn't work as this state can change at any moment. I don't
see a reason either why this should be done.

> > > And, since we rely on SDEISR to detect the live status for tc legacy
> > > ports, could this not be considered reliable?
> > 
> > Changes in the HPD live status is used as a hint to user space to
> > follow up with connector detection and modeset enable/disable requests
> > as necessary.
>
> [Kasireddy, Vivek] Right, that is the ideal case but user/userspace can commit
> mistakes where for example they can assume that HDMI-A-1 is connected 
> (while it is not) instead of HDMI-A-3 which is the one actually connected.
> During such cases, I think the driver should not let the userspace hang the
> system or lead to unexpected states and instead should return an error.

I can't see a problem modesetting a TC connector, when there is no sink
connected to it or the sink gets unplugged at an arbitrary time during
the modeset.

--Imre
