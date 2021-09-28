Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DE41B7A2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 21:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676436E96C;
	Tue, 28 Sep 2021 19:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441FC6E96C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 19:34:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224827855"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224827855"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 12:34:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="519261834"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 12:34:11 -0700
Date: Tue, 28 Sep 2021 22:34:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210928193408.GA2103381@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-8-imre.deak@intel.com>
 <689f485c910ca7cce9793fecaa53778950242892.camel@intel.com>
 <20210927214644.GA2043218@ideak-desk.fi.intel.com>
 <c0f746d643195d9f36e990a9489f48a74d2e5508.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c0f746d643195d9f36e990a9489f48a74d2e5508.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC
 PHY's disconnected state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 28, 2021 at 10:18:25PM +0300, Souza, Jose wrote:
> On Tue, 2021-09-28 at 00:46 +0300, Imre Deak wrote:
> > On Tue, Sep 28, 2021 at 12:16:45AM +0300, Souza, Jose wrote:
> > > On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
> > > > A follow-up change will start to disconnect/re-connect PHYs around AUX
> > > > transfers and modeset enable/disables. To prepare for that add a new
> > > > TypeC PHY disconnected mode, to help tracking the TC-cold blocking power
> > > > domain status (no power domain in disconnected state, mode dependent
> > > > power domain in connected state).
> > > > 
> > > > Cc: José Roberto de Souza <jose.souza@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> > > >  drivers/gpu/drm/i915/display/intel_tc.c      | 26 ++++++++++++++------
> > > >  2 files changed, 19 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > > > index d425ee77aad71..87b96fed5e0ba 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > @@ -270,6 +270,7 @@ enum tc_port {
> > > >  };
> > > >  
> > > >  enum tc_port_mode {
> > > > +	TC_PORT_DISCONNECTED,
> > > >  	TC_PORT_TBT_ALT,
> > > >  	TC_PORT_DP_ALT,
> > > >  	TC_PORT_LEGACY,
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > > > index aa4c1e5e0c002..77b16a7c43466 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > > @@ -12,13 +12,14 @@
> > > >  static const char *tc_port_mode_name(enum tc_port_mode mode)
> > > >  {
> > > >  	static const char * const names[] = {
> > > > +		[TC_PORT_DISCONNECTED] = "disconnected",
> > > >  		[TC_PORT_TBT_ALT] = "tbt-alt",
> > > >  		[TC_PORT_DP_ALT] = "dp-alt",
> > > >  		[TC_PORT_LEGACY] = "legacy",
> > > >  	};
> > > >  
> > > >  	if (WARN_ON(mode >= ARRAY_SIZE(names)))
> > > > -		mode = TC_PORT_TBT_ALT;
> > > > +		mode = TC_PORT_DISCONNECTED;
> > > >  
> > > >  	return names[mode];
> > > >  }
> > > > @@ -513,10 +514,11 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
> > > >  	case TC_PORT_LEGACY:
> > > >  	case TC_PORT_DP_ALT:
> > > >  		tc_phy_take_ownership(dig_port, false);
> > > > -		dig_port->tc_mode = TC_PORT_TBT_ALT;
> > > > -		break;
> > > > +		fallthrough;
> > > >  	case TC_PORT_TBT_ALT:
> > > > -		/* Nothing to do, we stay in TBT-alt mode */
> > > > +		dig_port->tc_mode = TC_PORT_DISCONNECTED;
> > > > +		fallthrough;
> > > > +	case TC_PORT_DISCONNECTED:
> > > >  		break;
> > > >  	default:
> > > >  		MISSING_CASE(dig_port->tc_mode);
> > > > @@ -621,31 +623,34 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
> > > >  {
> > > >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > >  	struct intel_encoder *encoder = &dig_port->base;
> > > > -	intel_wakeref_t tc_cold_wref;
> > > >  	int active_links = 0;
> > > >  
> > > >  	mutex_lock(&dig_port->tc_lock);
> > > > -	tc_cold_wref = tc_cold_block(dig_port);
> > > >  
> > > > -	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> > > >  	if (dig_port->dp.is_mst)
> > > >  		active_links = intel_dp_mst_encoder_active_links(dig_port);
> > > >  	else if (encoder->base.crtc)
> > > >  		active_links = to_intel_crtc(encoder->base.crtc)->active;
> > > >  
> > > > +	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
> > > >  	if (active_links) {
> > > > +		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port);
> > > > +
> > > > +		dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> > > > +
> > > >  		if (!icl_tc_phy_is_connected(dig_port))
> > > >  			drm_dbg_kms(&i915->drm,
> > > >  				    "Port %s: PHY disconnected with %d active link(s)\n",
> > > >  				    dig_port->tc_port_name, active_links);
> > > >  		intel_tc_port_link_init_refcount(dig_port, active_links);
> > > > +
> > > > +		tc_cold_unblock(dig_port, tc_cold_wref);
> > > >  	}
> > > >  
> > > >  	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
> > > >  		    dig_port->tc_port_name,
> > > >  		    tc_port_mode_name(dig_port->tc_mode));
> > > >  
> > > > -	tc_cold_unblock(dig_port, tc_cold_wref);
> > > >  	mutex_unlock(&dig_port->tc_lock);
> > > >  }
> > > >  
> > > > @@ -704,6 +709,10 @@ static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
> > > >  		tc_cold_unblock(dig_port, tc_cold_wref);
> > > >  	}
> > > >  
> > > > +	drm_WARN_ON(&i915->drm, dig_port->tc_mode == TC_PORT_DISCONNECTED);
> > > 
> > > This warning will be printed everytime it goes to suspend, other than that lgtm.
> > 
> > By the end of the patchset this shouldn't warn. But yes, for bisect to
> > work this should've been added only in patch 11, I'll move it there.
> 
> Would not be possible to use TC_PORT_DISCONNECTED when really
> disconnected and dropping the use of TC_PORT_TBT_ALT for it?

TC_PORT_DISCONNECTED is the state when the PHY ownership is not held and
we don't hold any power domains.

TC_PORT_TBT_ALT is the state when the PHY ownership is not held (like
above), and we hold the power domain needed to block TC-cold.

So the TBT_ALT state is not used for the disconnected state.

> Further patches does the proper tc cold exit sequence when mode is
> TC_PORT_DISCONNECTED, that would cover all the cases from when going
> from TC_PORT_DISCONNECTED to any other state and would make the code
> easier to understand.

Tc-cold will always get properly blocked, as bspec requires, when going
to other states from both the DISCONNECTED and the TBT_ALT state.

> > > > +	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_TBT_ALT &&
> > > > +				!tc_phy_is_owned(dig_port));
> > > > +
> > > >  	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
> > > >  	dig_port->tc_lock_wakeref = wakeref;
> > > >  }
> > > > @@ -816,6 +825,7 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> > > >  
> > > >  	mutex_init(&dig_port->tc_lock);
> > > >  	dig_port->tc_legacy_port = is_legacy;
> > > > +	dig_port->tc_mode = TC_PORT_DISCONNECTED;
> > > >  	dig_port->tc_link_refcount = 0;
> > > >  	tc_port_load_fia_params(i915, dig_port);
> > > >  }
> > > 
> 
