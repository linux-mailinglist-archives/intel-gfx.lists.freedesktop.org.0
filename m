Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC0BCAA749
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Dec 2025 14:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFA010E2EA;
	Sat,  6 Dec 2025 13:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dvi5/QyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B10B10E2E9
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Dec 2025 13:41:36 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id
 98e67ed59e1d1-3418ad69672so1934159a91.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 06 Dec 2025 05:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765028496; x=1765633296; darn=lists.freedesktop.org;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=TBWAxs4hzXpjItbB1la4XtkYffK5EZFUezT5SwEA1u4=;
 b=Dvi5/QyThM9ciz980vR67ZsxFA57wdSiw2sdYahMB3W0bNLCrNHPZhTjhjkUWoxA1g
 DxunPxCMrUdRzDZGYtOdV4MSvlXZSRo8jPJnPJwTadeAhYEXsIT244xRzrWw87NEiAol
 0stBrDnq6/S5w7rXmbdd8xAZZwm1UZURS9WYan+DlZIoktKYpn0UxmHkdHsJeV8x7Al1
 1Gvvsd4d6k2XDLIrZeG1ochKToDvdqpSi7C8L5UxU9Ig26yP5gWGjvcd6pjZHE+auRRG
 yJUAgnZgipui7EyxSS9Cz5CGSzjbRgxUr93BuBSX4sPgFnLjSJNzwSVAfQZ7vDdL8JYW
 v5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765028496; x=1765633296;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TBWAxs4hzXpjItbB1la4XtkYffK5EZFUezT5SwEA1u4=;
 b=GkIuktD4b4OJXFAZv6Up9diA2Vp3ZGnlsfcd/VbxFgKXL38kT9sZexZ104GHAuosNd
 WAiODmZfYEY1YrDviVOoeDmcMkAQ6xvc5lL1v3WbPe7Xz//CxrDFC9izZbn2YogP/psM
 GyHqop9s1YQGLd9W8y/zc+AGZrgbrTEReaxy2rb+ijddR13grry0/pTMoxP5R9unGEXv
 XH6cf3aFD+0rQ5APOYwR02wCaQUXmA62hjfhHQ5T+sbRJJ2R6azTdMtYCeJD5e9iQh0D
 eLVoHDKfYrKQauTO4qtIjIShOMimyPeoZRDkyUUbra6vOPQsZuBokQMCiH+JKcbVbc9g
 vrUA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5oy8W0Yk6hN9C0+16ysosERfDbbpJIoBJ8k0XmNOphU2oc7PLTp2Y/MqUYxhsGJ/CRQRkGSBmM3M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyOf6vF9RlCpuLYOztJ2/LtPJxXdcy/dpAo57FXRMxsa34/s0rK
 oluSeuQt+7OifWcqDY6gSDJS3xT3NStjZfkoUYSVaoOD4TRzs30CuWD9
X-Gm-Gg: ASbGnctI7ycaEev2dR52vvbPilKScKEdosroCa4YhaiSWhSfNO5YhjrWBL22XUzl6ys
 sAHrKomzLfxEbZi1TjKfNCE1AYWil5BbZgh9PmY3mdkClawwoDagFuvGh2crfuruCAoTiK7IytG
 WBWpP0FikIfzvWeyzE4v2ln5teH+3tJ0d9HhzyfPN47pQ9EDQZuujFHXpXNZ/jDNmIRRHCdl8ut
 3E2v3yj2j88flrs+N3WgGwhQwrcWYjJN4xaSgTODvHSIpR7zw8Se6z7BJtAFjKIHNkZEOTDw00K
 o9Sa6qwIHhVugGZCjX5iTe6d11JLf2pOugz526l3NnP63oVj6hpZh4Sm6Vfs8fduHy9srj02xmT
 UJc5JxY5Yk9QERu8i7sMAO+wU5fwAfvkHbWH1y5ZqndVpEjwbn6pWEo7FLPk+KsfNguhFOfY78Y
 b5bYA1t9xjBZ01tBEF
X-Google-Smtp-Source: AGHT+IH4n/ip3SEhWyBW2BYwU6MgshsOQpBGQGdoULfIKl0gC6Q6dJhtMtW9mPo1IySW/qns8ah87g==
X-Received: by 2002:a17:90b:1c86:b0:33b:b020:5968 with SMTP id
 98e67ed59e1d1-349a25fb832mr2039751a91.21.1765028495754; 
 Sat, 06 Dec 2025 05:41:35 -0800 (PST)
Received: from localhost ([2400:2650:24e0:bf00:6647:e402:ac7:7283])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3494ea63e87sm7331327a91.12.2025.12.06.05.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Dec 2025 05:41:35 -0800 (PST)
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH 2/2] drm/i915: Add intel_gvt_driver_remove() onto error
 cleanup path
In-Reply-To: <20251201161013.735943-3-juhapekka.heikkila@gmail.com>
References: <20251201161013.735943-1-juhapekka.heikkila@gmail.com>
 <20251201161013.735943-3-juhapekka.heikkila@gmail.com>
Date: Sat, 06 Dec 2025 22:41:33 +0900
Message-ID: <87y0nfiv76.fsf@dell-wzy>
MIME-Version: 1.0
Content-Type: text/plain
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

Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> writes:

> Add intel_gvt_driver_remove() onto error cleanup path.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0128faf2e483..f8c01d52aba8 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -908,6 +908,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_gem_drain_freed_objects(i915);
>  	i915_ggtt_driver_late_release(i915);
>  out_cleanup_mmio:
> +	intel_gvt_driver_remove(i915);
>  	i915_driver_mmio_release(i915);
>  out_runtime_pm_put:
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> -- 

It might be the simplest way to fix, or even better to clean up it by
moving intel_gvt_driver_remove() into i915_driver_hw_remove(), so
they're more paired with i915_driver_hw_probe() and move this fix into
hw_probe() as well, anyway...

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

