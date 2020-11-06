Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D12F2A9282
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 10:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997FA6EE36;
	Fri,  6 Nov 2020 09:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC996EE32
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 09:26:42 +0000 (UTC)
IronPort-SDR: gf/xkd/7Q8+1goHkn7j4flXajFMs02gGk3txk+B9Msq7PYH79b3OKmYlcVU+rHIgWWOeuYF5m+
 8MMfrkZkDKBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="156524362"
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="156524362"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 01:26:42 -0800
IronPort-SDR: yV9aFkzvCwVQmR9CR5S2MljDGR/q9WMxjY2r8CRT8p6FceAnhGD6PiAEStG+FUxuunET99TUv2
 kOXBrmWthpUQ==
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="539775453"
Received: from unknown (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 01:26:40 -0800
Date: Fri, 6 Nov 2020 14:57:25 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201106092724.GA12408@intel.com>
References: <20201027164208.10026-16-anshuman.gupta@intel.com>
 <20201103062700.5416-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103062700.5416-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 15/16] drm/i915/hdcp: Support for HDCP
 2.2 MST shim callbacks
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

On 2020-11-03 at 11:57:00 +0530, Anshuman Gupta wrote:
> Add support for HDCP 2.2 DP MST shim callback.
> This adds existing DP HDCP shim callback for Link Authentication
> and Encryption and HDCP 2.2 stream encryption
> callback.
> 
> v2:
> Added a WARN_ON() instead of drm_err. [Uma]
> Cosmetic changes. [Uma]

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  4 +
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 80 +++++++++++++++++--
>  2 files changed, 76 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index dfb5be64e03a..4cbb151ff3cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -374,6 +374,10 @@ struct intel_hdcp_shim {
>  	int (*config_stream_type)(struct intel_digital_port *dig_port,
>  				  bool is_repeater, u8 type);
>  
> +	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
> +	int (*stream_2_2_encryption)(struct intel_digital_port *dig_port,
> +				     bool enable);
> +
>  	/* HDCP2.2 Link Integrity Check */
>  	int (*check_2_2_link)(struct intel_digital_port *dig_port,
>  			      struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 4be61e7fde4e..35c1543fe0e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -698,18 +698,14 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_digital_port *dig_port,
>  	return 0;
>  }
>  
> -static
> -bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> -				  struct intel_connector *connector)
> +static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
> +					 struct intel_connector *connector)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct drm_dp_query_stream_enc_status_ack_reply reply;
> +	struct intel_dp *intel_dp = &dig_port->dp;
>  	int ret;
>  
> -	if (!intel_dp_hdcp_check_link(dig_port, connector))
> -		return false;
> -
>  	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
>  						  connector->port, &reply);
>  	if (ret) {
> @@ -722,6 +718,69 @@ bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
>  	return reply.auth_completed && reply.encryption_enabled;
>  }
>  
> +static
> +bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> +				  struct intel_connector *connector)
> +{
> +	if (!intel_dp_hdcp_check_link(dig_port, connector))
> +		return false;
> +
> +	return intel_dp_mst_get_qses_status(dig_port, connector);
> +}
> +
> +static int
> +intel_dp_mst_hdcp2_stream_encryption(struct intel_digital_port *dig_port,
> +				     bool enable)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
> +	enum port port = dig_port->base.port;
> +	/* HDCP2.x register uses stream transcoder */
> +	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
> +	int ret;
> +
> +	drm_WARN_ON(&i915->drm, enable &&
> +		    !!(intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port))
> +		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
> +
> +	ret = intel_dp_mst_toggle_hdcp_stream_select(dig_port, enable);
> +	if (ret)
> +		return ret;
> +
> +	/* Wait for encryption confirmation */
> +	if (intel_de_wait_for_register(i915,
> +				       HDCP2_STREAM_STATUS(i915, cpu_transcoder, port),
> +				       STREAM_ENCRYPTION_STATUS,
> +				       enable ? STREAM_ENCRYPTION_STATUS : 0,
> +				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> +		drm_err(&i915->drm, "Timed out waiting for stream encryption %s\n",
> +			enable ? "enabled" : "disabled");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * DP v2.0 I.3.3 ignore the stream signature L' in QSES reply msg reply.
> + * I.3.5 MST source device may use a QSES msg to query downstream status
> + * for a particular stream.
> + */
> +static
> +int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
> +				  struct intel_connector *connector)
> +{
> +	int ret;
> +
> +	ret = intel_dp_hdcp2_check_link(dig_port, connector);
> +	if (ret)
> +		return ret;
> +
> +	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
> +}
> +
>  static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>  	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>  	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -735,7 +794,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>  	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
>  	.check_link = intel_dp_mst_hdcp_check_link,
>  	.hdcp_capable = intel_dp_hdcp_capable,
> -
> +	.write_2_2_msg = intel_dp_hdcp2_write_msg,
> +	.read_2_2_msg = intel_dp_hdcp2_read_msg,
> +	.config_stream_type = intel_dp_hdcp2_config_stream_type,
> +	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
> +	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
> +	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
>  	.protocol = HDCP_PROTOCOL_DP,
>  };
>  
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
