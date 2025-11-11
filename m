Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCEDC4F4D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 18:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD81310E631;
	Tue, 11 Nov 2025 17:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eb7nOEYq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9C710E630;
 Tue, 11 Nov 2025 17:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762883164; x=1794419164;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g0LFUfOWIx0Xmb70dsBglBtuKKi8LCbjdf0SbkS3JK0=;
 b=eb7nOEYqopSogXvUptranPdyYIpPZnW/AcVBevb4yOR4GKAY4uI2A6X3
 kMyMLgJH+a8lh6bMA+8wf081/vfqc60OfKv2kJWACUegbLmSBeQ7wqbfs
 PH3dqwYQeZFQ4ZM5ebzlc35SZADYDY7xIGHBfwMV2ddnQXwJz0Q15vH3j
 jIfVg+V30rt/eNetwozws0XyBXJ88PAK+9Pkl9WIMCp74hgZrTL8AtFRH
 IKk8RV4F1kL6KI8Jc6rY1GiLqimDaqaBoRuP8hqvicefXFMmkDWtAlDzK
 y85mK7aPw1O/ptakmn996XCpEkxntK3zs2uN5jZMqYOgXq+klSClbwwHH g==;
X-CSE-ConnectionGUID: r7cPa6gAS2amXhvMo/HJaA==
X-CSE-MsgGUID: E/v46QeaTou++tDsNHEDkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="63954635"
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="63954635"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 09:46:03 -0800
X-CSE-ConnectionGUID: Z+TRYa3iRHaVBiVraNaJgg==
X-CSE-MsgGUID: 1PprZdBBRy+bLbKpydhUfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="188278325"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 09:46:01 -0800
Date: Tue, 11 Nov 2025 19:45:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/16] drm/i915/de: Include units in intel_de_wait*()
 function names
Message-ID: <aRN2VaLGvtqdCb9t@intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-4-ville.syrjala@linux.intel.com>
 <IA3PR11MB89379C6F69C3FE61BE3B0CF1E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB89379C6F69C3FE61BE3B0CF1E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Nov 11, 2025 at 04:21:09AM +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH 03/16] drm/i915/de: Include units in intel_de_wait*()
> > function names
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > intel_de_wait*() take the timeout in milliseconds. Incldue
> 
> Typo * Include
> 
> > that information in the function name to make life less
> > confusing. And I'll also be introducing microsecond variants
> 
> Maybe no full stop if you are using "and" also should we be using references to what
> One will be doing in later commits ?

I dropped the "and". As for referencing later commis, yeah it's perhaps
not the best thing to do (especially if those later commits end up not
happening for whatever reason). But the introduction of the _us() is a
good justification for the _ms() change so I think I'll keep it.

I suppose I could have reordered the patches to add _us() stuff first,
and then follow up with the _ms() rename. But I'm too lazy to reorder
the series now.

