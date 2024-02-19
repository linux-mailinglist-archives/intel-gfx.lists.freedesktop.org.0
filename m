Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D75785A3B2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 13:45:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5633A10E408;
	Mon, 19 Feb 2024 12:45:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="q7I5AxEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E7810E406;
 Mon, 19 Feb 2024 12:45:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2CAA460D17;
 Mon, 19 Feb 2024 12:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D01E4C433C7;
 Mon, 19 Feb 2024 12:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708346720;
 bh=e7mMUZWo5YhuNllD0gWdAThtgZfQ0LlGszn85q+IdWA=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=q7I5AxEfybMWMtzLcv0UyKmUK/eiKX2W50PG7bd+c+3K2AhREBxkbkIwOfPTkZ+0h
 dn+MOTT2Hv8SvLZ654j7GrQH4sKxWbgTrQTTT2L8/0VXIAcqTH1UAJpD+KbvokyvUV
 Kd59dh964EQdDOJAqOMAcbtQ9NYpeiYUrVVfze7u7fS9qI1iDZEvzkhEyCFSfjaZJq
 i7BR1+dw+R/QcHQzYBnJfwSI7o+pJf2w2/LkmtEivmAxMnSFw9HYWEkjslPa0KEsVZ
 dmNwU3LNe9zObwB0QrPiV5/fmSrLAbs5FA+3/DvR43w5O9CpfMiedS9Czc0qESi6zU
 /5K1KnXLz3Uag==
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-607e54b6cf5so24163547b3.0; 
 Mon, 19 Feb 2024 04:45:20 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVE2kZwyR7Mj/VGZa6chrpLRDcZSfQ4PAEcaZA7u6DaJfOn/4gDjY/DEQ3t3CVqxfFTBDaUhqrj73f4hJf7IWbESPvo6D+BH3YtzR/Jk2Nxk7oYszVXX+iLTvzYq3HlUJ3sn0o6aHgSjMfYgdBL0pg=
X-Gm-Message-State: AOJu0Yz/W6pCHEJJYdJ+BhCNPJ1Dy05hDzvVt2TkSS8Sx8GUhdN1IWx8
 wvfrgk3iRnwssn4cwTSh6fxO4fCA0VXDs4W4gLx38Jr9Rv3LfXJEMGXF/8Rje67ogKeWvy+XiV1
 zYmXPAtm7Ylf4B4XcyDxuth9jFN8=
X-Google-Smtp-Source: AGHT+IHAEON4SmS+VCfUEs2H9U/jtJ7Y0XtxYH/deQXiTkty4ZCsoxuXH4akdX+WS2DHCO8grV04bfm+LWTnUSEd6Ko=
X-Received: by 2002:a81:920f:0:b0:604:de1c:5406 with SMTP id
 j15-20020a81920f000000b00604de1c5406mr7828698ywg.8.1708346720010; Mon, 19 Feb
 2024 04:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20240216211432.519411-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240216211432.519411-1-John.C.Harrison@Intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 19 Feb 2024 07:45:09 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4HNHBpR_5LBi8KbE3artRf6WZUMFXTR_myiDhm58YXkA@mail.gmail.com>
Message-ID: <CA+5PVA4HNHBpR_5LBi8KbE3artRf6WZUMFXTR_myiDhm58YXkA@mail.gmail.com>
Subject: Re: PR for new GuC v70.20.0 binaries
To: John.C.Harrison@intel.com
Cc: linux-firmware@kernel.org, kyle@kernel.org, ben@decadent.org.uk, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
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

On Fri, Feb 16, 2024 at 4:16=E2=80=AFPM <John.C.Harrison@intel.com> wrote:
>
> The following changes since commit fbef4d381e3d0143427e1a8c924be8e738c0fc=
2d:
>
>   Merge branch 'main' into 'main' (2024-02-08 12:24:01 +0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware guc_70.20.0

Merged and pushed out.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/156

josh

>
> for you to fetch changes up to 28c2472d37d089edb56c75e3af83511babaa756c:
>
>   xe: First GuC release for LNL and Xe (2024-02-14 16:28:32 -0800)
>
> ----------------------------------------------------------------
> John Harrison (2):
>       i915: Add GuC v70.20.0 for ADL-P, DG1, DG2, MTL and TGL
>       xe: First GuC release for LNL and Xe
>
>  LICENSE.xe           |  39 +++++++++++++++++++++++++++++++++++++++
>  WHENCE               |  20 ++++++++++++++------
>  i915/adlp_guc_70.bin | Bin 342848 -> 347584 bytes
>  i915/dg1_guc_70.bin  | Bin 272512 -> 321472 bytes
>  i915/dg2_guc_70.bin  | Bin 443200 -> 410368 bytes
>  i915/mtl_guc_70.bin  | Bin 365376 -> 332544 bytes
>  i915/tgl_guc_70.bin  | Bin 330304 -> 335168 bytes
>  xe/lnl_guc_70.bin    | Bin 0 -> 336640 bytes
>  8 files changed, 53 insertions(+), 6 deletions(-)
>  create mode 100644 LICENSE.xe
>  create mode 100644 xe/lnl_guc_70.bin
