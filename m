Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F42A17EDE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86B710E5BA;
	Tue, 21 Jan 2025 13:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g1aGaTWp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7627610E02A;
 Sat, 18 Jan 2025 18:09:20 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-435f8f29f8aso21383235e9.2; 
 Sat, 18 Jan 2025 10:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737223759; x=1737828559; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4BA/IJCpYsGVXt7I5m+H4A9gd0VSnYvzZ/4qWQWWRxQ=;
 b=g1aGaTWpm6PNonyDxNUttf/yv7ef4iQ4KG/VZ02Ac9SUIlgRNQL4u/VbCTChYjz/bH
 1SXL9t1ztw46wrWpltVXaGWB3mZ6/M4J6GBK7lE9Eu65IK8xLGXMdTuEMTMTT/2MjkQ1
 5cNStHap+5/PkFu5UhWbpGwvG0n223VSkVc/UAXDMDucNRfH9/F1DymbymUPaO9Uh0iW
 uct7pn5wxQWzfkDWW6trj8tFqMpqN+Sy4KxFfwEM798YoMqtTgzQV/81Bh8R+oJEEubb
 Qj9DM7OWdW4c52N5Y+o+r3AUJu4h0fKbZr99dzwlb7jgD0JI/HyUBMg+j33uK3omhqUs
 0l7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737223759; x=1737828559;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4BA/IJCpYsGVXt7I5m+H4A9gd0VSnYvzZ/4qWQWWRxQ=;
 b=fo+nIdjoDkoE0lhyvSYokLfmppsHw1Ejb9UN1IaEpvUNG6sA+WVRk5cNIB/YXP4hI0
 dygr5UVPHDNpPzo9NCoWeFaPDHx9z64eGzcQ2MV6nOlmfYuQJh2ZL2Icr9hL4bUJr1Om
 RhWsgioAlg91+1ZrmEZA9GJKOD97mL8W64RhJRgxLtOTA/7aJT8LcLK356GCdhXvCrDM
 wgukT8IaQewTpDkL47/LsiOKVU+hVwzL6fVn8++VFMEY4Plk+7ohuuyP8haX1o110cTE
 RRIvS5rW8NBimNM7fw6SzGJsBdeo6dxEzYanMx87megAKIt+2/WVu5XAE/1zuRUXHlGl
 J60w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFG8QyjKGiDEUk2KIGAdBAk7a5p/2BtGz1eQmT93b3d1rvrzTNnPfCyRBXk4Ge0PZ3pCoS5VGfp10=@lists.freedesktop.org,
 AJvYcCUg87xtkhHItksSdTNQN+hfDjB1u+AaBgvGF7NLDamHj4rBXrT0w3+CBeeEehqDhKc7O4i3GE5/f80=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyK73XPdt4sDQaaSFxCiaFS8lKC/aqV0UXWvM9Wy9W39q/avqyh
 2FkPxNuiNiseMO0fW5Z+u0JB1UcNxZJ7Olv45MflFsRUaMeGDghw
X-Gm-Gg: ASbGnctU/nr4n/So9ZoKj5FnND6CCUIEy2SpgIgF+jBFCiAM3/CCcGpPFXw9+r5GU4e
 xTWVnC2U4QgbciJsmamHQP4aAy7SNujIQ0W9yNhh2cbWDeoXvj1tI19A73i+NQXxyTAMYhdGR/o
 slvnrUfzEnByOYXwKhir9rIMhwbAVUyC88gE6eF3baZBvuYgrE9/f61h0H3glxCYY+A4h+tI6zm
 KEoUGgfZIwGffoVmiextmQlw4KUwmIfWQlLPSheiMR5DzRiYQIAqGQCPzXce3N+i9pn7kSnJyg9
 RsmKH5G5rjM/Cby+/Ko+reyAPoGfNUkV
