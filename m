Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF1050A107
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 15:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AB489D63;
	Thu, 21 Apr 2022 13:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B8989D63
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 13:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650548620; x=1682084620;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kWjCD4Ye76/zDcTY1Vcxc0YOqxWgO/1klOPyp0AdK6I=;
 b=aAB4PrMxdi4KsuVKPC8txCouzOsRnyiE1jX/LaIlO8Oje5MDfixszMJr
 Z8/qGjNLGcpEQ8dWHFecopxHKQXepLyNa8PIJMd7mbrSDQK3As9YGSWDB
 tQNNNnKM4pFb0EmUM9HgIik+UhZzHFVfRMGEvuHxGKohc8ls2LLDRKqrX
 ubdXsliX3gonphKBQJvHzKNW9t+gkCR8QdJg0W9H4vjTgDLKJe4L0bt0a
 GMURpCtx+RkKppNrc8rGLYGFFkw5KXOtUqEBXvsAkee7M5XbVQ0dad06S
 sEDw5jCUZk1590HRdY0n2sbOApiFwO8C9ZqYlsp+7jE8PMiYa+1UVtVtN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="263819471"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="263819471"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 06:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="703087878"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 21 Apr 2022 06:43:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Apr 2022 16:43:36 +0300
Date: Thu, 21 Apr 2022 16:43:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YmFfiEB2YHCufUki@intel.com>
References: <20220418205221.291891-1-jose.souza@intel.com>
 <YmFLPj2Qp41TwMZK@intel.com>
 <b7d461ad25b9dde58d25577eb94c578fc41b8ab0.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b7d461ad25b9dde58d25577eb94c578fc41b8ab0.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/drrs: Split the DRRS
 status per connector
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 21, 2022 at 01:18:17PM +0000, Souza, Jose wrote:
> On Thu, 2022-04-21 at 15:17 +0300, Ville Syrj�l� wrote:
> > On Mon, Apr 18, 2022 at 01:52:20PM -0700, Jos� Roberto de Souza wrote:
> > > Instead of keep the DRRS status of all connectors/pipe into a single
> > > i915_drrs_status what makes user-space parsing terrible moving
> > > each eDP connector status to its own folder.
> > > 
> > > As legacy support still returning the DRRS status of the first
> > > eDP connector in the main i915_drrs_status.
> > 
> > I was thinking more along the lines of 
> > crtc/drrs_something -> just the drrs state for this pipe
> > connector/drrs_something -> just the info whether this connector supports drrs or not
> 
> In my opinion split the information into 2 different debugfs is not good.
> Will make IGT more complicated, 

I don't see how it would be more complicated. I think th opposite is
true. With the "multiple objects in one file" approach you need ugly
code to even find the correct portion of the file to parse.

The sysfs "one value per file" would be even nicer to handle in the
code since you wouldn't need to parse so much text, but then we'd end
up with tons of files which may not be entirely desirable (or we'd need
to introce some kind of per-feature directory hierarchy to keep things
organized).

