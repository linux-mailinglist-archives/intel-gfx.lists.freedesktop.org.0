Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F6497462F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 00:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1E210E932;
	Tue, 10 Sep 2024 22:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="M8eU1/C1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 810DC10E930
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 22:58:15 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-2054feabfc3so54330395ad.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 15:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1726009093; x=1726613893;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lpX6a2VZYI0Q3F5tVeOcgdqhZYYv8tYMbEYQg5NYqLQ=;
 b=M8eU1/C1SzYNrlvR0nPWwrLPZ8PoYo2yS776siaP3bJj0KHYUTgGCEWUIqnSegr+pD
 fs3XU9icJKRNHqeX3Td7hY93cCS5oFPyzyHnb53f2myP+cujU+h+PF4DGk/iPbzbjiiz
 Z2yu1KRvv1GF4+KB8BX+Iz/EzaMqkTF9UB0vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726009093; x=1726613893;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lpX6a2VZYI0Q3F5tVeOcgdqhZYYv8tYMbEYQg5NYqLQ=;
 b=I2OW8Uj0AySCGAu1FC41jEW6RnPM543ckToWSJ0XKpV6met9vXJIEpCBQTiT4OAMyU
 nnjFUBrP0NJh0TFMnGaNQFLvO3Udgp6iWdK+DdWUhTfvz1APstLlQ+2ONUxtA3Ijst3E
 vxIotDoYTYdiW+2PT06GE48vaOttPIhzT3g0nT+blIVw17Ayutx/CQB8+GCkx81DNVMl
 MHJQbHDQx9zaHiOhSK2Xhqf1JkojnV4nV04qFgnm+GqIaDXV0Hzz0n/GgFp37Detu/mN
 S4qNzB3WiP5yGr6RCQ1LtxkwnUMWRuKXkSt5D8FUeAyP6+qPJiw0SGY5/UO8t1n2XKyg
 VfNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/YMIUhCt7NppxyhuaG9CgkRq6bnt0iFi26VXFjysiSGkyUt56codZjntVbtwXkSctshHj1EXCO58=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzKuNW6CVt/aVIO029bCInoz+XISkpH1wi3Ge8FOKTvBkoi3PpF
 HX6/IcY9DARLqMrsncO936OjWFOlovVfxDhbp3oljlIPVcWN7dDP/T6k33gTilR0lJx+bbV7df0
 =
X-Google-Smtp-Source: AGHT+IFhVL+WS5MR9pA2bQXyAboel9iv6P0gA/E/5uuWuRM4gesj+a6y7OsLl4MLBYsKKTRtzPEzsQ==
X-Received: by 2002:a17:902:d4c2:b0:202:32cf:5dbe with SMTP id
 d9443c01a7336-2074c71c482mr35561835ad.58.1726009093210; 
 Tue, 10 Sep 2024 15:58:13 -0700 (PDT)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com.
 [209.85.214.175]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20710e3364esm53172875ad.93.2024.09.10.15.58.12
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Sep 2024 15:58:12 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2054feabfc3so54330125ad.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 15:58:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVHjZF1r8mpo2kF1xX6x8Oxu2s7f0dde6FMU+PSSl2GDofRnvC2YIxNFHYr0sr6X8Dt/bU1vefec30=@lists.freedesktop.org
X-Received: by 2002:a17:902:c94b:b0:205:8b9e:964b with SMTP id
 d9443c01a7336-2074c6ae1b8mr29905655ad.39.1726009091533; Tue, 10 Sep 2024
 15:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1725962479.git.jani.nikula@intel.com>
 <136ecd978aedd7df39d1b1c37b70596027ff0a3e.1725962479.git.jani.nikula@intel.com>
In-Reply-To: <136ecd978aedd7df39d1b1c37b70596027ff0a3e.1725962479.git.jani.nikula@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 10 Sep 2024 15:57:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgddDYmOiX1ouQo2ayhJn4GVQrErj-XBy3og5eJ0uBOA@mail.gmail.com>
Message-ID: <CAD=FV=XgddDYmOiX1ouQo2ayhJn4GVQrErj-XBy3og5eJ0uBOA@mail.gmail.com>
Subject: Re: [PATCH 4/8] drm/bridge: ti-sn65dsi86: annotate
 ti_sn_pwm_pin_{request, release} with __maybe_unused
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi,

On Tue, Sep 10, 2024 at 3:04=E2=80=AFAM Jani Nikula <jani.nikula@intel.com>=
 wrote:
>
> Building with clang, W=3D1, CONFIG_PM=3Dn and CONFIG_OF_GPIO=3Dn leads to
> warning about unused ti_sn_pwm_pin_request() and
> ti_sn_pwm_pin_release(). Fix by annotating them with __maybe_unused.
>
> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
> inline functions for W=3D1 build").
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'm happy to land this in drm-misc-next unless there are any extra
dependencies. Let me know. In some sense I guess this could even be
considered a "Fix", though I guess given the history of the compiler
options that might be a bit of a stretch.

-Doug
