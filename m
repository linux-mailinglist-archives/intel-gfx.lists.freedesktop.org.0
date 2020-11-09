Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FA62AB0FE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 06:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBA5891FF;
	Mon,  9 Nov 2020 05:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90917891FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 05:49:47 +0000 (UTC)
IronPort-SDR: 1buNG6aqgdJ/ptnGHoJWMyzmg0xpu8Eu9UnU7wSLUFr+CgRZxYtiIhYPo2ocuS9+BLmi2RnNw8
 KpTmQ5Bd/u+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="149604050"
X-IronPort-AV: E=Sophos;i="5.77,462,1596524400"; d="scan'208";a="149604050"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2020 21:49:47 -0800
IronPort-SDR: v1FX3rLZ0IbE89YbC3kUn72X8nFA/49wgFugZkcuL4dIg8xz6YKnITjLbU65+tBCyfOLXPtn+U
 HGBW35ZfhdSw==
X-IronPort-AV: E=Sophos;i="5.77,462,1596524400"; d="scan'208";a="472840582"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2020 21:49:45 -0800
Date: Mon, 9 Nov 2020 11:06:24 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20201109053620.GV29526@intel.com>
References: <20201027164208.10026-16-anshuman.gupta@intel.com>
 <20201103062700.5416-1-anshuman.gupta@intel.com>
 <20201106092724.GA12408@intel.com>
 <20201106111221.GB12843@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106111221.GB12843@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On 2020-11-06 at 16:42:21 +0530, Ramalingam C wrote:
