Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBBZGGsH2WmilQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:21:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06D63D8942
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC1610E96A;
	Fri, 10 Apr 2026 14:21:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="CVwPR2Jj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A17EC10E969;
 Fri, 10 Apr 2026 14:21:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1775830871; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Jn/Tmj19i3gOK6f9TWANjUnYtLOPBQJNqcx0tOvjD6UpoX8CURmIgJHUNdecp8Pw0CljdDunOXYctaIxdBHusanURm0wQacxVoaGiqrv4X1c2DA8c8Y0+8I4KFWu1BkOG6EKYiSMzeB/aMXduHDEnhJaZkibDPCNqKz5tzzC2w0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1775830871;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=9zLHnTtMqw0wWzWI7j+3+Qz08IlRB+2G4Qkl+hxqDWo=; 
 b=YYqZ7rPD2KtIX1IkeI5KwpQUzCS1ufbR7X+rw1FRYUs1PdogLTcepHPQHDUFTuX4/XqMYUliTgNli96hFqCPikJoz7GZp8BfKi27RdJ/soknA9PpgKQ9gi/D846d2zCYSaUSm/Cc3/QnFgD5R/p82+/jayc8xDqUoa0hzflpqSg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1775830871; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=9zLHnTtMqw0wWzWI7j+3+Qz08IlRB+2G4Qkl+hxqDWo=;
 b=CVwPR2JjdsnnJHG3iLLKNbX4wAsiZCkL3NtXjldGLNGHKv8/5VoQA1Jn4biRiq67
 //9zWXRFyP5j6alWl4gj1F2804zm/gplOKweJwC3iihVZHcLBnJ1hRq5pRUvZc8NkjE
 dyhmroMYyfJueA+zxqQg6lsQ7hpMUqCrpzHbjqJ0=
Received: by mx.zohomail.com with SMTPS id 1775830869992203.62896287388855;
 Fri, 10 Apr 2026 07:21:09 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 linux-doc@vger.kernel.org
