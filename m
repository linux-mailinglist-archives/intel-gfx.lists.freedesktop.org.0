Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D06E291FFE
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Oct 2020 22:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DB66E8A6;
	Sun, 18 Oct 2020 20:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507686E8A6;
 Sun, 18 Oct 2020 20:47:40 +0000 (UTC)
IronPort-SDR: jmNa/xS+UrIUPQ8Cn4XUeWffs3jcT02FiebuFDPvcO5i+vZD72s9bM2PL8ArqwXC2rQXRdpzgo
 /ve5FSC5dO7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="146231298"
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="146231298"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 13:47:37 -0700
IronPort-SDR: y9IWsWRGlTC/KO0ACLX/aY5/cdC89zUeZD9h6u+BXGqlgOUzqKMdHmzyviMQ4lvDD/VFUg4F+n
 EJ5vkkF5cnmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="391856047"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 18 Oct 2020 13:47:36 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 18 Oct 2020 13:47:35 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 02:17:33 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 19 Oct 2020 02:17:33 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 02/13] drm/edid: Parse MAX_FRL field from HFVSDB block
Thread-Index: AQHWouJaMCHPYXJMV02mVYSugACe4Kmd2CMw
Date: Sun, 18 Oct 2020 20:47:33 +0000
Message-ID: <f0e519bf25234f128e716a520443a60f@intel.com>
References: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
 <20201015105259.27934-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201015105259.27934-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 02/13] drm/edid: Parse MAX_FRL field from
 HFVSDB block
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 15, 2020 4:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; ville.syrjala@linux.intel.com;
> Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: [RFC 02/13] drm/edid: Parse MAX_FRL field from HFVSDB block
> 
> From: Swati Sharma <swati2.sharma@intel.com>
> 
> This patch parses MAX_FRL field to get the MAX rate in Gbps that the HDMI 2.1
> panel can support in FRL mode. Source need this field to determine the optimal
> rate between the source and sink during FRL training.
> 
> Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c  | 51 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h |  6 +++++
>  2 files changed, 57 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c index
> 631125b46e04..8afb136e73f5 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -4849,6 +4849,52 @@ static void drm_parse_vcdb(struct drm_connector
> *connector, const u8 *db)
>  		info->rgb_quant_range_selectable = true;  }
> 
> +static
> +void drm_get_max_frl_rate(int max_frl_rate, u8 *max_lanes, u8
> +*max_rate_per_lane) {
> +	switch(max_frl_rate) {
> +	case 1:
> +		*max_lanes = 3;
> +		*max_rate_per_lane = 3;
> +		break;
> +	case 2:
> +		*max_lanes = 3;
> +		*max_rate_per_lane = 6;
> +		break;
> +	case 3:
> +		*max_lanes = 4;
> +		*max_rate_per_lane = 6;
> +		break;
> +	case 4:
> +		*max_lanes = 4;
> +		*max_rate_per_lane = 8;
> +		break;
> +	case 5:
> +		*max_lanes = 4;
> +		*max_rate_per_lane = 10;
> +		break;
> +	case 6:
> +		*max_lanes = 4;
> +		*max_rate_per_lane = 12;
> +		break;
> +	case 0:
> +	default:
> +		*max_lanes = 0;
> +		*max_rate_per_lane = 0;
> +	}
> +}
> +
> +static void drm_parse_hdmi_21_additional_fields(struct drm_connector
> *connector,
> +						const u8 *db)
> +{
> +	struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;
> +	u8 max_frl_rate;
> +
> +	max_frl_rate = db[7] & DRM_EDID_MAX_FRL_RATE_MASK;

This seems wrong,  we need to right shift this by 4 to get the max_frl_rate.

> +	drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
> +			     &hdmi->max_frl_rate_per_lane);

We can just pass the connecter and drm_get_max_frl_rate can fill the respective fields.

> +}
> +
>  static void drm_parse_ycbcr420_deep_color_info(struct drm_connector
> *connector,
>  					       const u8 *db)
>  {
> @@ -4902,6 +4948,11 @@ static void drm_parse_hdmi_forum_vsdb(struct
> drm_connector *connector,
>  		}
>  	}
> 
> +	if (hf_vsdb[7]) {
> +		    DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
> +		    drm_parse_hdmi_21_additional_fields(connector, hf_vsdb);

We can get rid of this extra wrapper.

> +	}
> +
>  	drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);  }
> 
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h index
> 928136556174..f351bf10c076 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -207,6 +207,12 @@ struct drm_hdmi_info {
> 
>  	/** @y420_dc_modes: bitmap of deep color support index */
>  	u8 y420_dc_modes;
> +
> +	/** @max_frl_rate_per_lane: support fixed rate link */
> +	u8 max_frl_rate_per_lane;
> +
> +	/** @max_lanes: supported by sink */
> +	u8 max_lanes;
>  };
> 
>  /**
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
