Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAFDDVHDwmmjlQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 18:01:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772693198F2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 18:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90A110E66A;
	Tue, 24 Mar 2026 17:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VwFrOcoV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528E510E515;
 Tue, 24 Mar 2026 17:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774371661; x=1805907661;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aDKWI4cKGQKK5hVg6AfnHxki62nohW34+6dDQKvaUzA=;
 b=VwFrOcoVBKGMqDDBgAAdDZ618MZOWdMCwb8c6Brde0D+5Xd6N/vcqaah
 pMT6SvW7fxK99ie8hqqJiYjh7eQfIH+aUcWaxjeintQuLsVYPcYaVEuLi
 MvQOcTkH+Ae2dcwjdonxzIRtWzmcVTFlu82oPCB8lnr1YfPBjSPhb6Plr
 rHfSiOXIMit2207fx1Qk1ECCueytdCZMlV7Gb2n1NjDNKui7g3TZky5+U
 9ZDaFOizrA08Iz8Ll6Cvn8iNqwprJ8HAgvHyWhsSiCS7aZQUA82BZyF/Z
 f6QXDbOAvgHvyZMd6DoJUouRkehwA8nZD5JDJwRAjaZGcPHCXQjwF4Fs9 g==;
X-CSE-ConnectionGUID: sLqmAmVYS9yw2/FQEFwzZw==
X-CSE-MsgGUID: xRF+3UJGQkOkv5XII4/VZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="78991862"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="78991862"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:01:00 -0700
X-CSE-ConnectionGUID: b4BAW2/ERUWoQ6r6oZykng==
X-CSE-MsgGUID: SL+/tSDtRZahvvTQl/a0tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="254912602"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:00:49 -0700
Date: Tue, 24 Mar 2026 19:00:45 +0200
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
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
 Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Message-ID: <acLDPYuaVI2-12JX@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
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
X-Spamd-Result: default: False [0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.63)[subject];
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
	RCPT_COUNT_TWELVE(0.00)[41];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 772693198F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> +enum drm_connector_color_format {
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> +	 * helpers should pick a suitable color format. All implementations of a
> +	 * specific display protocol must behave the same way with "AUTO", but
> +	 * different display protocols do not necessarily have the same "AUTO"
> +	 * semantics.
> +	 *
> +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> +	 * bandwidth required for full-scale RGB is not available, or the mode
> +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> +	 * YCbCr 4:2:0.
> +	 *
> +	 * For display protocols other than HDMI, the recursive bridge chain
> +	 * format selection picks the first chain of bridge formats that works,
> +	 * as has already been the case before the introduction of the "color
> +	 * format" property. Non-HDMI bridges should therefore either sort their
> +	 * bus output formats by preference, or agree on a unified auto format
> +	 * selection logic that's implemented in a common state helper (like
> +	 * how HDMI does it).
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> +	 * not subsampled)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> +	 * with horizontal subsampling)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> +	 * with horizontal and vertical subsampling)
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,

Seems like this should document what the quantization range
should be for each format.

> +
> +	/**
> +	 * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
> +	 * format values in this enum
> +	 */
> +	DRM_CONNECTOR_COLOR_FORMAT_COUNT,
> +};
> +
> +/**
> + * drm_connector_color_format_valid - Validate drm_connector_color_format value
> + * @fmt: value to check against all values of &enum drm_connector_color_format
> + *
> + * Checks whether the passed in value of @fmt is one of the allowable values in
> + * &enum drm_connector_color_format.
> + *
> + * Returns: %true if it's a valid value for the enum, %false otherwise.
> + */
> +static inline bool __pure
> +drm_connector_color_format_valid(enum drm_connector_color_format fmt)
> +{
> +	switch (fmt) {
> +	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> +	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  const char *
>  drm_hdmi_connector_get_output_format_name(enum drm_output_color_format fmt);
>  
> @@ -1129,6 +1217,13 @@ struct drm_connector_state {
>  	 */
>  	enum drm_colorspace colorspace;
>  
> +	/**
> +	 * @color_format: State variable for Connector property to request
> +	 * color format change on Sink. This is most commonly used to switch
> +	 * between RGB to YUV and vice-versa.
> +	 */
> +	enum drm_connector_color_format color_format;
> +
>  	/**
>  	 * @writeback_job: Writeback job for writeback connectors
>  	 *
> @@ -2127,6 +2222,12 @@ struct drm_connector {
>  	 */
>  	struct drm_property *colorspace_property;
>  
> +	/**
> +	 * @color_format_property: Connector property to set the suitable
> +	 * color format supported by the sink.
> +	 */
> +	struct drm_property *color_format_property;
> +
>  	/**
>  	 * @path_blob_ptr:
>  	 *
> @@ -2610,6 +2711,9 @@ bool drm_connector_has_possible_encoder(struct drm_connector *connector,
>  					struct drm_encoder *encoder);
>  const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
>  
> +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> +					       unsigned long supported_color_formats);
> +
>  /**
>   * drm_for_each_connector_iter - connector_list iterator macro
>   * @connector: &struct drm_connector pointer used as cursor
> 
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
