Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA1161DCAC
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 18:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F8C10E075;
	Sat,  5 Nov 2022 17:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF7110E075;
 Sat,  5 Nov 2022 17:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds202112;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RWDifwBbG878DIYtQ6aTZneSyeLBzoR7LRcwuOd+5Ww=; b=FWsFtfq9WvhTbfg5xv6opUGWJP
 TpdfVFbgQbUnOuhkMxKu02lanIGkkuJHwejkyfTvZ9vXmef6GD29nMl00Z5kjteh6g5YHxYR0wJXV
 RhBcOWn0fsq+qfZB5+SM5gxMXlFWBiAbeHEa9khBdsibTyvX7JDI1lDMJcFIsnQpAYE/IRs2CDWhF
 Wpuh0IpixW85CIELAnJMKjZ4oe6j72x533EAtzjkeuYRKT74/CKmcO6dU2VI7EBdPFlFgjs+S6nqA
 ibTXHuv1WPrsHerD7XSZyKfCT/K3Y0rjY7WhCGdsdbJLjTxvSOkzuH9FPE9BNVEhz7NF06MYP3f9F
 jmmHuJ3Q==;
Received: from [2a01:799:95a:cb00:a93e:4a2b:2c13:303] (port=57583)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1orNJW-0004KI-U5; Sat, 05 Nov 2022 18:50:38 +0100
Message-ID: <0a748a39-a387-5bdb-ffc8-6cc6593b56e7@tronnes.org>
Date: Sat, 5 Nov 2022 18:50:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: maxime@cerno.tech, Karol Herbst <kherbst@redhat.com>,
 Emma Anholt <emma@anholt.net>, Ben Skeggs <bskeggs@redhat.com>,
 Chen-Yu Tsai <wens@csie.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Samuel Holland <samuel@sholland.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>,
 Maxime Ripard <mripard@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lyude Paul <lyude@redhat.com>
References: <20220728-rpi-analog-tv-properties-v6-0-e7792734108f@cerno.tech>
 <20220728-rpi-analog-tv-properties-v6-14-e7792734108f@cerno.tech>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220728-rpi-analog-tv-properties-v6-14-e7792734108f@cerno.tech>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 14/23] drm/modes: Properly generate a
 drm_display_mode from a named mode
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
Cc: Dom Cobley <dom@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Phil Elwell <phil@raspberrypi.com>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Den 26.10.2022 17.33, skrev maxime@cerno.tech:
> The framework will get the drm_display_mode from the drm_cmdline_mode it
> got by parsing the video command line argument by calling
> drm_connector_pick_cmdline_mode().
> 
> The heavy lifting will then be done by the drm_mode_create_from_cmdline_mode()
> function.
> 
> In the case of the named modes though, there's no real code to make that
> translation and we rely on the drivers to guess which actual display mode
> we meant.
> 
> Let's modify drm_mode_create_from_cmdline_mode() to properly generate the
> drm_display_mode we mean when passing a named mode.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> Changes in v6:
> - Fix get_modes to return 0 instead of an error code
> - Rename the tests to follow the DRM test naming convention
> 
> Changes in v5:
> - Switched to KUNIT_ASSERT_NOT_NULL
> ---
>  drivers/gpu/drm/drm_modes.c                     | 34 ++++++++++-
>  drivers/gpu/drm/tests/drm_client_modeset_test.c | 77 ++++++++++++++++++++++++-
>  2 files changed, 109 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index dc037f7ceb37..85aa9898c229 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -2497,6 +2497,36 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
>  }
>  EXPORT_SYMBOL(drm_mode_parse_command_line_for_connector);
>  
> +static struct drm_display_mode *drm_named_mode(struct drm_device *dev,
> +					       struct drm_cmdline_mode *cmd)
> +{
> +	struct drm_display_mode *mode;
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(drm_named_modes); i++) {
> +		const struct drm_named_mode *named_mode = &drm_named_modes[i];
> +
> +		if (strcmp(cmd->name, named_mode->name))
> +			continue;
> +
> +		if (!named_mode->tv_mode)
> +			continue;
> +
> +		mode = drm_analog_tv_mode(dev,
> +					  named_mode->tv_mode,
> +					  named_mode->pixel_clock_khz * 1000,
> +					  named_mode->xres,
> +					  named_mode->yres,
> +					  named_mode->flags & DRM_MODE_FLAG_INTERLACE);
> +		if (!mode)
> +			return NULL;
> +
> +		return mode;
> +	}
> +
> +	return NULL;
> +}
> +
>  /**
>   * drm_mode_create_from_cmdline_mode - convert a command line modeline into a DRM display mode
>   * @dev: DRM device to create the new mode for
> @@ -2514,7 +2544,9 @@ drm_mode_create_from_cmdline_mode(struct drm_device *dev,
>  	if (cmd->xres == 0 || cmd->yres == 0)
>  		return NULL;
>  
> -	if (cmd->cvt)
> +	if (strlen(cmd->name))
> +		mode = drm_named_mode(dev, cmd);

I'm trying to track how this generated mode fits into to it all and
AFAICS if the connector already supports a mode with the same xres/yres
as the named mode, the named mode will never be created because of the
check at the beginning of drm_helper_probe_add_cmdline_mode(). It will
just mark the existing mode with USERDEF and return.

If the connector doesn't already support a mode with such a resolution
it will be created, but should we do that? If the driver supported such
a mode it would certainly already have added it to the mode list,
wouldn't it? After all it's just 2 variants NTSC and PAL.

We have this in drm_client_modeset.c:drm_connector_pick_cmdline_mode():

	list_for_each_entry(mode, &connector->modes, head) {
		/* Check (optional) mode name first */
		if (!strcmp(mode->name, cmdline_mode->name))
			return mode;

Here it looks like the named mode thing is a way to choose a mode, not
to add one.

I couldn't find any documentation on how named modes is supposed to
work, have you seen any?

Noralf.

> +	else if (cmd->cvt)
>  		mode = drm_cvt_mode(dev,
>  				    cmd->xres, cmd->yres,
>  				    cmd->refresh_specified ? cmd->refresh : 60,
