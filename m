Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CC03212F4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 10:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441A36E927;
	Mon, 22 Feb 2021 09:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651C26E927
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 09:21:53 +0000 (UTC)
IronPort-SDR: LmXbxNupgAtYzLV6FLNTmrNMjVNgLy/PYzrGkd+i+M5zqSLhIiPac6Xpjc9fSKZ6feZOWpzUy4
 Ce2ozhePgCKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="180938740"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="180938740"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:21:52 -0800
IronPort-SDR: jnT0zjIH47YTE2B8S7+iCJHOZgyusRHtOfACXap+a9jRuPF3gjAI61GZXcqxrtjbCCwPZXzYXN
 Ci9W8MzSOWAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="514730288"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2021 01:21:50 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 09:21:49 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 14:51:47 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 8/9] drm/i915/edp: modify fixed and
 downclock modes for MSO
Thread-Index: AQHXAIWlYsXSgdqwBEy90bfAUAMW5qpj9uHQ
Date: Mon, 22 Feb 2021 09:21:47 +0000
Message-ID: <6f00a4db0fc741c8b7b54491dd8ed645@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <d4d6e9e6b62923d3915cb69b94bcf4b8795db749.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <d4d6e9e6b62923d3915cb69b94bcf4b8795db749.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 8/9] drm/i915/edp: modify fixed and
 downclock modes for MSO
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
> Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915/edp: modify fixed and downclock
> modes for MSO
> 
> In the case of MSO (Multi-SST Operation), the EDID contains the timings for a single
> panel segment. We'll want to hide the fact from userspace, and expose modes that
> span the entire display.
> 
> Don't modify the EDID, as the userspace should not use that for modesetting, only
> modify the actual modes.
> 
> v3: Use pixel overlap if available.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> v2: Rename intel_dp_mso_mode_fixup -> intel_edp_mso_mode_fixup
> 
> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 48e65b9a967a..5d5b16f70ed2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3516,6 +3516,31 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp
> *intel_dp)
>  	}
>  }
> 
> +static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
> +				     struct drm_display_mode *mode) {
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	int n = intel_dp->mso_link_count;
> +	int overlap = intel_dp->mso_pixel_overlap;
> +
> +	if (!mode || !n)
> +		return;
> +
> +	mode->hdisplay = (mode->hdisplay - overlap) * n;
> +	mode->hsync_start = (mode->hsync_start - overlap) * n;
> +	mode->hsync_end = (mode->hsync_end - overlap) * n;
> +	mode->htotal = (mode->htotal - overlap) * n;
> +	mode->clock *= n;
> +
> +	drm_mode_set_name(mode);
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "[CONNECTOR:%d:%s] using generated MSO mode: ",
> +		    connector->base.base.id, connector->base.name);
> +	drm_mode_debug_printmodeline(mode);
> +}
> +
>  static void intel_edp_mso_init(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp); @@ -6493,6
> +6518,10 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	if (fixed_mode)
>  		downclock_mode = intel_dp_drrs_init(intel_connector,
> fixed_mode);
> 
> +	/* multiply the mode clock and horizontal timings for MSO */
> +	intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
> +	intel_edp_mso_mode_fixup(intel_connector, downclock_mode);
> +
>  	/* fallback to VBT if available for eDP */
>  	if (!fixed_mode)
>  		fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
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
