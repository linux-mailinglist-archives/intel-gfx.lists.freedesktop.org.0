Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76984767459
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 20:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C8210E213;
	Fri, 28 Jul 2023 18:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2780210E213
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:17:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 56BE6621C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:17:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D08C433C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690568220;
 bh=8cNajFNnrMcDrsyQerTlPGu/Z6ZOR7ewk82PxPidIIg=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=iDqS50nT4ZdkRR7Ttmj8zTm07kh0I1hymwrhAE0J7pHN54+u9zRhyq/8gvP93+le5
 Gnsq28gt6DG5M0kf2DvFQKEEiDwYkMwI+lct8wErH5z7WXgEGqX4YAJ6JBZAhQj4lt
 rA8zA4uMNmmgZ/pmHBJQo74Vfps8tsdrhcb28X39KfhBUjhQEWwRtZAuXfKIrXbtRJ
 k52v1caw2eV/wUo+efIvriagTc/e+EcTK/xzJP9W6Dy625YFuRxjE2acV8evHHKhkv
 RY+bn6w/EF8htkJUIUJqDywsX2GHoeFhrDGMDgWNW/UEx6hsfwTcpZejTwNcPMsd9L
 LYGMMxbmoQZYw==
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-d16639e16e6so2190883276.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 11:17:00 -0700 (PDT)
X-Gm-Message-State: ABy/qLatj5BzKQhVH7GXvtK71kQYUa3V5vGUtBY6Tfel7jNfOqJc56iv
 TXr2wNJSOfmZ6VSW7g6Ad5yrY5nozHFUGUQ2aeA=
X-Google-Smtp-Source: APBJJlHpaiegF/yybLuXqdYy9B5BqHTjhxL1Er5olNBPYLJgXybjhldtw/0i18AW1PH30i/oLNpUAnHEOHnuPYQSXbs=
X-Received: by 2002:a25:9c44:0:b0:cc6:26f7:f0ea with SMTP id
 x4-20020a259c44000000b00cc626f7f0eamr2060380ybo.27.1690568219806; Fri, 28 Jul
 2023 11:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <xkl4onzpf4xwybliz7qiyi5a63ahm3ifobrzadosfz6v3qtqqr@dibuivsbafpk>
In-Reply-To: <xkl4onzpf4xwybliz7qiyi5a63ahm3ifobrzadosfz6v3qtqqr@dibuivsbafpk>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 28 Jul 2023 14:16:49 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5i5FaHzzcMtQE+OW0fy2U0-GWtR8nPqogLAhZ4DsYyOw@mail.gmail.com>
Message-ID: <CA+5PVA5i5FaHzzcMtQE+OW0fy2U0-GWtR8nPqogLAhZ4DsYyOw@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for ADLP DMC v2.20 and MTL DMC v2.13
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
Cc: kyle@mcmartin.ca, intel-gfx@lists.freedesktop.org, ben@decadent.org.uk,
 linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 26, 2023 at 4:50=E2=80=AFPM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit b6ea35ff6b9869470a0c68813f1668acb3d356=
a8:
>
>   copy-firmware: Fix linking directories when using compression (2023-07-=
25 06:53:30 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dmc-adlp_2.20-mtl_2.13

Pulled and pushed out.

josh

>
> for you to fetch changes up to fd6e13ca2a1141aeede3666f72d2a006a3903fc0:
>
>   i915: Update MTL DMC to v2.13 (2023-07-26 13:59:54 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (2):
>       i915: Update ADLP DMC to v2.20
>       i915: Update MTL DMC to v2.13
>
>  WHENCE            |   4 ++--
>  i915/adlp_dmc.bin | Bin 79044 -> 79088 bytes
>  i915/mtl_dmc.bin  | Bin 49104 -> 52164 bytes
>  3 files changed, 2 insertions(+), 2 deletions(-)
