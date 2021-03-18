Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE5333FF94
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 07:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990C86E093;
	Thu, 18 Mar 2021 06:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451036E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 06:31:57 +0000 (UTC)
IronPort-SDR: u0MSWoiwhBHIwVSmD1+AKHT+gZXRhQ9GvM460nJ5ZSUJmWiG7vkhivH4Km01wuzBQavf3KgZBD
 lrdvgPK/rD+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="274669007"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="274669007"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:31:56 -0700
IronPort-SDR: g/qTt8GTJmmT/YBRK5eEjW1aI8HUiSz9YgfAtbznWKWKJ+082nxm391+cTs/WZ8nCSFcTjlS/K
 WWyEGErgmKIQ==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412950631"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.251.79.123])
 ([10.251.79.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:31:54 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
 <20210304085608.21372-3-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <59533531-5f53-5677-db53-c161a70579e1@intel.com>
Date: Thu, 18 Mar 2021 12:01:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210304085608.21372-3-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/hdcp: link hdcp2 recovery
 on link enc stopped
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

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/4/2021 2:26 PM, Anshuman Gupta wrote:
> When stream encryption enabling fails due to Link encryption status
> has stopped, prepare HDCP2 for recovery by disabling port authentication
> and encryption such that it can re-attempt port authentication
> and encryption.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 08dd6b46749d..9a70c164c377 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1706,6 +1706,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
>   	enum port port = dig_port->base.port;
> @@ -1715,7 +1716,8 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
>   			    LINK_ENCRYPTION_STATUS)) {
>   		drm_err(&dev_priv->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
>   			connector->base.name, connector->base.base.id);
> -		return -EPERM;
> +		ret = -EPERM;
> +		goto link_recover;
>   	}
>   
>   	if (hdcp->shim->stream_2_2_encryption) {
> @@ -1729,6 +1731,15 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
>   			    transcoder_name(hdcp->stream_transcoder));
>   	}
>   
> +	return 0;
> +
> +link_recover:
> +	if (hdcp2_deauthenticate_port(connector) < 0)
> +		drm_dbg_kms(&dev_priv->drm, "Port deauth failed.\n");
> +
> +	dig_port->hdcp_auth_status = false;
> +	data->k = 0;
> +
>   	return ret;
>   }
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
