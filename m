Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580B29A4EC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 07:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE306EB17;
	Tue, 27 Oct 2020 06:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083D16E14C;
 Tue, 27 Oct 2020 06:55:53 +0000 (UTC)
IronPort-SDR: 84y6AizBTonNuwTMHX9UEW0O+zzVpBCJ9vmwbrhvFRXTyF86azq4JvhG2z+zpDU+GaRl1N8wVi
 hca5m91tqmgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="155814722"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="155814722"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 23:55:52 -0700
IronPort-SDR: fTi1G6fUI8eci3h2sNZNx+6IbTdAZjeckQXaK9LJKJL7GKc64VPjWYRfXfqsvlQvztAjbMz8QV
 iHASHsE8VEvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="303660263"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2020 23:55:51 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 23:55:50 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 12:25:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 27 Oct 2020 12:25:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH v3 12/16] drm/i915/hdcp: MST streams support in hdcp
 port_data
Thread-Index: AQHWqTkF1eMDMjZ4HkeTxJS2lJhEOqmrB4rg
Date: Tue, 27 Oct 2020 06:55:48 +0000
Message-ID: <920a00009f604d86a486e7dcb3538097@intel.com>
References: <20201023122112.15265-1-anshuman.gupta@intel.com>
 <20201023122112.15265-13-anshuman.gupta@intel.com>
In-Reply-To: <20201023122112.15265-13-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 12/16] drm/i915/hdcp: MST streams support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> Sent: Friday, October 23, 2020 5:51 PM
> To: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Nikula, Jani <jani.nikula@intel.com>; C,
> Ramalingam <ramalingam.c@intel.com>; Li, Juston <juston.li@intel.com>;
> Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH v3 12/16] drm/i915/hdcp: MST streams support in hdcp
> port_data
> 
> Add support for multiple mst stream in hdcp port data which will be used by
> RepeaterAuthStreamManage msg and HDCP 2.2 security f/w for m' validation.
> 
> v2:
> Init the hdcp port data k for HDMI/DP SST strem.

Nit: Typo in stream.

> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 103 +++++++++++++++---
>  2 files changed, 93 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 749c3a7e0b45..24e0067c2e7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1445,10 +1445,12 @@ struct intel_digital_port {
>  	enum phy_fia tc_phy_fia;
>  	u8 tc_phy_fia_idx;
> 
> -	/* protects num_hdcp_streams reference count, port_data */
> +	/* protects num_hdcp_streams reference count, port_data and
> port_auth
> +*/
>  	struct mutex hdcp_mutex;
>  	/* the number of pipes using HDCP signalling out of this port */
>  	unsigned int num_hdcp_streams;
> +	/* port HDCP auth status */
> +	bool port_auth;
>  	/* HDCP port data need to pass to security f/w */
>  	struct hdcp_port_data port_data;
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 207fa17129ae..41c6892d959a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -26,6 +26,64 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
> 
> +static int intel_conn_to_vcpi(struct intel_connector *connector) {
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
> +		data->streams[data->k].stream_id =
> intel_conn_to_vcpi(connector);
> +		data->k++;
> +
> +		/* if there is only one active stream */
> +		if (dig_port->dp.active_mst_links <= 1)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) ||
> data->k == 0))
> +		return -EINVAL;
> +
> +	/*
> +	 * Apply common protection level across all streams in DP MST Topology.
> +	 * Use highest supported content type for all streams in DP MST
> Topology.
> +	 */
> +	for (k = 0; k < data->k; k++)
> +		data->streams[k].stream_type =
> +			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 :
> +DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;
> +}
> +
>  static
>  bool intel_hdcp_is_ksv_valid(u8 *ksv)
>  {
> @@ -1296,6 +1354,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> +

Unrelated change.

>  	mutex_unlock(&dev_priv->hdcp_comp_mutex);
> 
>  	return ret;
> @@ -1477,13 +1536,14 @@ static
>  int _hdcp2_propagate_stream_management_info(struct intel_connector
> *connector)  {
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
> @@ -1493,15 +1553,18 @@ int
> _hdcp2_propagate_stream_management_info(struct intel_connector
> *connector)
>  	drm_hdcp_cpu_to_be24(msgs.stream_manage.seq_num_m, hdcp-
> >seq_num_m);
> 
>  	/* K no of streams is fixed as 1. Stored as big-endian. */

Drop this message.

> -	msgs.stream_manage.k = cpu_to_be16(1);
> +	msgs.stream_manage.k = cpu_to_be16(data->k);
> 
> -	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
> -	msgs.stream_manage.streams[0].stream_id = 0;
> -	msgs.stream_manage.streams[0].stream_type = hdcp->content_type;
> +	for (i = 0; i < data->k; i++) {
> +		msgs.stream_manage.streams[i].stream_id = data-
> >streams[i].stream_id;
> +		msgs.stream_manage.streams[i].stream_type = data-
> >streams[i].stream_type;
> +	}
> 
> +	streams_size_delta = HDCP_2_2_MAX_CONTENT_STREAMS_CNT *
> +		sizeof(struct hdcp2_streamid_type) - data->k * sizeof(struct
> +hdcp2_streamid_type);

Just make it, 
(HDCP_2_2_MAX_CONTENT_STREAMS_CNT - data->k) * sizeof(struct hdcp2_streamid_type)

>  	/* Send it to Repeater */
>  	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
> -				  sizeof(msgs.stream_manage));
> +				  sizeof(msgs.stream_manage) -
> streams_size_delta);
>  	if (ret < 0)
>  		goto out;
> 
> @@ -1510,8 +1573,7 @@ int
> _hdcp2_propagate_stream_management_info(struct intel_connector
> *connector)
>  	if (ret < 0)
>  		goto out;
> 
> -	dig_port->port_data.seq_num_m = hdcp->seq_num_m;
> -	dig_port->port_data.streams[0].stream_type = hdcp->content_type;
> +	data->seq_num_m = hdcp->seq_num_m;
> 
>  	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
> 
> @@ -1672,6 +1734,7 @@ static int hdcp2_enable_encryption(struct
> intel_connector *connector)
>  						 port),
>  				    LINK_ENCRYPTION_STATUS,
> 
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> +	dig_port->port_auth = true;
> 
>  	return ret;
>  }
> @@ -1746,11 +1809,9 @@ static int hdcp2_authenticate_and_encrypt(struct
> intel_connector *connector)  {
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
>  			ret =
> hdcp2_propagate_stream_management_info(connector);
> @@ -1760,7 +1821,7 @@ static int hdcp2_authenticate_and_encrypt(struct
> intel_connector *connector)
>  					    ret);
>  				break;
>  			}
> -			data->streams[0].stream_type = hdcp->content_type;
> +
>  			ret = hdcp2_authenticate_port(connector);
>  			if (!ret)
>  				break;
> @@ -1795,7 +1856,9 @@ static int hdcp2_authenticate_and_encrypt(struct
> intel_connector *connector)
> 
>  static int _intel_hdcp2_enable(struct intel_connector *connector)  {
> +	struct intel_digital_port *dig_port =
> +intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
> 
> @@ -1803,6 +1866,16 @@ static int _intel_hdcp2_enable(struct intel_connector
> *connector)
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
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", @@ -1820,7 +1893,9 @@ static int _intel_hdcp2_enable(struct
> intel_connector *connector)
> 
>  static int _intel_hdcp2_disable(struct intel_connector *connector)  {
> +	struct intel_digital_port *dig_port =
> +intel_attached_dig_port(connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct hdcp_port_data *data = &dig_port->port_data;
>  	int ret;
> 
>  	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n", @@ -
> 1832,6 +1907,8 @@ static int _intel_hdcp2_disable(struct intel_connector
> *connector)
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
