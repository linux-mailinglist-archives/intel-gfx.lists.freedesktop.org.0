Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAguCq/hwmmPnAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 20:10:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0756031B3F3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 20:10:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C33610E517;
	Tue, 24 Mar 2026 19:10:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="XjbgTY7M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7852E10E30C;
 Tue, 24 Mar 2026 19:10:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774379422; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=JwmfU3nI64lANcTkOJ2pptWtxs1wPlS9WAKzNUHw+UmfXiMj6E76AJuUGE1dUuUB9KFdm4poJkc3/4iweEnXYg39pe+B+E0RawYrt7N+GHbSgTSPoUN0808n6nIp72tssVMND5WVVKzksaEAJqUNTa+pBJZ/JilUNrURP5JPwdQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774379422;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=oIHhgYRTZYTwgPpGgsACesVAZLnr0SI2o+pjUNHNbec=; 
 b=XKnKaF7lYeRKqvW1sR5dSc3xOJtNoj8KO64AF/R2Bt7kj+XePRPL6DWo3ezLa0ifxii/Pwi6RKyqtj0MnHXIBxQBJ1H9FKHRowaC9lzDkWi62V2uixSkk/rCNrsYojyNPM+wpNEpSlCRYupfsCzcCkQBz8cjM7Uib9S/P9bUfgw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774379422; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=oIHhgYRTZYTwgPpGgsACesVAZLnr0SI2o+pjUNHNbec=;
 b=XjbgTY7MCveOU54UWyjfIY6w858uZYvJ0pY1cuI9G1qSVXsiM+jNqczIX3O+kNZr
 FezgxnSjsqcdP8RjZn8+GEt2o6KC+kfWQM5EJR0LQ8+to1BezR8iKwhkw1rFdzwfwju
 CA5g5dnFUKnLmIkgFD4Fcq0PsWPU0APg17ufDRQM=
Received: by mx.zohomail.com with SMTPS id 1774379421185170.28810178052595;
 Tue, 24 Mar 2026 12:10:21 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Date: Tue, 24 Mar 2026 20:10:11 +0100
Message-ID: <23910073.EfDdHjke4D@workhorse>
In-Reply-To: <acLDPYuaVI2-12JX@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0756031B3F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 24 March 2026 18:00:45 Central European Standard Time Ville Syr=
j=C3=A4l=C3=A4 wrote:
> On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrote:
> > +enum drm_connector_color_format {
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > +	 * helpers should pick a suitable color format. All implementations o=
f a
> > +	 * specific display protocol must behave the same way with "AUTO", but
> > +	 * different display protocols do not necessarily have the same "AUTO"
> > +	 * semantics.
> > +	 *
> > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > +	 * bandwidth required for full-scale RGB is not available, or the mode
> > +	 * is YCbCr 4:2:0-only, as long as the mode and output both support
> > +	 * YCbCr 4:2:0.
> > +	 *
> > +	 * For display protocols other than HDMI, the recursive bridge chain
> > +	 * format selection picks the first chain of bridge formats that work=
s,
> > +	 * as has already been the case before the introduction of the "color
> > +	 * format" property. Non-HDMI bridges should therefore either sort th=
eir
> > +	 * bus output formats by preference, or agree on a unified auto format
> > +	 * selection logic that's implemented in a common state helper (like
> > +	 * how HDMI does it).
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > +
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > +
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (i=
e.
> > +	 * not subsampled)
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > +
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (i=
e.
> > +	 * with horizontal subsampling)
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > +
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (i=
e.
> > +	 * with horizontal and vertical subsampling)
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
>=20
> Seems like this should document what the quantization range
> should be for each format.
>=20

I don't think so? If you want per-component bit depth values,
DRM_FORMAT_* defines would be the appropriate values to use. This
enum is more abstract than that, and is there to communicate
YUV vs. RGB and chroma subsampling, with bit depth being handled
by other properties.

If you mean the factor used for subsampling, then that'd only be
relevant if YCBCR410 was supported where one chroma plane isn't
halved but quartered in resolution. I suspect 4:1:0 will never
be added; no digital display protocol standard supports it to my
knowledge, and hopefully none ever will.

> > +
> > +	/**
> > +	 * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
> > +	 * format values in this enum
> > +	 */
> > +	DRM_CONNECTOR_COLOR_FORMAT_COUNT,
> > +};
> > +
> > +/**
> > + * drm_connector_color_format_valid - Validate drm_connector_color_for=
mat value
> > + * @fmt: value to check against all values of &enum drm_connector_colo=
r_format
> > + *
> > + * Checks whether the passed in value of @fmt is one of the allowable =
values in
> > + * &enum drm_connector_color_format.
> > + *
> > + * Returns: %true if it's a valid value for the enum, %false otherwise.
> > + */
> > +static inline bool __pure
> > +drm_connector_color_format_valid(enum drm_connector_color_format fmt)
> > +{
> > +	switch (fmt) {
> > +	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> > +	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> > +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> > +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> > +	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> > +		return true;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> >  const char *
> >  drm_hdmi_connector_get_output_format_name(enum drm_output_color_format=
 fmt);
> > =20
> > @@ -1129,6 +1217,13 @@ struct drm_connector_state {
> >  	 */
> >  	enum drm_colorspace colorspace;
> > =20
> > +	/**
> > +	 * @color_format: State variable for Connector property to request
> > +	 * color format change on Sink. This is most commonly used to switch
> > +	 * between RGB to YUV and vice-versa.
> > +	 */
> > +	enum drm_connector_color_format color_format;
> > +
> >  	/**
> >  	 * @writeback_job: Writeback job for writeback connectors
> >  	 *
> > @@ -2127,6 +2222,12 @@ struct drm_connector {
> >  	 */
> >  	struct drm_property *colorspace_property;
> > =20
> > +	/**
> > +	 * @color_format_property: Connector property to set the suitable
> > +	 * color format supported by the sink.
> > +	 */
> > +	struct drm_property *color_format_property;
> > +
> >  	/**
> >  	 * @path_blob_ptr:
> >  	 *
> > @@ -2610,6 +2711,9 @@ bool drm_connector_has_possible_encoder(struct dr=
m_connector *connector,
> >  					struct drm_encoder *encoder);
> >  const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
> > =20
> > +int drm_connector_attach_color_format_property(struct drm_connector *c=
onnector,
> > +					       unsigned long supported_color_formats);
> > +
> >  /**
> >   * drm_for_each_connector_iter - connector_list iterator macro
> >   * @connector: &struct drm_connector pointer used as cursor
> >=20
>=20
>=20




