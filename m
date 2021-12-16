Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A89DA47757D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 16:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A231D10ED68;
	Thu, 16 Dec 2021 15:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A18910ED68
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 15:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639667693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0IGzeLjajUCnRDE7wINUWUZGpWtmAg9rxOl9NA2Ty7k=;
 b=DDMvoYp2nFyE7bLNck+4ouK/T1/jGkczqYpAxFiGS0bkPWn0UwF51WLTCLPaGbBFpWu02V
 1rg9Rsfbodj1zKeDLGJHH7+i2YyZSL4mCxh/EKULUSexLLC2RqHt537FvUGsQPhnwS7TXE
 JqRBfiA8vID0u+f6YrU7iKiz3+DlQCQ=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-425-qlbzNbs_NsuoUhmH4i_P2A-1; Thu, 16 Dec 2021 10:14:48 -0500
X-MC-Unique: qlbzNbs_NsuoUhmH4i_P2A-1
Received: by mail-ed1-f71.google.com with SMTP id
 v19-20020a056402349300b003f7eba50675so4805579edc.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 07:14:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0IGzeLjajUCnRDE7wINUWUZGpWtmAg9rxOl9NA2Ty7k=;
 b=IegdbvBMwKVydFOgcquGhg9jvL3Ca1AUFpoI6c+9i4XDLLJEfHwUbyGthNW7m6hBRw
 4gLPfPI3PPxJE41XA+MUUwAcd9eLhuWIPXinGVOrWzTIUIOHaEr7GToaulR/DLMaK6i4
 nj5qxWDMiYI5P7BZDu/McVX/4Nu+acKMgMbJIjOGkcgsFHsEmbfPVSp9jIHCseNlEEwE
 TyJPivlz0dG12IVH7SuzIN2rMEPdIkcrnrXUUC16oGq7x3rNuhsT9N4gIMpAerw1NeCI
 90/twnMQY7HphYFAJ9v3+pihiUs5NL2l8aP/FC7wDoUnVddA38+RWGkbNh00tiRaqvr0
 FyzA==
X-Gm-Message-State: AOAM533z3jbacIZ7WZnCiHrdr3DPWzvfBW/Ni6P7JFGoKSci68dISSLA
 ceOYqleGT5Kq4s/psb6zRF/m9ygrEXb7bA/tp/hKgkkW1JrDuUX0saT8GGkNYsNGKByl/3yOwi+
 wxjdqOF4ihTDvsgPcM/f9ZhjqHgkO
X-Received: by 2002:a17:907:9713:: with SMTP id
 jg19mr1631594ejc.50.1639667686672; 
 Thu, 16 Dec 2021 07:14:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwIl7HuWWGIjHNlHGHaIdFzzndKDqvuhzPeYprWY+GLu7Rk3se8ETxdr8CxnFg9YWwsapquTQ==
X-Received: by 2002:a17:907:9713:: with SMTP id
 jg19mr1631570ejc.50.1639667686403; 
 Thu, 16 Dec 2021 07:14:46 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id w22sm2662051edc.62.2021.12.16.07.14.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 07:14:46 -0800 (PST)
Message-ID: <55e7e783-62d6-19c5-207a-88318a4452fb@redhat.com>
Date: Thu, 16 Dec 2021 16:14:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20211121110032.4720-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211121110032.4720-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/backlight: Drop duplicate
 intel_panel_actually_set_backlight()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11/21/21 12:00, Hans de Goede wrote:
> After the recent refactoring of the backlight code the contents of
> intel_panel_actually_set_backlight() is exactly the same (minus a
> small wording difference in the drm_dbg_kms() as the contents if the
> more widely used intel_backlight_set_pwm_level() function.
> 
> Drop the duplicate intel_panel_actually_set_backlight() function.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

I just realized that I did not push this series to drm-intel-next yet.

Before pushing I double checked my work and I noticed that this patch
is wrong there is a subtle but important difference between
intel_panel_actually_set_backlight() and intel_backlight_set_pwm_level()

intel_panel_actually_set_backlight() calls:

	panel->backlight.funcs->set(conn_state, level);

where as intel_backlight_set_pwm_level() calls:

	panel->backlight.pwm_funcs->set(conn_state, level);

I missed the pwm_funcs vs funcs difference, the funcs->set
function is normally just a wrapper for pwm_funcs->set, but
the dp_aux and dsi_dsc code my overwrite the functions to
which backlight.funcs point to so the difference matters.

Tl;DR: self nack for this one.

Patch 2/2 is still valid and I will push that out shortly.

Regards,

Hans





> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 9523411cddd8..03cd730c926a 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -268,18 +268,6 @@ static void ext_pwm_set_backlight(const struct drm_connector_state *conn_state,
>  	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
>  }
>  
> -static void
> -intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
> -{
> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct intel_panel *panel = &connector->panel;
> -
> -	drm_dbg_kms(&i915->drm, "set backlight level = %d\n", level);
> -
> -	panel->backlight.funcs->set(conn_state, level);
> -}
> -
>  /* set backlight brightness to level in range [0..max], assuming hw min is
>   * respected.
>   */
> @@ -314,7 +302,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
>  					 panel->backlight.device->props.max_brightness);
>  
>  	if (panel->backlight.enabled)
> -		intel_panel_actually_set_backlight(conn_state, hw_level);
> +		intel_backlight_set_pwm_level(conn_state, hw_level);
>  
>  	mutex_unlock(&dev_priv->backlight_lock);
>  }
> @@ -863,7 +851,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
>  	panel->backlight.level = hw_level;
>  
>  	if (panel->backlight.enabled)
> -		intel_panel_actually_set_backlight(conn_state, hw_level);
> +		intel_backlight_set_pwm_level(conn_state, hw_level);
>  
>  	mutex_unlock(&dev_priv->backlight_lock);
>  }
> 

