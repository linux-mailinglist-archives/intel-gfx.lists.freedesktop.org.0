Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMz1J9NzxWnw+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:58:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F26339A59
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061C110EBBE;
	Thu, 26 Mar 2026 17:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gsic5omW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E178D10EBB5;
 Thu, 26 Mar 2026 17:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774547919; x=1806083919;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZN1iuzw8T8W2bRviqNraUbLOrITrSm5KwXD+jmeiWWg=;
 b=Gsic5omWbfN9vAOnZT90AXlevTB93606VBmep2g4E2lFGHfZJvrJ9BIH
 VumbUf+2FVnSy5rKOroMaZpWD6p9V+7huAXxwRQ04zTgpDzvopv36cYBG
 92uioXz3NAeuJnandfzbx/CYtco4e+DgifWWhzo5vNK+GOxdZtEDKElYn
 nn3bIubfzCbspkIBPKnce8CJP5yj2nKFuxSPp+nVEu+nNXAvEk7SxTuM/
 nUCDWHekzUT8jiL4eXDTgTQQ9mRSqk3bhwc/DfnrL+Nf0LtTB67cesI6S
 bMHu8N/34eeU1QUXO9+EOS7l6/L1IA5XV51U1Ws0cCFjSjxeHIqCXh74/ w==;
X-CSE-ConnectionGUID: vth1Ic/qQNKy7AzDl/qS6A==
X-CSE-MsgGUID: 9oJ3lNsJTLabLap7t+5Jng==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="85923279"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="85923279"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:58:38 -0700
X-CSE-ConnectionGUID: QU8QSqOhQfqCPL3kMJ994A==
X-CSE-MsgGUID: aPEZ8FAXSXOHe3ZqlAl2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="229145609"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:58:30 -0700
Date: Thu, 26 Mar 2026 19:58:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
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
Message-ID: <acVzwRyk_J24GrJ4@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com> <23910073.EfDdHjke4D@workhorse>
 <acLrv5hLyNss-Px5@intel.com>
 <20260325-neat-elegant-raven-ebc9ab@houat>
 <acPA60Ci3n_t__xF@intel.com>
 <20260325-magnificent-ultraviolet-oarfish-baefbc@houat>
 <acQsw3Wi_xVlBZ8d@intel.com>
 <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
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
	FREEMAIL_CC(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
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
X-Rspamd-Queue-Id: 04F26339A59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrjälä wrote:
> > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrjälä wrote:
> > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrjälä wrote:
> > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli wrote:
> > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standard Time Ville Syrjälä wrote:
> > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > +	/**
> > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > > > > > > > > +	 * helpers should pick a suitable color format. All implementations of a
> > > > > > > > > +	 * specific display protocol must behave the same way with "AUTO", but
> > > > > > > > > +	 * different display protocols do not necessarily have the same "AUTO"
> > > > > > > > > +	 * semantics.
> > > > > > > > > +	 *
> > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > > > > > > > > +	 * bandwidth required for full-scale RGB is not available, or the mode
> > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > +	 *
> > > > > > > > > +	 * For display protocols other than HDMI, the recursive bridge chain
> > > > > > > > > +	 * format selection picks the first chain of bridge formats that works,
> > > > > > > > > +	 * as has already been the case before the introduction of the "color
> > > > > > > > > +	 * format" property. Non-HDMI bridges should therefore either sort their
> > > > > > > > > +	 * bus output formats by preference, or agree on a unified auto format
> > > > > > > > > +	 * selection logic that's implemented in a common state helper (like
> > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > +	 */
> > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> > > > > > > > > +
> > > > > > > > > +	/**
> > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > > > > > > > > +	 */
> > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > +
> > > > > > > > > +	/**
> > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> > > > > > > > > +	 * not subsampled)
> > > > > > > > > +	 */
> > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > +
> > > > > > > > > +	/**
> > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > +	 */
> > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > +
> > > > > > > > > +	/**
> > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > +	 */
> > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > 
> > > > > > > > Seems like this should document what the quantization range
> > > > > > > > should be for each format.
> > > > > > > > 
> > > > > > > 
> > > > > > > I don't think so? If you want per-component bit depth values,
> > > > > > > DRM_FORMAT_* defines would be the appropriate values to use. This
> > > > > > > enum is more abstract than that, and is there to communicate
> > > > > > > YUV vs. RGB and chroma subsampling, with bit depth being handled
> > > > > > > by other properties.
> > > > > > > 
> > > > > > > If you mean the factor used for subsampling, then that'd only be
> > > > > > > relevant if YCBCR410 was supported where one chroma plane isn't
> > > > > > > halved but quartered in resolution. I suspect 4:1:0 will never
> > > > > > > be added; no digital display protocol standard supports it to my
> > > > > > > knowledge, and hopefully none ever will.
> > > > > > 
> > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > 
> > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > RGB can either be full or limited range depending on the 
> > > > > > "Broadcast RGB" property and other related factors.
> > > > > 
> > > > > So far the HDMI state has both the format and quantization range as
> > > > > different fields. I'm not sure we need to document the range in the
> > > > > format field, maybe only mention it's not part of the format but has a
> > > > > field of its own?
> > > > 
> > > > I think we only have it for RGB (on some drivers only?). For YCbCr
> > > > I think the assumption is limited range everywhere.
> > > > 
> > > > But I'm not really concerned about documenting struct members.
> > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > will want to know what the new property actually does so the
> > > > uapi needs to be documented properly. And down the line some
> > > > new driver might also implement the wrong behaviour if there
> > > > is no clear specification.
> > > 
> > > Ack
> > > 
> > > > So I'm thinking (or perhaps hoping) the rule might be something like:
> > > > - YCbCr limited range 
> > > > - RGB full range if "Broadcast RGB" property is not present
> > > 
> > > Isn't it much more complicated than that for HDMI though? My
> > > recollection was that any VIC but VIC1 would be limited range, and
> > > anything else full range?
> > 
> > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > logic but doesn't expose the "Broadcast RGB" property? I was hoping
> > those would always go hand in hand now.
> 
> I'm not sure. i915 and the HDMI state helpers handle it properly (I
> think?) but it looks like only vc4 registers the Broadcast RGB property
> and uses the HDMI state helpers.
> 
> And it looks like amdgpu registers Broadcast RGB but doesn't use
> drm_default_rgb_quant_range() which seems suspicious?

If they want just manual full vs. limited then they should
limit the property to not expose the "auto" option at all.

amdgpu also ties this in with the "colorspace" property, which
originally in i915 only controlled the infoframes/etc. But on
amdgpu it now controls various aspects of output color
transformation. The end result is that the property is a complete
mess with most of the values making no sense. And for whatever
reason everyone involved refused to remove/deprecate the
nonsensical values :/

Looks like this series should make sure the documentation for
the "colorspace" property is in sync with the new property
as well. Currently now it's giving conflicting information.

-- 
Ville Syrjälä
Intel
