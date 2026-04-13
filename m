Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLQlIDo+3WkubQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 21:04:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12F83F26C4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 21:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C221410E50A;
	Mon, 13 Apr 2026 19:04:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KK2jcVhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F41710E50A;
 Mon, 13 Apr 2026 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776107062; x=1807643062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J6Oy2Os5lNI/CAxu9YtA3xPK4u5JL/xZobEDTIfkwz0=;
 b=KK2jcVhYBNmNCx9yEZB4xsZjkFV3P9wngZpK4SKFaXAxmYeWCdz6PhQI
 THev/BtvbKKuiqMW4hik3hQPoE1FW8B+C4X/hL5YtIi7GCdK3NAQv7pGl
 R+mJc2BAAfigCWfbsWPCsB1Fz13CKNQskz5erwGVEB7j/gwhes8NXA5/Y
 TW4qS6SN8FflB1qxBJGHXjnir+5hidOpIU48c/GbegUuj9K2O0rsLp+fy
 mlS9rueU3V0nFSxID5tUaOkpVtkuo8wHB3+BCO/1d0EnRXGuHMdK0dwHn
 GEUobDksv63QHzjUY2OKUsGATnSDZpjPRRfFv4ZMoH0dudKCmUv/wEqMp w==;
X-CSE-ConnectionGUID: oM0e9ZtyQSW9Lu5ObdLSSg==
X-CSE-MsgGUID: WFhn2H0MTP+v+nC2ZCVbSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="99698028"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="99698028"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 12:04:21 -0700
X-CSE-ConnectionGUID: s581NXHCRZmMfO6wEfwB2g==
X-CSE-MsgGUID: SbIpZcUdT/a1/749YLYoDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="234275702"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.97])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 12:04:11 -0700
Date: Mon, 13 Apr 2026 22:04:07 +0300
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
Message-ID: <ad0-J35F1kcyZjoG@intel.com>
References: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
 <20260413-color-format-v13-11-ab37d4dfba48@collabora.com>
 <ad08zqpKbyF--Br3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad08zqpKbyF--Br3@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: D12F83F26C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 09:58:22PM +0300, Ville Syrjälä wrote:
> On Mon, Apr 13, 2026 at 12:07:25PM +0200, Nicolas Frattaroli wrote:
> > In anticipation of userspace being able to explicitly select supported
> > sink formats, add handling of the YCBCR444 sink format. The AUTO path
> > does not choose this format, but with explicit format selection added to
> > the driver, it becomes a possibility.
> > 
> > Check for YCBCR444 support on the sink in both sink_bpc_possible, and
> > sink_format_valid.
> > 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 874076a29da4..5ab5b5f85cde 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1966,6 +1966,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
> >  
> >  		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> >  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
> > +		else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> > +			return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_36;
> >  		else
> >  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
> >  	case 10:
> > @@ -1974,6 +1976,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *_connector,
> >  
> >  		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> >  			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
> > +		else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> > +			return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_30;
> >  		else
> >  			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
> >  	case 8:
> > @@ -2038,6 +2042,11 @@ intel_hdmi_sink_format_valid(struct intel_connector *connector,
> >  
> >  		return MODE_OK;
> >  	case INTEL_OUTPUT_FORMAT_RGB:
> > +		return MODE_OK;
> > +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> 
> We'll also want the !has_hdmi_sink check here like for 4:2:0.
> 
> And I think we also want something to mirror the ycbcr_420_allowed
> flag. I guess you could just make it something like:
> 
> intel_hdmi_ycbcr_444_allowed(display)
> {
> 	return DISPLAY_VER(display) >= 5 && !HAS_GMCH(display);

Actually the display version check is redundant there.
!HAS_GMCH alone is sufficient.

> }
> 
> That can also be reused when setting up the allowed property values.
> 
> > +		if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> > +			return MODE_BAD;
> > +
> >  		return MODE_OK;
> >  	default:
> >  		MISSING_CASE(sink_format);
> > 
> > -- 
> > 2.53.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
