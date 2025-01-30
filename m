Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFB3A22DDB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 14:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58A010E970;
	Thu, 30 Jan 2025 13:33:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A70RQ333";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2818310E96E;
 Thu, 30 Jan 2025 13:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738244014; x=1769780014;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Mw/nz86tSp155/fFjspzmKYhmLpxMMBasCLKAkJpLec=;
 b=A70RQ333f1ew3hwAcagOWz9b6w6isYY2lEmcuvAOiw8ygAH6yuhxNTvQ
 I/mTfGN+pyupNirfC/yr8QLPjgIF3qe9QC7l0g/AZZ77J2Kep5fh6wbgF
 oqKUXNbK95pSC+E2t4Mjel3UrAIs4XZ94IjJ/OA3qATKJvFeUwUy2dnEh
 nGaMRTZ11GylSNAcDiz3lVFyKQShHMioBWNjFUDNKd3xlIFQ1J4oLYDCu
 Sm+tHUZnnN1XcHCEfm++7R7pSoRpFudKqK3oKbGveSGF+t/kKmZOzuvB6
 poz3X2WpD8hMJzbHsD4Y++kyeHUws+je/iNLcjFwG9YY8y9fnIcKOfS8h A==;
X-CSE-ConnectionGUID: rMTDS3lUQi2LncHDydAJLg==
X-CSE-MsgGUID: 0L8EOqt8R8u4YbAoHCMJ5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="56325179"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="56325179"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:33:33 -0800
X-CSE-ConnectionGUID: w34JlYT2ShCEO7mdE8iveg==
X-CSE-MsgGUID: sLP7VzKPS3WxyhT1i4YLGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="114353751"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:33:31 -0800
Date: Thu, 30 Jan 2025 15:34:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/17] drm/i915/ddi: Simplify the port enabling via
 DDI_BUF_CTL
Message-ID: <Z5t_5F4oPlzErAPi@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-6-imre.deak@intel.com>
 <875xlw8qit.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xlw8qit.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 30, 2025 at 01:55:38PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > In the past intel_digital_port::dp.prepare_link_retrain() could be
> > called directly (vs. from a modeset) to retrain an enabled link. In that
> > case the port had to be first disabled and then re-enabled. That changed
> > with commit 2885d283cce5 ("drm/i915/dp: Retrain SST links via a modeset
> > commit"), after which the only way prepare_link_retrain() can be called
> > is from a modeset during link training when the port is still disabled.
> > Simplify things accordingly, assuming the disabled port state.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++-------------------
> >  1 file changed, 4 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 6192c0d3c87a5..3138dc4034797 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3743,8 +3743,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> >  	 * necessary disable and enable port
> >  	 */
> >  	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> > -	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
> > -		mtl_disable_ddi_buf(encoder, crtc_state);
> > +
> > +	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
> >  
> >  	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
> >  	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
> > @@ -3787,26 +3787,11 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> >  	struct intel_encoder *encoder = &dig_port->base;
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	enum port port = encoder->port;
> > -	u32 dp_tp_ctl, ddi_buf_ctl;
> > -	bool wait = false;
> > +	u32 dp_tp_ctl;
> >  
> >  	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> >  
> > -	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
> > -		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> > -		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
> > -			intel_de_write(dev_priv, DDI_BUF_CTL(port),
> > -				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
> > -			wait = true;
> > -		}
> > -
> > -		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
> > -		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
> > -		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> > -
> > -		if (wait)
> > -			intel_wait_ddi_buf_idle(dev_priv, port);
> > -	}
> > +	drm_WARN_ON(&dev_priv->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
> 
> Please don't add new dev_priv uses. Add the local display variable and
> use display->drm.

Ok, will update that.

> With that fixed,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  
> >  	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> 
> -- 
> Jani Nikula, Intel
