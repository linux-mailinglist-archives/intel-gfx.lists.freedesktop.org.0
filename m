Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF9C342126
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 16:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259B86E0E4;
	Fri, 19 Mar 2021 15:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 190436E0E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 15:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616168737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5LK0n/jg/OwPro8VFqa34gdHN9jLmsy9oeDxC6+deOw=;
 b=JYKADGKoMLh9z2I09LewQdmFDg0wEw+aFhzqhB3WzOVCTsUAc7Skn356x+V0e8G0TcxPtw
 uYlsNGGWG8km3pDfxitC7Y5yd6gSrR1E5+yyG2gUMIGRU2nVeUmizpmZbJzHfhHeB6f9jJ
 V+cnQHnbSbR919463/2Z4xMst1ASOto=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-L7hVXDkBPJaZCzCsx4ohSA-1; Fri, 19 Mar 2021 11:45:34 -0400
X-MC-Unique: L7hVXDkBPJaZCzCsx4ohSA-1
Received: by mail-ed1-f69.google.com with SMTP id h5so23074003edf.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 08:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5LK0n/jg/OwPro8VFqa34gdHN9jLmsy9oeDxC6+deOw=;
 b=sW4wT8cUZSbUqkcbLtmLmVUMNRNotH42J0qYhLizqSxUv+UdHDVHNO1KGVG5gJrW+a
 1o1J7MDpUS3GLCNIhD17Uwoom1J/DNzuASD1hZ7s0ZnLMTa4yFUUS0gWB+INFVrzIe+z
 gyXFhl/IjewOiL6JBFccUj93UnfblpExCgnoLSmDg1b6E8/mTxsxh4OwinsgoN3PDu6T
 +Y27ypy2ralPe9URdzNNs5Tvt4FV6xaN+vOiRLs6zJqsQhYWnitPK+5ibl6BKexZB07e
 FLJgyIHNmfoBcE4QyLNTLzfWqZ48xklUG12oizDoDs2syEX7SSSgGkaiVwZS4EWbZsfV
 mB5g==
X-Gm-Message-State: AOAM530kg2UBYy62EK1s2fZcFVQaxnScQH9Fcwl2coKrq1SR01zMXTBP
 uU08OALg2B65JCzv0tBmS9BljMqMJf3vkyAru78jBLGdGEho/Bg4Ng7D5qJySqFYjc+hNTl6Nzp
 5JIxr+u0DYhW0q0G6CjXlypRuXqjF
X-Received: by 2002:a17:906:dbd0:: with SMTP id
 yc16mr5121240ejb.71.1616168733476; 
 Fri, 19 Mar 2021 08:45:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6FBmTDA5Jn6DpRh+OCexUQqHVf1umdhwQmaJLzB1rlUzanz9bkJXJLuLjFXTjfMz6EBB6uQ==
X-Received: by 2002:a17:906:dbd0:: with SMTP id
 yc16mr5121222ejb.71.1616168733341; 
 Fri, 19 Mar 2021 08:45:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id r19sm3793916ejr.55.2021.03.19.08.45.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Mar 2021 08:45:32 -0700 (PDT)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210301154347.50052-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8d882647-bab3-dfc3-70ad-4f1910dcb5af@redhat.com>
Date: Fri, 19 Mar 2021 16:45:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210301154347.50052-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vlv_dsi: Do no shut down
 displays on reboot if a DSI panel is used
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 3/1/21 4:43 PM, Hans de Goede wrote:
> After the recently added commit fe0f1e3bfdfe ("drm/i915: Shut down
> displays gracefully on reboot"), the DSI panel on a Cherry Trail based
> Predia Basic tablet would no longer properly light up after reboot.
> 
> The backlight still turns back on after reboot, but the LCD shows an
> all black display. The display is also all black during the time that
> EFI / the GOP is managing it, so e.g. the grub menu also is not visible.
> 
> In this scenario the panel is initialized so that it appears to be working
> and the fastboot code skips doing a modeset. Forcing a modeset by doing a
> chvt to a text-console over ssh followed by echo-ing 1 and then 0 to
> /sys/class/graphics/fb0/blank causes the panel to work again.
> 
> Add a QUIRK_SKIP_SHUTDOWN quirk which turns i915_driver_shutdown() into
> a no-op when set; and set this on vlv/chv devices when a DSI panel is
> detected, to work around this.
> 
> Admittedly this is a bit of a big hammer, but these platforms have been
> around for quite some time now and they have always worked fine without
> the new behavior to shutdown everything on shutdown/reboot. This approach
> simply disables the recently introduced new shutdown behavior in this
> specific case where it is known to cause problems. Which is a nice and
> simple way to deal with this.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Ping? Since sending this patch I've been seeing the issue addressed by
this on variour other CHT based devices too.

So we have various devices suffering from a black screen after reboot
now. This is pretty serious usability regression.

As such it would be good to get this reviewed, or another fix proposed.

Regards,

Hans



> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 3 +++
>  drivers/gpu/drm/i915/i915_drv.c        | 3 +++
>  drivers/gpu/drm/i915/i915_drv.h        | 1 +
>  3 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index f94025ec603a..792ef868b6af 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1949,6 +1949,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  
>  	vlv_dsi_add_properties(intel_connector);
>  
> +	/* Some BIOS-es fail to re-init the DSI panel on reboot if we turn it off */
> +	dev_priv->quirks |= QUIRK_SKIP_SHUTDOWN;
> +
>  	return;
>  
>  err_cleanup_connector:
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 8e9cb44e66e5..92f2af55af6d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1048,6 +1048,9 @@ static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
>  
>  void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
> +	if (i915->quirks & QUIRK_SKIP_SHUTDOWN)
> +		return;
> +
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	i915_gem_suspend(i915);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 26d69d06aa6d..272cd7cb22d4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -517,6 +517,7 @@ struct i915_psr {
>  #define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
>  #define QUIRK_INCREASE_T12_DELAY (1<<6)
>  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
> +#define QUIRK_SKIP_SHUTDOWN (1<<8)
>  
>  struct intel_fbdev;
>  struct intel_fbc_work;
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
