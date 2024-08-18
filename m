Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4C7955BFC
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2024 10:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFDC10E059;
	Sun, 18 Aug 2024 08:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="BPFYlLSD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE1B10E00A
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2024 08:51:45 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-5314c6dbaa5so4516296e87.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2024 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1723971103; x=1724575903; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BA6gd3w/lH+pvSR0RoOOSeXPQ2D4PiFjYFb8yS1CNPg=;
 b=BPFYlLSDHi9mhPrLqtynOahUuTr2rU2ZMBNfVFmqDkGkEBYdiJyLbfak5HGxiHMyOq
 H7sy2qttTFPyJr63KVUdh9q2LwZ6XpZKAjD4gVw4bP103J83hPJ9WbiaCqLpSdfYKPC7
 y/kYotTAZ4SxRh7A6QrZjXCJOkSU9y46LfqfvCpTqgKupTuSYxIXlsgNf3s1Y4+yU8fC
 nimXPE+qgMCtOza8c8Vl3WE6ikFXmxkb4EecrZloLA5IoDr2HPzBgFsAH8Xdtf792j+q
 dtIb/zilQUUE9P7OFME6vVcdrhdmkZ++/DIuIc/AMfJegREhhkQ2N5DW5NDRjfFqkyCZ
 PabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723971103; x=1724575903;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BA6gd3w/lH+pvSR0RoOOSeXPQ2D4PiFjYFb8yS1CNPg=;
 b=lZeZVjqM1COUOY65yba6Ko5NBG0S3IeTzFnn5CjiXP9gUTiVPZrJWKZdp7Ba/1Df8c
 Xqbxopg3jcHOziBMHVo8sDaNTbqahomSajmrNJOxCwZxPRip1BwG54eqvqiSI6LvdYDQ
 Vyw940RdwooUp/DoeTjP+NJPnTVT+22dsGqwyNzPXy40cz8zMGphULSk4x97/L4p5Sf3
 of36ly4gXJs6IhN5gqCziwrP860IKMTkXttzRerGTL7gcRD4lNRfTB5wG2Vi4VJVdw52
 YPmsLjolQ0gU9rYO79z/nvymWd0zriLH7jTCgo0PGCry7LZZ+BW/BplrHxdaFdmeLUSe
 512Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJKUonxpddjHRrAICtjJ0ZhrSEhcPlQ8Ey1rpVROXwUWOdIb2jFhQ+IixDdU5Jby9GI/2UfT3vXuJha/3X1KfiPDJ1WtYws/Y4QZQOP/j6
X-Gm-Message-State: AOJu0Yz4e4kgoZDQkHe+y2ZOxrAUobn4ZbjXaI+DJ42vLDzNWOlPuSU9
 nTYh0JNxPT5ygf9H+1AHUlftko/+ph4vS9fxlISrqtceIRMMPteRWPTNodJyf2vp7QMHc//zu/j
 0H/kf3hN2kvNP5LSRai6jRvv3nwTL8mV0KLxh7g==
X-Google-Smtp-Source: AGHT+IHI8Iyu+5U4VNFCRJmfq2Flp3nc9zI6W2PlsTAxF8B8zzStpGZzS/TLJ8Wbz5m/zodMtuYkE86wl4uw7J15Kuc=
X-Received: by 2002:a05:6512:3b0d:b0:51a:f689:b4df with SMTP id
 2adb3069b0e04-5331c6dca6emr5835040e87.44.1723971102834; Sun, 18 Aug 2024
 01:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240816125408.310253-1-tzimmermann@suse.de>
 <20240816125408.310253-47-tzimmermann@suse.de>
In-Reply-To: <20240816125408.310253-47-tzimmermann@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 18 Aug 2024 10:51:31 +0200
Message-ID: <CACRpkdb356fkfyafCbi-=nqzpRNG4XcC8uQVLvV+Pcc7ONqSKQ@mail.gmail.com>
Subject: Re: [PATCH 46/86] drm/tve200: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, 
 javierm@redhat.com, dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org
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

On Fri, Aug 16, 2024 at 2:54=E2=80=AFPM Thomas Zimmermann <tzimmermann@suse=
.de> wrote:

> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>

This way of passing a mode is definitely an improvement.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
