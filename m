Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD858CD44A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D3910E40A;
	Thu, 23 May 2024 13:23:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2RTx0Pd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB2010E40A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716470627; x=1748006627;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P0B1Q5ZRxujyhAVsnNUVFqxq3zxYGRutKVQD5Y47r8s=;
 b=j2RTx0PdfwNUxGoHcDgm2g/QlDkGKrEZPr+Rrm8XpZMPtWWzIVqfa++t
 o/1UQdKaQQPOhUSnmJsX76UDYSzhAPboPNNxnksSpOyvtVvGvBhRpHHka
 4etiLMf8JXOWghN37NP8oQ20hqoj2MqqmsD/wadIexRjwi0vNNOQQ2Us3
 dmigzfAaBHyPo4lbEgiSefXRsascduA9yldn7duMtPsqOVjlIRFkmm/BD
 th2+dGj6DIY2ehVjfKpH4fC2ZwL3r/ZIXCTZGXCsJ9JzuGfz9QpuAx0Kj
 pVzPaysh9a0wc/1eRg71KNq8AsmCX4SkBXd/56uWWowvtxZbRhxhP5Luw g==;
X-CSE-ConnectionGUID: pUszX28CSKWTpFwYPB98/A==
X-CSE-MsgGUID: /wMeQnyrQxOMg4HtfNuWtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12660791"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="12660791"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:23:47 -0700
X-CSE-ConnectionGUID: wo+UF8NeRx+UuEBZfk29cg==
X-CSE-MsgGUID: 5LqyP7oSRt6zKTOzjWbBlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33646348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 06:23:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 16:23:44 +0300
Date: Thu, 23 May 2024 16:23:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 07/21] drm/i915/dp: Recheck link state after modeset
Message-ID: <Zk9DYJK4KowYvPza@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-8-imre.deak@intel.com>
 <Zk31bvX1nRy0QsTJ@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk31bvX1nRy0QsTJ@ideak-desk.fi.intel.com>
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

On Wed, May 22, 2024 at 04:38:54PM +0300, Imre Deak wrote:
> On Mon, May 20, 2024 at 09:58:05PM +0300, Imre Deak wrote:
> > [...]
> > +static void intel_ddi_link_check_work_fn(struct work_struct *work)
> > +{
> > +	struct intel_digital_port *dig_port =
> > +		container_of(work, typeof(*dig_port), check_link_work.work);
> > +	struct intel_encoder *encoder = &dig_port->base;
> > +	struct drm_modeset_acquire_ctx ctx;
> > +	int ret;
> > +
> > +	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
> > +		if (dig_port->dp.attached_connector)
> > +			ret = intel_dp_retrain_link(encoder, &ctx);
> 
> ret should not be let here uninited making the loop spin forever. This
> can't actually happen since the work won't get schedule w/o
> dp.attached_connector, but the above check should be also just an assert
> at this point (at least until handling HDMI is also added).

Hmm. Why are we actually initializing ret=-EDEADLK in
_intel_modeset_lock_begin()?

> 
> > +}
> > +
> > +void intel_ddi_init_link_check_work(struct intel_digital_port *dig_port)
> > +{
> > +	INIT_DELAYED_WORK(&dig_port->check_link_work, intel_ddi_link_check_work_fn);
> > +}
> > +
> > +void intel_ddi_flush_link_check_work(struct intel_digital_port *dig_port)
> > +{
> > +	cancel_delayed_work_sync(&dig_port->check_link_work);
> > +}
> > +
> > +void intel_ddi_queue_link_check(struct intel_digital_port *dig_port, int delay_ms)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +
> > +	mod_delayed_work(i915->unordered_wq,
> > +			 &dig_port->check_link_work, msecs_to_jiffies(delay_ms));
> > +}
> > +
> >  static int intel_hdmi_reset_link(struct intel_encoder *encoder,
> >  				 struct drm_modeset_acquire_ctx *ctx)
> >  {
> > @@ -4911,6 +4943,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
> >  
> >  	dig_port->aux_ch = AUX_CH_NONE;
> >  
> > +	intel_ddi_init_link_check_work(dig_port);
> > +
> >  	encoder = &dig_port->base;
> >  	encoder->devdata = devdata;
> >  

-- 
Ville Syrjälä
Intel
