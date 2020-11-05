Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEEE2A8390
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E416EDC3;
	Thu,  5 Nov 2020 16:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C3B6EDBB;
 Thu,  5 Nov 2020 16:33:36 +0000 (UTC)
IronPort-SDR: ygWy/JxYG9u1H/NhbxFEOGOXC9lEiuRLDimuktGkJWQm0QokbfbZAXsrIAa3FYEeD3vQ9obNvd
 n5Jt2AXC1Agg==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="165904273"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="165904273"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:33:35 -0800
IronPort-SDR: NPW15n4TYbDMq3E724VsRpp/Fmn5GfMgS3msaAqbFygHduSwH7r7S85vqXTBtk4XGV4ViEzoOT
 3qtR6VaMl/AA==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="321275659"
Received: from unknown (HELO intel.com) ([10.99.66.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:33:31 -0800
Date: Thu, 5 Nov 2020 22:04:15 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201105163414.GK3242@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
 <20201027164208.10026-13-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027164208.10026-13-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 12/16] drm/i915/hdcp: MST streams support
 in hdcp port_data
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

On 2020-10-27 at 22:12:04 +0530, Anshuman Gupta wrote:
> Add support for multiple mst stream in hdcp port data
> which will be used by RepeaterAuthStreamManage msg and
> HDCP 2.2 security f/w for m' validation.
> 
> v2:
> Init the hdcp port data k for HDMI/DP SST strem.
> 
> v3:
> Cosmetic changes. [Uma]
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 103 +++++++++++++++---
>  2 files changed, 92 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 749c3a7e0b45..24e0067c2e7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1445,10 +1445,12 @@ struct intel_digital_port {
>  	enum phy_fia tc_phy_fia;
>  	u8 tc_phy_fia_idx;
>  
> -	/* protects num_hdcp_streams reference count, port_data */
> +	/* protects num_hdcp_streams reference count, port_data and port_auth */
>  	struct mutex hdcp_mutex;
>  	/* the number of pipes using HDCP signalling out of this port */
>  	unsigned int num_hdcp_streams;
> +	/* port HDCP auth status */
> +	bool port_auth;
>  	/* HDCP port data need to pass to security f/w */
>  	struct hdcp_port_data port_data;
since this is no more in hdcp related struct, it will be better to be named as
hdcp_auth_status and hdcp_port_data !?

-Ram
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index a5ec4f72f50f..1df6d4a23476 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -26,6 +26,64 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> +static int intel_conn_to_vcpi(struct intel_connector *connector)
> +{
> +	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
> +	return connector->port	? connector->port->vcpi.vcpi : 0;
> +}
> +
> +static int
> +intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +{
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
> +	bool enforce_type0 = false;
> +	int k;
> +
> +	if (dig_port->port_auth)
> +		return 0;
> +
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> +			continue;
> +
> +		conn_dig_port = intel_attached_dig_port(connector);
> +		if (conn_dig_port != dig_port)
> +			continue;
> +
> +		if (connector->base.status == connector_status_disconnected)
> +			continue;
> +
> +		if (!enforce_type0 && !intel_hdcp2_capable(connector))
> +			enforce_type0 = true;
> +
> +		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
> +		data->k++;
> +
> +		/* if there is only one active stream */
> +		if (dig_port->dp.active_mst_links <= 1)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> +		return -EINVAL;
> +
> +	/*
> +	 * Apply common protection level across all streams in DP MST Topology.
> +	 * Use highest supported content type for all streams in DP MST Topology.
> +	 */
> +	for (k = 0; k < data->k; k++)
> +		data->streams[k].stream_type =
> +			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;
> +}
> +
>  static
>  bool intel_hdcp_is_ksv_valid(u8 *ksv)
>  {
> @@ -1474,13 +1532,14 @@ static
>  int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct hdcp_port_data *data = &dig_port->port_data;
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	union {
>  		struct hdcp2_rep_stream_manage stream_manage;
>  		struct hdcp2_rep_stream_ready stream_ready;
>  	} msgs;
>  	const struct intel_hdcp_shim *shim = hdcp->shim;
> -	int ret;
> +	int ret, streams_size_delta, i;
>  
>  	if (connector->hdcp.seq_num_m > HDCP_2_2_SEQ_NUM_MAX)
>  		return -ERANGE;
> @@ -1489,16 +1548,18 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>  	msgs.stream_manage.msg_id = HDCP_2_2_REP_STREAM_MANAGE;
>  	drm_hdcp_cpu_to_be24(msgs.stream_manage.seq_num_m, hdcp->seq_num_m);
>  
> -	/* K no of streams is fixed as 1. Stored as big-endian. */
> -	msgs.stream_manage.k = cpu_to_be16(1);
> +	msgs.stream_manage.k = cpu_to_be16(data->k);
>  
> -	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
> -	msgs.stream_manage.streams[0].stream_id = 0;
> -	msgs.stream_manage.streams[0].stream_type = hdcp->content_type;
> +	for (i = 0; i < data->k; i++) {
> +		msgs.stream_manage.streams[i].stream_id = data->streams[i].stream_id;
> +		msgs.stream_manage.streams[i].stream_type = data->streams[i].stream_type;
> +	}
>  
> +	streams_size_delta = (HDCP_2_2_MAX_CONTENT_STREAMS_CNT - data->k) *
> +				sizeof(struct hdcp2_streamid_type);
>  	/* Send it to Repeater */
>  	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
> -				  sizeof(msgs.stream_manage));
> +				  sizeof(msgs.stream_manage) - streams_size_delta);
>  	if (ret < 0)
>  		goto out;
>  
> @@ -1507,8 +1568,7 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>  	if (ret < 0)
>  		goto out;
>  
> -	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
> -	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
> +	data->seq_num_m = hdcp->seq_num_m;
>  
>  	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
>  
> @@ -1669,6 +1729,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
>  						 port),
>  				    LINK_ENCRYPTION_STATUS,
>  				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> +	dig_port->port_auth = true;
>  
>  	return ret;
>  }
> @@ -1743,11 +1804,9 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct hdcp_port_data *data = &dig_port->port_data;
> -	struct intel_hdcp *hdcp = &connector->hdcp;
> -	int ret, i, tries = 3;
> +	int ret = 0, i, tries = 3;
>  
> -	for (i = 0; i < tries; i++) {
> +	for (i = 0; i < tries && !dig_port->port_auth; i++) {
>  		ret = hdcp2_authenticate_sink(connector);
>  		if (!ret) {
>  			ret = hdcp2_propagate_stream_management_info(connector);
> @@ -1757,7 +1816,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  					    ret);
>  				break;
>  			}
> -			data->streams[0].stream_type = hdcp->content_type;
> +
>  			ret = hdcp2_authenticate_port(connector);
>  			if (!ret)
>  				break;
> @@ -1792,7 +1851,9 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  
>  static int _intel_hdcp2_enable(struct intel_connector *connector)
>  {
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
>  
> @@ -1800,6 +1861,16 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>  		    connector->base.name, connector->base.base.id,
>  		    hdcp->content_type);
>  
> +	/* Stream which requires encryption */
> +	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> +		data->k = 1;
> +		data->streams[0].stream_type = hdcp->content_type;
> +	} else {
> +		ret = intel_hdcp_required_content_stream(dig_port);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = hdcp2_authenticate_and_encrypt(connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
> @@ -1817,7 +1888,9 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>  
>  static int _intel_hdcp2_disable(struct intel_connector *connector)
>  {
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
>  	int ret;
>  
>  	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
> @@ -1829,6 +1902,8 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
>  		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
>  
>  	connector->hdcp.hdcp2_encrypted = false;
> +	dig_port->port_auth = false;
> +	data->k = 0;
>  
>  	return ret;
>  }
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
