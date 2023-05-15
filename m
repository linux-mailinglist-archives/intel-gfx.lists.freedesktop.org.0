Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9738B7029D0
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC29610E193;
	Mon, 15 May 2023 10:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7151710E193
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684144847; x=1715680847;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LiruWYcSA45zEwgCoeG8eksApLAx+lD1FAsAnyjVGLk=;
 b=czK8qjXiSCWfXfnA9AyFCCOKV+jNQ6jS9NpJ/5ngSSMKhwmhqcdOSS5s
 Eqvv8hAXtYUm+EkI3foM7CPE9pMPm0SZRfBtYGh0P40RfuNvgl/7drTqt
 kLZB1H8QdXNr4YZbHlswQmYYB27SiLc/zXvDXl85sxc1ltMPHaRrE8biN
 K8r1byu5rDTSOuqXYtOfiL2bXOPT1335ZqSGk/9SQ+uqJHifuN6R2/itr
 yOu92Dfia9y+k9xLhaBE/I600I04HfoRAl/oohwLgM/geAbSC+zOle8bp
 xWuB2CqXYSCBMGXWwzj+96UzcdpTZfHQOJX7w2+8Rup5HIgpUqsUBOXGc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="416808796"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="416808796"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="825121601"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="825121601"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:00:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230515051557.672109-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
 <20230515051557.672109-4-suraj.kandpal@intel.com>
Date: Mon, 15 May 2023 13:00:42 +0300
Message-ID: <87pm71j4mt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/hdcp: Fix modeset locking
 issue in hdcp mst
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

On Mon, 15 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Since topology state is being added to drm_atomic_state now all
> drm_modeset_lock required are being taken from core. This raises
> an issue when we try to loop over connector and assign vcpi id to
> our streams as we did not have atomic state to derive acquire_ctx
> from. We fill in stream info if dpmst encoder is found before
> enabling hdcp. intel_hdcp_required_stream will be broken which
> will only set the content type.
>
> --v2
> -move prepare streams to beginning of intel_hdcp_enable to avoid
> checking of mst encoder twice [Ankit]
>
> --v3
> -break intel_required_content_stream to two part and set the stream_id
> at the beginning [Ankit]

Patches 3-4 look fine to me, but I'd like Ankit's review on them.

Thanks,
Jani.

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 63 +++++++++++++++--------
>  1 file changed, 42 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f2d258a72c59..64875c33832c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,7 +30,8 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> -static int intel_conn_to_vcpi(struct intel_connector *connector)
> +static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> +			      struct intel_connector *connector)
>  {
>  	struct drm_dp_mst_topology_mgr *mgr;
>  	struct drm_dp_mst_atomic_payload *payload;
> @@ -42,7 +43,7 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  		return 0;
>  	mgr = connector->port->mgr;
>  
> -	drm_modeset_lock(&mgr->base.lock, NULL);
> +	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
>  	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>  	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>  	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  		goto out;
>  	}
>  out:
> -	drm_modeset_unlock(&mgr->base.lock);
>  	return vcpi;
>  }
>  
> @@ -71,22 +71,42 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  static int
>  intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  {
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_digital_port *conn_dig_port;
> -	struct intel_connector *connector;
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	bool enforce_type0 = false;
>  	int k;
>  
> -	data->k = 0;
> -
>  	if (dig_port->hdcp_auth_status)
>  		return 0;
>  
>  	if (!dig_port->hdcp_mst_type1_capable)
>  		enforce_type0 = true;
>  
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
> +static int
> +intel_hdcp_set_content_streams(struct intel_digital_port *dig_port,
> +			       struct intel_atomic_state *state)
> +{
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> +
> +	if (!intel_encoder_is_mst(&dig_port->base))
> +		return 0;
> +
> +	data->k = 0;
> +
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		if (connector->base.status == connector_status_disconnected)
> @@ -99,7 +119,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  		if (conn_dig_port != dig_port)
>  			continue;
>  
> -		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(&state->base, connector);
>  		data->k++;
>  
>  		/* if there is only one active stream */
> @@ -111,14 +132,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
>  		return -EINVAL;
>  
> -	/*
> -	 * Apply common protection level across all streams in DP MST Topology.
> -	 * Use highest supported content type for all streams in DP MST Topology.
> -	 */
> -	for (k = 0; k < data->k; k++)
> -		data->streams[k].stream_type =
> -			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> -
>  	return 0;
>  }
>  
> @@ -2375,9 +2388,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>  	 */
>  	if (intel_hdcp2_capable(connector)) {
> -		ret = _intel_hdcp2_enable(connector);
> -		if (!ret)
> -			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> +		ret = intel_hdcp_set_content_streams(dig_port, state);
> +		if (!ret) {
> +			ret = _intel_hdcp2_enable(connector);
> +			if (!ret)
> +				check_link_interval =
> +					DRM_HDCP2_CHECK_PERIOD_MS;
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Set content streams failed: (%d)\n",
> +				    ret);
> +		}
>  	}
>  
>  	/*

-- 
Jani Nikula, Intel Open Source Graphics Center
