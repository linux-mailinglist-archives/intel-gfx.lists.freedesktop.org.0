Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E39162980
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 16:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE066EA29;
	Tue, 18 Feb 2020 15:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB176EA29
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 15:34:57 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id z125so10628055ybf.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 07:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0lE41nCV6U9qxe64fbbgPadQW2rTfa4v64QiZwzEp3s=;
 b=RI4wFkJg/WNVaA9olHjNYfvhqcj27J6nCWw0NamYVofzZzUkgB/VFM5TohmG+dQ9Qo
 xk70kjjkqT+ihELNxPXmtMOWFpCEadUEqrxo3JDgcr2n5WSBSpj0v49zxv61z8QfNCzU
 gLBo4ALjPCJge3Mnc57y27x79kg1ioTCB/LujUtj64vW9Dv10+/d1wVB8xQBaSCwHU/J
 BGde4uIkT3xlH00kjAy24FgvdT7LYJlwJmdPykIF5jZTDDgRkTwkUbraXa/NqGZkOwHQ
 LtKZX16XEc5at+tpSZx9ytASzfQJHbx4Ea7RnxvhaNBBw+Zd9C6eXGlC76gF8/JFGngE
 d1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0lE41nCV6U9qxe64fbbgPadQW2rTfa4v64QiZwzEp3s=;
 b=M+fljY2t9++GpvHuiXRv9hE36HUJ87YETV5Hckjk/kSsPRxeDwigxcg6BsKgJzTxLJ
 YEBikfhqklHBvN2MDrP/z/71bPs4Lmt6/7NVTGtLdnpZHu7Cuut6bugJMxBGN0YVQNHp
 tRzWe28ePHG1RBDXmaYOxVzAEL4U+3Q+upp2UypmtrRuBDLPBBo1MyiP+MLK0Yxe2PXv
 KFtSfMs2rg4KcdhjjsLoMMLX3I+mtxT4qZID0EOFcFjrHviKUGf3C9KxQQLA/xgppWrz
 MkeYK3xhWtnbqfb7bLd8GkJuWWrN7k9skStr7oqhyVQmK/9fJZCYLQyTgSVA8CBMeDXK
 7Shw==
X-Gm-Message-State: APjAAAVQnQ2tb9flHJxHeTIaqxgJDMviCntIpjeRmqNUnr4MdDcs6VzF
 XgvAHuBShLLm9mtzjKJqNWaFeQ==
X-Google-Smtp-Source: APXvYqxeGGF3Bci6GqTfgvNDfQTclO9IC/GugXvsEBfYy//wbZft4U1ouCZawbKJk99Bm7Qz0GAEYA==
X-Received: by 2002:a5b:c8e:: with SMTP id i14mr17372455ybq.401.1582040096771; 
 Tue, 18 Feb 2020 07:34:56 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id g190sm1821564ywd.85.2020.02.18.07.34.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 07:34:56 -0800 (PST)
Date: Tue, 18 Feb 2020 10:34:55 -0500
From: Sean Paul <sean@poorly.run>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20200218153455.GA253734@art_vandelay>
References: <20200212102942.26568-1-ramalingam.c@intel.com>
 <20200212102942.26568-4-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212102942.26568-4-ramalingam.c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: terminate reauth at stream
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 12, 2020 at 03:59:40PM +0530, Ramalingam C wrote:
> As per the HDCP2.2 compliance test 1B-10 expectation, when stream
> management for a repeater fails, we retry thrice and when it fails
> in all retries, HDCP2.2 reauthentication aborted at kernel.
> 
> v2:
>   seq_num_m++ is extended for steam management failures too.[Anshuman]
> v3:
>   use drm_dbg_kms instead of DRM_DEBUG_KMS [Anshuman]
> v4:
>   dev_priv is used as i915 [JaniN]
> 
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 75 ++++++++++++++---------
>  1 file changed, 46 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 30e0a3aa9d57..b24d12efae0a 100644
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
> @@ -1406,28 +1406,25 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>  	ret = shim->write_2_2_msg(intel_dig_port, &msgs.stream_manage,
>  				  sizeof(msgs.stream_manage));
>  	if (ret < 0)
> -		return ret;
> +		goto err_exit;
>  
>  	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_STREAM_READY,
>  				 &msgs.stream_ready, sizeof(msgs.stream_ready));
>  	if (ret < 0)
> -		return ret;
> +		goto err_exit;
>  
>  	hdcp->port_data.seq_num_m = hdcp->seq_num_m;
>  	hdcp->port_data.streams[0].stream_type = hdcp->content_type;
> -
>  	ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
> -	if (ret < 0)
> -		return ret;
>  
> +err_exit:

This isn't exclusively an error condition, I'd rather it named 'out' instead.

>  	hdcp->seq_num_m++;
> -
>  	if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
>  		DRM_DEBUG_KMS("seq_num_m roll over.\n");
> -		return -1;
> +		ret = -1;

What does -1 mean? Please use an errno

>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static
> @@ -1492,17 +1489,6 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
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
> @@ -1537,18 +1523,13 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
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
> @@ -1626,14 +1607,50 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
>  	return ret;
>  }
>  
> +static int
> +hdcp2_propagate_stream_management_info(struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	int i, tries = 3, ret;
> +
> +	if (!connector->hdcp.is_repeater)
> +		return 0;
> +
> +	for (i = 0; i < tries; i++) {
> +		ret = _hdcp2_propagate_stream_management_info(connector);
> +		if (!ret)
> +			break;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "HDCP2 stream management %d of %d Failed.(%d)\n",
> +			    i + 1, tries, ret);
> +	}
> +
> +	return ret;
> +}
> +
>  static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret, i, tries = 3;
>  
>  	for (i = 0; i < tries; i++) {
>  		ret = hdcp2_authenticate_sink(connector);
> -		if (!ret)
> -			break;
> +		if (!ret) {
> +			ret = hdcp2_propagate_stream_management_info(connector);
> +			if (!ret) {
> +				hdcp->port_data.streams[0].stream_type =
> +							hdcp->content_type;
> +				ret = hdcp2_authenticate_port(connector);
> +				if (!ret)
> +					break;
> +			} else {
> +				drm_dbg_kms(&i915->drm,
> +					    "HDCP2 stream management failed\n");

Please print ret values on failures, always.

> +				break;
> +			}
> +		}

The nesting here is a bit awkward. How about:

                if (!ret) {
			ret = hdcp2_propagate_stream_management_info(connector);
                        if (ret) {
				drm_dbg_kms(&i915->drm,
					    "HDCP2 stream mgmt fail %d\n", ret);
				break;
                        }

                        hdcp->port_data.streams[0].stream_type =
                                                        hdcp->content_type;
                        ret = hdcp2_authenticate_port(connector);
                        if (ret)
				drm_dbg_kms(&i915->drm,
                                            "HDCP2 auth port failed %d\n", ret);
                        else
                                break;
                }

>  
>  		/* Clearing the mei hdcp session */
>  		DRM_DEBUG_KMS("HDCP2.2 Auth %d of %d Failed.(%d)\n",
> @@ -1642,7 +1659,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
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
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
