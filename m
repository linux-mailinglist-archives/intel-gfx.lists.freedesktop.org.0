Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB511A0D0E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397DE6E842;
	Tue,  7 Apr 2020 11:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D596E84D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:49:56 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id r26so1511951wmh.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 04:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=C22Inixa2GP4o4A4bOqnhTQTvNYq2UUrFPkMWCd0JO8=;
 b=qnEoJA9V9tOhOXnlLl6moGGjGDnLXXisqlFKI2YWpBQW08GEDzbBWgH4bh2A+bz17l
 eQ6ptVvTtNLPic2edxVDgWTLuxeTZ251xFsMo2HO3ak3DO1dx6It71xoY1X8qwYiHDUw
 XYV90iM01TEtCrX+VckZoXiPgDlKZ6agCBuLozkE7TF6AO1Ktv2DJW4sYeGCwZynmXnc
 u2UGSpfUiwTMSbeqJm4Xc61Dr5LHaRZE99R+ZvlKwCs/0Yjd4whcODk1YtIt6Kk5Kf7K
 MLDaOZkZAQbEWeYcbiN8jMAyh6hBpx4Uguo6ybtcD3khlzxR5Ge5zUYEsrG0Gcd+NBWa
 UiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=C22Inixa2GP4o4A4bOqnhTQTvNYq2UUrFPkMWCd0JO8=;
 b=JP+AowoqFlWKB8Xt+HEklhc3YW7eZ6tWFx0i9EE+S/7vASy6iOkmg7hPOZ1+9qRj7v
 d/XXpt/nidfgKMjuDqZP68s6kWa9vepN0xFKK7VbWdM2ktUoHmoY46S7wL445VMUqfvV
 b9m3dOAb9VqJbEy2JX+KI2lMesNaENIQJBIbPcsbogQNHaPS7Xe1+j6RLhEslY/K58eJ
 fyGBYyNiJFREMH/GXwv1fzln25DiEK5IYFxuWXoIIRk9wvShnocFphkYkHkWIQZkzXMK
 pbSm8X0mR1HAY4btGbrmR0LZKO8OZiAeFLG4UC3niOuh3cFjdSawrPtprCS42u9aTmqe
 FofA==
X-Gm-Message-State: AGi0PuZDqvgcrxaHd4OqE6qoF5VUOI49eqs0VmxSY1+heini3S5UhWLE
 epxwWl0o3ja06Dyrvhprj8tI2WxI
X-Google-Smtp-Source: APiQypK8vqIwOjH6P9HHjruTknOzQUMP3mg/NhkfwiaPRsvksNlq7hF0uvAQxSjBwQnRtXPTc/ulQA==
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr2078750wmj.102.1586260194834; 
 Tue, 07 Apr 2020 04:49:54 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id s9sm2861890wmc.2.2020.04.07.04.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:49:54 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 14:49:37 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-6-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071448440.77089@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-6-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915/debugfs: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/i915_debugfs.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index b22b4e9c3138..aa35a59f1c7d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -741,7 +741,7 @@ i915_error_state_write(struct file *filp,
> 	if (!error)
> 		return 0;
>
> -	DRM_DEBUG_DRIVER("Resetting error state\n");
> +	drm_dbg(&error->i915->drm, "Resetting error state\n");
> 	i915_reset_error_state(error->i915);
>
> 	return cnt;
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
