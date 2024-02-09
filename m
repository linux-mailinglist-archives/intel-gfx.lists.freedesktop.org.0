Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C2284F24E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 10:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668EC10E8BE;
	Fri,  9 Feb 2024 09:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ym2Xqgk6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5172910E8BE
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 09:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707471071; x=1739007071;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QGNyxWevqcyqw5HRPF+6qO3p0ZBCB/Go+17/8yZnsn0=;
 b=Ym2Xqgk6JyHkdx2eqC6kbMrEJJYo/G2xqvVCdLOlhC91DloEY9KgjsAA
 5bYiW7JgcajVVhfggcPmwONrXs2KYQ9FIp3vdFNrHdPXej6sZQq3QgF7R
 EAIjWiOqbsWsFnoUbi2g8ZmpRrgb4Dq6baGUHM1R5bYkzqiDP00463l2B
 GoHvkRygrr6yhjavBUVobISq5A0rHRiGwRZONKrdIhf5DScOTKeBlKjdI
 llF95OL+TShbidALdJiTpyffwKp06ZeMJg62OAAJe1kJTErr9ePQA4im1
 6QQR/+ey4N83n0I9qq/cjiri1ZeiAjdCMx9CuQ8I/C00ARn2tJ97krO0B A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1285957"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1285957"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 01:31:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="25131235"
Received: from dfischbe-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.64])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 01:31:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 05/11] drm/i915/hdcp: Add new remote capability check
 shim function
In-Reply-To: <20240204142505.1157146-6-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
 <20240204142505.1157146-6-suraj.kandpal@intel.com>
Date: Fri, 09 Feb 2024 11:31:04 +0200
Message-ID: <877cjeasrr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Sun, 04 Feb 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Create a remote HDCP capability shim function which can read the
> remote monitor HDCP capability when in MST configuration.
>
> --v2
> -Add an assertion to make sure only mst encoder call this remote_cap
> function [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  4 +++
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
>  4 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..7e7a370a3b30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -532,6 +532,10 @@ struct intel_hdcp_shim {
>  	/* HDCP2.2 Link Integrity Check */
>  	int (*check_2_2_link)(struct intel_digital_port *dig_port,
>  			      struct intel_connector *connector);
> +
> +	/* HDCP remote sink cap */
> +	int (*remote_hdcp_cap)(struct intel_connector *connector,
> +			       bool *hdcp_capable, bool *hdcp2_capable);
>  };
>  
>  struct intel_hdcp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index ef1a4c90c225..ccd274200f92 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -668,6 +668,31 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>  	return _intel_dp_hdcp2_capable(aux, capable);
>  }
>  
> +static
> +int intel_dp_hdcp_remote_cap(struct intel_connector *connector,
> +			     bool *hdcp_capable, bool *hdcp2_capable)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_aux *aux = &connector->port->aux;
> +	u8 bcaps;
> +	int ret;
> +
> +	if (!intel_encoder_is_mst(connector->encoder))
> +		return -EINVAL;
> +
> +	ret =  _intel_dp_hdcp2_capable(aux, hdcp2_capable);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> +	if (ret)
> +		return ret;
> +
> +	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
> +
> +	return 0;
> +}
> +
>  static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>  	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>  	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -685,6 +710,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>  	.config_stream_type = intel_dp_hdcp2_config_stream_type,
>  	.check_2_2_link = intel_dp_hdcp2_check_link,
>  	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.remote_hdcp_cap = intel_dp_hdcp_remote_cap,

Please either call these _cap or _capable, don't mix.

Arguably a function called "capable" sounds like a predicate function
that should return the value. In code,

     if (capable(foo))

is misleading if that's checking the status of the capability read, not
the actual capability.

So maybe these should be called "get capability" or something.

BR,
Jani.


>  	.protocol = HDCP_PROTOCOL_DP,
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4593ac10e2fa..2b739249b60c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -205,6 +205,22 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>  	return capable;
>  }
>  
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	/* Remote Sink's capability for HDCP */
> +	if (!hdcp->shim->remote_hdcp_cap)
> +		return;
> +
> +	hdcp->shim->remote_hdcp_cap(connector, hdcp_capable, hdcp2_capable);
> +
> +	if (intel_hdcp2_prerequisite(connector))
> +		*hdcp2_capable = false;
> +}
> +
>  static bool intel_hdcp_in_use(struct drm_i915_private *i915,
>  			      enum transcoder cpu_transcoder, enum port port)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index a9c784fd9ba5..213d286ca3fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>  bool intel_hdcp_capable(struct intel_connector *connector);
>  bool intel_hdcp2_capable(struct intel_connector *connector);
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable);
>  void intel_hdcp_component_init(struct drm_i915_private *i915);
>  void intel_hdcp_component_fini(struct drm_i915_private *i915);
>  void intel_hdcp_cleanup(struct intel_connector *connector);

-- 
Jani Nikula, Intel
