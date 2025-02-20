Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C0A3D578
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 10:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21B310E4A9;
	Thu, 20 Feb 2025 09:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="eILameml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E2488C4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 09:54:01 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-4399a1eada3so5967285e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 01:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1740045240; x=1740650040; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=D8ThgEs9dav93FXajnfmXH01yXAojaokYEmTOlDNMFY=;
 b=eILameml/Xh0hMWLuOHnjG+8y8n6+MHOumcSbtJu2SnLw+xTZgSEmUF54xmo+yM1Kr
 ls/R2jc7hjpnxvxEj9WQJ6ARipUyc2k8TjkIyP+HQnjcsbQ/pCDechCI7dHdWyvqa2cc
 tzrEsJRJUdJKMMGBTTO5KhTRIwGRiiWnND9d0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740045240; x=1740650040;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=D8ThgEs9dav93FXajnfmXH01yXAojaokYEmTOlDNMFY=;
 b=DUyka1zybHaPA5Wrk3yqVn5Iy1Af13X3ApsOWhKACpjTrir5wBeAkvNTC3bqBYD8B+
 AwEUWBgGWAozxP713zVXyEuAmG4Tt4eG3+zLCm0fNE5loEVKOO8xOoPHnvnuUAXnG7mY
 LkBghfVeTQ6+uLsh3l+pt1xSkYGS6RTXwT8dgBCo8WnDOVUtCUI+atOsvEzcC1DONVlr
 CIgJbpmnZ0Am49dIIY3KBd0NuIoOWg6txHgaE/CaRMTtPNtqe5oTnN829exnBknX6Tbm
 GQnMTe1jz+0ClY7VW02WzC9tNRB/xIjE9HJ158LlNHQDSrwrySWAx+6H/89ZZp/3E0zt
 mhTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXtz7HDqFigy3oIgZb/K6279xhGJwkF7wxYcfSnzgLgAmeI4bOg5ymF8sMg0rSRzU8Gvkv/n+qI47c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyZZPuwMRrNmUVSb3j7PW1uv1P1I7+SURjimgG3A34Jjwpfn8A8
 KMOfLxc0kNVOquTPAy6GQGw18BdSxY15Myx4WSGyDHsOw2nPJoo+EVENkdAbS0ZxC2EQ6WCVVYg
 f
X-Gm-Gg: ASbGncthLw445np9lU6LXv86dj2zU5h+Gh/NDs8n4vWcA/iiOjncmInl8CJ/R60Eceu
 9QAt3NqfX3aDEJ/n7scBa+IJmvKKcfB9iRruh1CpyjA0FZCGuziXs9wjIqfl9Y3Fdwpf9QIgSYC
 FMZ/NG8fVMQQBoZcZany2JCVFTbIWu02B8X/duYzuo2HuhRiRkLxQuIKhXxFuIB24FkshZKEMrb
 uhrJ3YqsTQkqAnycrYtOQzVs+jj/1PdvvKvwWO49M3DIIovLZeaJvLWrCkj8GNcLOALltuCSM9D
 X+dAN3BlYpJWjvwXRQzmWghEjNk=
X-Google-Smtp-Source: AGHT+IETbnbJcGPzbNA0NFK5vp6cXXqbj6bTepUJBJ1DbFZPHgtV7pQqYmeH1xFWeBuMFGEIBfkF/w==
X-Received: by 2002:a05:600c:3110:b0:439:9985:6984 with SMTP id
 5b1f17b1804b1-43999de0cc2mr73773795e9.30.1740045239923; 
 Thu, 20 Feb 2025 01:53:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-439930a9966sm77167315e9.15.2025.02.20.01.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2025 01:53:59 -0800 (PST)
Date: Thu, 20 Feb 2025 10:53:57 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/atomic: Filter out redundant DPMS calls
Message-ID: <Z7b7tSabXeLe1ovT@phenom.ffwll.local>
References: <20250219160239.17502-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250219160239.17502-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 6.12.11-amd64 
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

On Wed, Feb 19, 2025 at 06:02:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Video players (eg. mpv) do periodic XResetScreenSaver() calls to
> keep the screen on while the video playing. The modesetting ddx
> plumbs these straight through into the kernel as DPMS setproperty
> ioctls, without any filtering whatsoever. When implemented via
> atomic these end up as full commits on the crtc, which leads to a
> dropped frame every time XResetScreenSaver() is called.

I think you should add here that it's just an empty commit, because we do
filter out redundant commits where crtc->active_changed does nothing.
Except we still run the entire machinery with timestamps and drm_event and
everything.

And I don't think it's worth to filter that out at the atomic level,
because it's really only legacy ioctl that had this "complete noop"
behaviour.

With the commit message augmented:

Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>

Might also be nice to have a igt for this? Plus also wondering whether we
should cc: stable it.

Cheers, Sima

> Let's just filter out redundant DPMS property changes in the
> kernel to avoid this issue.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 2765ba90ad8f..c2726af6698e 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -957,6 +957,10 @@ int drm_atomic_connector_commit_dpms(struct drm_atomic_state *state,
>  
>  	if (mode != DRM_MODE_DPMS_ON)
>  		mode = DRM_MODE_DPMS_OFF;
> +
> +	if (connector->dpms == mode)
> +		goto out;
> +
>  	connector->dpms = mode;
>  
>  	crtc = connector->state->crtc;
> -- 
> 2.45.3
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