X-Google-Smtp-Source: AGHT+IHVwNkjw3fCrBEKyLXBvBiUL2k60KcVoV9cy6dZqzV7+/qO4ENIlaaFUStajLUdjSOHJHd/GA==
X-Received: by 2002:a05:600c:4e4f:b0:434:f767:68ea with SMTP id
 5b1f17b1804b1-438913bf92cmr81103605e9.5.1737223758584; 
 Sat, 18 Jan 2025 10:09:18 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4389040854bsm77741645e9.7.2025.01.18.10.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 10:09:17 -0800 (PST)
Date: Sat, 18 Jan 2025 18:09:16 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: David Laight <David.Laight@aculab.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, 'Arnd Bergmann' <arnd@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>, 'Jens
 Axboe' <axboe@kernel.dk>, 'Matthew Wilcox' <willy@infradead.org>,
 'Christoph Hellwig' <hch@infradead.org>, 'Andrew Morton'
 <akpm@linux-foundation.org>, 'Andy Shevchenko'
 <andriy.shevchenko@linux.intel.com>, 'Dan Carpenter'
 <dan.carpenter@linaro.org>, "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 "'pedro.falcato@gmail.com'" <pedro.falcato@gmail.com>, 'Mateusz Guzik'
 <mjguzik@gmail.com>, "'linux-mm@kvack.org'" <linux-mm@kvack.org>, 'Lorenzo
 Stoakes' <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
Message-ID: <20250118180916.433bb73c@pumpkin>
In-Reply-To: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 21 Jan 2025 13:31:29 +0000
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

On Sat, 18 Jan 2025 09:49:21 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> On Sat, Jan 18, 2025 at 05:09:59PM +0000, David Laight wrote:
> > On Sat, 18 Jan 2025 08:13:06 -0800
> > Guenter Roeck <linux@roeck-us.net> wrote:
> >   
> > > Hi,
> > > 
> > > On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:  
> > > > Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
> > > > check of the bounds in clamp().
> > > > Gives better error coverage and one less expansion of the arguments.
> > > > 
> > > > Signed-off-by: David Laight <david.laight@aculab.com>    
> > > 
> > > This patch triggers a build error when trying to build parisc:allmodconfig.
> > > See error message and bisect log below.
> > > 
> > > I don't think there is anything wrong with the patch. The underlying
> > > problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
> > > tries to build the affected file even though CONFIG_DRM_I915 is not
> > > enabled/supported on parisc.  
> > 
> > This has appeared before.
> > Any idea which inlined copy of scale() is causing the problem.
> > On the face of it they all look ok.
> > 
> > If you can reproduce it maybe try commenting out some of the calls.
> >   
> 
> See diff below. All three changes are needed.
> No idea why the compiler would know that the values are invalid.

Maybe it isn't even an inlining issue.
Perhaps that compiler just doesn't like the function ?
What happens without the 'static' (and an extra prototype)?

	David

> 
> Guenter
> 
> ---
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index fc1e517e074a..3b2c8bdfcf8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -76,10 +76,14 @@ static u32 clamp_user_to_hw(struct intel_connector *connector,
>  static u32 scale_hw_to_user(struct intel_connector *connector,
>  			    u32 hw_level, u32 user_max)
>  {
> +#if 0
>  	struct intel_panel *panel = &connector->panel;
>  
>  	return scale(hw_level, panel->backlight.min, panel->backlight.max,
>  		     0, user_max);
> +#else
> +	return 0;
> +#endif
>  }
>  
>  u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
> @@ -119,8 +123,10 @@ u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
>  	drm_WARN_ON_ONCE(&i915->drm,
>  			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
>  
> +#if 0
>  	val = scale(val, panel->backlight.min, panel->backlight.max,
>  		    panel->backlight.pwm_level_min, panel->backlight.pwm_level_max);
> +#endif
>  
>  	return intel_backlight_invert_pwm_level(connector, val);
>  }
> @@ -138,8 +144,12 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
>  	     intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)))
>  		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
>  
> +#if 0
>  	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
>  		     panel->backlight.min, panel->backlight.max);
> +#else
> +	return 0;
> +#endif
>  }
>  
>  static u32 lpt_get_backlight(struct intel_connector *connector, enum pipe unused)

