Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B4829A4A6
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 07:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620996EB07;
	Tue, 27 Oct 2020 06:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB246EB03;
 Tue, 27 Oct 2020 06:29:18 +0000 (UTC)
IronPort-SDR: xWhOfakRxIPbqkLFwGa9WZPE9KRldlj/LD7mW6LsMDzKAOJ4+FI2GIqG+OOuPmNM6/9SlrfH73
 oKGvxnNSqBrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="147888588"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="147888588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 23:29:17 -0700
IronPort-SDR: +rFbVnDr9W/pIElbYM1pci4ndi7WzdlXue5b+Kasf/HwkL3mRkYv/Sq95tgAjGnr5GKgzsnUzU
 bz+d5T+7pxjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="424318683"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2020 23:29:18 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 23:29:17 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 11:59:14 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 27 Oct 2020 11:59:14 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH v3 07/16] drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST
 support
Thread-Index: AQHWqTj90WkRzji77kOgShhDctnG46mrACCg
Date: Tue, 27 Oct 2020 06:29:14 +0000
Message-ID: <bcd909eb40694baba56d58941aa7518a@intel.com>
References: <20201023122112.15265-1-anshuman.gupta@intel.com>
 <20201023122112.15265-8-anshuman.gupta@intel.com>
In-Reply-To: <20201023122112.15265-8-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 07/16] drm/i915/hdcp: Enable Gen12 HDCP
 1.4 DP MST support
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
> Subject: [PATCH v3 07/16] drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST
> support
> 
> Enable HDCP 1.4 over DP MST for Gen12.
> This also enable the stream encryption support for older generations, which was
> missing earlier.
> 
> v2:
> - Added debug print for stream encryption.
> - Disable the hdcp on port after disabling last stream
>   encryption.

Don't see port disable here, Am I missing something.

> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++---
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 46 ++++++++++++++-------
>  2 files changed, 35 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 16865b200062..f00e12fc83e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -826,13 +826,9 @@ static struct drm_connector
> *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	intel_attach_force_audio_property(connector);
>  	intel_attach_broadcast_rgb_property(connector);
> 
> -
> -	/* TODO: Figure out how to make HDCP work on GEN12+ */
> -	if (INTEL_GEN(dev_priv) < 12) {
> -		ret = intel_dp_init_hdcp(dig_port, intel_connector);
> -		if (ret)
> -			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> -	}
> +	ret = intel_dp_init_hdcp(dig_port, intel_connector);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "HDCP init failed, skipping.\n");
> 
>  	/*
>  	 * Reuse the prop from the SST connector because we're diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 61252d4be3dd..46c9bd588db1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -612,7 +612,12 @@ int intel_hdcp_auth_downstream(struct intel_connector
> *connector)
>  	return ret;
>  }
> 
> -/* Implements Part 1 of the HDCP authorization procedure */
> +/*
> + * Implements Part 1 of the HDCP authorization procedure.
> + * Authentication Part 1 steps for Multi-stream DisplayPort.
> + * Step 1. Auth Part 1 sequence on the driving MST Trasport Link.
> + * Step 2. Enable encryption for each stream that requires encryption.
> + */
>  static int intel_hdcp_auth(struct intel_connector *connector)  {
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> @@ -766,10 +771,16 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  		return -ETIMEDOUT;
>  	}
> 
> -	/*
> -	 * XXX: If we have MST-connected devices, we need to enable encryption
> -	 * on those as well.
> -	 */
> +	/* DP MST Auth Part 1 Step 2.a and Step 2.b */
> +	if (shim->stream_encryption) {
> +		ret = shim->stream_encryption(dig_port, true);
> +		if (ret) {
> +			drm_err(&dev_priv->drm, "Failed to enable HDCP 1.4
> stream enc\n");
> +			return ret;
> +		}
> +		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 tras %s stream
> encrypted\n",
> +			    transcoder_name(hdcp->stream_transcoder));
> +	}
> 
>  	if (repeater_present)
>  		return intel_hdcp_auth_downstream(connector);
> @@ -790,19 +801,26 @@ static int _intel_hdcp_disable(struct intel_connector
> *connector)
> 
>  	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
>  		    connector->base.name, connector->base.base.id);
> +	/*
> +	 * Step 1: Deselect HDCP Multiplestream Bit.
> +	 * Step 2: poll for stream encryption status to be disable.
> +	 */

The above comment should be inside the callback, doesn't add value here.

> +	if (hdcp->shim->stream_encryption) {
> +		ret = hdcp->shim->stream_encryption(dig_port, false);
> +		if (ret) {
> +			drm_err(&dev_priv->drm, "Failed to disable HDCP 1.4
> stream enc\n");
> +			return ret;
> +		}
> +		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 trans %s stream
> encryption disabled\n",
> +			    transcoder_name(hdcp->stream_transcoder));
> +	}
> 
>  	/*
> -	 * If there are other connectors on this port using HDCP, don't disable
> -	 * it. Instead, toggle the HDCP signalling off on that particular
> -	 * connector/pipe and exit.
> +	 * If there are other connectors on this port using HDCP, don't disable it.
> +	 * Repeat steps 1-2 for each stream that no longer requires encryption.
>  	 */
> -	if (dig_port->num_hdcp_streams > 0) {
> -		ret = hdcp->shim->toggle_signalling(dig_port,
> -						    cpu_transcoder, false);
> -		if (ret)
> -			DRM_ERROR("Failed to disable HDCP signalling\n");
> +	if (dig_port->num_hdcp_streams > 0)
>  		return ret;
> -	}
> 
>  	hdcp->hdcp_encrypted = false;
>  	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
> --
> 2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
