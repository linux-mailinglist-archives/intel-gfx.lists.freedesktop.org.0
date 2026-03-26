Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB+IOJovxWnJ7wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:07:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962B9335B52
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:07:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E69A10E252;
	Thu, 26 Mar 2026 13:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVcikHjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FFE10E213;
 Thu, 26 Mar 2026 13:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774530454; x=1806066454;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B3uzQ8tIYnAOOnEmjyfuJEJc59MwMvhEpnCIu1AwAkA=;
 b=NVcikHjGcGId5j+J7DOnW5+LBax9NgjMLGKBZlicW+dycu8wPFPLa+qc
 qhbK5GMHtOFjFvuqg2bB+H+EcENE72859Qy+3JH70V+xC4i65S8xE9W6f
 KLImi4F5y5lxcAEEQej/+VcrEr0/ZWU5Hx4u1yezfn2EvYu7HBVLai9xo
 W8BefGKj/nsriULIdkWWQhHDOfnm0XDnMjtLF9ynKRH8l2s4gDQBIpDkw
 pMDYSGk2tO6HHTXarR+bTdPbEgRLwMGIs5JafqGdc5w5V/O0kR+paorAZ
 4wcubL3pg1jH6FdInns4i5Jd/6diJVN/yO3EcPgrAp7Y/FnK6rmWAecIa g==;
X-CSE-ConnectionGUID: dAHMOkHKSQO0DDnVsLL6RA==
X-CSE-MsgGUID: TlcT7fMdQm2o0SIjg8tbqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75784613"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75784613"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 06:07:30 -0700
X-CSE-ConnectionGUID: 0oV4jNW1QTiG57YtCW6P5g==
X-CSE-MsgGUID: HuDaOTRoSHOHVl+3MDMk5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224070220"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 06:07:18 -0700
Date: Thu, 26 Mar 2026 15:07:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Message-ID: <acUvg3Y7kMf2qioK@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260325-neat-elegant-raven-ebc9ab@houat>
 <acPA60Ci3n_t__xF@intel.com> <3979783.tdWV9SEqCh@workhorse>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3979783.tdWV9SEqCh@workhorse>
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
	FREEMAIL_CC(0.00)[kernel.org,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
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
X-Rspamd-Queue-Id: 962B9335B52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 01:44:03PM +0100, Nicolas Frattaroli wrote:
> On Wednesday, 25 March 2026 12:03:07 Central European Standard Time Ville Syrjälä wrote:
> > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrjälä wrote:
> > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli wrote:
> > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standard Time Ville Syrjälä wrote:
> > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> > > > > > > +enum drm_connector_color_format {
> > > > > > > +	/**
> > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > > > > > > +	 * helpers should pick a suitable color format. All implementations of a
> > > > > > > +	 * specific display protocol must behave the same way with "AUTO", but
> > > > > > > +	 * different display protocols do not necessarily have the same "AUTO"
> > > > > > > +	 * semantics.
> > > > > > > +	 *
> > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > > > > > > +	 * bandwidth required for full-scale RGB is not available, or the mode
> > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > +	 *
> > > > > > > +	 * For display protocols other than HDMI, the recursive bridge chain
> > > > > > > +	 * format selection picks the first chain of bridge formats that works,
> > > > > > > +	 * as has already been the case before the introduction of the "color
> > > > > > > +	 * format" property. Non-HDMI bridges should therefore either sort their
> > > > > > > +	 * bus output formats by preference, or agree on a unified auto format
> > > > > > > +	 * selection logic that's implemented in a common state helper (like
> > > > > > > +	 * how HDMI does it).
> > > > > > > +	 */
> > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> > > > > > > +
> > > > > > > +	/**
> > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > > > > > > +	 */
> > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > +
> > > > > > > +	/**
> > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> > > > > > > +	 * not subsampled)
> > > > > > > +	 */
> > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > +
> > > > > > > +	/**
> > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> > > > > > > +	 * with horizontal subsampling)
> > > > > > > +	 */
> > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > +
> > > > > > > +	/**
> > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > +	 */
> > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > 
> > > > > > Seems like this should document what the quantization range
> > > > > > should be for each format.
> > > > > > 
> > > > > 
> > > > > I don't think so? If you want per-component bit depth values,
> > > > > DRM_FORMAT_* defines would be the appropriate values to use. This
> > > > > enum is more abstract than that, and is there to communicate
> > > > > YUV vs. RGB and chroma subsampling, with bit depth being handled
> > > > > by other properties.
> > > > > 
> > > > > If you mean the factor used for subsampling, then that'd only be
> > > > > relevant if YCBCR410 was supported where one chroma plane isn't
> > > > > halved but quartered in resolution. I suspect 4:1:0 will never
> > > > > be added; no digital display protocol standard supports it to my
> > > > > knowledge, and hopefully none ever will.
> > > > 
> > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > 
> > > > The i915 behaviour is that YCbCr is always limited range,
> > > > RGB can either be full or limited range depending on the 
> > > > "Broadcast RGB" property and other related factors.
> > > 
> > > So far the HDMI state has both the format and quantization range as
> > > different fields. I'm not sure we need to document the range in the
> > > format field, maybe only mention it's not part of the format but has a
> > > field of its own?
> > 
> > I think we only have it for RGB (on some drivers only?). For YCbCr
> > I think the assumption is limited range everywhere.
> > 
> > But I'm not really concerned about documenting struct members.
> > What I'm talking about is the *uapi* docs. Surely userspace
> > will want to know what the new property actually does so the
> > uapi needs to be documented properly. And down the line some
> > new driver might also implement the wrong behaviour if there
> > is no clear specification.
> > 
> > So I'm thinking (or perhaps hoping) the rule might be something like:
> > - YCbCr limited range 
> > - RGB full range if "Broadcast RGB" property is not present
> > - RGB full or limited range based on the "Broadcast RGB" property
> >   if it's present
> > 
> > I think the "Broadcast RGB" property itself might also be lacking
> > proper uapi docs, so that may need to be remedied as well.
> > 
> > 
> 
> Alright, so in v12 I'll do the following:
> 
> - Add a line to all YCBCR connector formats that specifies they're
>   limited range as long as Broadcast RGB is limited. Whether it's limited
>   range when Broadcast RGB is full is purposefully left undefined.

"Broadcast RGB", as the name implies, only affects RGB output.

>   In the future, we can expand this to state they're limited range by
>   default unless some other property is set. If we're not re-using
>   Broadcast RGB for that, this will work out fine, because users who
>   don't know about the eventual new property won't have this behaviour
>   changed. If we do re-use "Broadcast RGB" for that, then only users
>   relying on things we explicitly left undefined will get surprise
>   full range YCBCR.
> - Add a line to the RGB connector format that specifies its range
>   depends on the "Broadcast RGB" property
> 
> This is a bit of a mess, because it's entirely reasonable that a
> future YCBCR range property would want to default to full range
> so that users get the most color out of their monitors. But with
> this description of the connector color formats, we can't do that.
> 
> If there are alternate suggestions, I'm open for them. We can't
> really rename "Broadcast RGB" but if I had a time machine, that'd
> be my first choice.
> 
> Kind regards,
> Nicolas Frattaroli
> 

-- 
Ville Syrjälä
Intel
