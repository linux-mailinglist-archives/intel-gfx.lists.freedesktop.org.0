Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B671933FF39
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 07:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8B96E05D;
	Thu, 18 Mar 2021 06:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4254C89932
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 06:07:20 +0000 (UTC)
IronPort-SDR: gg6lPdYg40bUPDGKxTQf0Kk9762gx5JCIs617EdBbpwVvP17UZCWNDM3J/muGR2g6fQLGizqeZ
 s2buYy1i4tMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="253619516"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="253619516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:07:19 -0700
IronPort-SDR: YYAIjqDI5LAu+jKCfmibHkZSEGm8QRSJpVtD7NfZtk75pFzpYWTqxLRhtm0I913DanXWbMkize
 K1J/s4cb7bQQ==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412944665"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.251.79.123])
 ([10.251.79.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:07:18 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
 <20210304085608.21372-2-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <6c668e1d-3ef3-f935-8613-9854ae0adace@intel.com>
Date: Thu, 18 Mar 2021 11:37:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210304085608.21372-2-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/hdcp: HDCP2.2 MST Link
 failure recovery
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This makes sense. Now in case of link failure with multiple active streams,

we would be able to set hdcp_auth as false and it would not get missed 
in hdcp2_authentication_encrypt.

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/4/2021 2:26 PM, Anshuman Gupta wrote:
> DP MST Link Check performed only for the connector involved with
> HDCP port authentication and encryption, for other connector it
> simply returns link check with true and update the uevent.
> Therefore in case of HDCP 2.2 link failure, disable HDCP encryption
> and de-authenticate the port so next time it can enable port
> authentication and encryption.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ae1371c36a32..08dd6b46749d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1927,7 +1927,8 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>   	return 0;
>   }
>   
> -static int _intel_hdcp2_disable(struct intel_connector *connector)
> +static int
> +_intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> @@ -1948,7 +1949,7 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
>   		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
>   			    transcoder_name(hdcp->stream_transcoder));
>   
> -		if (dig_port->num_hdcp_streams > 0)
> +		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
>   			return 0;
>   	}
>   
> @@ -1991,6 +1992,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   			"HDCP2.2 link stopped the encryption, %x\n",
>   			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
>   		ret = -ENXIO;
> +		_intel_hdcp2_disable(connector, true);
>   		intel_hdcp_update_value(connector,
>   					DRM_MODE_CONTENT_PROTECTION_DESIRED,
>   					true);
> @@ -2030,7 +2032,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   			    connector->base.name, connector->base.base.id);
>   	}
>   
> -	ret = _intel_hdcp2_disable(connector);
> +	ret = _intel_hdcp2_disable(connector, true);
>   	if (ret) {
>   		drm_err(&dev_priv->drm,
>   			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
> @@ -2340,7 +2342,7 @@ int intel_hdcp_disable(struct intel_connector *connector)
>   	intel_hdcp_update_value(connector,
>   				DRM_MODE_CONTENT_PROTECTION_UNDESIRED, false);
>   	if (hdcp->hdcp2_encrypted)
> -		ret = _intel_hdcp2_disable(connector);
> +		ret = _intel_hdcp2_disable(connector, false);
>   	else if (hdcp->hdcp_encrypted)
>   		ret = _intel_hdcp_disable(connector);
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
