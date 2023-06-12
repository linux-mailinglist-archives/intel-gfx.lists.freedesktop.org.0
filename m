Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08D872C27B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 13:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB9F10E204;
	Mon, 12 Jun 2023 11:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D4610E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 11:06:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AD66762734
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 11:06:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23490C433EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 11:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1686568011;
 bh=825674V/LBFg76IFobAM5jsPVxN6XSGwHnjMTWncEWE=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=cOs0oTj0IigeAiys/DBQ0/J4hQLhgYGeG5pYsw4ERUH3XJL+vS28PLHEZzwWzkbH0
 d2sDV1wA2zPFPLdgdT7aZidUGJKE0bKzkpH8dGombcqJ7C8wDkC87pqonq6NwkV/9k
 Z7bFdPs/qLOgMMmEjK222g/7ErTrFC3YU7w+/C6/E+iYO/snYO5ev5I6LWNWtoQU8k
 GiudnDi7zMfMkulNlfYoYV3WXyKnPBVTYYmGikosMuYWwJRlwpnRTGEzsfoKneGP5Z
 K1erX1PO/3QCncDgSvsK6zRuEI1hYOgPqcq6ZXk0MbiSbCVQR1VjGaOeNiFLaARDCB
 OvzrFyLUtmHrQ==
Received: by mail-yb1-f182.google.com with SMTP id
 3f1490d57ef6-bacf685150cso4438165276.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 04:06:51 -0700 (PDT)
X-Gm-Message-State: AC+VfDx/pXDpuCKN4qqoFPeBIOnFDKpt1j73A1HXwjSQYyrWAwncpwDB
 9hhcII6b9ijiCdThiXgbwSQU69icnEF29kvqY8g=
X-Google-Smtp-Source: ACHHUZ6nt/PpUwiU/qAR05Ed1JpojTqY+/XCAN6ZSl34u2iLfbEYXKC+8GBVq8Bu2hSKiwdZAPxVN1t2pORXXQCq1uQ=
X-Received: by 2002:a25:8682:0:b0:bcc:1d2d:1ffe with SMTP id
 z2-20020a258682000000b00bcc1d2d1ffemr1138590ybk.64.1686568010153; Mon, 12 Jun
 2023 04:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230606163345.2058790-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230606163345.2058790-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 12 Jun 2023 07:06:39 -0400
X-Gmail-Original-Message-ID: <CA+5PVA4Uyzychg1ezqufBBsFr7Jtsiy9pY2tuHNV+Totu5Z=XA@mail.gmail.com>
Message-ID: <CA+5PVA4Uyzychg1ezqufBBsFr7Jtsiy9pY2tuHNV+Totu5Z=XA@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for HuC v8.5.0 for MTL
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

On Tue, Jun 6, 2023 at 12:33=E2=80=AFPM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> The following changes since commit fc90c59beebd551dde5fe5eb3e76d36651ba08=
fb:
>
>   Merge branch 'db410c' of https://github.com/lumag/linux-firmware (2023-=
05-31 07:35:15 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_v8.5.0

Pulled and pushed out.

josh

>
> for you to fetch changes up to 5de33fb45cee8d83abfe17e9e85bd74d51a2653f:
>
>   i915: Add HuC v8.5.0 for MTL (2023-06-06 09:24:40 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       i915: Add HuC v8.5.0 for MTL
>
>  WHENCE               |   3 +++
>  i915/mtl_huc_gsc.bin | Bin 0 -> 565248 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100755 i915/mtl_huc_gsc.bin
