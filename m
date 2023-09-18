Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8247A4887
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 13:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4E610E26F;
	Mon, 18 Sep 2023 11:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD6B10E26F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 11:36:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E503E61031
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 11:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 504F7C433C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 11:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695036999;
 bh=Gn7JKWmRc5B7Muypb+/Lz90MGn2wS3rqLP+IucfNG3c=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=g2geKuOMTBabqJv+QwDhEPzNdF8o7LWTq6Ayxm3+pP70F580+fXEinra2jd7bFxSa
 Za6twjbmPa3KKzR8YtE9I5AzMfXeHfsBe02GxSJtjr51PFfAuts9SG7zX4taHcmJhl
 QzQFLehjm71T5qdj6zQqYVq/M5i/7G/xveTJtRCkILSLEcZgIG1k7Le+79qzygkX2d
 pwrzcqpD7n1r2K/MXP/3rNcRgfKBjyzJYNIYKeCrOUz7g+6xSQqD2GS62NwUDT6W8g
 AOMoXm/mRWD3RZ0qUh74w3mFLDOa04K068RmMUAumkNPT5RKfK9HExIwOlw3YITWy1
 PwqyN0M7RrejA==
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-d84d883c1b6so1265643276.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 04:36:39 -0700 (PDT)
X-Gm-Message-State: AOJu0YyY2CjmfAsGcppDlPsWxyRSdS39PE3Niob7JClpVDmR5CkcuS5B
 zOskgLccQrX49owfBy6ju91Ku6+vbr1TvDiToMo=
X-Google-Smtp-Source: AGHT+IHP4a7yKSxUlZEvWZ+RK7RUIizZOg38zVGZRX9LhZBup1jLWEXITWS/W2r+ug87KGhnHTXDwRfrELacXq2dj4s=
X-Received: by 2002:a25:2d0f:0:b0:d71:8786:625d with SMTP id
 t15-20020a252d0f000000b00d718786625dmr14135552ybt.1.1695036998516; Mon, 18
 Sep 2023 04:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230914154225.2821571-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230914154225.2821571-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 18 Sep 2023 07:36:27 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7SK9N+KbiaZbswYXi52P10RvXZ9ucwjsfcCbww-ComHw@mail.gmail.com>
Message-ID: <CA+5PVA7SK9N+KbiaZbswYXi52P10RvXZ9ucwjsfcCbww-ComHw@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for HuC v8.5.4 for MTL
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
Cc: intel-gfx@lists.freedesktop.org, kyle@kernel.org, ben@decadent.org.uk,
 linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 11:49=E2=80=AFAM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> The following changes since commit dfa11466cf000120d1551146fd5bf78c44941e=
da:
>
>   Merge branch 'main' into 'main' (2023-09-07 11:36:57 +0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_8.5.4

Pulled and pushed out.

josh

>
> for you to fetch changes up to a5dbe400f776b0dc2d0a402ba76b4c16c231b38e:
>
>   i915: update MTL HuC to version 8.5.4 (2023-09-14 08:34:08 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       i915: update MTL HuC to version 8.5.4
>
>  WHENCE               |   2 +-
>  i915/mtl_huc_gsc.bin | Bin 569344 -> 561152 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