Subject: Re: [PATCH v12 04/25] drm/bridge: Act on the DRM color format property
Date: Fri, 10 Apr 2026 16:21:00 +0200
Message-ID: <4810558.ElGaqSPkdT@workhorse>
In-Reply-To: <edeq6wxmwzvovfoo6pvih6dybwszf3tahg7nvqkjrw3qxllbfd@jwejh2sgb5eh>
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
 <20260409-color-format-v12-4-ce84e1817a27@collabora.com>
 <edeq6wxmwzvovfoo6pvih6dybwszf3tahg7nvqkjrw3qxllbfd@jwejh2sgb5eh>
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
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[38];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A06D63D8942
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Friday, 10 April 2026 00:08:24 Central European Summer Time Dmitry Baryshkov wrote:
> On Thu, Apr 09, 2026 at 05:44:54PM +0200, Nicolas Frattaroli wrote:
> > The new DRM color format property allows userspace to request a specific
> > color format on a connector. In turn, this fills the connector state's
> > color_format member to switch color formats.
> > 
> > Make drm_bridges consider the color_format set in the connector state
> > during the atomic bridge check. For bridges that represent HDMI bridges,
> > rely on whatever format the HDMI logic set. Reject any output bus
> > formats that do not correspond to the requested color format.
> > 
> > Non-HDMI last bridges with DRM_CONNECTOR_COLOR_FORMAT_AUTO set will end
> > up choosing the first output format that functions to make a whole
> > recursive bridge chain format selection succeed.
> > 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/drm_bridge.c | 89 +++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 88 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
> > index ba80bebb5685..7c1516864d96 100644
> > --- a/drivers/gpu/drm/drm_bridge.c
> > +++ b/drivers/gpu/drm/drm_bridge.c
> > @@ -1150,6 +1150,47 @@ static int select_bus_fmt_recursive(struct drm_bridge *first_bridge,
> >  	return ret;
> >  }
> >  
> > +static bool __pure bus_format_is_color_fmt(u32 bus_fmt, enum drm_connector_color_format fmt)
> > +{
> > +	if (fmt == DRM_CONNECTOR_COLOR_FORMAT_AUTO)
> > +		return true;
> > +
> > +	switch (bus_fmt) {
> > +	case MEDIA_BUS_FMT_FIXED:
> > +		return true;
> > +	case MEDIA_BUS_FMT_RGB888_1X24:
> > +	case MEDIA_BUS_FMT_RGB101010_1X30:
> > +	case MEDIA_BUS_FMT_RGB121212_1X36:
> > +	case MEDIA_BUS_FMT_RGB161616_1X48:
> > +		return fmt == DRM_CONNECTOR_COLOR_FORMAT_RGB444;
> > +	case MEDIA_BUS_FMT_YUV8_1X24:
> > +	case MEDIA_BUS_FMT_YUV10_1X30:
> > +	case MEDIA_BUS_FMT_YUV12_1X36:
> > +	case MEDIA_BUS_FMT_YUV16_1X48:
> > +		return fmt == DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
> > +	case MEDIA_BUS_FMT_UYVY8_1X16:
> > +	case MEDIA_BUS_FMT_VYUY8_1X16:
> > +	case MEDIA_BUS_FMT_YUYV8_1X16:
> > +	case MEDIA_BUS_FMT_YVYU8_1X16:
> > +	case MEDIA_BUS_FMT_UYVY10_1X20:
> > +	case MEDIA_BUS_FMT_YUYV10_1X20:
> > +	case MEDIA_BUS_FMT_VYUY10_1X20:
> > +	case MEDIA_BUS_FMT_YVYU10_1X20:
> > +	case MEDIA_BUS_FMT_UYVY12_1X24:
> > +	case MEDIA_BUS_FMT_VYUY12_1X24:
> > +	case MEDIA_BUS_FMT_YUYV12_1X24:
> > +	case MEDIA_BUS_FMT_YVYU12_1X24:
> > +		return fmt == DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
> > +	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> > +	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> > +	case MEDIA_BUS_FMT_UYYVYY12_0_5X36:
> > +	case MEDIA_BUS_FMT_UYYVYY16_0_5X48:
> > +		return fmt == DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> >  /*
> >   * This function is called by &drm_atomic_bridge_chain_check() just before
> >   * calling &drm_bridge_funcs.atomic_check() on all elements of the chain.
> > @@ -1193,6 +1234,7 @@ drm_atomic_bridge_chain_select_bus_fmts(struct drm_bridge *bridge,
> >  	struct drm_encoder *encoder = bridge->encoder;
> >  	struct drm_bridge_state *last_bridge_state;
> >  	unsigned int i, num_out_bus_fmts = 0;
> > +	enum drm_connector_color_format fmt;
> >  	u32 *out_bus_fmts;
> >  	int ret = 0;
> >  
> > @@ -1234,13 +1276,58 @@ drm_atomic_bridge_chain_select_bus_fmts(struct drm_bridge *bridge,
> >  			out_bus_fmts[0] = MEDIA_BUS_FMT_FIXED;
> >  	}
> >  
> > +	/*
> > +	 * On HDMI connectors, use the output format chosen by whatever does the
> > +	 * HDMI logic. For everyone else, just trust that the bridge out_bus_fmts
> > +	 * are sorted by preference for %DRM_CONNECTOR_COLOR_FORMAT_AUTO, as
> > +	 * bus_format_is_color_fmt() always returns true for AUTO.
> > +	 */
> > +	if (last_bridge->type == DRM_MODE_CONNECTOR_HDMIA) {
> 
> I still think this is misplaced (and misidentified). Consider HDMI
> bridge being routed to the DVI-D connector. The last bridge would have
> different type, but the HDMI-specific logic must still be applied. The
> bridge must use RGB444, but it must be handled in a generic way.

Thanks for the review. I was hoping that an HDMI bridge chain going to
a DVI connector would be a DRM_MODE_CONNECTOR_HDMIB thing, but apparently
not. I also don't know however how doing this in the drm bridge connector
helps us here. I guess we'd call into a drm_bridge_connector specific
function with the connector format and connector, and get an output
format in return, and said function checks that if any bridge in the
bridge connector is HDMI it uses the HDMI logic? That would conflict
with the following case from what I understand:

> Or other way around, a DVI bridge being routed through the HDMI
> connector (thinking about PandaBoard here). The combo should not go
> through the HDMI-specific color format selection although the last
> bridge in the chanin is the HDMI-A bridge.

In that case, wouldn't the recursive bridge bus format selection
take care of this? I assume the DVI bridge will only allow RGB444,
and one of the bridges that follow it is an HDMI bridge for the
HDMI connector that's physically on the board.

In such a case, if the HDMI state helpers came up with something
other than RGB444, the select_bus_fmt_recursive below would fail
as expected, since it won't be able to find an output that
satisfies the constraints given by the DVI bridge.

> I think all these cases should be handled by the connector, which knows
> if there is an OP_HDMI bridge in the chain or not.

Kind regards,
Nicolas Frattaroli

> > +		drm_dbg_kms(last_bridge->dev,
> > +			    "HDMI bridge requests format %s\n",
> > +			    drm_hdmi_connector_get_output_format_name(
> > +				    conn_state->hdmi.output_format));
> > +		switch (conn_state->hdmi.output_format) {
> > +		case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > +			fmt = DRM_CONNECTOR_COLOR_FORMAT_RGB444;
> > +			break;
> > +		case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > +			fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
> > +			break;
> > +		case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > +			fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
> > +			break;
> > +		case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > +			fmt = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
> > +			break;
> > +		default:
> > +			ret = -EINVAL;
> > +			goto out_free_bus_fmts;
> > +		}
> > +	} else {
> > +		fmt = conn_state->color_format;
> > +		drm_dbg_kms(last_bridge->dev, "Non-HDMI bridge requests format %d\n", fmt);
> > +	}
> > +
> >  	for (i = 0; i < num_out_bus_fmts; i++) {
> > +		if (!bus_format_is_color_fmt(out_bus_fmts[i], fmt)) {
> > +			drm_dbg_kms(last_bridge->dev,
> > +				    "Skipping bus format 0x%04x as it doesn't match format %d\n",
> > +				    out_bus_fmts[i], fmt);
> > +			ret = -ENOTSUPP;
> > +			continue;
> > +		}
> >  		ret = select_bus_fmt_recursive(bridge, last_bridge, crtc_state,
> >  					       conn_state, out_bus_fmts[i]);
> > -		if (ret != -ENOTSUPP)
> > +		if (ret != -ENOTSUPP) {
> > +			drm_dbg_kms(last_bridge->dev,
> > +				    "Found bridge chain ending with bus format 0x%04x\n",
> > +				    out_bus_fmts[i]);
> >  			break;
> > +		}
> >  	}
> >  
> > +out_free_bus_fmts:
> >  	kfree(out_bus_fmts);
> >  
> >  	return ret;
> > 
> 
> 




