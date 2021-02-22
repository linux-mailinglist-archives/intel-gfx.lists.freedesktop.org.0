Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB4032108A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 06:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D926E4B7;
	Mon, 22 Feb 2021 05:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8657F6E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 05:50:08 +0000 (UTC)
IronPort-SDR: g6bpt7nKnECYSpAyxWhTfCnxMQcI/0BSZNoi/u4hJa+uKf94BnJGJV5csh3FL6497eK6Ds0uYk
 bA4/dfWXOjXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="184400078"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="184400078"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 21:50:07 -0800
IronPort-SDR: zmHYPod7H0BGhvbvgEiMYlTmf4s8oPpdp3WGJk5UWDGu0CCd1F7y0zrwbbZ4oE//EmgabhfJsu
 jwBF+Dam4jMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="595832833"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2021 21:50:07 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 05:50:05 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 11:20:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/9] drm/i915/edp: always add fixed mode
 to probed modes in ->get_modes()
Thread-Index: AQHXAIW1BGbhcSY9wk+JVVUqmndUVKpjuVNA
Date: Mon, 22 Feb 2021 05:50:04 +0000
Message-ID: <227b96fb46eb4696968d5b6222f78b67@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <6979f123f3e4ed948333f1b181202bbced3c3e85.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <6979f123f3e4ed948333f1b181202bbced3c3e85.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/9] drm/i915/edp: always add fixed mode
 to probed modes in ->get_modes()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Varide,
 Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
> Sent: Thursday, February 11, 2021 8:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Varide, Nischal <nischal.varide@intel.com>
> Subject: [Intel-gfx] [PATCH v3 3/9] drm/i915/edp: always add fixed mode to probed
> modes in ->get_modes()
> 
> Unconditionally add fixed mode to probed modes even if EDID is present and has
> modes. Prepare for cases where the fixed mode is not present in EDID (such as eDP
> MSO).

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 169b44c8ebbc..8d7ca03453e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5547,19 +5547,18 @@ static int intel_dp_get_modes(struct drm_connector
> *connector)  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct edid *edid;
> +	int num_modes = 0;
> 
>  	edid = intel_connector->detect_edid;
>  	if (edid) {
> -		int ret = intel_connector_update_modes(connector, edid);
> +		num_modes = intel_connector_update_modes(connector, edid);
> 
>  		if (intel_vrr_is_capable(connector))
>  			drm_connector_set_vrr_capable_property(connector,
>  							       true);
> -		if (ret)
> -			return ret;
>  	}
> 
> -	/* if eDP has no EDID, fall back to fixed mode */
> +	/* Also add fixed mode, which may or may not be present in EDID */
>  	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
>  	    intel_connector->panel.fixed_mode) {
>  		struct drm_display_mode *mode;
> @@ -5568,10 +5567,13 @@ static int intel_dp_get_modes(struct drm_connector
> *connector)
>  					  intel_connector->panel.fixed_mode);
>  		if (mode) {
>  			drm_mode_probed_add(connector, mode);
> -			return 1;
> +			num_modes++;
>  		}
>  	}
> 
> +	if (num_modes)
> +		return num_modes;
> +
>  	if (!edid) {
>  		struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
>  		struct drm_display_mode *mode;
> @@ -5581,11 +5583,11 @@ static int intel_dp_get_modes(struct drm_connector
> *connector)
>  					      intel_dp->downstream_ports);
>  		if (mode) {
>  			drm_mode_probed_add(connector, mode);
> -			return 1;
> +			num_modes++;
>  		}
>  	}
> 
> -	return 0;
> +	return num_modes;
>  }
> 
>  static int
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