> 
> Other than that LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> > of these later.
> > 
> > Done with cocci:
> > @@
> > @@
> > (
> > static int
> > - intel_de_wait
> > + intel_de_wait_ms
> >  (...)
> > {
> > ...
> > }
> > |
> > static int
> > - intel_de_wait_fw
> > + intel_de_wait_fw_ms
> >  (...)
> > {
> > ...
> > }
> > |
> > static int
> > - intel_de_wait_for_set
> > + intel_de_wait_for_set_ms
> >  (...)
> > {
> > ...
> > }
> > |
> > static int
> > - intel_de_wait_for_clear
> > + intel_de_wait_for_clear_ms
> >  (...)
> > {
> > ...
> > }
> > )
> > 
> > @@
> > @@
> > (
> > - intel_de_wait
> > + intel_de_wait_ms
> > |
> > - intel_de_wait_fw
> > + intel_de_wait_fw_ms
> > |
> > - intel_de_wait_for_set
> > + intel_de_wait_for_set_ms
> > |
> > - intel_de_wait_for_clear
> > + intel_de_wait_for_clear_ms
> > )
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/hsw_ips.c        |  4 +-
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |  8 +--
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 20 +++----
> >  drivers/gpu/drm/i915/display/intel_crt.c      | 16 +++---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 36 ++++++-------
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++++-----
> >  drivers/gpu/drm/i915/display/intel_de.h       | 22 ++++----
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
> >  .../drm/i915/display/intel_display_power.c    |  4 +-
> >  .../i915/display/intel_display_power_well.c   | 38 ++++++-------
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 14 ++---
> >  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  8 +--
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |  4 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++--
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
> >  drivers/gpu/drm/i915/display/intel_flipq.c    |  8 +--
> >  drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     | 44 ++++++++-------
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  6 +--
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |  6 +--
> >  .../gpu/drm/i915/display/intel_pch_display.c  | 12 ++---
> >  drivers/gpu/drm/i915/display/intel_pmdemand.c | 12 ++---
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++--
> >  drivers/gpu/drm/i915/display/intel_sbi.c      |  6 ++-
> >  drivers/gpu/drm/i915/display/intel_snps_phy.c |  8 +--
> >  drivers/gpu/drm/i915/display/intel_tc.c       |  8 +--
> >  drivers/gpu/drm/i915/display/intel_vrr.c      |  6 +--
> >  drivers/gpu/drm/i915/display/vlv_dsi.c        | 54 +++++++++----------
> >  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  8 +--
> >  30 files changed, 207 insertions(+), 205 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c
> > b/drivers/gpu/drm/i915/display/hsw_ips.c
> > index f444c5b7a27b..008d339d5c21 100644
> > --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> > +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> > @@ -56,7 +56,7 @@ static void hsw_ips_enable(const struct intel_crtc_state
> > *crtc_state)
> >  		 * the HW state readout code will complain that the expected
> >  		 * IPS_CTL value is not the one we read.
> >  		 */
> > -		if (intel_de_wait_for_set(display, IPS_CTL, IPS_ENABLE, 50))
> > +		if (intel_de_wait_for_set_ms(display, IPS_CTL, IPS_ENABLE,
> > 50))
> >  			drm_err(display->drm,
> >  				"Timed out waiting for IPS enable\n");
> >  	}
> > @@ -78,7 +78,7 @@ bool hsw_ips_disable(const struct intel_crtc_state
> > *crtc_state)
> >  		 * 42ms timeout value leads to occasional timeouts so use
> > 100ms
> >  		 * instead.
> >  		 */
> > -		if (intel_de_wait_for_clear(display, IPS_CTL, IPS_ENABLE,
> > 100))
> > +		if (intel_de_wait_for_clear_ms(display, IPS_CTL, IPS_ENABLE,
> > 100))
> >  			drm_err(display->drm,
> >  				"Timed out waiting for IPS disable\n");
> >  	} else {
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 70d4c1bc70fc..6a11b3bb219b 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1048,8 +1048,8 @@ static void gen11_dsi_enable_transcoder(struct
> > intel_encoder *encoder)
> >  			     TRANSCONF_ENABLE);
> > 
> >  		/* wait for transcoder to be enabled */
> > -		if (intel_de_wait_for_set(display, TRANSCONF(display,
> > dsi_trans),
> > -					  TRANSCONF_STATE_ENABLE, 10))
> > +		if (intel_de_wait_for_set_ms(display, TRANSCONF(display,
> > dsi_trans),
> > +					     TRANSCONF_STATE_ENABLE, 10))
> >  			drm_err(display->drm,
> >  				"DSI transcoder not enabled\n");
> >  	}
> > @@ -1317,8 +1317,8 @@ static void gen11_dsi_disable_transcoder(struct
> > intel_encoder *encoder)
> >  			     TRANSCONF_ENABLE, 0);
> > 
> >  		/* wait for transcoder to be disabled */
> > -		if (intel_de_wait_for_clear(display, TRANSCONF(display,
> > dsi_trans),
> > -					    TRANSCONF_STATE_ENABLE, 50))
> > +		if (intel_de_wait_for_clear_ms(display, TRANSCONF(display,
> > dsi_trans),
> > +					       TRANSCONF_STATE_ENABLE, 50))
> >  			drm_err(display->drm,
> >  				"DSI trancoder not disabled\n");
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4d03cfefc72c..c0d798b1cf46 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1114,7 +1114,7 @@ static void skl_dpll0_enable(struct intel_display
> > *display, int vco)
> >  	intel_de_rmw(display, LCPLL1_CTL,
> >  		     0, LCPLL_PLL_ENABLE);
> > 
> > -	if (intel_de_wait_for_set(display, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
> > +	if (intel_de_wait_for_set_ms(display, LCPLL1_CTL, LCPLL_PLL_LOCK,
> > 5))
> >  		drm_err(display->drm, "DPLL0 not locked\n");
> > 
> >  	display->cdclk.hw.vco = vco;
> > @@ -1128,7 +1128,7 @@ static void skl_dpll0_disable(struct intel_display
> > *display)
> >  	intel_de_rmw(display, LCPLL1_CTL,
> >  		     LCPLL_PLL_ENABLE, 0);
> > 
> > -	if (intel_de_wait_for_clear(display, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
> > +	if (intel_de_wait_for_clear_ms(display, LCPLL1_CTL, LCPLL_PLL_LOCK,
> > 1))
> >  		drm_err(display->drm, "Couldn't disable DPLL0\n");
> > 
> >  	display->cdclk.hw.vco = 0;
> > @@ -1835,8 +1835,8 @@ static void bxt_de_pll_disable(struct intel_display
> > *display)
> >  	intel_de_write(display, BXT_DE_PLL_ENABLE, 0);
> > 
> >  	/* Timeout 200us */
> > -	if (intel_de_wait_for_clear(display,
> > -				    BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK,
> > 1))
> > +	if (intel_de_wait_for_clear_ms(display,
> > +				       BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK,
> > 1))
> >  		drm_err(display->drm, "timeout waiting for DE PLL
> > unlock\n");
> > 
> >  	display->cdclk.hw.vco = 0;
> > @@ -1852,8 +1852,8 @@ static void bxt_de_pll_enable(struct intel_display
> > *display, int vco)
> >  	intel_de_write(display, BXT_DE_PLL_ENABLE,
> > BXT_DE_PLL_PLL_ENABLE);
> > 
> >  	/* Timeout 200us */
> > -	if (intel_de_wait_for_set(display,
> > -				  BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
> > +	if (intel_de_wait_for_set_ms(display,
> > +				     BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK,
> > 1))
> >  		drm_err(display->drm, "timeout waiting for DE PLL lock\n");
> > 
> >  	display->cdclk.hw.vco = vco;
> > @@ -1865,7 +1865,7 @@ static void icl_cdclk_pll_disable(struct intel_display
> > *display)
> >  		     BXT_DE_PLL_PLL_ENABLE, 0);
> > 
> >  	/* Timeout 200us */
> > -	if (intel_de_wait_for_clear(display, BXT_DE_PLL_ENABLE,
> > BXT_DE_PLL_LOCK, 1))
> > +	if (intel_de_wait_for_clear_ms(display, BXT_DE_PLL_ENABLE,
> > BXT_DE_PLL_LOCK, 1))
> >  		drm_err(display->drm, "timeout waiting for CDCLK PLL
> > unlock\n");
> > 
> >  	display->cdclk.hw.vco = 0;
> > @@ -1883,7 +1883,7 @@ static void icl_cdclk_pll_enable(struct intel_display
> > *display, int vco)
> >  	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
> > 
> >  	/* Timeout 200us */
> > -	if (intel_de_wait_for_set(display, BXT_DE_PLL_ENABLE,
> > BXT_DE_PLL_LOCK, 1))
> > +	if (intel_de_wait_for_set_ms(display, BXT_DE_PLL_ENABLE,
> > BXT_DE_PLL_LOCK, 1))
> >  		drm_err(display->drm, "timeout waiting for CDCLK PLL
> > lock\n");
> > 
> >  	display->cdclk.hw.vco = vco;
> > @@ -1903,8 +1903,8 @@ static void adlp_cdclk_pll_crawl(struct intel_display
> > *display, int vco)
> >  	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
> > 
> >  	/* Timeout 200us */
> > -	if (intel_de_wait_for_set(display, BXT_DE_PLL_ENABLE,
> > -				  BXT_DE_PLL_LOCK |
> > BXT_DE_PLL_FREQ_REQ_ACK, 1))
> > +	if (intel_de_wait_for_set_ms(display, BXT_DE_PLL_ENABLE,
> > +				     BXT_DE_PLL_LOCK |
> > BXT_DE_PLL_FREQ_REQ_ACK, 1))
> >  		drm_err(display->drm, "timeout waiting for FREQ change
> > request ack\n");
> > 
> >  	val &= ~BXT_DE_PLL_FREQ_REQ;
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> > b/drivers/gpu/drm/i915/display/intel_crt.c
> > index 31e68047f217..82e89cdbe5a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -498,10 +498,10 @@ static bool ilk_crt_detect_hotplug(struct
> > drm_connector *connector)
> > 
> >  		intel_de_write(display, crt->adpa_reg, adpa);
> > 
> > -		if (intel_de_wait_for_clear(display,
> > -					    crt->adpa_reg,
> > -
> > ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
> > -					    1000))
> > +		if (intel_de_wait_for_clear_ms(display,
> > +					       crt->adpa_reg,
> > +
> > ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
> > +					       1000))
> >  			drm_dbg_kms(display->drm,
> >  				    "timed out waiting for FORCE_TRIGGER");
> > 
> > @@ -553,8 +553,8 @@ static bool valleyview_crt_detect_hotplug(struct
> > drm_connector *connector)
> > 
> >  	intel_de_write(display, crt->adpa_reg, adpa);
> > 
> > -	if (intel_de_wait_for_clear(display, crt->adpa_reg,
> > -				    ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
> > 1000)) {
> > +	if (intel_de_wait_for_clear_ms(display, crt->adpa_reg,
> > +				       ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
> > 1000)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "timed out waiting for FORCE_TRIGGER");
> >  		intel_de_write(display, crt->adpa_reg, save_adpa);
> > @@ -604,8 +604,8 @@ static bool intel_crt_detect_hotplug(struct
> > drm_connector *connector)
> >  					      CRT_HOTPLUG_FORCE_DETECT,
> >  					      CRT_HOTPLUG_FORCE_DETECT);
> >  		/* wait for FORCE_DETECT to go off */
> > -		if (intel_de_wait_for_clear(display,
> > PORT_HOTPLUG_EN(display),
> > -					    CRT_HOTPLUG_FORCE_DETECT,
> > 1000))
> > +		if (intel_de_wait_for_clear_ms(display,
> > PORT_HOTPLUG_EN(display),
> > +					       CRT_HOTPLUG_FORCE_DETECT,
> > 1000))
> >  			drm_dbg_kms(display->drm,
> >  				    "timed out waiting for FORCE_DETECT to go
> > off");
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 1551d30ec584..7870823235c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -145,9 +145,9 @@ void intel_cx0_bus_reset(struct intel_encoder
> > *encoder, int lane)
> >  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display,
> > port, lane),
> >  		       XELPDP_PORT_M2P_TRANSACTION_RESET);
> > 
> > -	if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -				    XELPDP_PORT_M2P_TRANSACTION_RESET,
> > -				    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_M2P_TRANSACTION_RESET,
> > +				       XELPDP_MSGBUS_TIMEOUT_MS)) {
> >  		drm_err_once(display->drm,
> >  			     "Failed to bring PHY %c to idle.\n",
> >  			     phy_name(phy));
> > @@ -213,9 +213,9 @@ static int __intel_cx0_read_once(struct intel_encoder
> > *encoder,
> >  	int ack;
> >  	u32 val;
> > 
> > -	if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > -				    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > +				       XELPDP_MSGBUS_TIMEOUT_MS)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PHY %c Timeout waiting for previous transaction to
> > complete. Reset the bus and retry.\n", phy_name(phy));
> >  		intel_cx0_bus_reset(encoder, lane);
> > @@ -284,9 +284,9 @@ static int __intel_cx0_write_once(struct intel_encoder
> > *encoder,
> >  	int ack;
> >  	u32 val;
> > 
> > -	if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > -				    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > +				       XELPDP_MSGBUS_TIMEOUT_MS)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PHY %c Timeout waiting for previous transaction to
> > complete. Resetting the bus.\n", phy_name(phy));
> >  		intel_cx0_bus_reset(encoder, lane);
> > @@ -300,9 +300,9 @@ static int __intel_cx0_write_once(struct intel_encoder
> > *encoder,
> >  		       XELPDP_PORT_M2P_DATA(data) |
> >  		       XELPDP_PORT_M2P_ADDRESS(addr));
> > 
> > -	if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > -				    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > +				       XELPDP_MSGBUS_TIMEOUT_MS)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PHY %c Timeout waiting for write to complete.
> > Resetting the bus.\n", phy_name(phy));
> >  		intel_cx0_bus_reset(encoder, lane);
> > @@ -2813,9 +2813,9 @@ void
> > intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> > 
> >  	/* Wait for pending transactions.*/
> >  	for_each_cx0_lane_in_mask(lane_mask, lane)
> > -		if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > -					    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +		if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > +					       XELPDP_MSGBUS_TIMEOUT_MS))
> > {
> >  			drm_dbg_kms(display->drm,
> >  				    "PHY %c Timeout waiting for previous
> > transaction to complete. Reset the bus.\n",
> >  				    phy_name(phy));
> > @@ -2924,9 +2924,9 @@ static void intel_cx0_phy_lane_reset(struct
> > intel_encoder *encoder,
> > 
> >  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> > lane_pipe_reset, 0);
> > 
> > -	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display,
> > port),
> > -				    lane_phy_current_status,
> > -				    XELPDP_PORT_RESET_END_TIMEOUT_MS))
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_BUF_CTL2(display, port),
> > +				       lane_phy_current_status,
> > +
> > XELPDP_PORT_RESET_END_TIMEOUT_MS))
> >  		drm_warn(display->drm,
> >  			 "PHY %c failed to bring out of lane reset\n",
> >  			 phy_name(phy));
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 733ef4559131..33fca83c22b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -210,8 +210,8 @@ void intel_wait_ddi_buf_idle(struct intel_display
> > *display, enum port port)
> >  	}
> > 
> >  	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
> > -	if (intel_de_wait_for_set(display, intel_ddi_buf_status_reg(display,
> > port),
> > -				  DDI_BUF_IS_IDLE, 10))
> > +	if (intel_de_wait_for_set_ms(display,
> > intel_ddi_buf_status_reg(display, port),
> > +				     DDI_BUF_IS_IDLE, 10))
> >  		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get
> > idle\n",
> >  			port_name(port));
> >  }
> > @@ -235,8 +235,8 @@ static void intel_wait_ddi_buf_active(struct
> > intel_encoder *encoder)
> >  	}
> > 
> >  	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
> > -	if (intel_de_wait_for_clear(display, intel_ddi_buf_status_reg(display,
> > port),
> > -				    DDI_BUF_IS_IDLE, 10))
> > +	if (intel_de_wait_for_clear_ms(display,
> > intel_ddi_buf_status_reg(display, port),
> > +				       DDI_BUF_IS_IDLE, 10))
> >  		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get
> > active\n",
> >  			port_name(port));
> >  }
> > @@ -2307,8 +2307,8 @@ void intel_ddi_wait_for_act_sent(struct
> > intel_encoder *encoder,
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > 
> > -	if (intel_de_wait_for_set(display, dp_tp_status_reg(encoder,
> > crtc_state),
> > -				  DP_TP_STATUS_ACT_SENT, 1))
> > +	if (intel_de_wait_for_set_ms(display, dp_tp_status_reg(encoder,
> > crtc_state),
> > +				     DP_TP_STATUS_ACT_SENT, 1))
> >  		drm_err(display->drm, "Timed out waiting for ACT sent\n");
> >  }
> > 
> > @@ -2383,11 +2383,11 @@ int intel_ddi_wait_for_fec_status(struct
> > intel_encoder *encoder,
> >  		return 0;
> > 
> >  	if (enabled)
> > -		ret = intel_de_wait_for_set(display,
> > dp_tp_status_reg(encoder, crtc_state),
> > -					    DP_TP_STATUS_FEC_ENABLE_LIVE,
> > 1);
> > +		ret = intel_de_wait_for_set_ms(display,
> > dp_tp_status_reg(encoder, crtc_state),
> > +
> > DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> >  	else
> > -		ret = intel_de_wait_for_clear(display,
> > dp_tp_status_reg(encoder, crtc_state),
> > -					      DP_TP_STATUS_FEC_ENABLE_LIVE,
> > 1);
> > +		ret = intel_de_wait_for_clear_ms(display,
> > dp_tp_status_reg(encoder, crtc_state),
> > +
> > DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > 
> >  	if (ret) {
> >  		drm_err(display->drm,
> > @@ -3868,9 +3868,9 @@ static void intel_ddi_set_idle_link_train(struct
> > intel_dp *intel_dp,
> >  	if (port == PORT_A && DISPLAY_VER(display) < 12)
> >  		return;
> > 
> > -	if (intel_de_wait_for_set(display,
> > -				  dp_tp_status_reg(encoder, crtc_state),
> > -				  DP_TP_STATUS_IDLE_DONE, 2))
> > +	if (intel_de_wait_for_set_ms(display,
> > +				     dp_tp_status_reg(encoder, crtc_state),
> > +				     DP_TP_STATUS_IDLE_DONE, 2))
> >  		drm_err(display->drm,
> >  			"Timed out waiting for DP idle patterns\n");
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> > b/drivers/gpu/drm/i915/display/intel_de.h
> > index a4ad20030c09..d449180d1d22 100644
> > --- a/drivers/gpu/drm/i915/display/intel_de.h
> > +++ b/drivers/gpu/drm/i915/display/intel_de.h
> > @@ -115,8 +115,9 @@ __intel_de_wait_for_register_atomic_nowl(struct
> > intel_display *display,
> >  }
> > 
> >  static inline int
> > -intel_de_wait(struct intel_display *display, i915_reg_t reg,
> > -	      u32 mask, u32 value, unsigned int timeout_ms, u32 *out_value)
> > +intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
> > +		 u32 mask, u32 value, unsigned int timeout_ms,
> > +		 u32 *out_value)
> >  {
> >  	int ret;
> > 
> > @@ -131,8 +132,9 @@ intel_de_wait(struct intel_display *display, i915_reg_t
> > reg,
> >  }
> > 
> >  static inline int
> > -intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
> > -		 u32 mask, u32 value, unsigned int timeout_ms, u32
> > *out_value)
> > +intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
> > +		    u32 mask, u32 value, unsigned int timeout_ms,
> > +		    u32 *out_value)
> >  {
> >  	int ret;
> > 
> > @@ -166,17 +168,17 @@ intel_de_wait_custom(struct intel_display *display,
> > i915_reg_t reg,
> >  }
> > 
> >  static inline int
> > -intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
> > -		      u32 mask, unsigned int timeout_ms)
> > +intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
> > +			 u32 mask, unsigned int timeout_ms)
> >  {
> > -	return intel_de_wait(display, reg, mask, mask, timeout_ms, NULL);
> > +	return intel_de_wait_ms(display, reg, mask, mask, timeout_ms,
> > NULL);
> >  }
> > 
> >  static inline int
> > -intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
> > -			u32 mask, unsigned int timeout_ms)
> > +intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
> > +			   u32 mask, unsigned int timeout_ms)
> >  {
> > -	return intel_de_wait(display, reg, mask, 0, timeout_ms, NULL);
> > +	return intel_de_wait_ms(display, reg, mask, 0, timeout_ms, NULL);
> >  }
> > 
> >  /*
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 25986bd8fbdd..6bca186608ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -359,8 +359,8 @@ intel_wait_for_pipe_off(const struct intel_crtc_state
> > *old_crtc_state)
> >  		enum transcoder cpu_transcoder = old_crtc_state-
> > >cpu_transcoder;
> > 
> >  		/* Wait for the Pipe State to go off */
> > -		if (intel_de_wait_for_clear(display, TRANSCONF(display,
> > cpu_transcoder),
> > -					    TRANSCONF_STATE_ENABLE, 100))
> > +		if (intel_de_wait_for_clear_ms(display, TRANSCONF(display,
> > cpu_transcoder),
> > +					       TRANSCONF_STATE_ENABLE,
> > 100))
> >  			drm_WARN(display->drm, 1, "pipe_off wait timed
> > out\n");
> >  	} else {
> >  		intel_wait_for_pipe_scanline_stopped(crtc);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 74fcd9cfe911..2b86a634c1f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1305,7 +1305,7 @@ static void hsw_disable_lcpll(struct intel_display
> > *display,
> >  	intel_de_write(display, LCPLL_CTL, val);
> >  	intel_de_posting_read(display, LCPLL_CTL);
> > 
> > -	if (intel_de_wait_for_clear(display, LCPLL_CTL, LCPLL_PLL_LOCK, 1))
> > +	if (intel_de_wait_for_clear_ms(display, LCPLL_CTL, LCPLL_PLL_LOCK,
> > 1))
> >  		drm_err(display->drm, "LCPLL still locked\n");
> > 
> >  	val = hsw_read_dcomp(display);
> > @@ -1362,7 +1362,7 @@ static void hsw_restore_lcpll(struct intel_display
> > *display)
> >  	val &= ~LCPLL_PLL_DISABLE;
> >  	intel_de_write(display, LCPLL_CTL, val);
> > 
> > -	if (intel_de_wait_for_set(display, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
> > +	if (intel_de_wait_for_set_ms(display, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
> >  		drm_err(display->drm, "LCPLL not locked yet\n");
> > 
> >  	if (val & LCPLL_CD_SOURCE_FCLK) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index afa5d8964f0d..8593d2daeaa6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -293,8 +293,8 @@ static void hsw_wait_for_power_well_enable(struct
> > intel_display *display,
> >  	}
> > 
> >  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> > -	if (intel_de_wait_for_set(display, regs->driver,
> > -				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> > timeout)) {
> > +	if (intel_de_wait_for_set_ms(display, regs->driver,
> > +				     HSW_PWR_WELL_CTL_STATE(pw_idx),
> > timeout)) {
> >  		drm_dbg_kms(display->drm, "%s power well enable
> > timeout\n",
> >  			    intel_power_well_name(power_well));
> > 
> > @@ -338,9 +338,9 @@ static void hsw_wait_for_power_well_disable(struct
> > intel_display *display,
> >  	 */
> >  	reqs = hsw_power_well_requesters(display, regs, pw_idx);
> > 
> > -	ret = intel_de_wait_for_clear(display, regs->driver,
> > -				      HSW_PWR_WELL_CTL_STATE(pw_idx),
> > -				      reqs ? 0 : 1);
> > +	ret = intel_de_wait_for_clear_ms(display, regs->driver,
> > +
> > HSW_PWR_WELL_CTL_STATE(pw_idx),
> > +					 reqs ? 0 : 1);
> >  	if (!ret)
> >  		return;
> > 
> > @@ -359,8 +359,8 @@ static void gen9_wait_for_power_well_fuses(struct
> > intel_display *display,
> >  {
> >  	/* Timeout 5us for PG#0, for other PGs 1us */
> >  	drm_WARN_ON(display->drm,
> > -		    intel_de_wait_for_set(display, SKL_FUSE_STATUS,
> > -					  SKL_FUSE_PG_DIST_STATUS(pg), 1));
> > +		    intel_de_wait_for_set_ms(display, SKL_FUSE_STATUS,
> > +					     SKL_FUSE_PG_DIST_STATUS(pg),
> > 1));
> >  }
> > 
> >  static void hsw_power_well_enable(struct intel_display *display,
> > @@ -1445,8 +1445,8 @@ static void assert_chv_phy_status(struct
> > intel_display *display)
> >  	 * The PHY may be busy with some initial calibration and whatnot,
> >  	 * so the power state can take a while to actually change.
> >  	 */
> > -	if (intel_de_wait(display, DISPLAY_PHY_STATUS,
> > -			  phy_status_mask, phy_status, 10, NULL))
> > +	if (intel_de_wait_ms(display, DISPLAY_PHY_STATUS,
> > +			     phy_status_mask, phy_status, 10, NULL))
> >  		drm_err(display->drm,
> >  			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x
> > (PHY_CONTROL=0x%08x)\n",
> >  			intel_de_read(display, DISPLAY_PHY_STATUS) &
> > phy_status_mask,
> > @@ -1476,8 +1476,8 @@ static void
> > chv_dpio_cmn_power_well_enable(struct intel_display *display,
> >  	vlv_set_power_well(display, power_well, true);
> > 
> >  	/* Poll for phypwrgood signal */
> > -	if (intel_de_wait_for_set(display, DISPLAY_PHY_STATUS,
> > -				  PHY_POWERGOOD(phy), 1))
> > +	if (intel_de_wait_for_set_ms(display, DISPLAY_PHY_STATUS,
> > +				     PHY_POWERGOOD(phy), 1))
> >  		drm_err(display->drm, "Display PHY %d is not power up\n",
> >  			phy);
> > 
> > @@ -1867,8 +1867,8 @@ static void xelpdp_aux_power_well_enable(struct
> > intel_display *display,
> >  	 * bit.
> >  	 */
> >  	if (DISPLAY_VER(display) >= 35) {
> > -		if (intel_de_wait_for_set(display,
> > XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> > -
> > XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
> > +		if (intel_de_wait_for_set_ms(display,
> > XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> > +
> > XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
> >  			drm_warn(display->drm,
> >  				 "Timeout waiting for PHY %c AUX channel
> > power to be up\n",
> >  				 phy_name(phy));
> > @@ -1888,8 +1888,8 @@ static void xelpdp_aux_power_well_disable(struct
> > intel_display *display,
> >  		     0);
> > 
> >  	if (DISPLAY_VER(display) >= 35) {
> > -		if (intel_de_wait_for_clear(display,
> > XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> > -
> > XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> > +		if (intel_de_wait_for_clear_ms(display,
> > XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> > +
> > XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> >  			drm_warn(display->drm,
> >  				 "Timeout waiting for PHY %c AUX channel to
> > powerdown\n",
> >  				 phy_name(phy));
> > @@ -1913,8 +1913,8 @@ static void xe2lpd_pica_power_well_enable(struct
> > intel_display *display,
> >  	intel_de_write(display, XE2LPD_PICA_PW_CTL,
> >  		       XE2LPD_PICA_CTL_POWER_REQUEST);
> > 
> > -	if (intel_de_wait_for_set(display, XE2LPD_PICA_PW_CTL,
> > -				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > +	if (intel_de_wait_for_set_ms(display, XE2LPD_PICA_PW_CTL,
> > +				     XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> >  		drm_dbg_kms(display->drm, "pica power well enable
> > timeout\n");
> > 
> >  		drm_WARN(display->drm, 1, "Power well PICA timeout when
> > enabled");
> > @@ -1926,8 +1926,8 @@ static void xe2lpd_pica_power_well_disable(struct
> > intel_display *display,
> >  {
> >  	intel_de_write(display, XE2LPD_PICA_PW_CTL, 0);
> > 
> > -	if (intel_de_wait_for_clear(display, XE2LPD_PICA_PW_CTL,
> > -				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > +	if (intel_de_wait_for_clear_ms(display, XE2LPD_PICA_PW_CTL,
> > +				       XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> >  		drm_dbg_kms(display->drm, "pica power well disable
> > timeout\n");
> > 
> >  		drm_WARN(display->drm, 1, "Power well PICA timeout when
> > disabled");
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 27bb2199659f..14ed0ea22dd3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -782,9 +782,9 @@ intel_dp_mst_hdcp_stream_encryption(struct
> > intel_connector *connector,
> >  		return -EINVAL;
> > 
> >  	/* Wait for encryption confirmation */
> > -	if (intel_de_wait(display, HDCP_STATUS(display, cpu_transcoder,
> > port),
> > -			  stream_enc_status, enable ? stream_enc_status : 0,
> > -			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS,
> > NULL)) {
> > +	if (intel_de_wait_ms(display, HDCP_STATUS(display, cpu_transcoder,
> > port),
> > +			     stream_enc_status, enable ? stream_enc_status : 0,
> > +			     HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS,
> > NULL)) {
> >  		drm_err(display->drm, "Timed out waiting for transcoder: %s
> > stream encryption %s\n",
> >  			transcoder_name(cpu_transcoder),
> > str_enabled_disabled(enable));
> >  		return -ETIMEDOUT;
> > @@ -821,10 +821,10 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> > intel_connector *connector,
> >  		return ret;
> > 
> >  	/* Wait for encryption confirmation */
> > -	if (intel_de_wait(display, HDCP2_STREAM_STATUS(display,
> > cpu_transcoder, pipe),
> > -			  STREAM_ENCRYPTION_STATUS,
> > -			  enable ? STREAM_ENCRYPTION_STATUS : 0,
> > -			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS,
> > NULL)) {
> > +	if (intel_de_wait_ms(display, HDCP2_STREAM_STATUS(display,
> > cpu_transcoder, pipe),
> > +			     STREAM_ENCRYPTION_STATUS,
> > +			     enable ? STREAM_ENCRYPTION_STATUS : 0,
> > +			     HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS,
> > NULL)) {
> >  		drm_err(display->drm, "Timed out waiting for transcoder: %s
> > stream encryption %s\n",
> >  			transcoder_name(cpu_transcoder),
> > str_enabled_disabled(enable));
> >  		return -ETIMEDOUT;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > index 378f0836b5a5..4d1b6e2b93dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > @@ -390,7 +390,7 @@ static u32 bxt_get_grc(struct intel_display *display,
> > enum dpio_phy phy)
> >  static void bxt_phy_wait_grc_done(struct intel_display *display,
> >  				  enum dpio_phy phy)
> >  {
> > -	if (intel_de_wait_for_set(display, BXT_PORT_REF_DW3(phy),
> > GRC_DONE, 10))
> > +	if (intel_de_wait_for_set_ms(display, BXT_PORT_REF_DW3(phy),
> > GRC_DONE, 10))
> >  		drm_err(display->drm, "timeout waiting for PHY%d GRC\n",
> > phy);
> >  }
> > 
> > @@ -427,8 +427,8 @@ static void _bxt_dpio_phy_init(struct intel_display
> > *display, enum dpio_phy phy)
> >  	 * The flag should get set in 100us according to the HW team, but
> >  	 * use 1ms due to occasional timeouts observed with that.
> >  	 */
> > -	if (intel_de_wait_fw(display, BXT_PORT_CL1CM_DW0(phy),
> > -			     PHY_RESERVED | PHY_POWER_GOOD,
> > PHY_POWER_GOOD, 1, NULL))
> > +	if (intel_de_wait_fw_ms(display, BXT_PORT_CL1CM_DW0(phy),
> > +				PHY_RESERVED | PHY_POWER_GOOD,
> > PHY_POWER_GOOD, 1, NULL))
> >  		drm_err(display->drm, "timeout during PHY%d power on\n",
> >  			phy);
> > 
> > @@ -1193,7 +1193,7 @@ void vlv_wait_port_ready(struct intel_encoder
> > *encoder,
> >  		break;
> >  	}
> > 
> > -	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000,
> > NULL))
> > +	if (intel_de_wait_ms(display, dpll_reg, port_mask, expected_mask,
> > 1000, NULL))
> >  		drm_WARN(display->drm, 1,
> >  			 "timed out waiting for [ENCODER:%d:%s] port ready:
> > got 0x%x, expected 0x%x\n",
> >  			 encoder->base.base.id, encoder->base.name,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> > b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 2e1f67be8eda..4f1db8493a2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -2019,7 +2019,7 @@ static void _vlv_enable_pll(const struct
> > intel_crtc_state *crtc_state)
> >  	intel_de_posting_read(display, DPLL(display, pipe));
> >  	udelay(150);
> > 
> > -	if (intel_de_wait_for_set(display, DPLL(display, pipe), DPLL_LOCK_VLV,
> > 1))
> > +	if (intel_de_wait_for_set_ms(display, DPLL(display, pipe),
> > DPLL_LOCK_VLV, 1))
> >  		drm_err(display->drm, "DPLL %d failed to lock\n", pipe);
> >  }
> > 
> > @@ -2165,7 +2165,7 @@ static void _chv_enable_pll(const struct
> > intel_crtc_state *crtc_state)
> >  	intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
> > 
> >  	/* Check PLL is locked */
> > -	if (intel_de_wait_for_set(display, DPLL(display, pipe), DPLL_LOCK_VLV,
> > 1))
> > +	if (intel_de_wait_for_set_ms(display, DPLL(display, pipe),
> > DPLL_LOCK_VLV, 1))
> >  		drm_err(display->drm, "PLL %d failed to lock\n", pipe);
> >  }
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 92c433f7b7e2..683bc61c03c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -1395,7 +1395,7 @@ static void skl_ddi_pll_enable(struct intel_display
> > *display,
> >  	/* the enable bit is always bit 31 */
> >  	intel_de_rmw(display, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
> > 
> > -	if (intel_de_wait_for_set(display, DPLL_STATUS, DPLL_LOCK(id), 5))
> > +	if (intel_de_wait_for_set_ms(display, DPLL_STATUS, DPLL_LOCK(id),
> > 5))
> >  		drm_err(display->drm, "DPLL %d not locked\n", id);
> >  }
> > 
> > @@ -3921,7 +3921,7 @@ static void icl_pll_power_enable(struct
> > intel_display *display,
> >  	 * The spec says we need to "wait" but it also says it should be
> >  	 * immediate.
> >  	 */
> > -	if (intel_de_wait_for_set(display, enable_reg, PLL_POWER_STATE, 1))
> > +	if (intel_de_wait_for_set_ms(display, enable_reg, PLL_POWER_STATE,
> > 1))
> >  		drm_err(display->drm, "PLL %d Power not enabled\n",
> >  			pll->info->id);
> >  }
> > @@ -3933,7 +3933,7 @@ static void icl_pll_enable(struct intel_display
> > *display,
> >  	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
> > 
> >  	/* Timeout is actually 600us. */
> > -	if (intel_de_wait_for_set(display, enable_reg, PLL_LOCK, 1))
> > +	if (intel_de_wait_for_set_ms(display, enable_reg, PLL_LOCK, 1))
> >  		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
> >  }
> > 
> > @@ -4046,7 +4046,7 @@ static void icl_pll_disable(struct intel_display
> > *display,
> >  	intel_de_rmw(display, enable_reg, PLL_ENABLE, 0);
> > 
> >  	/* Timeout is actually 1us. */
> > -	if (intel_de_wait_for_clear(display, enable_reg, PLL_LOCK, 1))
> > +	if (intel_de_wait_for_clear_ms(display, enable_reg, PLL_LOCK, 1))
> >  		drm_err(display->drm, "PLL %d locked\n", pll->info->id);
> > 
> >  	/* DVFS post sequence would be here. See the comment above. */
> > @@ -4057,7 +4057,7 @@ static void icl_pll_disable(struct intel_display
> > *display,
> >  	 * The spec says we need to "wait" but it also says it should be
> >  	 * immediate.
> >  	 */
> > -	if (intel_de_wait_for_clear(display, enable_reg, PLL_POWER_STATE, 1))
> > +	if (intel_de_wait_for_clear_ms(display, enable_reg,
> > PLL_POWER_STATE, 1))
> >  		drm_err(display->drm, "PLL %d Power not disabled\n",
> >  			pll->info->id);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index a1e3083022ee..437d2fda20a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -328,8 +328,8 @@ static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
> >  	intel_de_write(display, FBC_CONTROL, fbc_ctl);
> > 
> >  	/* Wait for compressing bit to clear */
> > -	if (intel_de_wait_for_clear(display, FBC_STATUS,
> > -				    FBC_STAT_COMPRESSING, 10)) {
> > +	if (intel_de_wait_for_clear_ms(display, FBC_STATUS,
> > +				       FBC_STAT_COMPRESSING, 10)) {
> >  		drm_dbg_kms(display->drm, "FBC idle timed out\n");
> >  		return;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c
> > b/drivers/gpu/drm/i915/display/intel_flipq.c
> > index f162614a925d..1e9550cb66a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_flipq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_flipq.c
> > @@ -163,10 +163,10 @@ static void intel_flipq_preempt(struct intel_crtc
> > *crtc, bool preempt)
> >  		     PIPEDMC_FQ_CTRL_PREEMPT, preempt ?
> > PIPEDMC_FQ_CTRL_PREEMPT : 0);
> > 
> >  	if (preempt &&
> > -	    intel_de_wait_for_clear(display,
> > -				    PIPEDMC_FQ_STATUS(crtc->pipe),
> > -				    PIPEDMC_FQ_STATUS_BUSY,
> > -				    intel_flipq_preempt_timeout_ms(display)))
> > +	    intel_de_wait_for_clear_ms(display,
> > +				       PIPEDMC_FQ_STATUS(crtc->pipe),
> > +				       PIPEDMC_FQ_STATUS_BUSY,
> > +
> > intel_flipq_preempt_timeout_ms(display)))
> >  		drm_err(display->drm, "[CRTC:%d:%s] flip queue preempt
> > timeout\n",
> >  			crtc->base.base.id, crtc->base.name);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > index 82f3a40ecac7..795012d7c24c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > @@ -449,7 +449,7 @@ gmbus_wait_idle(struct intel_display *display)
> >  	add_wait_queue(&display->gmbus.wait_queue, &wait);
> >  	intel_de_write_fw(display, GMBUS4(display), irq_enable);
> > 
> > -	ret = intel_de_wait_fw(display, GMBUS2(display), GMBUS_ACTIVE, 0,
> > 10, NULL);
> > +	ret = intel_de_wait_fw_ms(display, GMBUS2(display),
> > GMBUS_ACTIVE, 0, 10, NULL);
> > 
> >  	intel_de_write_fw(display, GMBUS4(display), 0);
> >  	remove_wait_queue(&display->gmbus.wait_queue, &wait);
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index d01733b6460e..78c34466e402 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -428,7 +428,7 @@ static int intel_hdcp_load_keys(struct intel_display
> > *display)
> >  static int intel_write_sha_text(struct intel_display *display, u32 sha_text)
> >  {
> >  	intel_de_write(display, HDCP_SHA_TEXT, sha_text);
> > -	if (intel_de_wait_for_set(display, HDCP_REP_CTL, HDCP_SHA1_READY,
> > 1)) {
> > +	if (intel_de_wait_for_set_ms(display, HDCP_REP_CTL,
> > HDCP_SHA1_READY, 1)) {
> >  		drm_err(display->drm, "Timed out waiting for SHA1
> > ready\n");
> >  		return -ETIMEDOUT;
> >  	}
> > @@ -707,8 +707,8 @@ int intel_hdcp_validate_v_prime(struct
> > intel_connector *connector,
> >  	/* Tell the HW we're done with the hash and wait for it to ACK */
> >  	intel_de_write(display, HDCP_REP_CTL,
> >  		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
> > -	if (intel_de_wait_for_set(display, HDCP_REP_CTL,
> > -				  HDCP_SHA1_COMPLETE, 1)) {
> > +	if (intel_de_wait_for_set_ms(display, HDCP_REP_CTL,
> > +				     HDCP_SHA1_COMPLETE, 1)) {
> >  		drm_err(display->drm, "Timed out waiting for SHA1
> > complete\n");
> >  		return -ETIMEDOUT;
> >  	}
> > @@ -856,9 +856,9 @@ static int intel_hdcp_auth(struct intel_connector
> > *connector)
> >  		       HDCP_CONF_CAPTURE_AN);
> > 
> >  	/* Wait for An to be acquired */
> > -	if (intel_de_wait_for_set(display,
> > -				  HDCP_STATUS(display, cpu_transcoder,
> > port),
> > -				  HDCP_STATUS_AN_READY, 1)) {
> > +	if (intel_de_wait_for_set_ms(display,
> > +				     HDCP_STATUS(display, cpu_transcoder,
> > port),
> > +				     HDCP_STATUS_AN_READY, 1)) {
> >  		drm_err(display->drm, "Timed out waiting for An\n");
> >  		return -ETIMEDOUT;
> >  	}
> > @@ -953,10 +953,10 @@ static int intel_hdcp_auth(struct intel_connector
> > *connector)
> >  	}
> > 
> >  	/* Wait for encryption confirmation */
> > -	if (intel_de_wait_for_set(display,
> > -				  HDCP_STATUS(display, cpu_transcoder,
> > port),
> > -				  HDCP_STATUS_ENC,
> > -
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_set_ms(display,
> > +				     HDCP_STATUS(display, cpu_transcoder,
> > port),
> > +				     HDCP_STATUS_ENC,
> > +
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> >  		drm_err(display->drm, "Timed out waiting for encryption\n");
> >  		return -ETIMEDOUT;
> >  	}
> > @@ -1013,9 +1013,9 @@ static int _intel_hdcp_disable(struct
> > intel_connector *connector)
> > 
> >  	hdcp->hdcp_encrypted = false;
> >  	intel_de_write(display, HDCP_CONF(display, cpu_transcoder, port),
> > 0);
> > -	if (intel_de_wait_for_clear(display,
> > -				    HDCP_STATUS(display, cpu_transcoder,
> > port),
> > -				    ~0,
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > +				       HDCP_STATUS(display, cpu_transcoder,
> > port),
> > +				       ~0,
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> >  		drm_err(display->drm,
> >  			"Failed to disable HDCP, timeout clearing status\n");
> >  		return -ETIMEDOUT;
> > @@ -1940,11 +1940,10 @@ static int hdcp2_enable_encryption(struct
> > intel_connector *connector)
> >  		intel_de_rmw(display, HDCP2_CTL(display, cpu_transcoder,
> > port),
> >  			     0, CTL_LINK_ENCRYPTION_REQ);
> > 
> > -	ret = intel_de_wait_for_set(display,
> > -				    HDCP2_STATUS(display, cpu_transcoder,
> > -						 port),
> > -				    LINK_ENCRYPTION_STATUS,
> > -
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> > +	ret = intel_de_wait_for_set_ms(display,
> > +				       HDCP2_STATUS(display, cpu_transcoder,
> > port),
> > +				       LINK_ENCRYPTION_STATUS,
> > +
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> >  	dig_port->hdcp.auth_status = true;
> > 
> >  	return ret;
> > @@ -1966,11 +1965,10 @@ static int hdcp2_disable_encryption(struct
> > intel_connector *connector)
> >  	intel_de_rmw(display, HDCP2_CTL(display, cpu_transcoder, port),
> >  		     CTL_LINK_ENCRYPTION_REQ, 0);
> > 
> > -	ret = intel_de_wait_for_clear(display,
> > -				      HDCP2_STATUS(display, cpu_transcoder,
> > -						   port),
> > -				      LINK_ENCRYPTION_STATUS,
> > -
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> > +	ret = intel_de_wait_for_clear_ms(display,
> > +					 HDCP2_STATUS(display,
> > cpu_transcoder, port),
> > +					 LINK_ENCRYPTION_STATUS,
> > +
> > HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> >  	if (ret == -ETIMEDOUT)
> >  		drm_dbg_kms(display->drm, "Disable Encryption Timedout");
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 5c637341b210..908faf17f93d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1598,8 +1598,8 @@ bool intel_hdmi_hdcp_check_link_once(struct
> > intel_digital_port *dig_port,
> >  	intel_de_write(display, HDCP_RPRIME(display, cpu_transcoder, port),
> > ri.reg);
> > 
> >  	/* Wait for Ri prime match */
> > -	ret = intel_de_wait_for_set(display, HDCP_STATUS(display,
> > cpu_transcoder, port),
> > -				    HDCP_STATUS_RI_MATCH |
> > HDCP_STATUS_ENC, 1);
> > +	ret = intel_de_wait_for_set_ms(display, HDCP_STATUS(display,
> > cpu_transcoder, port),
> > +				       HDCP_STATUS_RI_MATCH |
> > HDCP_STATUS_ENC, 1);
> >  	if (ret) {
> >  		drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
> >  			    intel_de_read(display, HDCP_STATUS(display,
> > cpu_transcoder,
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index b2413b385dc8..6bd42691de8f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -1067,9 +1067,9 @@ static int __intel_lt_phy_p2p_write_once(struct
> > intel_encoder *encoder,
> >  	int ack;
> >  	u32 val;
> > 
> > -	if (intel_de_wait_for_clear(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > -
> > XELPDP_PORT_P2P_TRANSACTION_PENDING,
> > -				    XELPDP_MSGBUS_TIMEOUT_MS)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> > +
> > XELPDP_PORT_P2P_TRANSACTION_PENDING,
> > +				       XELPDP_MSGBUS_TIMEOUT_MS)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PHY %c Timeout waiting for previous transaction to
> > complete. Resetting bus.\n",
> >  			    phy_name(phy));
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> > b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 48f4d8ed4f15..89aeb4fb340e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -329,7 +329,7 @@ static void intel_enable_lvds(struct intel_atomic_state
> > *state,
> >  	intel_de_rmw(display, PP_CONTROL(display, 0), 0,
> > PANEL_POWER_ON);
> >  	intel_de_posting_read(display, lvds_encoder->reg);
> > 
> > -	if (intel_de_wait_for_set(display, PP_STATUS(display, 0), PP_ON,
> > 5000))
> > +	if (intel_de_wait_for_set_ms(display, PP_STATUS(display, 0), PP_ON,
> > 5000))
> >  		drm_err(display->drm,
> >  			"timed out waiting for panel to power on\n");
> > 
> > @@ -345,7 +345,7 @@ static void intel_disable_lvds(struct
> > intel_atomic_state *state,
> >  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
> > 
> >  	intel_de_rmw(display, PP_CONTROL(display, 0), PANEL_POWER_ON,
> > 0);
> > -	if (intel_de_wait_for_clear(display, PP_STATUS(display, 0), PP_ON,
> > 1000))
> > +	if (intel_de_wait_for_clear_ms(display, PP_STATUS(display, 0), PP_ON,
> > 1000))
> >  		drm_err(display->drm,
> >  			"timed out waiting for panel to power off\n");
> > 
> > @@ -384,7 +384,7 @@ static void intel_lvds_shutdown(struct intel_encoder
> > *encoder)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > 
> > -	if (intel_de_wait_for_clear(display, PP_STATUS(display, 0),
> > PP_CYCLE_DELAY_ACTIVE, 5000))
> > +	if (intel_de_wait_for_clear_ms(display, PP_STATUS(display, 0),
> > PP_CYCLE_DELAY_ACTIVE, 5000))
> >  		drm_err(display->drm,
> >  			"timed out waiting for panel power cycle delay\n");
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index 3456c794e0e7..16619f7be5f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -305,7 +305,7 @@ static void ilk_enable_pch_transcoder(const struct
> > intel_crtc_state *crtc_state)
> >  	}
> > 
> >  	intel_de_write(display, reg, val | TRANS_ENABLE);
> > -	if (intel_de_wait_for_set(display, reg, TRANS_STATE_ENABLE, 100))
> > +	if (intel_de_wait_for_set_ms(display, reg, TRANS_STATE_ENABLE,
> > 100))
> >  		drm_err(display->drm, "failed to enable transcoder %c\n",
> >  			pipe_name(pipe));
> >  }
> > @@ -326,7 +326,7 @@ static void ilk_disable_pch_transcoder(struct
> > intel_crtc *crtc)
> >  	reg = PCH_TRANSCONF(pipe);
> >  	intel_de_rmw(display, reg, TRANS_ENABLE, 0);
> >  	/* wait for PCH transcoder off, transcoder state */
> > -	if (intel_de_wait_for_clear(display, reg, TRANS_STATE_ENABLE, 50))
> > +	if (intel_de_wait_for_clear_ms(display, reg, TRANS_STATE_ENABLE,
> > 50))
> >  		drm_err(display->drm, "failed to disable transcoder %c\n",
> >  			pipe_name(pipe));
> > 
> > @@ -572,8 +572,8 @@ static void lpt_enable_pch_transcoder(const struct
> > intel_crtc_state *crtc_state)
> >  		val |= TRANS_INTERLACE_PROGRESSIVE;
> > 
> >  	intel_de_write(display, LPT_TRANSCONF, val);
> > -	if (intel_de_wait_for_set(display, LPT_TRANSCONF,
> > -				  TRANS_STATE_ENABLE, 100))
> > +	if (intel_de_wait_for_set_ms(display, LPT_TRANSCONF,
> > +				     TRANS_STATE_ENABLE, 100))
> >  		drm_err(display->drm, "Failed to enable PCH transcoder\n");
> >  }
> > 
> > @@ -581,8 +581,8 @@ static void lpt_disable_pch_transcoder(struct
> > intel_display *display)
> >  {
> >  	intel_de_rmw(display, LPT_TRANSCONF, TRANS_ENABLE, 0);
> >  	/* wait for PCH transcoder off, transcoder state */
> > -	if (intel_de_wait_for_clear(display, LPT_TRANSCONF,
> > -				    TRANS_STATE_ENABLE, 50))
> > +	if (intel_de_wait_for_clear_ms(display, LPT_TRANSCONF,
> > +				       TRANS_STATE_ENABLE, 50))
> >  		drm_err(display->drm, "Failed to disable PCH transcoder\n");
> > 
> >  	/* Workaround: clear timing override bit. */
> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > index 22d8f720ae7d..3cc89048b027 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> > @@ -390,12 +390,12 @@ int intel_pmdemand_atomic_check(struct
> > intel_atomic_state *state)
> > 
> >  static bool intel_pmdemand_check_prev_transaction(struct intel_display
> > *display)
> >  {
> > -	return !(intel_de_wait_for_clear(display,
> > -
> > XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> > -					 XELPDP_PMDEMAND_REQ_ENABLE,
> > 10) ||
> > -		 intel_de_wait_for_clear(display,
> > -					 GEN12_DCPR_STATUS_1,
> > -
> > XELPDP_PMDEMAND_INFLIGHT_STATUS, 10));
> > +	return !(intel_de_wait_for_clear_ms(display,
> > +
> > XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> > +
> > XELPDP_PMDEMAND_REQ_ENABLE, 10) ||
> > +		 intel_de_wait_for_clear_ms(display,
> > +					    GEN12_DCPR_STATUS_1,
> > +
> > XELPDP_PMDEMAND_INFLIGHT_STATUS, 10));
> >  }
> > 
> >  void
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 00b06771ae2d..00ac652809cc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -2277,8 +2277,8 @@ static void intel_psr_wait_exit_locked(struct
> > intel_dp *intel_dp)
> >  	}
> > 
> >  	/* Wait till PSR is idle */
> > -	if (intel_de_wait_for_clear(display, psr_status,
> > -				    psr_status_mask, 2000))
> > +	if (intel_de_wait_for_clear_ms(display, psr_status,
> > +				       psr_status_mask, 2000))
> >  		drm_err(display->drm, "Timed out waiting PSR idle state\n");
> >  }
> > 
> > @@ -3166,7 +3166,7 @@ _psr2_ready_for_pipe_update_locked(const struct
> > intel_crtc_state *new_crtc_state
> >  		return true;
> >  	}
> > 
> > -	return intel_de_wait_for_clear(display,
> > +	return intel_de_wait_for_clear_ms(display,
> >  				       EDP_PSR2_STATUS(display,
> > cpu_transcoder),
> >  				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
> >  				       PSR_IDLE_TIMEOUT_MS);
> > @@ -3186,7 +3186,7 @@ _psr1_ready_for_pipe_update_locked(const struct
> > intel_crtc_state *new_crtc_state
> >  		return true;
> >  	}
> > 
> > -	return intel_de_wait_for_clear(display,
> > +	return intel_de_wait_for_clear_ms(display,
> >  				       psr_status_reg(display, cpu_transcoder),
> >  				       EDP_PSR_STATUS_STATE_MASK,
> >  				       PSR_IDLE_TIMEOUT_MS);
> > @@ -3264,7 +3264,7 @@ static bool __psr_wait_for_idle_locked(struct
> > intel_dp *intel_dp)
> > 
> >  	mutex_unlock(&intel_dp->psr.lock);
> > 
> > -	err = intel_de_wait_for_clear(display, reg, mask, 50);
> > +	err = intel_de_wait_for_clear_ms(display, reg, mask, 50);
> >  	if (err)
> >  		drm_err(display->drm,
> >  			"Timed out waiting for PSR Idle for re-enable\n");
> > diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c
> > b/drivers/gpu/drm/i915/display/intel_sbi.c
> > index dfcff924f0ed..b636a0060d39 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sbi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sbi.c
> > @@ -21,7 +21,8 @@ static int intel_sbi_rw(struct intel_display *display, u16
> > reg,
> > 
> >  	lockdep_assert_held(&display->sbi.lock);
> > 
> > -	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_STATUS_MASK,
> > SBI_STATUS_READY, 100, NULL)) {
> > +	if (intel_de_wait_fw_ms(display, SBI_CTL_STAT,
> > +				SBI_STATUS_MASK, SBI_STATUS_READY, 100,
> > NULL)) {
> >  		drm_err(display->drm, "timeout waiting for SBI to become
> > ready\n");
> >  		return -EBUSY;
> >  	}
> > @@ -37,7 +38,8 @@ static int intel_sbi_rw(struct intel_display *display, u16
> > reg,
> >  		cmd |= SBI_CTL_OP_WR;
> >  	intel_de_write_fw(display, SBI_CTL_STAT, cmd | SBI_STATUS_BUSY);
> > 
> > -	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_STATUS_MASK,
> > SBI_STATUS_READY, 100, &cmd)) {
> > +	if (intel_de_wait_fw_ms(display, SBI_CTL_STAT,
> > +				SBI_STATUS_MASK, SBI_STATUS_READY, 100,
> > &cmd)) {
> >  		drm_err(display->drm, "timeout waiting for SBI to complete
> > read\n");
> >  		return -ETIMEDOUT;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > index 4f028e6a91cd..295030742294 100644
> > --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > @@ -42,8 +42,8 @@ void intel_snps_phy_wait_for_calibration(struct
> > intel_display *display)
> >  		 * which phy was affected and skip setup of the corresponding
> >  		 * output later.
> >  		 */
> > -		if (intel_de_wait_for_clear(display, DG2_PHY_MISC(phy),
> > -					    DG2_PHY_DP_TX_ACK_MASK, 25))
> > +		if (intel_de_wait_for_clear_ms(display, DG2_PHY_MISC(phy),
> > +					       DG2_PHY_DP_TX_ACK_MASK,
> > 25))
> >  			display->snps.phy_failed_calibration |= BIT(phy);
> >  	}
> >  }
> > @@ -1863,7 +1863,7 @@ void intel_mpllb_enable(struct intel_encoder
> > *encoder,
> >  	 * is locked at new settings. This register bit is sampling PHY
> >  	 * dp_mpllb_state interface signal.
> >  	 */
> > -	if (intel_de_wait_for_set(display, enable_reg, PLL_LOCK, 5))
> > +	if (intel_de_wait_for_set_ms(display, enable_reg, PLL_LOCK, 5))
> >  		drm_dbg_kms(display->drm, "Port %c PLL not locked\n",
> > phy_name(phy));
> > 
> >  	/*
> > @@ -1903,7 +1903,7 @@ void intel_mpllb_disable(struct intel_encoder
> > *encoder)
> >  	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment
> >  	 * (dp_txX_ack) that the new transmitter setting request is completed.
> >  	 */
> > -	if (intel_de_wait_for_clear(display, enable_reg, PLL_LOCK, 5))
> > +	if (intel_de_wait_for_clear_ms(display, enable_reg, PLL_LOCK, 5))
> >  		drm_err(display->drm, "Port %c PLL not locked\n",
> > phy_name(phy));
> > 
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> > b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 7e17ca018748..1e21fd02685d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -1076,8 +1076,8 @@ xelpdp_tc_phy_wait_for_tcss_power(struct
> > intel_tc_port *tc, bool enabled)
> >  static void xelpdp_tc_power_request_wa(struct intel_display *display, bool
> > enable)
> >  {
> >  	/* check if mailbox is running busy */
> > -	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> > -				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY,
> > 10)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > TCSS_DISP_MAILBOX_IN_CMD,
> > +
> > TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "Timeout waiting for TCSS mailbox run/busy bit to
> > clear\n");
> >  		return;
> > @@ -1089,8 +1089,8 @@ static void xelpdp_tc_power_request_wa(struct
> > intel_display *display, bool enabl
> >  		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> > 
> >  	/* wait to clear mailbox running busy bit before continuing */
> > -	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> > -				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY,
> > 10)) {
> > +	if (intel_de_wait_for_clear_ms(display,
> > TCSS_DISP_MAILBOX_IN_CMD,
> > +
> > TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "Timeout after writing data to mailbox. Mailbox
> > run/busy bit did not clear\n");
> >  		return;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 00cbc126fb36..b92c42fde937 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -716,9 +716,9 @@ static void intel_vrr_tg_disable(const struct
> > intel_crtc_state *old_crtc_state)
> >  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >  		       trans_vrr_ctl(old_crtc_state));
> > 
> > -	if (intel_de_wait_for_clear(display,
> > -				    TRANS_VRR_STATUS(display,
> > cpu_transcoder),
> > -				    VRR_STATUS_VRR_EN_LIVE, 1000))
> > +	if (intel_de_wait_for_clear_ms(display,
> > +				       TRANS_VRR_STATUS(display,
> > cpu_transcoder),
> > +				       VRR_STATUS_VRR_EN_LIVE, 1000))
> >  		drm_err(display->drm, "Timed out waiting for VRR live status
> > to clear\n");
> > 
> >  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index 444682995658..19bdd8662359 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -94,8 +94,8 @@ void vlv_dsi_wait_for_fifo_empty(struct intel_dsi
> > *intel_dsi, enum port port)
> >  	mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
> >  		LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;
> > 
> > -	if (intel_de_wait_for_set(display, MIPI_GEN_FIFO_STAT(display, port),
> > -				  mask, 100))
> > +	if (intel_de_wait_for_set_ms(display, MIPI_GEN_FIFO_STAT(display,
> > port),
> > +				     mask, 100))
> >  		drm_err(display->drm, "DPI FIFOs are not empty\n");
> >  }
> > 
> > @@ -162,8 +162,8 @@ static ssize_t intel_dsi_host_transfer(struct
> > mipi_dsi_host *host,
> > 
> >  	/* note: this is never true for reads */
> >  	if (packet.payload_length) {
> > -		if (intel_de_wait_for_clear(display,
> > MIPI_GEN_FIFO_STAT(display, port),
> > -					    data_mask, 50))
> > +		if (intel_de_wait_for_clear_ms(display,
> > MIPI_GEN_FIFO_STAT(display, port),
> > +					       data_mask, 50))
> >  			drm_err(display->drm,
> >  				"Timeout waiting for HS/LP DATA FIFO
> > !full\n");
> > 
> > @@ -176,8 +176,8 @@ static ssize_t intel_dsi_host_transfer(struct
> > mipi_dsi_host *host,
> >  			       GEN_READ_DATA_AVAIL);
> >  	}
> > 
> > -	if (intel_de_wait_for_clear(display, MIPI_GEN_FIFO_STAT(display,
> > port),
> > -				    ctrl_mask, 50)) {
> > +	if (intel_de_wait_for_clear_ms(display, MIPI_GEN_FIFO_STAT(display,
> > port),
> > +				       ctrl_mask, 50)) {
> >  		drm_err(display->drm,
> >  			"Timeout waiting for HS/LP CTRL FIFO !full\n");
> >  	}
> > @@ -188,8 +188,8 @@ static ssize_t intel_dsi_host_transfer(struct
> > mipi_dsi_host *host,
> >  	/* ->rx_len is set only for reads */
> >  	if (msg->rx_len) {
> >  		data_mask = GEN_READ_DATA_AVAIL;
> > -		if (intel_de_wait_for_set(display, MIPI_INTR_STAT(display,
> > port),
> > -					  data_mask, 50))
> > +		if (intel_de_wait_for_set_ms(display, MIPI_INTR_STAT(display,
> > port),
> > +					     data_mask, 50))
> >  			drm_err(display->drm,
> >  				"Timeout waiting for read data.\n");
> > 
> > @@ -246,7 +246,7 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi,
> > u32 cmd, bool hs,
> >  	intel_de_write(display, MIPI_DPI_CONTROL(display, port), cmd);
> > 
> >  	mask = SPL_PKT_SENT_INTERRUPT;
> > -	if (intel_de_wait_for_set(display, MIPI_INTR_STAT(display, port),
> > mask, 100))
> > +	if (intel_de_wait_for_set_ms(display, MIPI_INTR_STAT(display, port),
> > mask, 100))
> >  		drm_err(display->drm,
> >  			"Video mode command 0x%08x send failed.\n", cmd);
> > 
> > @@ -352,8 +352,8 @@ static bool glk_dsi_enable_io(struct intel_encoder
> > *encoder)
> > 
> >  	/* Wait for Pwr ACK */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> > -					  GLK_MIPIIO_PORT_POWERED, 20))
> > +		if (intel_de_wait_for_set_ms(display, MIPI_CTRL(display,
> > port),
> > +					     GLK_MIPIIO_PORT_POWERED, 20))
> >  			drm_err(display->drm, "MIPIO port is
> > powergated\n");
> >  	}
> > 
> > @@ -374,8 +374,8 @@ static void glk_dsi_device_ready(struct intel_encoder
> > *encoder)
> > 
> >  	/* Wait for MIPI PHY status bit to set */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> > -					  GLK_PHY_STATUS_PORT_READY, 20))
> > +		if (intel_de_wait_for_set_ms(display, MIPI_CTRL(display,
> > port),
> > +					     GLK_PHY_STATUS_PORT_READY,
> > 20))
> >  			drm_err(display->drm, "PHY is not ON\n");
> >  	}
> > 
> > @@ -394,8 +394,8 @@ static void glk_dsi_device_ready(struct intel_encoder
> > *encoder)
> >  				     ULPS_STATE_MASK, ULPS_STATE_ENTER |
> > DEVICE_READY);
> > 
> >  			/* Wait for ULPS active */
> > -			if (intel_de_wait_for_clear(display, MIPI_CTRL(display,
> > port),
> > -						    GLK_ULPS_NOT_ACTIVE,
> > 20))
> > +			if (intel_de_wait_for_clear_ms(display,
> > MIPI_CTRL(display, port),
> > +						       GLK_ULPS_NOT_ACTIVE,
> > 20))
> >  				drm_err(display->drm, "ULPS not active\n");
> > 
> >  			/* Exit ULPS */
> > @@ -413,16 +413,16 @@ static void glk_dsi_device_ready(struct
> > intel_encoder *encoder)
> > 
> >  	/* Wait for Stop state */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> > -					  GLK_DATA_LANE_STOP_STATE, 20))
> > +		if (intel_de_wait_for_set_ms(display, MIPI_CTRL(display,
> > port),
> > +					     GLK_DATA_LANE_STOP_STATE, 20))
> >  			drm_err(display->drm,
> >  				"Date lane not in STOP state\n");
> >  	}
> > 
> >  	/* Wait for AFE LATCH */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_set(display, BXT_MIPI_PORT_CTRL(port),
> > -					  AFE_LATCHOUT, 20))
> > +		if (intel_de_wait_for_set_ms(display,
> > BXT_MIPI_PORT_CTRL(port),
> > +					     AFE_LATCHOUT, 20))
> >  			drm_err(display->drm,
> >  				"D-PHY not entering LP-11 state\n");
> >  	}
> > @@ -519,15 +519,15 @@ static void glk_dsi_enter_low_power_mode(struct
> > intel_encoder *encoder)
> > 
> >  	/* Wait for MIPI PHY status bit to unset */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> > -					    GLK_PHY_STATUS_PORT_READY,
> > 20))
> > +		if (intel_de_wait_for_clear_ms(display, MIPI_CTRL(display,
> > port),
> > +					       GLK_PHY_STATUS_PORT_READY,
> > 20))
> >  			drm_err(display->drm, "PHY is not turning OFF\n");
> >  	}
> > 
> >  	/* Wait for Pwr ACK bit to unset */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> > -					    GLK_MIPIIO_PORT_POWERED, 20))
> > +		if (intel_de_wait_for_clear_ms(display, MIPI_CTRL(display,
> > port),
> > +					       GLK_MIPIIO_PORT_POWERED,
> > 20))
> >  			drm_err(display->drm,
> >  				"MIPI IO Port is not powergated\n");
> >  	}
> > @@ -544,8 +544,8 @@ static void glk_dsi_disable_mipi_io(struct
> > intel_encoder *encoder)
> > 
> >  	/* Wait for MIPI PHY status bit to unset */
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> > -		if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> > -					    GLK_PHY_STATUS_PORT_READY,
> > 20))
> > +		if (intel_de_wait_for_clear_ms(display, MIPI_CTRL(display,
> > port),
> > +					       GLK_PHY_STATUS_PORT_READY,
> > 20))
> >  			drm_err(display->drm, "PHY is not turning OFF\n");
> >  	}
> > 
> > @@ -595,8 +595,8 @@ static void vlv_dsi_clear_device_ready(struct
> > intel_encoder *encoder)
> >  		 * Port A only. MIPI Port C has no similar bit for checking.
> >  		 */
> >  		if ((display->platform.broxton || port == PORT_A) &&
> > -		    intel_de_wait_for_clear(display, port_ctrl,
> > -					    AFE_LATCHOUT, 30))
> > +		    intel_de_wait_for_clear_ms(display, port_ctrl,
> > +					       AFE_LATCHOUT, 30))
> >  			drm_err(display->drm, "DSI LP not going Low\n");
> > 
> >  		/* Disable MIPI PHY transparent latch */
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > index f078b9cda96c..a2da6285890b 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > @@ -319,8 +319,8 @@ void bxt_dsi_pll_disable(struct intel_encoder
> > *encoder)
> >  	 * PLL lock should deassert within 200us.
> >  	 * Wait up to 1ms before timing out.
> >  	 */
> > -	if (intel_de_wait_for_clear(display, BXT_DSI_PLL_ENABLE,
> > -				    BXT_DSI_PLL_LOCKED, 1))
> > +	if (intel_de_wait_for_clear_ms(display, BXT_DSI_PLL_ENABLE,
> > +				       BXT_DSI_PLL_LOCKED, 1))
> >  		drm_err(display->drm,
> >  			"Timeout waiting for PLL lock deassertion\n");
> >  }
> > @@ -568,8 +568,8 @@ void bxt_dsi_pll_enable(struct intel_encoder
> > *encoder,
> >  	intel_de_rmw(display, BXT_DSI_PLL_ENABLE, 0,
> > BXT_DSI_PLL_DO_ENABLE);
> > 
> >  	/* Timeout and fail if PLL not locked */
> > -	if (intel_de_wait_for_set(display, BXT_DSI_PLL_ENABLE,
> > -				  BXT_DSI_PLL_LOCKED, 1)) {
> > +	if (intel_de_wait_for_set_ms(display, BXT_DSI_PLL_ENABLE,
> > +				     BXT_DSI_PLL_LOCKED, 1)) {
> >  		drm_err(display->drm,
> >  			"Timed out waiting for DSI PLL to lock\n");
> >  		return;
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
