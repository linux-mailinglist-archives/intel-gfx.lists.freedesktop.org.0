Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E8B861CE0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 20:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CD010ECA1;
	Fri, 23 Feb 2024 19:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eui1SRnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DE510ECA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 19:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708717811; x=1740253811;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1TfWlSel11Tnjj/v9Jl+JJ6bmk7doMj+0568r5g1v78=;
 b=eui1SRncceyWOPKsQh3wxX6J6y6tvgiI7sltglNYvEoetY6aFHtgC5vH
 8xCNhO7aRKYy7Vg5jmsgprCXp1o/0Je9wxRNVxCHDboX5Zgmwac1GdLBA
 hRgmRC/Xp+L4CjOf3OaYkxXgI59n4ruk4GQDjoG3y/MIcNHhDOxRR/aGE
 lYglDlA4DAZUUy5w/XOTaROajglJmF99nrIHLXqeB0lLy4/1woVprIJAG
 MSMVE2enEMo1COY5x2BBtGqBhDbvVtuBbeoJ+ft6/fl+WvSWB2icX9X+i
 BT46ZagIxYjTdc3YDQnXECtY5U2On2nqwyFvLLOXIODOIDWPFM5X8ozUX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="13695934"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="13695934"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 11:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="827767848"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="827767848"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2024 11:50:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Feb 2024 21:50:07 +0200
Date: Fri, 23 Feb 2024 21:50:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/i915: Include CRTC info in infoframe mismatch
 prints
Message-ID: <Zdj27yMHWge6BGaq@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-3-ville.syrjala@linux.intel.com>
 <ZdfA-8RD7AATzywS@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdfA-8RD7AATzywS@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Feb 22, 2024 at 04:47:39PM -0500, Rodrigo Vivi wrote:
> On Thu, Feb 15, 2024 at 06:40:45PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Most crtc state mismatches include the CRTC id+name in the
> > prints. Also include it in the infoframe mismatches.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index a7f487f5c2b2..e3520a3da468 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4788,23 +4788,27 @@ intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
> >  }
> >  
> >  static void
> > -pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
> > -			       bool fastset, const char *name,
> > +pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
> 
> why not crtc, fastset? having the main struct as the first
> argument seems more natural imho

Consistency. This order was already used by some other
mismatch() functions. So if we want to reorder we should
change all of them.

> 
> anyway,
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> > +			       const char *name,
> >  			       const union hdmi_infoframe *a,
> >  			       const union hdmi_infoframe *b)
> >  {
> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +
> >  	if (fastset) {
> >  		if (!drm_debug_enabled(DRM_UT_KMS))
> >  			return;
> >  
> >  		drm_dbg_kms(&dev_priv->drm,
> > -			    "fastset requirement not met in %s infoframe\n", name);
> > +			    "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
> > +			    crtc->base.base.id, crtc->base.name, name);
> >  		drm_dbg_kms(&dev_priv->drm, "expected:\n");
> >  		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
> >  		drm_dbg_kms(&dev_priv->drm, "found:\n");
> >  		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
> >  	} else {
> > -		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
> > +		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s infoframe\n",
> > +			crtc->base.base.id, crtc->base.name, name);
> >  		drm_err(&dev_priv->drm, "expected:\n");
> >  		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
> >  		drm_err(&dev_priv->drm, "found:\n");
> > @@ -5072,7 +5076,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
> >  	if (!intel_compare_infoframe(&current_config->infoframes.name, \
> >  				     &pipe_config->infoframes.name)) { \
> > -		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
> > +		pipe_config_infoframe_mismatch(fastset, crtc, __stringify(name), \
> >  					       &current_config->infoframes.name, \
> >  					       &pipe_config->infoframes.name); \
> >  		ret = false; \
> > -- 
> > 2.43.0
> > 

-- 
Ville Syrjälä
Intel
