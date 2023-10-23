Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3187D3054
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E7810E0C1;
	Mon, 23 Oct 2023 10:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942D010E0C1;
 Mon, 23 Oct 2023 10:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698058094; x=1729594094;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j6gkewFE2ehbSRRm8yxR5V6tYph8e2bExlA+57BfIvw=;
 b=lmoNGG2lTcMyOByyGvYHxbKmxR9sbdx4d3rO/y7N9DkC4nXaT51gyiq9
 CWmBA/JO/HOL1qklXMIcf4UwdYmPuNghfaUWYifWGahdKj2zeV6EuTO5J
 8X2eQoiXd+MIi38ScT8zVvyKsoUMHXoVn8pQZE+gTZJniXe8o1POHw8n4
 OFrxReqV/MSYOiKdT2DWCcekLmXp5nvW5x5px2HWXH8cBZd9fj5kJUes6
 oBjOFSuHqMmvht2AFOVGLPQQGqavF9X6nvaB8OjO+0lJzgJpN+WxxPx/2
 YY/MQcA+v0Al2Tj00JWr3C3Ks6PSoAzj3+QfF2mTauTJZCJnoxjiiwMFJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="371880228"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="371880228"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="823925172"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="823925172"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:47:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sean Young <sean@mess.org>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Uwe =?utf-8?Q?Kleine-K=C3=B6ni?=
 =?utf-8?Q?g?=
 <u.kleine-koenig@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Javier
 Martinez Canillas <javierm@redhat.com>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Support Opensource
 <support.opensource@diasemi.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@ucw.cz>, Lee Jones
 <lee@kernel.org>, Sean Young <sean@mess.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans de Goede <hdegoede@redhat.com>, Ilpo
 =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Mark Gross <markgross@kernel.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Daniel
 Thompson <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 Helge Deller <deller@gmx.de>
In-Reply-To: <a7fcd19938d5422abc59c968ff7b3d5c275577ed.1697534024.git.sean@mess.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1697534024.git.sean@mess.org>
 <a7fcd19938d5422abc59c968ff7b3d5c275577ed.1697534024.git.sean@mess.org>
Date: Mon, 23 Oct 2023 13:47:44 +0300
Message-ID: <87y1ftboof.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/3] pwm: make it possible to apply pwm
 changes in atomic context
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
Cc: linux-hwmon@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Oct 2023, Sean Young <sean@mess.org> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 2e8f17c045222..cf516190cde8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -274,7 +274,7 @@ static void ext_pwm_set_backlight(const struct drm_connector_state *conn_state,
>  	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
>  
>  	pwm_set_relative_duty_cycle(&panel->backlight.pwm_state, level, 100);
> -	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
> +	pwm_apply_cansleep(panel->backlight.pwm, &panel->backlight.pwm_state);
>  }
>  
>  static void
> @@ -427,7 +427,7 @@ static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn
>  	intel_backlight_set_pwm_level(old_conn_state, level);
>  
>  	panel->backlight.pwm_state.enabled = false;
> -	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
> +	pwm_apply_cansleep(panel->backlight.pwm, &panel->backlight.pwm_state);
>  }
>  
>  void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
> @@ -749,7 +749,7 @@ static void ext_pwm_enable_backlight(const struct intel_crtc_state *crtc_state,
>  
>  	pwm_set_relative_duty_cycle(&panel->backlight.pwm_state, level, 100);
>  	panel->backlight.pwm_state.enabled = true;
> -	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
> +	pwm_apply_cansleep(panel->backlight.pwm, &panel->backlight.pwm_state);
>  }
>  
>  static void __intel_backlight_enable(const struct intel_crtc_state *crtc_state,

The i915 parts are

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via whichever tree you find most convenient, and with
whatever naming you end up with.

-- 
Jani Nikula, Intel
