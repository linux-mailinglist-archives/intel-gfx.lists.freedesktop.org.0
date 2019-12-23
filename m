Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A50FA129AEF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 22:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0731889AB3;
	Mon, 23 Dec 2019 21:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278F489AB3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 21:05:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="211671877"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 23 Dec 2019 13:05:03 -0800
Date: Mon, 23 Dec 2019 13:05:02 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223210502.GG2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223195850.25997-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/display: remove alias to
 dig_port
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 11:58:43AM -0800, Lucas De Marchi wrote:
> We don't need intel_dig_port and dig_port to refer to the same thing.
> Prefer the latter.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c9ba7d7f3787..f054c82214c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3674,12 +3674,11 @@ static void intel_ddi_pre_enable_hdmi(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state,
>  				      const struct drm_connector_state *conn_state)
>  {
> -	struct intel_digital_port *intel_dig_port = enc_to_dig_port(&encoder->base);
> -	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
> +	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
>  	int level = intel_ddi_hdmi_level(dev_priv, port);
> -	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
>  
>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>  	intel_ddi_clk_select(encoder, crtc_state);
> @@ -3709,9 +3708,8 @@ static void intel_ddi_pre_enable_hdmi(struct intel_encoder *encoder,
>  
>  	intel_ddi_enable_pipe_clock(crtc_state);
>  
> -	intel_dig_port->set_infoframes(encoder,
> -				       crtc_state->has_infoframe,
> -				       crtc_state, conn_state);
> +	dig_port->set_infoframes(encoder, crtc_state->has_infoframe,
> +				 crtc_state, conn_state);
>  }
>  
>  static void intel_ddi_pre_enable(struct intel_encoder *encoder,
> -- 
> 2.24.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
