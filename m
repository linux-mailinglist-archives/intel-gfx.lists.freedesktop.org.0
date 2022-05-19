Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9FD52D151
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 13:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72375113E62;
	Thu, 19 May 2022 11:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEAB11A114
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 11:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652959187; x=1684495187;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HZm2qOa9o29jmQRrlpayvPTgsHGqp2/VhEemJhv2WgA=;
 b=OF4wnrrvD3gpofns99ihdAlhPYnfPhZJOPkwHhUR8p2TbqN0tLwcPSzb
 JqVnFvvDHQIYi9rvTXlDYAi/qX6bK9rThso72UrYKb1H2bUQINruCEk9a
 Xy7JNeejUy/pMchPUmhblIVnqxPhldMaxBAi0MAx6TJ1qRqXQ1ZIGA2BS
 ssIThyEVJeRJEJnvANYefX4RIol0h2p5+zriJirzT4LwtiisH/Kp8vzw0
 Vz8UxYTDWECSzpB+tnXtYqmljiKWN6L37vw/EL1XKj8A+litnuq5uJcQD
 1OEkkge4RA/1MPx7xPQLVlMnT6EqJcYYgNVaW+l5AMvf8+y5PAgpAdvQO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="252670298"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="252670298"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 04:19:46 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="598507192"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 04:19:45 -0700
Date: Thu, 19 May 2022 14:19:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6117cb32773745e980bc02bfab96bb21@intel.com>
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

On Wed, May 18, 2022 at 10:04:14AM +0300, Kasireddy, Vivek wrote:
> Hi Imre,
> 
> > On Mon, May 16, 2022 at 01:54:02AM -0700, Vivek Kasireddy wrote:
> > > Although, doing a modeset on any disconnected connector might be futile,
> > > it can be particularly problematic if the connector is a Type-C port
> > > without a sink. And, the spec only says "Display software must not use
> > > a disconnected port" while referring to the Type-C DDI seqeuence, it does
> > > not spell out what happens if such an attempt is made. Experimental results
> > > have shown that this can lead to serious issues including a system hang.
> > > Therefore, reject the atomic modeset if we detect that the Type-C port
> > > is not connected.
> > >
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c | 20 ++++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index 40da7910f845..40576964b8c1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -114,6 +114,8 @@ int intel_digital_connector_atomic_set_property(struct
> > drm_connector *connector,
> > >  int intel_digital_connector_atomic_check(struct drm_connector *conn,
> > >  					 struct drm_atomic_state *state)
> > >  {
> > > +	struct drm_device *dev = conn->dev;
> > > +	struct drm_i915_private *dev_priv = to_i915(dev);
> > >  	struct drm_connector_state *new_state =
> > >  		drm_atomic_get_new_connector_state(state, conn);
> > >  	struct intel_digital_connector_state *new_conn_state =
> > > @@ -122,6 +124,10 @@ int intel_digital_connector_atomic_check(struct
> > drm_connector *conn,
> > >  		drm_atomic_get_old_connector_state(state, conn);
> > >  	struct intel_digital_connector_state *old_conn_state =
> > >  		to_intel_digital_connector_state(old_state);
> > > +	struct intel_encoder *encoder =
> > > +		intel_attached_encoder(to_intel_connector(conn));
> > > +	struct intel_digital_port *dig_port =
> > > +		encoder ? enc_to_dig_port(encoder) : NULL;
> > >  	struct drm_crtc_state *crtc_state;
> > >
> > >  	intel_hdcp_atomic_check(conn, old_state, new_state);
> > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
> > >
> > >  	crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
> > >
> > > +	/*
> > > +	 * The spec says that it is not safe to use a disconnected Type-C port.
> > > +	 * Therefore, check to see if this connector is connected and reject
> > > +	 * the modeset if there is no sink detected.
> > > +	 */
> > > +	if (dig_port && !dig_port->connected(encoder) &&
> > 
> > This check is racy, as right after dig_port->connected() returns true,
> > the port can become disconnected.
>
> [Kasireddy, Vivek] Given that, do you think the only way to reliably determine
> if the Type-C port has a sink is to check the live status and ignore dig_port->tc_mode? 
>
> If that is the case, should I just add a function pointer to dig_port to call
> tc_port_live_status_mask()? Or, should I just change intel_tc_port_connected()
> to ignore dig_port->tc_mode like below:
> @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
> 
>         intel_tc_port_lock(dig_port);
> 
> -       is_connected = tc_port_live_status_mask(dig_port) &
> -                      BIT(dig_port->tc_mode);
> +       is_connected = tc_port_live_status_mask(dig_port);
> 
> Or, are there any other elegant ways that you can think of to determine whether 
> a tc port has a sink or not?

I meant that I don't think there is a way to prevent a modeset on a
disconnected port. Live status is what provides the connected state, but
it can change right after it is read out.

> Thanks,
> Vivek
> 
> > 
> > > +	    intel_phy_is_tc(dev_priv,
> > > +	    intel_port_to_phy(dev_priv, encoder->port))) {
> > > +		drm_dbg_atomic(&dev_priv->drm,
> > > +			       "[CONNECTOR:%d:%s] is not connected; rejecting the
> > modeset\n",
> > > +			       conn->base.id, conn->name);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > >  	/*
> > >  	 * These properties are handled by fastset, and might not end
> > >  	 * up in a modeset.
> > > --
> > > 2.35.1
> > >
