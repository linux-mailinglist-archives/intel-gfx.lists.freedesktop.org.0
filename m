Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B68158A00
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 07:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6C16EDB4;
	Tue, 11 Feb 2020 06:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690F56EDB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 06:21:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 22:21:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,427,1574150400"; d="scan'208";a="221828523"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 10 Feb 2020 22:21:37 -0800
Date: Tue, 11 Feb 2020 11:43:01 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20200211061301.GA3527@intel.com>
References: <20200206150442.32353-3-anshuman.gupta@intel.com>
 <20200210164950.6241-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210164950.6241-1-ramalingam.c@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: terminate reauth at stream
 management failure
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-10 at 22:19:50 +0530, Ramalingam C wrote:
> As per the HDCP2.2 compliance test 1B-10 expectation, when stream
> management for a repeater fails, HDCP2.2 reauthentication stops at
> kernel.
Shall i drop my patch now and continue with reviewing this patch.
one comment below.
> 
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 55 ++++++++++++++---------
>  1 file changed, 34 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4d1a33d13105..5ab35484da93 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1380,7 +1380,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
>  }
>  
>  static
> -int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
> +int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
> @@ -1492,17 +1492,6 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
>  	return 0;
>  }
>  
> -static int hdcp2_authenticate_repeater(struct intel_connector *connector)
> -{
> -	int ret;
> -
> -	ret = hdcp2_authenticate_repeater_topology(connector);
> -	if (ret < 0)
> -		return ret;
> -
> -	return hdcp2_propagate_stream_management_info(connector);
> -}
> -
>  static int hdcp2_authenticate_sink(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
> @@ -1537,18 +1526,13 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
>  	}
>  
>  	if (hdcp->is_repeater) {
> -		ret = hdcp2_authenticate_repeater(connector);
> +		ret = hdcp2_authenticate_repeater_topology(connector);
>  		if (ret < 0) {
>  			DRM_DEBUG_KMS("Repeater Auth Failed. Err: %d\n", ret);
>  			return ret;
>  		}
>  	}
>  
> -	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
> -	ret = hdcp2_authenticate_port(connector);
> -	if (ret < 0)
> -		return ret;
> -
>  	return ret;
>  }
>  
> @@ -1626,14 +1610,43 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
>  	return ret;
>  }
>  
> +static int
> +hdcp2_propagate_stream_management_info(struct intel_connector *connector)
> +{
> +	int i, tries = 3, ret;
> +
> +	if (!connector->hdcp.is_repeater)
> +		return 0;
> +
> +	for (i = 0; i < tries; i++) {
> +		ret = _hdcp2_propagate_stream_management_info(connector);
> +		if (!ret)
> +			break;
> +	}
> +
> +	return ret;
> +}
> +
>  static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  {
> +	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret, i, tries = 3;
>  
>  	for (i = 0; i < tries; i++) {
>  		ret = hdcp2_authenticate_sink(connector);
> -		if (!ret)
> -			break;
> +		if (!ret) {
> +			ret = hdcp2_propagate_stream_management_info(connector);
			we need to increment seq_num_m fo every retry of stream management.
Thanks,
Anshuman Gupta.
> +			if (!ret) {
> +				hdcp->port_data.streams[0].stream_type =
> +							hdcp->content_type;
> +				ret = hdcp2_authenticate_port(connector);
> +				if (!ret)
> +					break;
> +			} else {
> +				DRM_DEBUG_KMS("HDCP2 stream management failed\n");
> +				break;
> +			}
> +		}
>  
>  		/* Clearing the mei hdcp session */
>  		DRM_DEBUG_KMS("HDCP2.2 Auth %d of %d Failed.(%d)\n",
> @@ -1642,7 +1655,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  			DRM_DEBUG_KMS("Port deauth failed.\n");
>  	}
>  
> -	if (i != tries) {
> +	if (!ret) {
>  		/*
>  		 * Ensuring the required 200mSec min time interval between
>  		 * Session Key Exchange and encryption.
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
