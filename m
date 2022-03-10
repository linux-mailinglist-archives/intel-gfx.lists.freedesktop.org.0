Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F39F4D4565
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 12:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DBD10EC1C;
	Thu, 10 Mar 2022 11:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5648F10EC17
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 11:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646910766; x=1678446766;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+gtOV5Pl5/f+W0Ez+ec4K4NqYOdwo2HXNuT7iatS888=;
 b=G3l99+LiptEU/O5UwlctI4bfQekJ1bCbvgO/vMndwa5O8wtAmwat298m
 Q5Wq6rRtLPUfSXvd6q0skZLx8tbdIiptSZ8nWCSkwWaNEluANsak6jIpW
 5BJRxXt3T3+2xAEf+f5uHHcfF09fkUGovAXWpllTW8wZTbcXcd3LHcL6Y
 4JyPz+TkxGSFwi01lwvtO2Wi2mi8Ltg+0RR9x1PPwrXfKB7hymQApjZoe
 fvErFV17ndhce1EGDbIyg538U+rkOac6uo1tmLSZIEkdWCrvx2dfbe7RZ
 PNNgZwhdiFbGr8/gTEQQL/QrGD7GZ2wbvJG1b58yUXbhUZwkUwSeF5mEx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315942185"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="315942185"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 03:12:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="688627867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 10 Mar 2022 03:12:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 13:12:42 +0200
Date: Thu, 10 Mar 2022 13:12:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YindKk77xq2mmF/c@intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-10-ville.syrjala@linux.intel.com>
 <8735jqxem1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8735jqxem1.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915: Stash DRRS state under
 intel_crtc
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

On Thu, Mar 10, 2022 at 12:53:58PM +0200, Jani Nikula wrote:
> On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Get rid of the ugly intel_dp dependency, and one more crtc->config
> > usage by storing the DRRS state under intel_crtc. intel_drrs_enable()
> > copies what it needs from the crtc state, after which DRRS can be
> > blissfully ignorant of anything going on around it.
> >
> > This also lets multiple pipes do DRRS simultanously and entirely
> > independently.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Ugh. What an annoying patch to review! :/
> 
> Overall it all looks sane and the direction is good, I had some
> nitpicks, and I didn't spot any mistakes. Dunno how easy it would be to
> split this up to smaller chunks and whether it would be worth the
> effort.

I couldn't immediately think of a nice way to split it. But
after further thought maybe I could try to eg. do the intel_dp
elimination first, and then move stuff into the crtc. I'll give
that a go...