> On 2020-11-06 at 14:57:25 +0530, Ramalingam C wrote:
> > On 2020-11-03 at 11:57:00 +0530, Anshuman Gupta wrote:
> > > Add support for HDCP 2.2 DP MST shim callback.
> > > This adds existing DP HDCP shim callback for Link Authentication
> > > and Encryption and HDCP 2.2 stream encryption
> > > callback.
> > > 
> > > v2:
> > > Added a WARN_ON() instead of drm_err. [Uma]
> > > Cosmetic changes. [Uma]
> > 
> > Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> I think we can improvise further here.
> 
> > > 
> > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  4 +
> > >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 80 +++++++++++++++++--
> > >  2 files changed, 76 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index dfb5be64e03a..4cbb151ff3cf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -374,6 +374,10 @@ struct intel_hdcp_shim {
> > >  	int (*config_stream_type)(struct intel_digital_port *dig_port,
> > >  				  bool is_repeater, u8 type);
> > >  
> > > +	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
> > > +	int (*stream_2_2_encryption)(struct intel_digital_port *dig_port,
> > > +				     bool enable);
> > > +
> > >  	/* HDCP2.2 Link Integrity Check */
> > >  	int (*check_2_2_link)(struct intel_digital_port *dig_port,
> > >  			      struct intel_connector *connector);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > index 4be61e7fde4e..35c1543fe0e2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > > @@ -698,18 +698,14 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_digital_port *dig_port,
> > >  	return 0;
> > >  }
> > >  
> > > -static
> > > -bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > > -				  struct intel_connector *connector)
> > > +static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
> > > +					 struct intel_connector *connector)
> > >  {
> > >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > -	struct intel_dp *intel_dp = &dig_port->dp;
> > >  	struct drm_dp_query_stream_enc_status_ack_reply reply;
> > > +	struct intel_dp *intel_dp = &dig_port->dp;
> > >  	int ret;
> > >  
> > > -	if (!intel_dp_hdcp_check_link(dig_port, connector))
> > > -		return false;
> > > -
> > >  	ret = drm_dp_send_query_stream_enc_status(&intel_dp->mst_mgr,
> > >  						  connector->port, &reply);
> > >  	if (ret) {
> > > @@ -722,6 +718,69 @@ bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > >  	return reply.auth_completed && reply.encryption_enabled;
> > >  }
> > >  
> > > +static
> > > +bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
> > > +				  struct intel_connector *connector)
> > > +{
> > > +	if (!intel_dp_hdcp_check_link(dig_port, connector))
> > > +		return false;
> > > +
> > > +	return intel_dp_mst_get_qses_status(dig_port, connector);
> > > +}
> > > +
> > > +static int
> > > +intel_dp_mst_hdcp2_stream_encryption(struct intel_digital_port *dig_port,
> > > +				     bool enable)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > +	struct hdcp_port_data *data = &dig_port->port_data;
> > > +	struct intel_dp *dp = &dig_port->dp;
> > > +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
> > > +	enum port port = dig_port->base.port;
> > > +	/* HDCP2.x register uses stream transcoder */
> > > +	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
> > > +	int ret;
> > > +
> > > +	drm_WARN_ON(&i915->drm, enable &&
> > > +		    !!(intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port))
> > > +		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
> > > +
> > > +	ret = intel_dp_mst_toggle_hdcp_stream_select(dig_port, enable);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Wait for encryption confirmation */
> > > +	if (intel_de_wait_for_register(i915,
> > > +				       HDCP2_STREAM_STATUS(i915, cpu_transcoder, port),
> > > +				       STREAM_ENCRYPTION_STATUS,
> > > +				       enable ? STREAM_ENCRYPTION_STATUS : 0,
> > > +				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> > > +		drm_err(&i915->drm, "Timed out waiting for stream encryption %s\n",
> > > +			enable ? "enabled" : "disabled");
> > > +		return -ETIMEDOUT;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +/*
> > > + * DP v2.0 I.3.3 ignore the stream signature L' in QSES reply msg reply.
> > > + * I.3.5 MST source device may use a QSES msg to query downstream status
> > > + * for a particular stream.
> > > + */
> > > +static
> > > +int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
> > > +				  struct intel_connector *connector)
> > > +{
> 
> Since on MST topology only for connector with mst transcoder hdcp
> authentication will be done. all other connectors' hdcp enable are just
> enabling the stream encryption.
One correction here, driver will authenticate the link and enable the encryption 
on the link for the first HDCP request form user space(user space can ask to enable
HDCP on any stream first as it is not aware of master/slave), so driver doesn't 
need to distinguish between master trascoder and slave transcoder. 
When link is encrypted driver will enable the stream encryption for the stream
which has asked for it.
> 
> So the check link is needed for the port which has done the real hdcp
> authentication. other hdcp instances need the qses check for the stream
> encryption status check.
Yes this can be optimized, check link required for the connector
which has involved with link authentication and encryption, 
i would prefer to use hdcp->is_repeater for that becuase this will be true 
only for the connector which has involved with link authentication and encryption.
> 
> this can be combined schedule the check_link{1.4, 2.2) work only for the
> connector with mst transcoder. and in that check_link work, do the qses
> check for all the connectors on that mst topology and then do the real
> check_link for the mst port alone. This way we avoid the three to four 
> instance of check link delayed work with one.
I think it would be the better way to skip the link check for the connector
which has hdcp->is_repeater false and limit those only with QSES check
in check_2_2_link shim callback. This will abstract this from intel_hdcp.c
by just keeping in shim callbacks. Please provide your opinion ? 

HDCP 1.4 will go through link authentication and encryption for each connector
in DP MST topology, so i belive let it call the check_link for each connector
along with QSES check.

Thanks,
Anshuman Gupta.
> 
> 
> -Ram
> > > +	int ret;
> > > +
> > > +	ret = intel_dp_hdcp2_check_link(dig_port, connector);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -EINVAL;
> > > +}
> > > +
> > >  static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> > >  	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
> > >  	.read_bksv = intel_dp_hdcp_read_bksv,
> > > @@ -735,7 +794,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> > >  	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
> > >  	.check_link = intel_dp_mst_hdcp_check_link,
> > >  	.hdcp_capable = intel_dp_hdcp_capable,
> > > -
> > > +	.write_2_2_msg = intel_dp_hdcp2_write_msg,
> > > +	.read_2_2_msg = intel_dp_hdcp2_read_msg,
> > > +	.config_stream_type = intel_dp_hdcp2_config_stream_type,
> > > +	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
> > > +	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
> > > +	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> > >  	.protocol = HDCP_PROTOCOL_DP,
> > >  };
> > >  
> > > -- 
> > > 2.26.2
> > > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
