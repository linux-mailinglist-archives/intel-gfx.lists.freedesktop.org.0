Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0055875F65E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 14:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5097A10E2E4;
	Mon, 24 Jul 2023 12:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D147910E2E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 12:30:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0A1B860F6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 12:30:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70AE7C433CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 12:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690201825;
 bh=weIjI0SAgkc/iMUDX/KGV/0ks/OYcQFro3DU4didyLY=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=rW/a9ehhwx4/p5141KzBzGyT9W7uK7HmG3hX4eKkgj5CJnfR5NsiphNaSvqa24vL/
 s/y92UOVm5I6F08U71Aw/t4WTk9++ZI/et6jGFZxI+mL904a7nS1VR5qctGJb8VHMA
 kFX9pFgG3x26q9dLUWIdr11I6s4MaA9hCQU/Iekv5UDXUnDrfp+3LO9ILwojqVpw35
 vUcS6anauyw7et0y5E/iIidI4vDmL0vBbWIlQgF+G3TOovmfAGcf4PxNu3YehGzH+t
 xXDAmxtf6dWjihMLfyNZxkcQhnDhPY+VBMDxDYc0l6y5B0VAIUTJb338pnpfCyGUXU
 pC+cgIr2RVlAg==
Received: by mail-yb1-f174.google.com with SMTP id
 3f1490d57ef6-d0728058651so2670719276.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 05:30:25 -0700 (PDT)
X-Gm-Message-State: ABy/qLYhJTfzMqguDh7oFuuXhZ3C1UOXMhfPl9vFUrvmY2A4aTHHFsqq
 tRn0qKbzz69dmM/nG9hmC4lYEk/zTB7N7OCrvzk=
X-Google-Smtp-Source: APBJJlF53p6ksCkjslzubT5IufMKYQDCgBd8q9luNcr0Cw6FDDcAiSso1n+iKAQeawYlBHuDV70wsB7Ig9WG7uRI/wk=
X-Received: by 2002:a25:d3cf:0:b0:d10:e6a2:1531 with SMTP id
 e198-20020a25d3cf000000b00d10e6a21531mr2081201ybf.2.1690201824450; Mon, 24
 Jul 2023 05:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230720173522.194818-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230720173522.194818-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 24 Jul 2023 08:30:13 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7EgPxqc2YR+dsB+HrzcMJRa3-ijmr2rbwkQj75SuhDaw@mail.gmail.com>
Message-ID: <CA+5PVA7EgPxqc2YR+dsB+HrzcMJRa3-ijmr2rbwkQj75SuhDaw@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PR] GuC 70.8 for MTL and DG2 + HuC 8.5.1 for MTL
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

Pulled and pushed out.

josh

On Thu, Jul 20, 2023 at 1:35=E2=80=AFPM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf=
6d:
>
>   Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-=
07-07 15:24:32 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dg2_mtl_guc_70.8
>
> for you to fetch changes up to 6f3a37f47d68d5e2108b98a900e4be910e8c7106:
>
>   i915: update DG2 GuC to v70.8.0 (2023-07-20 10:14:57 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (2):
>       i915: update to GuC 70.8.0 and HuC 8.5.1 for MTL
>       i915: update DG2 GuC to v70.8.0
>
>  WHENCE               |   6 +++---
>  i915/dg2_guc_70.bin  | Bin 369600 -> 385856 bytes
>  i915/mtl_guc_70.bin  | Bin 303936 -> 308032 bytes
>  i915/mtl_huc_gsc.bin | Bin 565248 -> 569344 bytes
>  4 files changed, 3 insertions(+), 3 deletions(-)
