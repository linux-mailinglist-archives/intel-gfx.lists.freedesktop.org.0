Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5C64EDA53
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA9310EAA0;
	Thu, 31 Mar 2022 13:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1DF10EAA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648732575; x=1680268575;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3evBqIzZVidbs8Dfip06UdMmoE9vjuY/Bgy3SphPWRY=;
 b=Lff56jRi+9A6ovmt2diuKPSVUBecwYeMRz/ShsS7PJU6TtOcNKsn/0ni
 TPhZ0XWn5vqBpGB09QnSXFWrQ7Vz/0hPMotfSMbQzwxd7IkIY1dX578HE
 5P9nQsfrV5WbedEr3nofSySVZYjEhhxdQj0RMzJmbguDq2BLmxbIrNQ7Y
 2q+JynwwKJbmxM4TmVaHSeQn1wOJiErHv/w2trTctQ7BAL9pA1oVAER0J
 4oZb4m6XNvjsKlSxuFlzyKDWLDvRyoa4ftUSB4kXThsrEkdUdk/DlnwCE
 +YKSnHAA48Fm36ySWj7/oDDnb9DbqrBEMlzcJqMs5z59W2K/Sx3Bduf90 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320528537"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="320528537"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="606092605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 31 Mar 2022 06:16:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 16:16:11 +0300
