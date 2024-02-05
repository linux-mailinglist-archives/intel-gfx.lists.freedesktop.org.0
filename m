Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D1849BFF
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A1610F9BD;
	Mon,  5 Feb 2024 13:38:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JewFHrC4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C4B10F9B5;
 Mon,  5 Feb 2024 13:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707140276; x=1738676276;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=RlOgX2NxRlxfhIwgDfgRCFR+aQmKbELqEHR7I9MGfPc=;
 b=JewFHrC40Kb9wKVdBj/SwCfQ8PQH3hnfAz/gVn3KYbYuN8xVYXy2xkdv
 URGStu180RMMcRZ+E3UyI9wXWQoTCCQ2PGYEFvZMbZPDHAxwfwpki830Z
 RrjoA2rPQTZNhpsy8vBNhgbO0MD2QH9+zy49TZ8ByX4/Efzi8Mc14dtkh
 X4NnaStDtIEQEFESPqeLYWMMdbC0XFm/JOe37LX53tqq6wBVj884ZrAy/
 mbKbJwctvhzNP+PLi24eAh2eDYbh/qzihah2UiV7Ye0SOUrb6bRpfWxb8
 VbUUKc0CR8ETYrI1ZMDq8QNRzZ1/OFdbpZSbACYjz897HQhA1+bMxEk+O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="4316647"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="4316647"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:37:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="31804652"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:37:52 -0800
Date: Mon, 5 Feb 2024 15:38:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Drew Davenport <ddavenport@chromium.org>
Cc: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Subject: Re: [v5, 25/30] drm/i915/dp_mst: Enable MST DSC decompression for all
 streams
Message-ID: <ZcDkwaSFNB13EMvt@ideak-desk.fi.intel.com>
References: <20231107001505.3370108-6-imre.deak@intel.com>
 <Zb0q8IDVXS0HxJyj@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zb0q8IDVXS0HxJyj@chromium.org>
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

On Fri, Feb 02, 2024 at 10:48:32AM -0700, Drew Davenport wrote:
> [...]
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index b8f43efb0ab5a..94eece7f63be3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -318,6 +318,12 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
> >  			const struct intel_crtc_state *crtc_state =
> >  				to_intel_crtc_state(crtc->base.state);
> >  
> > +			if (crtc_state->dsc.compression_enable) {
> > +				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
>
> I'm running into this warning on a JSL device that uses a MIPI panel.
> 
> Looking at gen11_dsi_dsc_compute_config in icl_dsi.c, I don't see any
> code paths where dsc_compression_aux would be set.
> 
> Should there be a check here for the encoder type to avoid setting
> dsc_decompression_enabled for DSI encoders?

Yes thanks for the report, this state should get updated only for DP
connectors, I missed this when adding the above. I think it's better to
do this in a connector specific hook as in:

https://lore.kernel.org/intel-gfx/20240205132631.1588577-1-imre.deak@intel.com

Also I wonder if we could add ICL/JSL platforms with DSI (DSC) output to
CI, CC'd the CI team.

> > +				connector->dp.dsc_decompression_enabled = true;
> > +			} else {
> > +				connector->dp.dsc_decompression_enabled = false;
> > +			}
> >  			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
> >  		}
> >  	}
