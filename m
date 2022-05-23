Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C438E530E90
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 13:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27EF10F268;
	Mon, 23 May 2022 11:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5027310F268
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 11:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653304928; x=1684840928;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=gbDFJT0tQwwqpZsSvQvxc1Om+eOixPHZxX9sXNQZWyc=;
 b=fO0orm9vM8Iu+1VALNpSLD9Sk30yOPqIlRXFzHzquHHNPZqGoF90Tszf
 zdWS+g0gVFI8VHYnvdmy0BCdXyt7erjvIUdDkfMM07t6Wxy57z3yuEaAD
 /EADxy8kPnLV6OzPp44QFh1/e8JxBQuCQZLVc0LFKQEppTYcKtfY7YNx9
 v/1EnkYLWsxOC710mMhYdcTwtTE/TcoB/S3iB6nPTbiygblBKcuzP+gX8
 ShbHrf/qViBc2KftgYewB5d8lFgHuEPhXxrfCscrjkzuFvX1D7sd6FQU8
 KxmCSTK2bxX1ErKgT77mbiIbUv+xTeP77Il+OQXnWfos5VHRBnsvb4KWc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="273307882"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="273307882"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="608147952"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:21:50 -0700
Date: Mon, 23 May 2022 14:21:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <YotuSk4x8kcwX+Mk@ideak-desk.fi.intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
 <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
 <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
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

On Fri, May 20, 2022 at 10:28:31AM +0300, Kasireddy, Vivek wrote:
> Hi Imre,
> [...]
> > > > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
> > > > >
> > > > >  	crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
> > > > >
> > > > > +	/*
> > > > > +	 * The spec says that it is not safe to use a disconnected Type-C port.
> > > > > +	 * Therefore, check to see if this connector is connected and reject
> > > > > +	 * the modeset if there is no sink detected.
> > > > > +	 */
> > > > > +	if (dig_port && !dig_port->connected(encoder) &&
> > > >
> > > > This check is racy, as right after dig_port->connected() returns true,
> > > > the port can become disconnected.
> > >
> > > [Kasireddy, Vivek] Given that, do you think the only way to reliably determine
> > > if the Type-C port has a sink is to check the live status and ignore dig_port->tc_mode?
> > >
> > > If that is the case, should I just add a function pointer to dig_port to call
> > > tc_port_live_status_mask()? Or, should I just change intel_tc_port_connected()
> > > to ignore dig_port->tc_mode like below:
> > > @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
> > >
> > >         intel_tc_port_lock(dig_port);
> > >
> > > -       is_connected = tc_port_live_status_mask(dig_port) &
> > > -                      BIT(dig_port->tc_mode);
> > > +       is_connected = tc_port_live_status_mask(dig_port);
> > >
> > > Or, are there any other elegant ways that you can think of to determine whether
> > > a tc port has a sink or not?
> > 
> > I meant that I don't think there is a way to prevent a modeset on a
> > disconnected port.
>
> But we need to find a way right given that the spec clearly states that the driver
> must not use or access (PHY/FIA registers of) a disconnected tc port. 

The driver does not access the PHY/FIA regs on a disconnected port/PHY.

> > Live status is what provides the connected state, but
> > it can change right after it is read out.
>
> Does this change happen after giving up the ownership (in
> icl_tc_phy_disconnect)?

The HPD live status changes whenever a user plugs/unplugs a sink.

> But shouldn't we distinguish between the cases where we are
> deliberately disconnecting the phy for power-savings reason vs when
> the port actually becomes disconnected? The port can still be
> considered connected in the former case right?

The driver - based on the spec - needs to avoid accessing the PHY/FIA
regs whenever the PHY is disconnected either by FW/HW (because the user
unplugged the sink) or the driver (during the suspend, modeset disable
sequence).

> Under what other situations would the live status change or become
> unreliable after the port has a connected sink?

It's not unreliable, it reflects the state of a sink being plugged to
the connector or not.

> And, since we rely on SDEISR to detect the live status for tc legacy
> ports, could this not be considered reliable?

Changes in the HPD live status is used as a hint to user space to
follow up with connector detection and modeset enable/disable requests
as necessary.

--Imre
