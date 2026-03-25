Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oExoKIThw2lvugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:22:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D50325A33
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBE210E6E3;
	Wed, 25 Mar 2026 13:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="kMKm63Fg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FDA10E1B2;
 Wed, 25 Mar 2026 13:22:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774444903; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=CCtBlCPi3Q2bB+pY52f2jYSHnPdZPKK5c/bNbLVbaqFROouY4wutn/e4U4ddPiCh2dRtIJEa+4sw3eRcgkx5itizWSiHQJ1k5ji2y3TV8Sfd+LOOHE+4eImuNXHyhepL4Y6xZLlucHqh7dhKlIgV597SkxauYwWGp3Mt/qwyCQE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774444903;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=4NCts4nAAjmpTTPXyyXJubEwZVKpuACtYHYvuhLjnEg=; 
 b=neSpIpW8c/spyqvAiNwkjoDSOZqyZHnFCRxV+Gi3qYZVjFyK2gFbh4bi4baBjnCEikE9tteSGtcEZu59GjHFByVfFlXSi6+KM02lf2Fn1W/82bQzFgR2uXoK9V23thc386KYuCtfUVJTQ5xbJa49Byx9hCa8SriuTIc37yQPjqA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774444902; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=4NCts4nAAjmpTTPXyyXJubEwZVKpuACtYHYvuhLjnEg=;
 b=kMKm63FguoGfblCxfxSJ1j3I+F7NdvBi9QkoZ36rRIQm4aQhUxkdXUzXAXW4P2/G
 +iy6N2K0+KnjFKEck7QsfoKxt4RhRphih9F7T8mSCX2RA9nAFsIw2VpoO+K94iKlTUc
 te0syhpVY6coMVnV3Yp8zmz2ebBBxIMveJzQYjMI=
Received: by mx.zohomail.com with SMTPS id 1774444893218302.43210365950904;
 Wed, 25 Mar 2026 06:21:33 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
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
Date: Wed, 25 Mar 2026 14:21:24 +0100
Message-ID: <12425220.nUPlyArG6x@workhorse>
In-Reply-To: <20260325-quaint-bull-of-fortitude-dc68da@houat>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <20260325-quaint-bull-of-fortitude-dc68da@houat>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	CTE_CASE(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[41];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 14D50325A33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wednesday, 25 March 2026 14:05:25 Central European Standard Time Maxime Ripard wrote:
> Hi Dave,
> 
> On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > > index af8b92d2d5b7..bd549f912b76 100644
> > > --- a/include/drm/drm_connector.h
> > > +++ b/include/drm/drm_connector.h
> > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
> > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > + *   Number of valid output color format values in this enum
> > >   */
> > >  enum drm_output_color_format {
> > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > >  };
> > >
> > > +/**
> > > + * enum drm_connector_color_format - Connector Color Format Request
> > > + *
> > > + * This enum, unlike &enum drm_output_color_format, is used to specify requests
> > > + * for a specific color format on a connector through the DRM "color format"
> > > + * property. The difference is that it has an "AUTO" value to specify that
> > > + * no specific choice has been made.
> > > + */
> > > +enum drm_connector_color_format {
> > > +       /**
> > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > > +        * helpers should pick a suitable color format. All implementations of a
> > > +        * specific display protocol must behave the same way with "AUTO", but
> > > +        * different display protocols do not necessarily have the same "AUTO"
> > > +        * semantics.
> > > +        *
> > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > > +        * bandwidth required for full-scale RGB is not available, or the mode
> > > +        * is YCbCr 4:2:0-only, as long as the mode and output both support
> > > +        * YCbCr 4:2:0.
> > 
> > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> 
> The "auto" behaviour is strictly identical to the one we have right now,
> and this one stems from i915. Back when all that logic was added, it was
> decided to align every driver behavior on i915 because that's what most
> compositors would expect.

Hi Maxime,

would it be okay to extend the behavior while we're at it? 4:2:2 does save
bandwidth compared to RGB (unlike YCbCr 4:4:4). I do think 4:2:2 instead of
4:2:0 will provide benefits in some cases. I assume hardware that supports
4:2:2 only instead of 4:2:0 does so in order to save >= 1 horizontal
row of local SRAM buffer in the display controller for any downscaling,
as it'll only need to consider neighbouring pixels on the same row.

Kind regards,
Nicolas Frattaroli

> 
> Maxime
> 




