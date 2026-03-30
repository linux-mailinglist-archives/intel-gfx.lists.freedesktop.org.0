Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCkGIbENy2msDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:56:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E228E3627C2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0109210E820;
	Mon, 30 Mar 2026 23:56:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LgsxD7oX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF0C10E820;
 Mon, 30 Mar 2026 23:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774914989; x=1806450989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dklYeb6DKvtegCaYdj4gHCz+iIYfrn2UIcT4Zqcb0A4=;
 b=LgsxD7oXremPqdjrWoX4vKgsk94rKHesipuItYmhcXtLGK7flc/iN5MS
 WPBAooUZRTED2PK4CBF/NrDaSYer8zAesJ9VgFIwE58qES6NQOIoTqP9K
 crXS4J7IgfQDIXD42VeIc27it644HLNbD4Wjr3KmMh4fxRu5BhF17MwX8
 BnSDcr3vmoGBtbQ9/yY645j7aMcvP7K3tfYpqbfC6m452ksaYTSYQ29eT
 mk9BourZR0bvEova6qwj1SlpFZwSAWF/bv79oKh4yuZCGy2sLcWliWYCS
 tQZzFe3aa+7+dsNgUtzw3ySeTXmx3+VkSNv5LDaakKtLBCP/9smTW8Kph A==;
X-CSE-ConnectionGUID: UsWjn9xSRFGu6w4jxcrMdw==
X-CSE-MsgGUID: yFhyIiGdQe2cEE486JuPnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86612100"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="86612100"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:56:29 -0700
X-CSE-ConnectionGUID: w6miQk9vRzC4xY3dUuwUZg==
X-CSE-MsgGUID: oivIEBUnRoKwhtl0r8WZTw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:56:19 -0700
Date: Tue, 31 Mar 2026 02:56:16 +0300
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
Message-ID: <acsNoCDsPtEhtkRn@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
 <acVzwRyk_J24GrJ4@intel.com> <4153041.tdWV9SEqCh@workhorse>
 <acclgID7lSVNten2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <acclgID7lSVNten2@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E228E3627C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 28, 2026 at 02:49:04AM +0200, Ville Syrjälä wrote:
