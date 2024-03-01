Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A80D86E958
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 20:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 840C310EAC6;
	Fri,  1 Mar 2024 19:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="mpzxi69o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1C410EAC6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 19:17:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9358161000
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 19:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4190BC43390
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 19:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1709320624;
 bh=QsLbGcceeFZ2oT2XBRlNz4J6NekpRIM5/VgLAtGw2So=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=mpzxi69o3n+G74sqkRuRMjwjlbtatie6IPJ6IlllYw0bcYoHSeWad9bsgh06GKOmp
 4h1obhobkqgCY5YmbfmdDDdRlDfxKHG3MpTtdADWVEx3ObLbUGz6k7Sp+a0vZ1+5pw
 /MySRzkjB0w+aGBrFFLmSZO6Xyu8SFIOn1wQLXDM5StfeSF9Vi7/dPf2fHt1lXKXAi
 nZG3olH4JVd1xjZtGghIMbrm+f6EupUn8d6dbmHZTX2KFYjTvBagf+IH3TMYEX7bWw
 UDQ9XNUuvNhDh+t2AufzowuO+FZrqwgB9N6sY57al2Si19L4e2U7826nBdcIk+MoQD
 ZTYusi6trRxTA==
Received: by mail-yb1-f173.google.com with SMTP id
 3f1490d57ef6-dc74435c428so2699144276.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Mar 2024 11:17:04 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCU6Ntx0UMZpN9nkjAs9EH2PwCUOTAmE9Q3gKbOivWQfsTGc0Sk40NCA0iTvAZY4oBG2Pbe7tutWNV8CkRCVwj9omxFxdJvILgjNMk58DaIC
X-Gm-Message-State: AOJu0Yys7K4MNWoMkQZHGHtbTn3tXwRP5vQWvgmuT8XaqoikeLn85zK/
 KRnCBvFkdBKXGYRH8IRSfy73Ytt17WCyOvkxFAryrn8fOsoMZIZq1kUsH+7dxdx5m15aQdVrqsb
 qXpuQb1agkpO1uD6quysnq61+gWg=
X-Google-Smtp-Source: AGHT+IFTtZQUtuu1R4Rss0RkmfI96V3bne3ZHfUVK9PhijlXVrn3Lcl2tx04HI3F5D8TmW3aFb2lktxyPl2SbEQg5N8=
X-Received: by 2002:a25:aa33:0:b0:dcd:36c1:ecb7 with SMTP id
 s48-20020a25aa33000000b00dcd36c1ecb7mr2384949ybi.54.1709320623371; Fri, 01
 Mar 2024 11:17:03 -0800 (PST)
MIME-Version: 1.0
References: <20240222135834.75378-1-gustavo.sousa@intel.com>
In-Reply-To: <20240222135834.75378-1-gustavo.sousa@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 1 Mar 2024 14:16:52 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4HcOJu6O1=a9tjURfe4SOgb5bd1ZcrtB2R4Bdihp8Adg@mail.gmail.com>
Message-ID: <CA+5PVA4HcOJu6O1=a9tjURfe4SOgb5bd1ZcrtB2R4Bdihp8Adg@mail.gmail.com>
Subject: Re: PR for MTL DMC v2.21
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: linux-firmware@kernel.org, intel-gfx@lists.freedesktop.org
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

On Thu, Feb 22, 2024 at 8:58=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit 97b693d243f0bb464819fa3f8326edd4091032=
e4:
>
>   Merge branch 'mediatek' into 'main' (2024-02-20 15:13:01 +0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_dmc_2.21

Pulled and pushed out.

https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/159

josh

>
> for you to fetch changes up to 98502ba83a6db0e4dc99aa1fa292e48b1dc8d0ce:
>
>   i915: Update MTL DMC v2.21 (2024-02-22 10:51:16 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Update MTL DMC v2.21
>
>  WHENCE           |   2 +-
>  i915/mtl_dmc.bin | Bin 52476 -> 52476 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
