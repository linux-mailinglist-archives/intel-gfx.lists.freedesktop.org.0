Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gK0SLuY83WmqbAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 20:58:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B993F24FE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 20:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C02310E50E;
	Mon, 13 Apr 2026 18:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDICTYhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20EE10E50A;
 Mon, 13 Apr 2026 18:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776106720; x=1807642720;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G2euJdDLSGI1AgeMMOPf+n8HzOsAs0MY5JsKd9Nn1y0=;
 b=KDICTYhX3DC/wpCv5xOk4GzqSgwmp5fMRZMOqLrI4GXfrrTHlGbbZA4M
 mBfcuDaY8Nnc8wSdSUE27TmfUY5Ox46MO/dGPKM+dTYyw5cDOHxyd/hfR
 GSWq2xdlmwg6osXeBw6quxod+Q8JRtlq2gZqmmZ8TgTxVLxKpDr+w0Kcp
 7AVOkrrwkwD8AvIXvHu2+hXZhHtr9ISEar2qJ54L8MVVAdYe1LKKdblCi
 2xG31w4uYaueKNap4yG6AhLst1ezFbhh/ByPACk8uhhL+4Lt5xmKiMD/V
 tk4fZATrcDY3eOtxStA8pHNtVEIoK0VBN7B5OSeS5xcPA+5RQFQ1z5d/K Q==;
X-CSE-ConnectionGUID: KJuG4O7rTQKLKZRMaDuSRA==
X-CSE-MsgGUID: gH48S/QjSbCjju7ZgaF9fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="99697374"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="99697374"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 11:58:37 -0700
X-CSE-ConnectionGUID: lgk8/XHyQTiEOVbWVCgYAg==
X-CSE-MsgGUID: FSL3yA18QpKQaJN/d5mFiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="228829346"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.97])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 11:58:26 -0700
Date: Mon, 13 Apr 2026 21:58:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v13 11/27] drm/i915/hdmi: Add YCBCR444 handling for sink
 formats
Message-ID: <ad08zqpKbyF--Br3@intel.com>
References: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
 <20260413-color-format-v13-11-ab37d4dfba48@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260413-color-format-v13-11-ab37d4dfba48@collabora.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.78 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 69B993F24FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 12:07:25PM +0200, Nicolas Frattaroli wrote:
> In anticipation of userspace being able to explicitly select supported
> sink formats, add handling of the YCBCR444 sink format. The AUTO path
> does not choose this format, but with explicit format selection added to
> the driver, it becomes a possibility.
> 
> Check for YCBCR444 support on the sink in both sink_bpc_possible, and
> sink_format_valid.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 874076a29da4..5ab5b5f85cde 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1966,6 +1966,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
>  
>  		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
> +		else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +			return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_36;
>  		else
>  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
>  	case 10:
> @@ -1974,6 +1976,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
>  
>  		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
> +		else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +			return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_30;
>  		else
>  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
>  	case 8:
> @@ -2038,6 +2042,11 @@ intel_hdmi_sink_format_valid(struct intel_connector *connector,
>  
>  		return MODE_OK;
>  	case INTEL_OUTPUT_FORMAT_RGB:
> +		return MODE_OK;
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:

We'll also want the !has_hdmi_sink check here like for 4:2:0.

And I think we also want something to mirror the ycbcr_420_allowed
flag. I guess you could just make it something like:

intel_hdmi_ycbcr_444_allowed(display)
{
	return DISPLAY_VER(display) >= 5 && !HAS_GMCH(display);
}

That can also be reused when setting up the allowed property values.

> +		if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> +			return MODE_BAD;
> +
>  		return MODE_OK;
>  	default:
>  		MISSING_CASE(sink_format);
> 
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
