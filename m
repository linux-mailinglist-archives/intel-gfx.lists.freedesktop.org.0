Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8827C50E11B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 15:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC1E10E501;
	Mon, 25 Apr 2022 13:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4747110EABC
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Apr 2022 04:10:17 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id e4so11227801oif.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 21:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YNhoTijYDK5hg3tJxjQgdgbL/kgrcPDOQkgZNKFoLe0=;
 b=hdtSyu9V8DkuUoFOA2YMj1NAwALLRl8/nme92ADOd6vw4uiyPQw2nLnwlWE4hZOTYh
 hMVnDHLTvfUc3WViSmGZpg2u+pUEdcvsCyRqN73T6IzHEHGfA1vTEDiRHBJPN+6XlSrv
 msMrpfZZZUF+GyEAV6/iGHUUspOxCkoTxxTgLKGlzea3b8Ke23TheCXbCJsLEcyEmSAx
 ScCt27p+r7SoHmhvmiiLbK5GcRXCci038RWnzP44TuuwC/pgLF4fgvBbUOcFzAdBcVtl
 NfA6FDVc5YQAbEHs68IP4imFUJETFAHSxXGTUp5cLGJo2EgIWtcozlUiXlg7hCcXLvqZ
 T+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YNhoTijYDK5hg3tJxjQgdgbL/kgrcPDOQkgZNKFoLe0=;
 b=DsYpfFAZ5tZqfXjta4EjB+RIuaff1y0CSnVaV4lf6f+//ds8HU7SMzeGuTG3oZjPGv
 aU8Y6iWL9HqekXFQGH8v1Im45S8jW3G1yhzjupiYI0jzjUH9o9ZouTqwWkyYyOhI4H2l
 pYCca8QeYEg/CsWT2hJZVKCKH6S/ShL8MjCERhXRY+CHHkQgP6947KaCyemmEjqAY6Ah
 jzB6oYiQADbtMOqN96G0HZcwzc68lnm6ImzK1mYa567hfvDmFSGMudaMYdgUXjT1doii
 KUcjm4tCHZfQsCzsB2cj0USx7mQwDcB7SjjXISkLIQ5RpucAdkv1a5+rWqvnqwZYzzWX
 kixQ==
X-Gm-Message-State: AOAM531l0h77E2+1BMpmYcN2NZn27Z+r/CO2FoG1sxYcJq2CZgHhCx0N
 ODSoptxTKZXqEWDSDFybwgzFEg==
X-Google-Smtp-Source: ABdhPJzEuQC08m6xCkVKR6XsHeSL5p0/ZkR7uRyRVVh9KvlNaDYNcO6f0NhDLqPj0GWi2P4EkbGFgQ==
X-Received: by 2002:a05:6808:1a04:b0:322:7b89:1973 with SMTP id
 bk4-20020a0568081a0400b003227b891973mr8311352oib.227.1650687016176; 
 Fri, 22 Apr 2022 21:10:16 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 l10-20020aca3e0a000000b0032258369a5fsm1410185oia.44.2022.04.22.21.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 21:10:15 -0700 (PDT)
Date: Fri, 22 Apr 2022 21:12:16 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <YmN8oMl7EulvBbEG@ripper>
References: <20220422223225.1297434-1-bjorn.andersson@linaro.org>
 <20220422223225.1297434-2-bjorn.andersson@linaro.org>
 <11a77fd7-d30b-edf6-3570-64d0c2e1764c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11a77fd7-d30b-edf6-3570-64d0c2e1764c@linaro.org>
X-Mailman-Approved-At: Mon, 25 Apr 2022 13:03:41 +0000
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/msm/dp: Implement
 oob_hotplug_event()
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
Cc: linux-arm-msm@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, freedreno@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri 22 Apr 16:07 PDT 2022, Dmitry Baryshkov wrote:
> On 23/04/2022 01:32, Bjorn Andersson wrote:
[..]
> > diff --git a/drivers/gpu/drm/msm/dp/dp_drm.c b/drivers/gpu/drm/msm/dp/dp_drm.c
> > index 80f59cf99089..76904b1601b1 100644
> > --- a/drivers/gpu/drm/msm/dp/dp_drm.c
> > +++ b/drivers/gpu/drm/msm/dp/dp_drm.c
> > @@ -123,6 +123,14 @@ static enum drm_mode_status dp_connector_mode_valid(
> >   	return dp_display_validate_mode(dp_disp, mode->clock);
> >   }
> > +static void dp_oob_hotplug_event(struct drm_connector *connector,
> > +				 enum drm_connector_hpd_state hpd_state)
> > +{
> > +	struct msm_dp *dp_disp = to_dp_connector(connector)->dp_display;
> > +
> > +	dp_display_oob_hotplug_event(dp_disp, hpd_state);
> > +}
> > +
> >   static const struct drm_connector_funcs dp_connector_funcs = {
> >   	.detect = dp_connector_detect,
> >   	.fill_modes = drm_helper_probe_single_connector_modes,
> > @@ -130,6 +138,7 @@ static const struct drm_connector_funcs dp_connector_funcs = {
> >   	.reset = drm_atomic_helper_connector_reset,
> >   	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> >   	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> > +	.oob_hotplug_event = dp_oob_hotplug_event,
> 
> We were (are) going to switch dp driver to use drm_bridge_connector (to fix
> support for bridge chains, eDP panels, etc.
> 
> So these changes must be ported to drm_bridge_connector (or we must
> abandon/defer the idea of using the bridge_connector).
> 
> For the oob_hotplug_event() callback proper support might be as simple as
> calling drm_bridge_connector_hpd_cb().
> 

Are you saying that you have code ready and being merged into linux-next
that I should redesign this on top of, or that you're planning to write
some code in the future and DisplayPort support have to wait until then?

> >   };
> >   static const struct drm_connector_helper_funcs dp_connector_helper_funcs = {
> > @@ -160,6 +169,8 @@ struct drm_connector *dp_drm_connector_init(struct msm_dp *dp_display)
> >   	if (ret)
> >   		return ERR_PTR(ret);
> > +	connector->fwnode = fwnode_handle_get(dev_fwnode(dp_display->dev));
> > +
> 
> This would be much more interesting. Supporting this in a generic way might
> be tricky. But we can still set the fwnode manually from the dp code.
> 

There's a slight mishmash here, because the device used to initialize
the connector is the drm_dev, but we need the actual fwnode of the DP
device associated with the connector.

So I think this is how it needs to be done.

Regards,
Bjorn