> also this follows along with PSR debugfs.
> 
> > 
> > We could also think about hoisting all this stuf into intel_drrs.c
> > in the hopes of eventually hiding more of the drrs stuff from the
> > rest of the driver.
> > 
> > > 
> > > Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos� Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++++------
> > >  1 file changed, 46 insertions(+), 19 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index 452d773fd4e34..0d7d2e750a4c7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -1068,43 +1068,35 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
> > >  	return 0;
> > >  }
> > >  
> > > -static int i915_drrs_status(struct seq_file *m, void *unused)
> > > +static int intel_drrs_status(struct seq_file *m, struct drm_connector *connector)
> > >  {
> > > -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> > > -	struct drm_connector_list_iter conn_iter;
> > > -	struct intel_connector *connector;
> > > +	struct intel_connector *intel_connector = to_intel_connector(connector);
> > > +	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> > >  	struct intel_crtc *crtc;
> > >  
> > > -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > -	for_each_intel_connector_iter(connector, &conn_iter) {
> > > -		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
> > > -			   connector->base.base.id, connector->base.name,
> > > -			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
> > > -	}
> > > -	drm_connector_list_iter_end(&conn_iter);
> > > -
> > > -	seq_puts(m, "\n");
> > > +	seq_printf(m, "DRRS type: %s\n",
> > > +		   intel_drrs_type_str(intel_panel_drrs_type(intel_connector)));
> > >  
> > >  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > >  		const struct intel_crtc_state *crtc_state =
> > >  			to_intel_crtc_state(crtc->base.state);
> > >  
> > > -		seq_printf(m, "[CRTC:%d:%s]:\n",
> > > -			   crtc->base.base.id, crtc->base.name);
> > > +		if (!(crtc_state->uapi.connector_mask & drm_connector_mask(connector)))
> > > +			continue;
> > >  
> > >  		mutex_lock(&crtc->drrs.mutex);
> > >  
> > >  		/* DRRS Supported */
> > > -		seq_printf(m, "\tDRRS Enabled: %s\n",
> > > +		seq_printf(m, "DRRS Enabled: %s\n",
> > >  			   str_yes_no(crtc_state->has_drrs));
> > >  
> > > -		seq_printf(m, "\tDRRS Active: %s\n",
> > > +		seq_printf(m, "DRRS Active: %s\n",
> > >  			   str_yes_no(intel_drrs_is_active(crtc)));
> > >  
> > > -		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
> > > +		seq_printf(m, "Busy_frontbuffer_bits: 0x%X\n",
> > >  			   crtc->drrs.busy_frontbuffer_bits);
> > >  
> > > -		seq_printf(m, "\tDRRS refresh rate: %s\n",
> > > +		seq_printf(m, "DRRS refresh rate: %s\n",
> > >  			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
> > >  			   "low" : "high");
> > >  
> > > @@ -1114,6 +1106,28 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
> > >  	return 0;
> > >  }
> > >  
> > > +static int i915_drrs_status(struct seq_file *m, void *data)
> > > +{
> > > +	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> > > +	struct drm_connector_list_iter conn_iter;
> > > +	struct drm_connector *connector = NULL;
> > > +
> > > +	/* Find the first eDP connector */
> > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > +	drm_for_each_connector_iter(connector, &conn_iter) {
> > > +		if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
> > > +			continue;
> > > +
> > > +		break;
> > > +	}
> > > +	drm_connector_list_iter_end(&conn_iter);
> > > +
> > > +	if (!connector)
> > > +		return -ENODEV;
> > > +
> > > +	return intel_drrs_status(m, connector);
> > > +}
> > > +
> > >  static bool
> > >  intel_lpsp_power_well_enabled(struct drm_i915_private *i915,
> > >  			      enum i915_power_well_id power_well_id)
> > > @@ -1990,6 +2004,14 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
> > >  }
> > >  DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
> > >  
> > > +static int i915_drrs_status_show(struct seq_file *m, void *data)
> > > +{
> > > +	struct drm_connector *connector = m->private;
> > > +
> > > +	return intel_drrs_status(m, connector);
> > > +}
> > > +DEFINE_SHOW_ATTRIBUTE(i915_drrs_status);
> > > +
> > >  static int i915_lpsp_capability_show(struct seq_file *m, void *data)
> > >  {
> > >  	struct drm_connector *connector = m->private;
> > > @@ -2232,6 +2254,11 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
> > >  				    connector, &i915_psr_status_fops);
> > >  	}
> > >  
> > > +	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
> > > +		debugfs_create_file("i915_drrs_status", 0444, root,
> > > +				    connector, &i915_drrs_status_fops);
> > > +	}
> > > +
> > >  	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > >  	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> > >  	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> > > -- 
> > > 2.35.3
> > 
> 

-- 
Ville Syrj�l�
Intel
