Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CC269266A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 20:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8F410EDDF;
	Fri, 10 Feb 2023 19:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08ABA10EDDF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:33:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AB2C6B82523
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:33:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FEBDC433EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676057597;
 bh=RYmEVmZBmfAtwjOh4PlB+cwOmH4kDIbl+ItCCD3ead4=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Fd4e1LCeo+n/46WQln6yFnqgcRmocVAZ7cgPy4WhQpOnm8DaLQH0+j8IvAPLXxP0S
 XFPM6yiJF8RxcwaiysomBvcdp+jKAAEnvf1eRpLEzPO+VcHmQmdT+P09MrxenytT7D
 qk9vLZGuYvmflgBBgX28HKh5onmDp+SB/z72zKjZATbZ4i89v9mvgaa/MIm0t/c98N
 T8GacJJ2oSie6px751hxenFmsnwv8aO8HEEJkg7jhHvwoqR8Rk+wHFJvZwuME+95Ph
 yWgIj15EqO4MW9OPzwiDJxDhMqIF1vDZ2GQbfoTYcczBKvAkh5Ne7RJKczKrfXfPMV
 sPd2QYAlb0M3w==
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-52ee632329dso7570127b3.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 11:33:17 -0800 (PST)
X-Gm-Message-State: AO0yUKW46B9RHGlssNY42kjHk2fP60jGouOb5FGAnFL+NbAJ2VHw2B7I
 E2khhsQxsdg1BsJWMw1tuXFmm+Blw1Qyt+Fhf+E=
X-Google-Smtp-Source: AK7set87Eja7iDU3Qoab7OzEwkwq8WEhfMvEGwiRVmqVBnbU1ymTcMqJbhm9atb8VRoDG4qkWTFcl2UtAc1r3Tbhzxk=
X-Received: by 2002:a81:9304:0:b0:52e:e6ed:30a7 with SMTP id
 k4-20020a819304000000b0052ee6ed30a7mr35239ywg.551.1676057596543; Fri, 10 Feb
 2023 11:33:16 -0800 (PST)
MIME-Version: 1.0
References: <20230207140320.5xydvcqvkl6eiidc@gjsousa-mobl2>
In-Reply-To: <20230207140320.5xydvcqvkl6eiidc@gjsousa-mobl2>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 10 Feb 2023 14:33:05 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5jpyDyKUWe68yGBxY1ztRj4NXL+tAexWWxQ-nC1abJww@mail.gmail.com>
Message-ID: <CA+5PVA5jpyDyKUWe68yGBxY1ztRj4NXL+tAexWWxQ-nC1abJww@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for MTL DMC v2.11
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

On Tue, Feb 7, 2023 at 9:07 AM Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>
> The following changes since commit 5c11a3742947810ee8bffbd476eb5a1b0c7999f2:
>
>   amdgpu: Add VCN 4.0.2 firmware (2023-01-25 07:40:41 -0500)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.11

Pulled and pushed out.

josh

>
> for you to fetch changes up to c1181ae796970b6b48218bd2bdb9392fab0e070f:
>
>   i915: Add DMC v2.11 for MTL (2023-02-07 09:13:10 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Add DMC v2.11 for MTL
>
>  WHENCE           |   3 +++
>  i915/mtl_dmc.bin | Bin 0 -> 48512 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/mtl_dmc.bin
