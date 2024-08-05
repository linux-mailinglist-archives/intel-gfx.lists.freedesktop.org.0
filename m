Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CF0947A85
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 13:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7542610E012;
	Mon,  5 Aug 2024 11:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="bDwdIhSg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9541510E012;
 Mon,  5 Aug 2024 11:41:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E678460C26;
 Mon,  5 Aug 2024 11:41:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 966ABC32782;
 Mon,  5 Aug 2024 11:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722858106;
 bh=E3ahWBviCoqFcVG03W9ZYAdrER7JEEzise/0pd6IbIY=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=bDwdIhSg2Yi5dVI0K0nuVeTu4CcCuBI0xveCvkfIAwoJt7TaAqmR3vJ0GtwjF94fF
 e55ndhQIdpTDqU7P1zjFVuT+XqhcStQ+/SbHSRmxIvUdWFlVmJaqaK9MSwfBqoxlcY
 khzrRa7Oyu0pBinmCylZgiy/Nfof1Hwdlh/ANJ8NnynnI17mf96ZosIgdsStEbx4vi
 ZNGLJNpUjXKJzlB/PdeAYB/xVNDRrgC3p0UqaXEN1MKwcz+/Qzmm6mVBYIJ2CVIKGc
 1FQqN1TwUG812bRgK8eBpV16ro2PWnPIpbouW7uo2Ds1g+UD8Ug8XKY5/cHdDmtjWi
 VFx6IyXSR7ZNQ==
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-65fe1239f12so71360587b3.0; 
 Mon, 05 Aug 2024 04:41:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUBqCqkWEVDWkslerNMcmoHQsvHyL7uB+ADdjPkYUEr4KKUY7AVf4oRocBWNFehV9XrDKhxGbbdWY9v+JeQd4zmf+IbAMdeaUrL2eY0k+ly30AQgBuSuxLkcNvj0FcwIb9hX5jKZIXG2vMJUKAWQ3w=
X-Gm-Message-State: AOJu0YwEBkKIVh1GlNW3aNUK4Xz9NDjzZYRo+LgYUgjIZkj4Zf5cFYHO
 izrIrdLijpgniNwaq+xoUOYFq8APbYloOeeQofkUjsbF+pSuDuvsRvW6olnJNQX3Y+rAQGVhjvI
 Yapq7f5TgVFCefScF1gIdbjaFMdk=
X-Google-Smtp-Source: AGHT+IFWxmHCberVsakhXtl8rlWFkBZL9CTdFSK1UpCQUhmmPWa91YPj++pgbzTCIe+8ZK9HsXBnmrRCZHkmSPmjsSU=
X-Received: by 2002:a0d:c306:0:b0:64a:6eda:fc60 with SMTP id
 00721157ae682-6895f9e5e2cmr96108717b3.4.1722858105800; Mon, 05 Aug 2024
 04:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240802175932.784781-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20240802175932.784781-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 5 Aug 2024 07:41:34 -0400
X-Gmail-Original-Message-ID: <CA+5PVA6T-tJziaykh+Ryin9GVeCmFwEqEDNKOSnad09F3PphOg@mail.gmail.com>
Message-ID: <CA+5PVA6T-tJziaykh+Ryin9GVeCmFwEqEDNKOSnad09F3PphOg@mail.gmail.com>
Subject: Re: PR for new i915 and Xe binaries
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: linux-firmware@kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com, 
 John.C.Harrison@intel.com
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

On Fri, Aug 2, 2024 at 1:59=E2=80=AFPM Daniele Ceraolo Spurio
<daniele.ceraolospurio@intel.com> wrote:
>
> A bulk update of several binaries in the i915 and Xe folders.
>
> - GuC:
>     - All TGL+ binaries updated to v70.29.2
>     - New binary added for BMG, also v70.29.2
>
> - HuC:
>     - DG2 binary updated to latest rev (v7.10.16)
>     - New binaries added for LNL (v9.4.13) and BMG (v8.2.10)
>
> - GSC:
>     - MTL binary updated to v102.0.10.1878
>     - New binary added for LNL, v104.0.0.1161
>
> - DMC:
>     - MTL binary updated to v2.22
>
> The following changes since commit 65c5d9b1a4808462f5e885447dae1a133c96ab=
ec:
>
>   Merge branch 'amdgpu-20240726' into 'main' (2024-07-28 14:28:08 +0000)
>
> are available in the Git repository at:
>
>   https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-08-02

Merged and pushed out.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/266

josh

>
> for you to fetch changes up to 95c414d44c8e60880be787822d5020a010044a49:
>
>   xe: First GuC release v70.29.2 for BMG (2024-08-01 11:11:04 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (5):
>       i915: update DG2 HuC to v7.10.16
>       xe: Add LNL HuC 9.4.13
>       xe: Add GSC 104.0.0.1161 for LNL
>       xe: Add BMG HuC 8.2.10
>       i915: update MTL GSC to v102.0.10.1878
>
> Dnyaneshwar Bhadane (1):
>       i915: Update MTL DMC v2.22
>
> Julia Filipchuk (3):
>       i915: Add GuC v70.29.2 for ADL-P, DG1, DG2, MTL, and TGL
>       xe: Add GuC v70.29.2 for LNL
>       xe: First GuC release v70.29.2 for BMG
>
>  WHENCE               |  30 +++++++++++++++++++++---------
>  i915/adlp_guc_70.bin | Bin 347584 -> 328768 bytes
>  i915/dg1_guc_70.bin  | Bin 321472 -> 302656 bytes
>  i915/dg2_guc_70.bin  | Bin 410368 -> 369408 bytes
>  i915/dg2_huc_gsc.bin | Bin 630784 -> 630784 bytes
>  i915/mtl_dmc.bin     | Bin 52476 -> 52700 bytes
>  i915/mtl_gsc_1.bin   | Bin 1142784 -> 1134592 bytes
>  i915/mtl_guc_70.bin  | Bin 332544 -> 303872 bytes
>  i915/tgl_guc_70.bin  | Bin 335168 -> 316352 bytes
>  xe/bmg_guc_70.bin    | Bin 0 -> 406272 bytes
>  xe/bmg_huc.bin       | Bin 0 -> 585728 bytes
>  xe/lnl_gsc_1.bin     | Bin 0 -> 1155072 bytes
>  xe/lnl_guc_70.bin    | Bin 336640 -> 316160 bytes
>  xe/lnl_huc.bin       | Bin 0 -> 643072 bytes
>  14 files changed, 21 insertions(+), 9 deletions(-)
>  create mode 100644 xe/bmg_guc_70.bin
>  create mode 100644 xe/bmg_huc.bin
>  create mode 100644 xe/lnl_gsc_1.bin
>  create mode 100644 xe/lnl_huc.bin
