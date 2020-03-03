Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 492F617742C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 11:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F113D6E9CD;
	Tue,  3 Mar 2020 10:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF256E985
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 10:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583231364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D7LonTbHRfu/iEussk108tQbvN47ixgC6EqOHMQZOyM=;
 b=KbPd7W8NKpOp4y+RUKUF9Zh7C6eWiKa1LEwV9x/k197JhDAPC4lAJrlSVfGlWsRJSJghKC
 waffg7FBeA2WdBYjOQqx5+MMeSjAGUQMO2n8sG2hlhnDh8UQMES5Reaqyo/VgA4blC9hmo
 almXahiz5v+30cFLdHpKkdEoYIQQ8Ow=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-112-rqeqESb5Nbq-L3AoWKvh7g-1; Tue, 03 Mar 2020 05:29:21 -0500
X-MC-Unique: rqeqESb5Nbq-L3AoWKvh7g-1
Received: by mail-wr1-f69.google.com with SMTP id d7so1032828wrr.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 02:29:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D7LonTbHRfu/iEussk108tQbvN47ixgC6EqOHMQZOyM=;
 b=Fbb3hmfLQ9q+lr0zdLFCVQ9e4J5NTiiVbO6bEeJWha9NoCMrWyDJGnHUi/PeFeCsAf
 EAI1A2ev/BxtT6j1k5PlP0rSUlalrJqydYwOQhpydPo030ZMz0LiXD1awzkgwOG2HQaq
 BT6FItRsN04+JsHnW6VGowR83O4OcBEWTSzcalTlG+qNbOswXSnXATwlGZWL0t2IUDQV
 3ZlhhmreOV1gEgE6QasCI/t+AwR0CkvTfzY9oGyB5FWWlvlCwbAC1L1Ax7DWiSMJk8V8
 aeLPTt2cYL/kTYHSB+f1lVJ31+srjZXPkKsQtU1nEgSfYJb+23p6TaG2ydTknBrslmZB
 DwiA==
X-Gm-Message-State: ANhLgQ0hUf8/P/iawP8j/8M5uu5CXwUfiXgZTottAt+5iV8YyPocmvkU
 ipBkbw+wGY//bZiim3MQN1o6H8vEms0BAEmhoeUbHNuT886BdzMnman3BSZ5iXPtv/p35WnZNLG
 mp/ef95odkIIXMXIxDm1jpSAMip4y
X-Received: by 2002:a5d:4fce:: with SMTP id h14mr4864624wrw.177.1583231360004; 
 Tue, 03 Mar 2020 02:29:20 -0800 (PST)
X-Google-Smtp-Source: ADFU+vu280QWlbg52i23RBsHDqyzIhk+UcfLhici1HhxNugz5brs1zrAU1ZpjHgHlbygNmoTxscxZg==
X-Received: by 2002:a5d:4fce:: with SMTP id h14mr4864605wrw.177.1583231359799; 
 Tue, 03 Mar 2020 02:29:19 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-fc7e-fd47-85c1-1ab3.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:fc7e:fd47:85c1:1ab3])
 by smtp.gmail.com with ESMTPSA id d63sm3036976wmd.44.2020.03.03.02.29.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 02:29:19 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200221172927.510027-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <895e4a40-2c3f-b964-102d-13eff5b3c268@redhat.com>
Date: Tue, 3 Mar 2020 11:29:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221172927.510027-1-hdegoede@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH resend 1/2] drm/i915: panel: Use
 intel_panel_compute_brightness() from pwm_setup_backlight()
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

On 2/21/20 6:29 PM, Hans de Goede wrote:
> Use intel_panel_compute_brightness() from pwm_setup_backlight() so that
> we correctly take i915_modparams.invert_brightness and/or
> QUIRK_INVERT_BRIGHTNESS into account when setting + getting the initial
> brightness value.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

ping? Any chance I can get a review from someone on this series?

Both patches are pretty trivial really...

Regards,

Hans



> ---
>   drivers/gpu/drm/i915/display/intel_panel.c | 18 +++++++++++-------
>   1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 7b3ec6eb3382..9ebee7d93414 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -1843,6 +1843,7 @@ static int pwm_setup_backlight(struct intel_connector *connector,
>   	struct drm_i915_private *dev_priv = to_i915(dev);
>   	struct intel_panel *panel = &connector->panel;
>   	const char *desc;
> +	u32 level, ns;
>   	int retval;
>   
>   	/* Get the right PWM chip for DSI backlight according to VBT */
> @@ -1866,8 +1867,12 @@ static int pwm_setup_backlight(struct intel_connector *connector,
>   	 */
>   	pwm_apply_args(panel->backlight.pwm);
>   
> -	retval = pwm_config(panel->backlight.pwm, CRC_PMIC_PWM_PERIOD_NS,
> -			    CRC_PMIC_PWM_PERIOD_NS);
> +	panel->backlight.min = 0; /* 0% */
> +	panel->backlight.max = 100; /* 100% */
> +	level = intel_panel_compute_brightness(connector, 100);
> +	ns = DIV_ROUND_UP(level * CRC_PMIC_PWM_PERIOD_NS, 100);
> +
> +	retval = pwm_config(panel->backlight.pwm, ns, CRC_PMIC_PWM_PERIOD_NS);
>   	if (retval < 0) {
>   		DRM_ERROR("Failed to configure the pwm chip\n");
>   		pwm_put(panel->backlight.pwm);
> @@ -1875,11 +1880,10 @@ static int pwm_setup_backlight(struct intel_connector *connector,
>   		return retval;
>   	}
>   
> -	panel->backlight.min = 0; /* 0% */
> -	panel->backlight.max = 100; /* 100% */
> -	panel->backlight.level = DIV_ROUND_UP(
> -				 pwm_get_duty_cycle(panel->backlight.pwm) * 100,
> -				 CRC_PMIC_PWM_PERIOD_NS);
> +	level = DIV_ROUND_UP(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
> +			     CRC_PMIC_PWM_PERIOD_NS);
> +	panel->backlight.level =
> +		intel_panel_compute_brightness(connector, level);
>   	panel->backlight.enabled = panel->backlight.level != 0;
>   
>   	DRM_INFO("Using %s PWM for LCD backlight control\n", desc);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