> 
> Tentatively
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> but my confidence level for spotting subtle mistakes in this one aren't
> high I'm afraid.
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |  97 ++----
> >  .../drm/i915/display/intel_display_types.h    |  14 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
> >  drivers/gpu/drm/i915/display/intel_drrs.c     | 300 +++++++-----------
> >  drivers/gpu/drm/i915/display/intel_drrs.h     |  20 +-
> >  drivers/gpu/drm/i915/i915_drv.h               |  15 -
> >  9 files changed, 171 insertions(+), 291 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 65827481c1b1..f655c1622877 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -24,6 +24,7 @@
> >  #include "intel_display_debugfs.h"
> >  #include "intel_display_trace.h"
> >  #include "intel_display_types.h"
> > +#include "intel_drrs.h"
> >  #include "intel_dsi.h"
> >  #include "intel_pipe_crc.h"
> >  #include "intel_psr.h"
> > @@ -367,6 +368,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
> >  
> >  	intel_color_init(crtc);
> >  
> > +	intel_crtc_drrs_init(crtc);
> >  	intel_crtc_crc_init(crtc);
> >  
> >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 3e6d86a54850..a3bf4e876fb4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2820,7 +2820,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
> >  	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
> >  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> >  
> > -	intel_drrs_enable(intel_dp, crtc_state);
> > +	intel_drrs_enable(crtc_state);
> >  
> >  	if (crtc_state->has_audio)
> >  		intel_audio_codec_enable(encoder, crtc_state, conn_state);
> > @@ -2963,7 +2963,7 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> >  		intel_audio_codec_disable(encoder,
> >  					  old_crtc_state, old_conn_state);
> >  
> > -	intel_drrs_disable(intel_dp, old_crtc_state);
> > +	intel_drrs_disable(old_crtc_state);
> >  	intel_psr_disable(intel_dp, old_crtc_state);
> >  	intel_edp_backlight_off(old_conn_state);
> >  	/* Disable the decompression in DP Sink */
> > @@ -3013,12 +3013,12 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
> >  				     const struct intel_crtc_state *crtc_state,
> >  				     const struct drm_connector_state *conn_state)
> >  {
> > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  
> >  	intel_ddi_set_dp_msa(crtc_state, conn_state);
> >  
> >  	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> > -	intel_drrs_update(intel_dp, crtc_state);
> > +	intel_drrs_update(state, crtc);
> >  
> >  	intel_backlight_update(state, encoder, crtc_state, conn_state);
> >  	drm_connector_update_privacy_screen(conn_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index b7c418677372..4c7c74665819 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1229,7 +1229,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
> >  
> >  	hsw_ips_post_update(state, crtc);
> >  	intel_fbc_post_update(state, crtc);
> > -	intel_drrs_page_flip(state, crtc);
> > +	intel_drrs_page_flip(crtc);
> >  
> >  	if (needs_async_flip_vtd_wa(old_crtc_state) &&
> >  	    !needs_async_flip_vtd_wa(new_crtc_state))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 798bf233a60f..bbf6ebd18414 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1143,87 +1143,44 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
> >  	return 0;
> >  }
> >  
> > -static void drrs_status_per_crtc(struct seq_file *m,
> > -				 struct drm_device *dev,
> > -				 struct intel_crtc *crtc)
> > +static int i915_drrs_status(struct seq_file *m, void *unused)
> >  {
> > -	struct drm_i915_private *dev_priv = to_i915(dev);
> > -	struct i915_drrs *drrs = &dev_priv->drrs;
> > -	struct drm_connector *connector;
> > +	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> >  	struct drm_connector_list_iter conn_iter;
> > +	struct intel_connector *connector;
> > +	struct intel_crtc *crtc;
> >  
> > -	drm_connector_list_iter_begin(dev, &conn_iter);
> > -	drm_for_each_connector_iter(connector, &conn_iter) {
> > -		bool supported = false;
> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > +	for_each_intel_connector_iter(connector, &conn_iter) {
> > +		seq_printf(m, "[CONNECTOR:%d:%s]:\n",
> > +			   connector->base.base.id, connector->base.name);
> >  
> > -		if (connector->state->crtc != &crtc->base)
> > -			continue;
> > -
> > -		seq_printf(m, "%s:\n", connector->name);
> > -
> > -		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP &&
> > -		    drrs->type == DRRS_TYPE_SEAMLESS)
> > -			supported = true;
> > -
> > -		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
> > +		seq_printf(m, "\tDRRS Supported: %s\n",
> > +			   str_yes_no(connector->panel.downclock_mode));
> 
> "Supported" in the sense that the connector/panel can support it, but...

I should probably make this say static vs. seamless vs. no, so we know
what kind of DRRS one can expect.

> 
> >  	}
> >  	drm_connector_list_iter_end(&conn_iter);
> >  
> >  	seq_puts(m, "\n");
> >  
> > -	if (to_intel_crtc_state(crtc->base.state)->has_drrs) {
> > -		struct intel_panel *panel;
> > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +		seq_printf(m, "[CRTC:%d:%s]:\n",
> > +			   crtc->base.base.id, crtc->base.name);
> > +
> > +		mutex_lock(&crtc->drrs.mutex);
> >  
> > -		mutex_lock(&drrs->mutex);
> >  		/* DRRS Supported */
> > -		seq_puts(m, "\tDRRS Enabled: Yes\n");
> > +		seq_printf(m, "\tDRRS Enabled: %s\n",
> > +			   str_yes_no(intel_drrs_is_enabled(crtc)));
> >  
> > -		/* disable_drrs() will make drrs->dp NULL */
> > -		if (!drrs->dp) {
> > -			seq_puts(m, "Idleness DRRS: Disabled\n");
> > -			mutex_unlock(&drrs->mutex);
> > -			return;
> > -		}
> > -
> > -		panel = &drrs->dp->attached_connector->panel;
> > -		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
> > -					drrs->busy_frontbuffer_bits);
> > -
> > -		seq_puts(m, "\n\t\t");
> > +		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X",
> > +			   crtc->drrs.busy_frontbuffer_bits);
> >  
> >  		seq_printf(m, "DRRS refresh rate: %s\n",
> > -			   drrs->refresh_rate == DRRS_REFRESH_RATE_LOW ?
> > +			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
> >  			   "low" : "high");
> > -		seq_puts(m, "\n\t\t");
> >  
> > -		mutex_unlock(&drrs->mutex);
> > -	} else {
> > -		/* DRRS not supported. Print the VBT parameter*/
> 
> ...this part is lost in the debug output. Seems to me the debug output
> for not supported DDRS will be that the connector supports it but it's
> not enabled on the crtc for whatever reason.
> 
> > -		seq_puts(m, "\tDRRS Enabled : No");
> > +		mutex_unlock(&crtc->drrs.mutex);
> >  	}
> > -	seq_puts(m, "\n");
> > -}
> > -
> > -static int i915_drrs_status(struct seq_file *m, void *unused)
> > -{
> > -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> > -	struct drm_device *dev = &dev_priv->drm;
> > -	struct intel_crtc *crtc;
> > -	int active_crtc_cnt = 0;
> > -
> > -	drm_modeset_lock_all(dev);
> > -	for_each_intel_crtc(dev, crtc) {
> > -		if (crtc->base.state->active) {
> > -			active_crtc_cnt++;
> > -			seq_printf(m, "\nCRTC %d:  ", active_crtc_cnt);
> > -
> > -			drrs_status_per_crtc(m, dev, crtc);
> > -		}
> > -	}
> > -	drm_modeset_unlock_all(dev);
> > -
> > -	if (!active_crtc_cnt)
> > -		seq_puts(m, "No active crtc found\n");
> >  
> >  	return 0;
> >  }
> > @@ -1917,26 +1874,18 @@ static int i915_drrs_ctl_set(void *data, u64 val)
> >  
> >  		drm_connector_list_iter_begin(dev, &conn_iter);
> >  		drm_for_each_connector_iter(connector, &conn_iter) {
> > -			struct intel_encoder *encoder;
> > -			struct intel_dp *intel_dp;
> > -
> >  			if (!(crtc_state->uapi.connector_mask &
> >  			      drm_connector_mask(connector)))
> >  				continue;
> >  
> > -			encoder = intel_attached_encoder(to_intel_connector(connector));
> > -			if (encoder->type != INTEL_OUTPUT_EDP)
> > -				continue;
> > -
> >  			drm_dbg(&dev_priv->drm,
> >  				"Manually %sabling DRRS. %llu\n",
> >  				val ? "en" : "dis", val);
> >  
> > -			intel_dp = enc_to_intel_dp(encoder);
> >  			if (val)
> > -				intel_drrs_enable(intel_dp, crtc_state);
> > +				intel_drrs_enable(crtc_state);
> >  			else
> > -				intel_drrs_disable(intel_dp, crtc_state);
> > +				intel_drrs_disable(crtc_state);
> >  		}
> >  		drm_connector_list_iter_end(&conn_iter);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 86b2fa675124..e34800ab6924 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1252,6 +1252,11 @@ enum intel_pipe_crc_source {
> >  	INTEL_PIPE_CRC_SOURCE_MAX,
> >  };
> >  
> > +enum drrs_refresh_rate {
> > +	DRRS_REFRESH_RATE_HIGH,
> > +	DRRS_REFRESH_RATE_LOW,
> > +};
> > +
> >  #define INTEL_PIPE_CRC_ENTRIES_NR	128
> >  struct intel_pipe_crc {
> >  	spinlock_t lock;
> > @@ -1294,6 +1299,15 @@ struct intel_crtc {
> >  		} active;
> >  	} wm;
> >  
> > +	struct {
> > +		struct mutex mutex;
> > +		struct delayed_work work;
> > +		enum drrs_refresh_rate refresh_rate;
> > +		unsigned int busy_frontbuffer_bits;
> > +		enum transcoder cpu_transcoder;
> > +		struct intel_link_m_n m_n, m2_n2;
> > +	} drrs;
> > +
> >  	int scanline_offset;
> >  
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 619546441eae..725c3350c923 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1895,8 +1895,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
> >  
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > -	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
> > -				  constant_n);
> > +	intel_drrs_compute_config(pipe_config, intel_connector,
> > +				  output_bpp, constant_n);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> > index c97b5dee8cae..246dd0c71194 100644
> > --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> > @@ -65,15 +65,14 @@ static bool can_enable_drrs(struct intel_connector *connector,
> >  		return false;
> >  
> >  	return connector->panel.downclock_mode &&
> > -		i915->drrs.type == DRRS_TYPE_SEAMLESS;
> > +		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
> 
> So is i915->drrs.type just an unchanged copy of i915->vbt.drrs_type the
> whole time?!

More or less. I think we skipped the assignment if we didn't find a
downclock mode. But that logic doesn't make any sense when we aim
to eliminate the single eDP connector assumption.

> This could be a prep patch perhaps.

Ack.

-- 
Ville Syrjälä
Intel
