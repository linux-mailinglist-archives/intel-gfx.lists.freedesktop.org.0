Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E93054A0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 08:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C356E54C;
	Wed, 27 Jan 2021 07:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37B56E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 07:28:56 +0000 (UTC)
IronPort-SDR: aOvPOl0QL+q3KqXeVTtui7grjFwH24Hr1kuBFldfzyY+Ncl5cTfsopa9k3Yu/SUpPaHx7BxGG+
 888hpG/XhntQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="177462467"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="177462467"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 23:28:55 -0800
IronPort-SDR: ISeFx6bnR/LkF48tiORiqvC05t1HT1Zr7Vqk0H8fx5SpkIPZVc0a+uICdypVqmAbIWFEU9TAcC
 3Y8wDLcbk5rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="369389200"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 26 Jan 2021 23:28:54 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 23:28:53 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 12:58:51 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 27 Jan 2021 12:58:51 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Li, Juston" <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 4/4] drm/i915/hdcp: disable the QSES check for HDCP2.2
 over MST
Thread-Index: AQHW9HjH1mdEEx7XkEGDr0piwDUliKo7EwVQ
Date: Wed, 27 Jan 2021 07:28:51 +0000
Message-ID: <33ca4c838fc843b883ee87e889e8ba87@intel.com>
References: <20210127065034.2501119-1-juston.li@intel.com>
 <20210127065034.2501119-4-juston.li@intel.com>
In-Reply-To: <20210127065034.2501119-4-juston.li@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/hdcp: disable the QSES
 check for HDCP2.2 over MST
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
Cc: "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks Good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Wednesday, January 27, 2021 12:21 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; C, Ramalingam <ramalingam.c@intel.com>;
> Li, Juston <juston.li@intel.com>
> Subject: [PATCH v2 4/4] drm/i915/hdcp: disable the QSES check for
> HDCP2.2 over MST
> 
> Like the patch to disable QSES for HDCP 1.4 over MST
> https://patchwork.freedesktop.org/patch/415297/ the HDCP2.2 spec
> doesn't require QSES as well and we've seen QSES not supported on a
> couple HDCP2.2 docks so far (Dell WD19 and Lenovo LDC-G2)
> 
> Remove it for now until we get a better idea of how widely supported QSES
> is and how to support it optionally.
> 
> Signed-off-by: Juston Li <juston.li@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 +-------------------
>  1 file changed, 1 insertion(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index cd183944bc5a..5e9d0d8f7f84 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -699,30 +699,6 @@ intel_dp_mst_hdcp_stream_encryption(struct
> intel_connector *connector,
>  	return 0;
>  }
> 
> -static bool intel_dp_mst_get_qses_status(struct intel_digital_port
> *dig_port,
> -					 struct intel_connector *connector)
> -{
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct drm_dp_query_stream_enc_status_ack_reply reply;
> -	struct intel_dp *intel_dp = &dig_port->dp;
> -	int ret;
> -
> -	ret = drm_dp_send_query_stream_enc_status(&intel_dp-
> >mst_mgr,
> -						  connector->port, &reply);
> -	if (ret) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[%s:%d] failed QSES ret=%d\n",
> -			    connector->base.name, connector->base.base.id,
> ret);
> -		return false;
> -	}
> -
> -	drm_dbg_kms(&i915->drm, "[%s:%d] QSES stream auth: %d stream
> enc: %d\n",
> -		    connector->base.name, connector->base.base.id,
> -		    reply.auth_completed, reply.encryption_enabled);
> -
> -	return reply.auth_completed && reply.encryption_enabled;
> -}
> -
>  static int
>  intel_dp_mst_hdcp2_stream_encryption(struct intel_connector
> *connector,
>  				     bool enable)
> @@ -758,11 +734,6 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
>  	return 0;
>  }
> 
> -/*
> - * DP v2.0 I.3.3 ignore the stream signature L' in QSES reply msg reply.
> - * I.3.5 MST source device may use a QSES msg to query downstream
> status
> - * for a particular stream.
> - */
>  static
>  int intel_dp_mst_hdcp2_check_link(struct intel_digital_port *dig_port,
>  				  struct intel_connector *connector) @@ -
> 782,7 +753,7 @@ int intel_dp_mst_hdcp2_check_link(struct
> intel_digital_port *dig_port,
>  			return ret;
>  	}
> 
> -	return intel_dp_mst_get_qses_status(dig_port, connector) ? 0 : -
> EINVAL;
> +	return 0;
>  }
> 
>  static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
