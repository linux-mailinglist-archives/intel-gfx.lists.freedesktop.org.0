Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5925F2D72D0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 10:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61AA6ECFF;
	Fri, 11 Dec 2020 09:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B852C6ECFD;
 Fri, 11 Dec 2020 09:29:50 +0000 (UTC)
IronPort-SDR: QXmqMpCJcm3SoQQQVG0bwsjgTJPmStvINc20+uls6l42WHvbOqfQ0r8KrDgD9P1+yrxQG4ZoCo
 HIH0j2bBL6jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="153638851"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="153638851"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:29:50 -0800
IronPort-SDR: AznPK7LTfIq19DO+g6qqqBMvGD8DPDv+VeMxEMkE0Hbb9ISyttYZrL6xOwtxaPCug7xRMqH1XU
 e5xMlCBA6jOw==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="440798548"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:29:47 -0800
Date: Fri, 11 Dec 2020 14:46:24 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20201211091621.GD9309@intel.com>
References: <20201210062640.11783-1-anshuman.gupta@intel.com>
 <20201210062640.11783-18-anshuman.gupta@intel.com>
 <20201211071934.GE1297@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211071934.GE1297@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v7 17/18] drm/i915/hdcp: Support for HDCP
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-11 at 12:49:35 +0530, Ramalingam C wrote:
> On 2020-12-10 at 11:56:39 +0530, Anshuman Gupta wrote:
> > Add support for HDCP 2.2 DP MST shim callback.
> > This adds existing DP HDCP shim callback for Link Authentication
> > and Encryption and HDCP 2.2 stream encryption
> > callback.
> > 
> > v2:
> > - Added a WARN_ON() instead of drm_err. [Uma]
> > - Cosmetic changes. [Uma]
> > v3:
> > - 's/port_data/hdcp_port_data' [Ram]
> > - skip redundant link check. [Ram]
> > v4:
> > - use pipe instead of port to access HDCP2_STREAM_STATUS
> How this missed the functional test till now?
Earlier it was tested on ICL with exisitng content protection igt tests
becuase DP-MST modeset were failing due to MST bandwidht related issue.
> Always true because port's stream status was referred?
It was passing when DDI_A being passed as port instead Pipe A (Used only MST panels)
but when we connected an eDP panel, it uses DDI_A for eDP and DP_MST
connectors uses DDI_B. So this time it fails as issue surfaced
out becuase we have passed DDI_B as port instead of Pipe A.
Thanks,
Anshuman Gupta.
> > 
> > Cc: Ramalingam C <ramalingam.c@intel.com>
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > Tested-by: Karthik B S <karthik.b.s@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  4 +
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 89 +++++++++++++++++--
> >  2 files changed, 85 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 63de25b40eff..da91e3f4ff27 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -378,6 +378,10 @@ struct intel_hdcp_shim {
> >  	int (*config_stream_type)(struct intel_digital_port *dig_port,
> >  				  bool is_repeater, u8 type);
> >  
> > +	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
> > +	int (*stream_2_2_encryption)(struct intel_connector *connector,
> > +				     bool enable);
> > +
> >  	/* HDCP2.2 Link Integrity Check */
> >  	int (*check_2_2_link)(struct intel_digital_port *dig_port,
> >  			      struct intel_connector *connector);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 9ade1ad3a80c..f372e25edab4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -698,18 +698,14 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
> >  	return 0;
> >  }
> >  
> > -static
> > -bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > -				  struct intel_connector *connector)
> > +static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
> > +					 struct intel_connector *connector)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > -	struct intel_dp *intel_dp = &dig_port->dp;
> >  	struct drm_dp_query_stream_enc_status_ack_reply reply;
> > +	struct intel_dp *intel_dp = &dig_port->dp;
> >  	int ret;
> >  
> > -	if (!intel_dp_hdcp_check_link(dig_port, connector))
> > -		return false;
> > -
> >  	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
> >  						  connector->port, &reply);
> >  	if (ret) {
> > @@ -726,6 +722,78 @@ bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> >  	return reply.auth_completed && reply.encryption_enabled;
> >  }
> >  
> > +static
> > +bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > +				  struct intel_connector *connector)
> > +{
> > +	if (!intel_dp_hdcp_check_link(dig_port, connector))
> > +		return false;
> this also could be optimised for the connector with port authentication
> only?
> > +
> > +	return intel_dp_mst_get_qses_status(dig_port, connector);
> > +}
> > +
> > +static int
> > +intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
> > +				     bool enable)
> > +{
> > +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> > +	struct intel_hdcp *hdcp = &connector->hdcp;
> > +	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
> > +	enum pipe pipe = (enum pipe)cpu_transcoder;
> > +	enum port port = dig_port->base.port;
> > +	int ret;
> > +
> > +	drm_WARN_ON(&i915->drm, enable &&
> > +		    !!(intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port))
> > +		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
> > +
> > +	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Wait for encryption confirmation */
> > +	if (intel_de_wait_for_register(i915,
> > +				       HDCP2_STREAM_STATUS(i915, cpu_transcoder, pipe),
> > +				       STREAM_ENCRYPTION_STATUS,
> > +				       enable ? STREAM_ENCRYPTION_STATUS : 0,
> > +				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> > +		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
> > +			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
> > +		return -ETIMEDOUT;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/*
> > + * DP v2.0 I.3.3 ignore the stream signature L' in QSES reply msg reply.
> > + * I.3.5 MST source device may use a QSES msg to query downstream status
> > + * for a particular stream.
> > + */
> > +static
> > +int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
> > +				  struct intel_connector *connector)
> > +{
> > +	struct intel_hdcp *hdcp = &connector->hdcp;
> > +	int ret;
> > +
> > +	/*
> > +	 * We do need to do the Link Check only for the connector involved with
> > +	 * HDCP port authentication and encryption.
> > +	 * We can re-use the hdcp->is_repeater flag to know that the connector
> > +	 * involved with HDCP port authentication and encryption.
> > +	 */
> > +	if (hdcp->is_repeater) {
> > +		ret = intel_dp_hdcp2_check_link(dig_port, connector);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
> > +}
> > +
> >  static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> >  	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
> >  	.read_bksv = intel_dp_hdcp_read_bksv,
> > @@ -739,7 +807,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> >  	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
> >  	.check_link = intel_dp_mst_hdcp_check_link,
> >  	.hdcp_capable = intel_dp_hdcp_capable,
> > -
> > +	.write_2_2_msg = intel_dp_hdcp2_write_msg,
> > +	.read_2_2_msg = intel_dp_hdcp2_read_msg,
> > +	.config_stream_type = intel_dp_hdcp2_config_stream_type,
> > +	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
> > +	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
> > +	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> >  	.protocol = HDCP_PROTOCOL_DP,
> >  };
> >  
> > -- 
> > 2.26.2
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
