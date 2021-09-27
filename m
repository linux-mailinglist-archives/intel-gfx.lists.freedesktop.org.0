Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6540C41A2FA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 00:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8633F6E047;
	Mon, 27 Sep 2021 22:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92D76E047
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 22:30:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="211825903"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="211825903"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 15:28:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="553500211"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 15:28:47 -0700
Date: Tue, 28 Sep 2021 01:28:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210927222843.GC2043218@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-9-imre.deak@intel.com>
 <f349e0bd28b4041fc71eb76882bae5bf542a6d86.camel@intel.com>
 <20210927221345.GB2043218@ideak-desk.fi.intel.com>
 <e640e3f2a01ddc4e9f57a9ff7411468a938441df.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e640e3f2a01ddc4e9f57a9ff7411468a938441df.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/tc: Refactor TC-cold
 block/unblock helpers
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

On Tue, Sep 28, 2021 at 01:21:21AM +0300, Souza, Jose wrote:
> On Tue, 2021-09-28 at 01:13 +0300, Imre Deak wrote:
> > On Tue, Sep 28, 2021 at 12:56:24AM +0300, Souza, Jose wrote:
> > > On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
> > > > A follow-up change will select the TC-cold blocking power domain based
> > > > on the TypeC mode, prepare for that here.
> > > > 
> > > > Also bring intel_tc_cold_requires_aux_pw() earlier to its logical place
> > > > for readability.
> > > > 
> > > > No functional change.
> > > > 
> > > > Cc: José Roberto de Souza <jose.souza@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > > >  drivers/gpu/drm/i915/display/intel_tc.c       | 63 +++++++++++--------
> > > >  2 files changed, 39 insertions(+), 26 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index e9e806d90eec4..08a73ffded957 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1663,8 +1663,10 @@ struct intel_digital_port {
> > > >  	enum intel_display_power_domain ddi_io_power_domain;
> > > >  	intel_wakeref_t ddi_io_wakeref;
> > > >  	intel_wakeref_t aux_wakeref;
> > > > +
> > > >  	struct mutex tc_lock;	/* protects the TypeC port mode */
> > > >  	intel_wakeref_t tc_lock_wakeref;
> > > > +	enum intel_display_power_domain tc_lock_power_domain;
> > > >  	int tc_link_refcount;
> > > >  	bool tc_legacy_port:1;
> > > >  	char tc_port_name[8];
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > > > index 77b16a7c43466..24d2dc2e19a7d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > > @@ -48,8 +48,16 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
> > > >  	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
> > > >  }
> > > >  
> > > > +bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > > +
> > > > +	return (DISPLAY_VER(i915) == 11 && dig_port->tc_legacy_port) ||
> > > > +		IS_ALDERLAKE_P(i915);
> > > > +}
> > > > +
> > > >  static enum intel_display_power_domain
> > > > -tc_cold_get_power_domain(struct intel_digital_port *dig_port)
> > > > +tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
> > > >  {
> > > >  	if (intel_tc_cold_requires_aux_pw(dig_port))
> > > >  		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> > > > @@ -58,23 +66,30 @@ tc_cold_get_power_domain(struct intel_digital_port *dig_port)
> > > >  }
> > > >  
> > > >  static intel_wakeref_t
> > > > -tc_cold_block(struct intel_digital_port *dig_port)
> > > > +tc_cold_block_in_mode(struct intel_digital_port *dig_port, enum tc_port_mode mode,
> > > > +		      enum intel_display_power_domain *domain)
> > > >  {
> > > >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > > -	enum intel_display_power_domain domain;
> > > >  
> > > >  	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
> > > >  		return 0;
> > > >  
> > > > -	domain = tc_cold_get_power_domain(dig_port);
> > > > -	return intel_display_power_get(i915, domain);
> > > > +	*domain = tc_cold_get_power_domain(dig_port, mode);
> > > 
> > > I see problems with this approach.
> > > 
> > > If there is a TC alt-mode is connected and current software state is
> > > TBT or disconnected it will not get the power domain to exit TC cold,
> > > what could case invalid reads of registers.
> > 
> > If the mode needs to be changed, like in the above cases, the power
> > domain required to exit TC cold will be taken.
> 
> How?
> I see at least this 2 problematic cases.
> 
> intel_tc_port_sanitize()
> 	tc_cold_block(mode=TBT)

It's in disconnected mode at this point.

> 
> 	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> 	...
> 
> 	tc_cold_unblock(dig_port, domain, tc_cold_wref);
> 
> Other case
> 
> intel_tc_port_connected()
> 
> 	tc_cold_block(mode=TBT)

Reading PORT_TX_DFLEXDPSP while in TC-cold returns 0xffffffff, and it's
handled when reading it (which is also required by the spec).

> 	is_connected = tc_port_live_status_mask(dig_port) &
> 		       BIT(dig_port->tc_mode);
> 
> 	tc_cold_unblock(dig_port, domain, tc_cold_wref);
> 
> 
> > 
> > > From the next patch commit message: 'For the ADL-P TBT mode the spec
> > > doesn't require blocking TC-cold by using the legacy AUX power
> > > domain'.
> > > 
> > > It is not required for TBT but when there is nothing connected,
> > > hardware is not in TBT mode so it can still get into TC cold.
> > 
> > If there is nothing connected the required power domain will be taken to
> > exit TC cold.
> > 
> > > > +
> > > > +	return intel_display_power_get(i915, *domain);
> > > > +}
> > > > +
> > > > +static intel_wakeref_t
> > > > +tc_cold_block(struct intel_digital_port *dig_port, enum intel_display_power_domain *domain)
> > > > +{
> > > > +	return tc_cold_block_in_mode(dig_port, dig_port->tc_mode, domain);
> > > >  }
> > > >  
> > > >  static void
> > > > -tc_cold_unblock(struct intel_digital_port *dig_port, intel_wakeref_t wakeref)
> > > > +tc_cold_unblock(struct intel_digital_port *dig_port, enum intel_display_power_domain domain,
> > > > +		intel_wakeref_t wakeref)
> > > >  {
> > > >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > > -	enum intel_display_power_domain domain;
> > > >  
> > > >  	/*
> > > >  	 * wakeref == -1, means some error happened saving save_depot_stack but
> > > > @@ -84,8 +99,7 @@ tc_cold_unblock(struct intel_digital_port *dig_port, intel_wakeref_t wakeref)
> > > >  	if (wakeref == 0)
> > > >  		return;
> > > >  
> > > > -	domain = tc_cold_get_power_domain(dig_port);
> > > > -	intel_display_power_put_async(i915, domain, wakeref);
> > > > +	intel_display_power_put(i915, domain, wakeref);
> > > >  }
> > > >  
> > > >  static void
> > > > @@ -98,7 +112,8 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
> > > >  		return;
> > > >  
> > > >  	enabled = intel_display_power_is_enabled(i915,
> > > > -						 tc_cold_get_power_domain(dig_port));
> > > > +						 tc_cold_get_power_domain(dig_port,
> > > > +									  dig_port->tc_mode));
> > > >  	drm_WARN_ON(&i915->drm, !enabled);
> > > >  }
> > > >  
> > > > @@ -634,7 +649,8 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
> > > >  
> > > >  	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
> > > >  	if (active_links) {
> > > > -		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port);
> > > > +		enum intel_display_power_domain domain;
> > > > +		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port, &domain);
> > > >  
> > > >  		dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
> > > >  
> > > > @@ -644,7 +660,7 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
> > > >  				    dig_port->tc_port_name, active_links);
> > > >  		intel_tc_port_link_init_refcount(dig_port, active_links);
> > > >  
> > > > -		tc_cold_unblock(dig_port, tc_cold_wref);
> > > > +		tc_cold_unblock(dig_port, domain, tc_cold_wref);
> > > >  	}
> > > >  
> > > >  	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
> > > > @@ -673,15 +689,16 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
> > > >  {
> > > >  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > >  	bool is_connected;
> > > > +	enum intel_display_power_domain domain;
> > > >  	intel_wakeref_t tc_cold_wref;
> > > >  
> > > >  	intel_tc_port_lock(dig_port);
> > > > -	tc_cold_wref = tc_cold_block(dig_port);
> > > > +	tc_cold_wref = tc_cold_block(dig_port, &domain);
> > > >  
> > > >  	is_connected = tc_port_live_status_mask(dig_port) &
> > > >  		       BIT(dig_port->tc_mode);
> > > >  
> > > > -	tc_cold_unblock(dig_port, tc_cold_wref);
> > > > +	tc_cold_unblock(dig_port, domain, tc_cold_wref);
> > > >  	intel_tc_port_unlock(dig_port);
> > > >  
> > > >  	return is_connected;
> > > > @@ -698,15 +715,16 @@ static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
> > > >  	mutex_lock(&dig_port->tc_lock);
> > > >  
> > > >  	if (!dig_port->tc_link_refcount) {
> > > > +		enum intel_display_power_domain domain;
> > > >  		intel_wakeref_t tc_cold_wref;
> > > >  
> > > > -		tc_cold_wref = tc_cold_block(dig_port);
> > > > +		tc_cold_wref = tc_cold_block(dig_port, &domain);
> > > >  
> > > >  		if (force_disconnect || intel_tc_port_needs_reset(dig_port))
> > > >  			intel_tc_port_reset_mode(dig_port, required_lanes,
> > > >  						 force_disconnect);
> > > >  
> > > > -		tc_cold_unblock(dig_port, tc_cold_wref);
> > > > +		tc_cold_unblock(dig_port, domain, tc_cold_wref);
> > > >  	}
> > > >  
> > > >  	drm_WARN_ON(&i915->drm, dig_port->tc_mode == TC_PORT_DISCONNECTED);
> > > > @@ -775,6 +793,7 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
> > > >  static bool
> > > >  tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig_port)
> > > >  {
> > > > +	enum intel_display_power_domain domain;
> > > >  	intel_wakeref_t wakeref;
> > > >  	u32 val;
> > > >  
> > > > @@ -782,9 +801,9 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
> > > >  		return false;
> > > >  
> > > >  	mutex_lock(&dig_port->tc_lock);
> > > > -	wakeref = tc_cold_block(dig_port);
> > > > +	wakeref = tc_cold_block(dig_port, &domain);
> > > >  	val = intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
> > > > -	tc_cold_unblock(dig_port, wakeref);
> > > > +	tc_cold_unblock(dig_port, domain, wakeref);
> > > >  	mutex_unlock(&dig_port->tc_lock);
> > > >  
> > > >  	drm_WARN_ON(&i915->drm, val == 0xffffffff);
> > > > @@ -829,11 +848,3 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> > > >  	dig_port->tc_link_refcount = 0;
> > > >  	tc_port_load_fia_params(i915, dig_port);
> > > >  }
> > > > -
> > > > -bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
> > > > -{
> > > > -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > > -
> > > > -	return (DISPLAY_VER(i915) == 11 && dig_port->tc_legacy_port) ||
> > > > -		IS_ALDERLAKE_P(i915);
> > > > -}
> > > 
> 
