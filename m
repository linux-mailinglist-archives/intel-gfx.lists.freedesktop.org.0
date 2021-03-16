Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9C333D434
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 13:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AFB16E3DF;
	Tue, 16 Mar 2021 12:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BCB66E3DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 12:50:47 +0000 (UTC)
IronPort-SDR: Oaif6i3KzBFCQUxKhyriGQrs5GeASw9Jf0BU5PZgDzvQc/rIUvAryM0MX/9wLrM4qYkd7SsOqU
 slMk//yHlBHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="253267539"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="253267539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 05:50:46 -0700
IronPort-SDR: mPyDNELzQMA9sAr3MtUIa6G57ZnpeCn09FnfSR1B7okgisj8GLODZu00U6xdnPl4S/+6mglJxg
 b/MhLB2jEGlQ==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="405533997"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.126.178])
 ([10.215.126.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 05:50:44 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210127100051.30595-1-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <955b8a9b-14ed-2252-c564-b095413e6615@intel.com>
Date: Tue, 16 Mar 2021 18:20:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210127100051.30595-1-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: mst streams type1 capability
 check
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
Cc: Sean Paul <seanpaul@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

I agree with the patch. Overall looks good.

There is a correction suggested below:

On 1/27/2021 3:30 PM, Anshuman Gupta wrote:
> It requires to check streams type1 capability in mst topology
> by checking Rxinfo instead connector HDCP2.x capability in
> order to enforce type0 stream encryption in a mix of
> HDCP {1.x,2.x} mst topology.
> Rxcaps always shows HDCP 2.x capability of immediate downstream
> connector. Let's use Rxinfo HDCP1_DEVICE_DOWNSTREAM bit to
> detect a HDCP {1.x,2.x} mix mst topology.
>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  4 ++
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 17 +++++++-
>   3 files changed, 59 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 39397748b4b0..cfc9ec82f117 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -373,6 +373,10 @@ struct intel_hdcp_shim {
>   	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
>   				bool *capable);
>   
> +	/* Detects whether a HDCP 1.4 sink connected in MST topology */
> +	int (*streams_type1_capable)(struct intel_connector *connector,
> +				     bool *capable);
> +
>   	/* Write HDCP2.2 messages */
>   	int (*write_2_2_msg)(struct intel_digital_port *dig_port,
>   			     void *buf, size_t size);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index f372e25edab4..35e3b0e4c740 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -478,6 +478,23 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>   	return size;
>   }
>   
> +static int
> +get_rxinfo_hdcp_1_dev_downstream(struct intel_digital_port *dig_port, bool *hdcp_1_x)
> +{
> +	u8 rx_info[HDCP_2_2_RXINFO_LEN];
> +	int ret;
> +
> +	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
> +			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
> +			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
> +
> +	if (ret != HDCP_2_2_RXINFO_LEN)
> +		return ret >= 0 ? -EIO : ret;
> +
> +	*hdcp_1_x = HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) ? true : false;

I think this should be rx_info[0] as we are checking for bit 0 of the 
first byte as per rxInfo bit field definitions.

Regards,

Ankit


> +	return 0;
> +}
> +
>   static
>   ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
>   {
> @@ -626,6 +643,27 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
>   	return 0;
>   }
>   
> +static
> +int intel_dp_mst_streams_type1_capable(struct intel_connector *connector,
> +				       bool *capable)
> +{
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	int ret;
> +	bool hdcp_1_x;
> +
> +	ret = get_rxinfo_hdcp_1_dev_downstream(dig_port, &hdcp_1_x);
> +	if (ret) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[%s:%d] failed to read RxInfo ret=%d\n",
> +			    connector->base.name, connector->base.base.id, ret);
> +		return ret;
> +	}
> +
> +	*capable = !hdcp_1_x;
> +	return 0;
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -813,6 +851,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>   	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
>   	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
>   	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.streams_type1_capable = intel_dp_mst_streams_type1_capable,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ae1371c36a32..5b2e2625779b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -32,6 +32,21 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   	return connector->port	? connector->port->vcpi.vcpi : 0;
>   }
>   
> +static bool
> +intel_streams_type1_capable(struct intel_connector *connector)
> +{
> +	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> +	bool capable = false;
> +
> +	if (!shim)
> +		return capable;
> +
> +	if (shim->streams_type1_capable)
> +		shim->streams_type1_capable(connector, &capable);
> +
> +	return capable;
> +}
> +
>   /*
>    * intel_hdcp_required_content_stream selects the most highest common possible HDCP
>    * content_type for all streams in DP MST topology because security f/w doesn't
> @@ -70,7 +85,7 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   		if (conn_dig_port != dig_port)
>   			continue;
>   
> -		if (!enforce_type0 && !intel_hdcp2_capable(connector))
> +		if (!enforce_type0 && !intel_streams_type1_capable(connector))
>   			enforce_type0 = true;
>   
>   		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
