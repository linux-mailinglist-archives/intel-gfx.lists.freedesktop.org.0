Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2EA2FCD77
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 10:31:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A006E072;
	Wed, 20 Jan 2021 09:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5C86E072
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 09:31:46 +0000 (UTC)
IronPort-SDR: Mmyl/CGL26uGZbljgvFL/kB2HvlrfwBJfJ9aupsLWgBBdAYvOkey2BvulrRcgomajKd340xO7W
 +oheHUQ07hCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="263883542"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="263883542"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 01:31:45 -0800
IronPort-SDR: 4ffnUdG2B3Z9ODQ0eg6qIjwxT0MczyLwXp5av6KWQhVorQvjVOr4GUOSviA1hRwa6El5+14L8f
 ncReK6u55btA==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="426835081"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.252.170.233])
 ([10.252.170.233])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 01:31:44 -0800
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210119064655.1605-1-anshuman.gupta@intel.com>
 <20210119064655.1605-3-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <e4fbdf83-1359-d5d1-95ee-c7ee044d9a3b@intel.com>
Date: Wed, 20 Jan 2021 15:01:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210119064655.1605-3-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/hdcp: Fix uninitialized
 symbol
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


On 1/19/2021 12:16 PM, Anshuman Gupta wrote:
> Move (num_hdcp_streams > 0) condition to stream_encryption()
> code block, where it actually belongs.
> This fixes the static analysis error of uninitialized symbol 'ret'.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 581ccb038b87..9ca0d67b10f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -878,15 +878,15 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>   		}
>   		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
>   			    transcoder_name(hdcp->stream_transcoder));
> +		/*
> +		 * If there are other connectors on this port using HDCP,
> +		 * don't disable it until it disabled HDCP encryption for
> +		 * all connectors in MST topology.
> +		 */
> +		if (dig_port->num_hdcp_streams > 0)
> +			return ret;

Looks good to me. Agreed Check for num_hdcp_streams should be inside the 
block for checking stream_encryption.

Small suggestion: return 0 would be more appropriate here as the return 
value is already checked for error in previous lines.

We just want to return successfully from here, as there is nothing to do 
in case there are still active hdcp_streams.

Same for the hdcp_2_disable below.

In any case:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   	}
>   
> -	/*
> -	 * If there are other connectors on this port using HDCP, don't disable it
> -	 * until it disabled HDCP encryption for all connectors in MST topology.
> -	 */
> -	if (dig_port->num_hdcp_streams > 0)
> -		return ret;
> -
>   	hdcp->hdcp_encrypted = false;
>   	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
>   	if (intel_de_wait_for_clear(dev_priv,
> @@ -1947,10 +1947,10 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
>   		}
>   		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
>   			    transcoder_name(hdcp->stream_transcoder));
> -	}
>   
> -	if (dig_port->num_hdcp_streams > 0)
> -		return ret;
> +		if (dig_port->num_hdcp_streams > 0)
> +			return ret;
> +	}
>   
>   	ret = hdcp2_disable_encryption(connector);
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