> On Fri, Mar 27, 2026 at 01:56:06PM +0100, Nicolas Frattaroli wrote:
> > On Thursday, 26 March 2026 18:58:25 Central European Standard Time Ville Syrjälä wrote:
> > > On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> > > > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrjälä wrote:
> > > > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrjälä wrote:
> > > > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrjälä wrote:
> > > > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli wrote:
> > > > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standard Time Ville Syrjälä wrote:
> > > > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> > > > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > > > > > > > > > > > +	 * helpers should pick a suitable color format. All implementations of a
> > > > > > > > > > > > +	 * specific display protocol must behave the same way with "AUTO", but
> > > > > > > > > > > > +	 * different display protocols do not necessarily have the same "AUTO"
> > > > > > > > > > > > +	 * semantics.
> > > > > > > > > > > > +	 *
> > > > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > > > > > > > > > > > +	 * bandwidth required for full-scale RGB is not available, or the mode
> > > > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> > > > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > > > +	 *
> > > > > > > > > > > > +	 * For display protocols other than HDMI, the recursive bridge chain
> > > > > > > > > > > > +	 * format selection picks the first chain of bridge formats that works,
> > > > > > > > > > > > +	 * as has already been the case before the introduction of the "color
> > > > > > > > > > > > +	 * format" property. Non-HDMI bridges should therefore either sort their
> > > > > > > > > > > > +	 * bus output formats by preference, or agree on a unified auto format
> > > > > > > > > > > > +	 * selection logic that's implemented in a common state helper (like
> > > > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> > > > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> > > > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> > > > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > > > > 
> > > > > > > > > > > Seems like this should document what the quantization range
> > > > > > > > > > > should be for each format.
> > > > > > > > > > > 
> > > > > > > > > > 
> > > > > > > > > > I don't think so? If you want per-component bit depth values,
> > > > > > > > > > DRM_FORMAT_* defines would be the appropriate values to use. This
> > > > > > > > > > enum is more abstract than that, and is there to communicate
> > > > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth being handled
> > > > > > > > > > by other properties.
> > > > > > > > > > 
> > > > > > > > > > If you mean the factor used for subsampling, then that'd only be
> > > > > > > > > > relevant if YCBCR410 was supported where one chroma plane isn't
> > > > > > > > > > halved but quartered in resolution. I suspect 4:1:0 will never
> > > > > > > > > > be added; no digital display protocol standard supports it to my
> > > > > > > > > > knowledge, and hopefully none ever will.
> > > > > > > > > 
> > > > > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > > > > 
> > > > > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > > > > RGB can either be full or limited range depending on the 
> > > > > > > > > "Broadcast RGB" property and other related factors.
> > > > > > > > 
> > > > > > > > So far the HDMI state has both the format and quantization range as
> > > > > > > > different fields. I'm not sure we need to document the range in the
> > > > > > > > format field, maybe only mention it's not part of the format but has a
> > > > > > > > field of its own?
> > > > > > > 
> > > > > > > I think we only have it for RGB (on some drivers only?). For YCbCr
> > > > > > > I think the assumption is limited range everywhere.
> > > > > > > 
> > > > > > > But I'm not really concerned about documenting struct members.
> > > > > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > > > > will want to know what the new property actually does so the
> > > > > > > uapi needs to be documented properly. And down the line some
> > > > > > > new driver might also implement the wrong behaviour if there
> > > > > > > is no clear specification.
> > > > > > 
> > > > > > Ack
> > > > > > 
> > > > > > > So I'm thinking (or perhaps hoping) the rule might be something like:
> > > > > > > - YCbCr limited range 
> > > > > > > - RGB full range if "Broadcast RGB" property is not present
> > > > > > 
> > > > > > Isn't it much more complicated than that for HDMI though? My
> > > > > > recollection was that any VIC but VIC1 would be limited range, and
> > > > > > anything else full range?
> > > > > 
> > > > > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > > > > logic but doesn't expose the "Broadcast RGB" property? I was hoping
> > > > > those would always go hand in hand now.
> > > > 
> > > > I'm not sure. i915 and the HDMI state helpers handle it properly (I
> > > > think?) but it looks like only vc4 registers the Broadcast RGB property
> > > > and uses the HDMI state helpers.
> > > > 
> > > > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > > > drm_default_rgb_quant_range() which seems suspicious?
> > > 
> > > If they want just manual full vs. limited then they should
> > > limit the property to not expose the "auto" option at all.
> > > 
> > > amdgpu also ties this in with the "colorspace" property, which
> > > originally in i915 only controlled the infoframes/etc. But on
> > > amdgpu it now controls various aspects of output color
> > > transformation. The end result is that the property is a complete
> > > mess with most of the values making no sense. And for whatever
> > > reason everyone involved refused to remove/deprecate the
> > > nonsensical values :/
> > > 
> > > Looks like this series should make sure the documentation for
> > > the "colorspace" property is in sync with the new property
> > > as well. Currently now it's giving conflicting information.
> > > 
> > 
> > I take it the problematic information is in
> > 
> >     * DOC: standard connector properties
> >     *
> >     * Colorspace:
> > 
> > and probably specifically BT2020_YCC's (and BT2020_RGB's?) insistence
> > that they "produce RGB content".
> > 
> > I think we probably just have to change the statement "The variants
> > BT2020_RGB and BT2020_YCC are equivalent and the driver chooses between
> > RGB and YCbCr on its own."
> > 
> > The "on its own" here would get turned into "based on the color format
> > property".
> > 
> > Speaking of i915, that patch is one of the very few (5) patches in
> > this series still lacking a review (hint hint nudge nudge). I'd like
> > to get some more feedback on the remaining patches before I send out
> > another revision, so that it's hopefully not just docs changes (I
> > know better than to think those patches must be perfect and won't
> > need revision.)
> 
> The i915 code around this is already a big mess, and I don't really
> adding to that mess. So I think we'll need to do some refactoring before
> we add anything there. I already started typing something and so far
> it looks fairly straightforward, so I should have something soon.

OK, posted something
https://lore.kernel.org/intel-gfx/20260330235339.29479-1-ville.syrjala@linux.intel.com/T/#m7c349478ca6c856fbc68d5e2178f1aa31678a05f

Are the wayland/compositor/color management folks on board with
these new properties? I don't think I see the usual suspects on
the cc list.

> 
> While doing that several questions came to my mind though:
> 
> * More interactions with the colorspace property, but I sent
>   a separate mail already about that
> 
> * Which conversion matrix to use, and the answer I suspect
>   should be "ask the colorspace property", as mentioned in the
>   other mail
> 
> * Should we flat out reject color formats (and I suppose also
>   colorspace prop values) the sink doesn't claim to support?
> 
>   If yes, then I think we'll have to forget about adding anything 
>   to i915 MST code. The way the MST stuff works is that if one
>   stream needs a modeset then all the related streams get modeset
>   as well. Thus if the user replaces a monitor getting fed with a
>   YCbCr stream just as another stream is being modeset, then the
>   entire atomic commit could fail due to the YCbCr stream getting
>   rejected.
> 
>   I think eventually we might have to invent some mechanism where
>   all the input into the modeset computation is cached somehow,
>   and said cache updated only on explicit userspace modesets.
>   Either that or we have to come up  with a way to skip some of
>   the calculations that depend on external factors. Either way
>   it's going to be a pain.
> 
>   OTOH if we don't mind feeding the sink with stuff it can't
>   understand, then I suppose we might add YCbCr 4:4:4 support
>   for MST. It shouldn't be any different from RGB apart from
>   the RGB->YCbCr conversion, which is handled elsewhere. But
>   YCbCr 4:2:0 is definitely out either way, the MST code has
>   no support for that currently.
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
