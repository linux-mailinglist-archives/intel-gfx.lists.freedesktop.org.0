Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FF8692464
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 18:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AE510E2F4;
	Fri, 10 Feb 2023 17:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 357F910E03D;
 Fri, 10 Feb 2023 17:26:51 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id y8so6442725vsq.0;
 Fri, 10 Feb 2023 09:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1676050010;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RehKrwzxHb0yZ51xrZqY5znickazVA/y+gvM1FSD2Dc=;
 b=LWTEJdiR5kX7u2OjvFwTPLGKKX07+wDA44KwOpiw+SWhQwqr1QUReUp4WtlvtehD42
 SNJN/M5cNl6rpr9TX6yKGDhdVjb+P9b30ZyDEXp7Cv34Dzwyjw9284JECxoc5iu2NkOH
 LrB+SyTo+lYwZN7QuFTuPUHvoyvcBut7EQs3bwY8he4EvdwFvrW9pW+t0UAVJDQOPQie
 93RZr643pX7rLQxSRaZyXmvCBJZ4lX1nVGzbZAogndFqfQgYt6RodV74lfec7ZNtlNpL
 EADvyvJAQUcvh/KXG3yD3SzYOqQlW/TDOgPV63Cu4cz1qoA7aRTheEzh2RGy6jQHCPV8
 uHyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1676050010;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RehKrwzxHb0yZ51xrZqY5znickazVA/y+gvM1FSD2Dc=;
 b=3Lh3h1fIY+4hprspO7I4tg9YfqfP/s8roV8EUMOenYoog8gs9+RKShxTVLaHsjBs8J
 AL5n3murEvWhiyPgMjCQ7HsFLGChQB4xh4PNFIj2v3NeYkvm9rQ8OW+OU81IlO8GeoXa
 JdnnXn0dZ7bbgbSoUkzEgKi9sfYxCjAysvyfzPTYWoXNv4TGWVP6caB/zkMoNtBVN5UX
 s0YjRbPval1mSGCAa1EL7tXIn+V0w/OcFEeIHO8fqdzKTVYPyrsWGu1H6MQMq4fydomF
 0ds7ZOPayHW1IioaTiwBLb6WS5l/NcAlRuj0KgoyhPCvjBhXaLVRtD751Lomcw9x3YLI
 2MCw==
X-Gm-Message-State: AO0yUKVkth+Q5oe0uEkz7b2fwbh4475qm8kNn8bFMjMM/V908aiHnS8d
 dln6PlM/tVxKEy9NIcdAnAtKBCDwiDQiS2+0nNM=
X-Google-Smtp-Source: AK7set9nHpclcgx3OJ0QPt0VsrPTKCnXQCzVKu9UofvBepaI+exPKwYBRMrg9Ie0VdtyQhJV6z+hvO/w+T79X5j1WTI=
X-Received: by 2002:a67:c297:0:b0:3fe:5a64:f8ea with SMTP id
 k23-20020a67c297000000b003fe5a64f8eamr2935530vsj.54.1676050010233; Fri, 10
 Feb 2023 09:26:50 -0800 (PST)
MIME-Version: 1.0
References: <20230207143337.2126678-1-jani.nikula@intel.com>
In-Reply-To: <20230207143337.2126678-1-jani.nikula@intel.com>
From: jim.cromie@gmail.com
Date: Fri, 10 Feb 2023 10:26:24 -0700
Message-ID: <CAJfuBxyY94QXwTU2EEHuieQDi8WuMPLkjHJnbUuhcO4PsPC1sw@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm: Disable dynamic debug as broken
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 stable@vger.kernel.org, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 7, 2023 at 10:21 AM Jani Nikula <jani.nikula@intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> CONFIG_DRM_USE_DYNAMIC_DEBUG breaks debug prints for (at least modular)
> drm drivers. The debug prints can be reinstated by manually frobbing
> /sys/module/drm/parameters/debug after the fact, but at that point the
> damage is done and all debugs from driver probe are lost. This makes
> drivers totally undebuggable.
>
> There's a more complete fix in progress [1], with further details, but
> we need this fixed in stable kernels. Mark the feature as broken and
> disable it by default, with hopes distros follow suit and disable it as
> well.
>
> [1] https://lore.kernel.org/r/20230125203743.564009-1-jim.cromie@gmail.co=
m
>
> Fixes: 84ec67288c10 ("drm_print: wrap drm_*_dbg in dyndbg descriptor fact=
ory macro")
> Cc: Jim Cromie <jim.cromie@gmail.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v6.1+
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index f42d4c6a19f2..dc0f94f02a82 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -52,7 +52,8 @@ config DRM_DEBUG_MM
>
>  config DRM_USE_DYNAMIC_DEBUG
>         bool "use dynamic debug to implement drm.debug"
> -       default y
> +       default n
> +       depends on BROKEN
>         depends on DRM
>         depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
>         depends on JUMP_LABEL
> --
> 2.34.1
>

Acked-by: Jim Cromie <jim.cromie@gmail.com>
