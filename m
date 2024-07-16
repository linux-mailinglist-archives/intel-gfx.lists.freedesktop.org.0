Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC07932A67
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 17:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22F910E789;
	Tue, 16 Jul 2024 15:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="pbjmyBG8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6EB10E2EE;
 Tue, 16 Jul 2024 15:28:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EEE92CE1379;
 Tue, 16 Jul 2024 15:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 391F0C116B1;
 Tue, 16 Jul 2024 15:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1721143720;
 bh=oYk79yYoHfk1BiMcdQ9ld3zs0u7RPwPBSxPb2TgLp5E=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=pbjmyBG8/qNPde2BxQX7XyMn5B2hC4heU4FLjAEjNRXpiIFWHrgtjDNGj0xwpnT6Q
 18RShO3lxd0VYjizxqpA9otxA4Y5birjA66C3f5a3YZ9WbADng9nyqIq4pcvL9QxMY
 1aDRXv53OKKLLVTunkduYT8ep7QW/2tiLJJB9CVBvICkil2Fp2dFwPzg3ePZfFFw+U
 aeOgdWdOw7e8voVTGbAtqdiy767+Yb6y8wNi+I3x8kEnCZ6XYU7Be1+WWRXyGPsWBN
 uC/KZNccAckuKX2k1JNqJ3pFy4iYh6dnuiJ8OrIo0DvcVdmlz4CCrNPY7Vqzo3gkNx
 TOuzG0yE3h3vg==
Received: by mail-yb1-f173.google.com with SMTP id
 3f1490d57ef6-e05a4d6e443so3199404276.0; 
 Tue, 16 Jul 2024 08:28:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCV4tdv2pn8fYXjfvaU3yulqfMf6yqX/+WWD9BZjgJEIAtTs7ahBkSiWb5VEIMDYmeC0cvt09Z512fpqB7Oa+Xg31x8Zdu3c5u0F9dV2vPSli/SLZO19bNmfN2/t73Hw0dK+hPOu1gTPZlC6sxF6cHM=
X-Gm-Message-State: AOJu0YwgabgTZHOILRnRDQOb2iySnGZ5VlCx0ca+PygUBs1MeoxtazZj
 ybMkvGvciceHW3IikXc4F8udIENzcKdjT2ktejxvqCsGhQNP5VtnIZqYYyhIW1Ep9ezQxwpSWSC
 tKJJGY0QY03YFgInAbzqJDNFWiQg=
X-Google-Smtp-Source: AGHT+IGyD7lhCC/ceGwYEzYBum7Le5Z6nMx73Ar3tWS5J0mfRjeXehvz+S+c3wOSJw4eVUKvrbxY8Dz8rbAwQtL28zg=
X-Received: by 2002:a05:6902:18c6:b0:e05:a159:6248 with SMTP id
 3f1490d57ef6-e05d5a2069dmr3584167276.57.1721143719416; Tue, 16 Jul 2024
 08:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240716132455.8401-2-gustavo.sousa@intel.com>
In-Reply-To: <20240716132455.8401-2-gustavo.sousa@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Tue, 16 Jul 2024 11:28:28 -0400
X-Gmail-Original-Message-ID: <CA+5PVA6FdFByuinUqU=8RtPJeSs5fzL8Ed+Y21sJyRp2wHrVow@mail.gmail.com>
Message-ID: <CA+5PVA6FdFByuinUqU=8RtPJeSs5fzL8Ed+Y21sJyRp2wHrVow@mail.gmail.com>
Subject: Re: PR for Xe2LPD DMC v2.21
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: linux-firmware@kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
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

On Tue, Jul 16, 2024 at 9:25=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8fe=
ac:
>
>   Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 +=
0000)
>
> are available in the Git repository at:
>
>   https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-07-16

I don't know what repo you generated this against, but it was very far
behind upstream.  I rebased and it effectively only pulled in the
single commit to update Xe2LPD DMC.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/252/comm=
its

If there's something missing, please submit it separately.

josh

>
> for you to fetch changes up to 72e5970de400e6d55a31e38bcba439ec17cedfe1:
>
>   i915: Update Xe2LPD DMC to v2.21 (2024-07-16 16:11:43 +0530)
>
> ----------------------------------------------------------------
> Intel DRM firmware intel-2024-07-16
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>       i915: Add DG2 HuC 7.10.15
>
> Dnyaneshwar Bhadane (2):
>       i915: Update Xe2LPD DMC to v2.20
>       i915: Update Xe2LPD DMC to v2.21
>
> Gustavo Sousa (1):
>       i915: Add BMG DMC v2.06
>
>  WHENCE               |   7 +++++--
>  i915/bmg_dmc.bin     | Bin 0 -> 45964 bytes
>  i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
>  i915/xe2lpd_dmc.bin  | Bin 61208 -> 59872 bytes
>  4 files changed, 5 insertions(+), 2 deletions(-)
>  create mode 100644 i915/bmg_dmc.bin
>  mode change 100755 =3D> 100644 i915/dg2_huc_gsc.bin