Date: Thu, 31 Mar 2022 16:16:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YkWpmxKWZXnnBEkM@intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-3-ville.syrjala@linux.intel.com>
 <87lewq9ssm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87lewq9ssm.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915: Put fixed modes directly
 onto the panel's fixed_modes list
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 31, 2022 at 04:04:57PM +0300, Jani Nikula wrote:
> On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Rather than having the connector init get the fixed mode back from
> > intel_panel and then feed it straight back into intel_panel_init()
> > let's just make the fixed mode lookup put the mode directly onto
> > the panel's fixed_modes list. Avoids the pointless round trip and
> > opens the door for further enhancements to the fixed mode handling.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c     |  8 +--
> >  drivers/gpu/drm/i915/display/intel_dp.c    | 22 ++++----
> >  drivers/gpu/drm/i915/display/intel_drrs.c  | 20 ++-----
> >  drivers/gpu/drm/i915/display/intel_drrs.h  |  3 +-
> >  drivers/gpu/drm/i915/display/intel_dvo.c   |  9 ++-
> >  drivers/gpu/drm/i915/display/intel_lvds.c  | 31 +++++------
> >  drivers/gpu/drm/i915/display/intel_panel.c | 64 +++++++++-------------
> >  drivers/gpu/drm/i915/display/intel_panel.h | 22 +++-----
> >  drivers/gpu/drm/i915/display/intel_sdvo.c  | 10 ++--
> >  drivers/gpu/drm/i915/display/vlv_dsi.c     |  9 +--
> >  10 files changed, 81 insertions(+), 117 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 44f4c65522b9..084cc51d1c41 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1993,7 +1993,6 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >  	struct intel_encoder *encoder;
> >  	struct intel_connector *intel_connector;
> >  	struct drm_connector *connector;
> > -	struct drm_display_mode *fixed_mode;
> >  	enum port port;
> >  
> >  	if (!intel_bios_is_dsi_present(dev_priv, &port))
> > @@ -2050,15 +2049,16 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
> >  	intel_connector_attach_encoder(intel_connector, encoder);
> >  
> >  	mutex_lock(&dev->mode_config.mutex);
> > -	fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
> > +	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> >  	mutex_unlock(&dev->mode_config.mutex);
> >  
> > -	if (!fixed_mode) {
> > +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> >  		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
> >  		goto err;
> >  	}
> >  
> > -	intel_panel_init(intel_connector, fixed_mode, NULL);
> > +	intel_panel_init(intel_connector);
> > +
> >  	intel_backlight_setup(intel_connector, INVALID_PIPE);
> >  
> >  	if (dev_priv->vbt.dsi.config->dual_link)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2c23ec0a880a..67472555211d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5015,8 +5015,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >  	struct drm_device *dev = &dev_priv->drm;
> >  	struct drm_connector *connector = &intel_connector->base;
> > -	struct drm_display_mode *fixed_mode = NULL;
> > -	struct drm_display_mode *downclock_mode = NULL;
> > +	struct drm_display_mode *fixed_mode;
> >  	bool has_dpcd;
> >  	enum pipe pipe = INVALID_PIPE;
> >  	struct edid *edid;
> > @@ -5073,20 +5072,22 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  	}
> >  	intel_connector->edid = edid;
> >  
> > -	fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
> > -	if (fixed_mode && intel_edp_has_drrs(intel_dp))
> > -		downclock_mode = intel_drrs_init(intel_connector, fixed_mode);
> > +	intel_panel_add_edid_fixed_mode(intel_connector);
> > +	if (intel_panel_preferred_fixed_mode(intel_connector) &&
> > +	    intel_edp_has_drrs(intel_dp))
> > +		intel_drrs_init(intel_connector);
> >  
> >  	/* MSO requires information from the EDID */
> >  	intel_edp_mso_init(intel_dp);
> >  
> >  	/* multiply the mode clock and horizontal timings for MSO */
> > -	intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
> > -	intel_edp_mso_mode_fixup(intel_connector, downclock_mode);
> > +	list_for_each_entry(fixed_mode, &intel_connector->panel.fixed_modes, head)
> > +		intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
> >  
> >  	/* fallback to VBT if available for eDP */
> > -	if (!fixed_mode)
> > -		fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
> > +	if (!intel_panel_preferred_fixed_mode(intel_connector))
> > +		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> > +
> >  	mutex_unlock(&dev->mode_config.mutex);
> >  
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> > @@ -5108,7 +5109,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >  			    pipe_name(pipe));
> >  	}
> >  
> > -	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
> > +	intel_panel_init(intel_connector);
> > +
> >  	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
> >  		intel_connector->panel.backlight.power = intel_pps_backlight_power;
> >  	intel_backlight_setup(intel_connector, pipe);
> > diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> > index 1448c3029b8e..8fd280c7c83f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> > @@ -358,7 +358,6 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
> >  /**
> >   * intel_drrs_init - Init DRRS for eDP connector
> >   * @connector: eDP connector
> > - * @fixed_mode: preferred mode of panel
> >   *
> >   * This function is called only once at driver load to initialize
> >   * DRRS support for the connector.
> > @@ -368,25 +367,14 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
> >   * DRRS support is determined by the presence of downclock mode (apart
> >   * from VBT setting).
> >   */
> > -struct drm_display_mode *
> > -intel_drrs_init(struct intel_connector *connector,
> > -		const struct drm_display_mode *fixed_mode)
> > +void intel_drrs_init(struct intel_connector *connector)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> > -	struct drm_display_mode *downclock_mode;
> > -
> > -	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
> > -	if (!downclock_mode) {
> > -		drm_dbg_kms(&dev_priv->drm,
> > -			    "[CONNECTOR:%d:%s] DRRS not supported due to lack of downclock mode\n",
> > -			    connector->base.base.id, connector->base.name);
> > -		return NULL;
> > -	}
> > +
> > +	intel_panel_add_edid_downclock_mode(connector);
> 
> What if there's no downclock mode, just one native mode with one
> vrefresh? We'll now now say drrs type is this or that below, but it'll
> never get enabled in compute config?

I meant to use intel_panel_drrs_type() here. But looks like I 
fumbled that a bit and only did it in patch 4.

> 
> Should intel_panel_add_edid_downclock_mode() debug log when there's no
> downclock mode?

Hmm. Maybe. currently we only log the modes we're going to use, not the
ones we discard.

-- 
Ville Syrjälä
Intel
