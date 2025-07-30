Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFDBB15F00
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 13:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A66810E2DD;
	Wed, 30 Jul 2025 11:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
 [209.85.221.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E809310E2DD;
 Wed, 30 Jul 2025 11:08:22 +0000 (UTC)
Received: by mail-vk1-f172.google.com with SMTP id
 71dfb90a1353d-53927febb37so121427e0c.0; 
 Wed, 30 Jul 2025 04:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753873702; x=1754478502;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ahUCMop3bpKiOm+Wykn3VajG+gXKSw9MPNL+inB7AHI=;
 b=slMZWujRKwgMhays2DcQMsnbJw1QM3WlcIIirl5AXGbylmw//1m0TVwQBN1CpPa6hH
 aZ9UzvjP6HPCxyPuTjvcwoMjPD45myAD1H5F0dl9tx8MaKKcBymoaTfchD8uVeQcAYvm
 nA2Eso/kNUb6T7xmiDJrx+bwFaJucnBbKNXYZJTxN0VJsrTW8MA/ymw6zNvVzBpQTQ1b
 r4+a2WBHKoRZy8GKuBx0WLEL76+r0NXDwMsHEetFRKep0lxXElI4co6JchbBxciEvMZz
 P0J16WNpHOgAvwkCPSFB56PQP8epDMHB2i6q+rTTOaB/vjfsCVXMTPyur+h0wYncnJZo
 y3Gw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUjiwOAdRkZj5jBackRN3OkSv7cDwTHq3IWSLtlwGnBL0ISr4OkTWqtv5zHZZfU0v7JyuKiLcuqtR0=@lists.freedesktop.org,
 AJvYcCV6Cgk/WN4UPQtAF8/dYxHVWrEYV5rzVe5Gikh+dR/atMJGafpydqixfRyQxK1X1wMtokCUKmESe50=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxsjKaaPKGA7sgqV5gm6Xpf9k9S2q0LN4jvp/bAQiExYpX4KPQs
 dADTzRIie7VkdPDZGu8O1F7quAtpYYvFYkVmTEvcsKW0fCxNQ+wIH97ESJAH2aLN
X-Gm-Gg: ASbGncuvwjzCWrknS4csUfiMAVQqKgZ535nNtnqwn0MbkwohHiQrHegQe5rdd2pUvYO
 wGr6rE03WGpz/JxO2IarVCu1rpQG6dXydqqqq3lqRQ02opyML9djs+9YR5pMNN7ivW3jBnIjjGv
 4pzu5XCX+5qZNKXmdrKyL/yjyc57Z51tImQ1+FuixegN0hFAYV6kgHMOAh2bCf67uIFs90mX2lP
 3/N0vD62xWXakQHYPGr6AF/kOtxqSCK8nPbilXPQ+wSaT1JWEkLGuDz/kDExwuXQVxySdeqgOxS
 gy6huPqXWvNyJzq3PPPFZovgyrFvE0QbNeQwc2D8s0NYWaUqYTEN5mlp8E1iLNeFZMowwSX1EIf
 2l6HJvANzURxOUnUOTJm/eapxBtATs5X/Bjwtns0HfmIJZNnCEi9RMihDM2YR
X-Google-Smtp-Source: AGHT+IEm1H7AvOxdBeq4rzVHYoPyQVnvrsa/+YBBdFDVXk/1A5ve430lb3nwy+OnK+BhEwtAM2uZJA==
X-Received: by 2002:a05:6122:c95:b0:531:2413:ce62 with SMTP id
 71dfb90a1353d-5391d052332mr1612299e0c.11.1753873701419; 
 Wed, 30 Jul 2025 04:08:21 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42]) by smtp.gmail.com with ESMTPSA id
 a1e0cc1a2514c-88bbf25c5d4sm993626241.19.2025.07.30.04.08.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jul 2025 04:08:21 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id
 ada2fe7eead31-4e7949d9753so2187967137.2; 
 Wed, 30 Jul 2025 04:08:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWQCsnhNpOS3gTOEf0n7sLN6c/iGXG4g2ixxT7LDuUXp3AMHKQXUW8h5159+eoERhFuX+Y2KQfcp+M=@lists.freedesktop.org,
 AJvYcCX5ZpoYQ+uNkCSXBI+Al5YuhOYOrj5GwwWpZGBiCrKk13gjMKs5L4vaA+mcZMXMvCOABMAUiIaH4NY=@lists.freedesktop.org
X-Received: by 2002:a05:6102:3c89:b0:4e9:92d3:d20 with SMTP id
 ada2fe7eead31-4fbe7f213d2mr1535475137.4.1753873700890; Wed, 30 Jul 2025
 04:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
 <d947168fd02d6f820159b456099e6aa8f465b633@intel.com>
In-Reply-To: <d947168fd02d6f820159b456099e6aa8f465b633@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 30 Jul 2025 13:08:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUJF6V4v1+zbKKG1A_UvHUXU-ySXe7Xj_ryZtRnk2B2nQ@mail.gmail.com>
X-Gm-Features: Ac12FXxXSRSoyCnpPN-TGOuCCRieREZmYvROY3pFS74W6252E9pQuxR7Z8LUGgU
Message-ID: <CAMuHMdUJF6V4v1+zbKKG1A_UvHUXU-ySXe7Xj_ryZtRnk2B2nQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tomas Winkler <tomasw@gmail.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, 
 Raag Jadav <raag.jadav@intel.com>, linux-mtd@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hi Jani,

On Wed, 30 Jul 2025 at 12:32, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 30 Jul 2025, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > Intel Discrete Graphics non-volatile memory is onlt present on intel
> > discrete graphics devices, and its auxiliary device is instantiated by
> > the Intel i915 and Xe2 DRM drivers.  Hence add dependencies on DRM_I915
> > and DRM_XE, to prevent asking the user about this driver when
> > configuring a kernel without Intel graphics support.
> >
> > Fixes: ceb5ab3cb6463795 ("mtd: add driver for intel graphics non-volatile memory device")
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  drivers/mtd/devices/Kconfig | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
> > index 46cebde79f34b0b7..f0ab74d695347117 100644
> > --- a/drivers/mtd/devices/Kconfig
> > +++ b/drivers/mtd/devices/Kconfig
> > @@ -185,8 +185,8 @@ config MTD_POWERNV_FLASH
> >
> >  config MTD_INTEL_DG
> >       tristate "Intel Discrete Graphics non-volatile memory driver"
> > -     depends on AUXILIARY_BUS
> > -     depends on MTD
> > +     depends on AUXILIARY_BUS && MTD
> > +     depends on DRM_I915 || DRM_XE || COMPILE_TEST
>
> I understand the intent, but IIUC auxiliary bus usage should not require
> a "depends on" relationship. Couldn't you have MTD_INTEL_DG=y and
> DRM_I915=m just fine?

That is indeed a good point!

What about

    depends on DRM_I915!=n || DRM_XE!=n || COMPILE_TEST

instead?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
