Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 475237B7F19
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 14:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A6F10E114;
	Wed,  4 Oct 2023 12:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D4A10E114
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 12:28:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 459E6B81884
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 12:28:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FFC7C433C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 12:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696422498;
 bh=s6MIaYFoLBiUrWFoNZyyjP10lI4I2oeizymP5aERV/E=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=nv9/Dup1T6nljnAKcScZCTuGyKY8ZhW3XqoA+GQbJkFwx+WF208+KXkugodO6S+2S
 GkXneDbqQaB3TuDXuYz1sGeIGvZcmmvVi2g52wUzojKtVp17FxNHKr63KdNA50YjL3
 S6x1Dego+YkZYNZd6aeyLqF6R+VpsA4s7JNtcswsMn07efr3RmhIS5MiQGnnFVfxcP
 Kjs9F7p7IAG/5T9xhcC5h+S5vTCaR/E2EmD/bWe9QmZfMIuJhcKy8Va3PMOIktjVEf
 DAJn2GOEf2RZuG97/k4bd3RUwDg5y86ht+juiaxggtFljGb3hnYMpPO7sQawQ15sq1
 xAFdJih+E+gFg==
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-59f6041395dso24853547b3.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Oct 2023 05:28:18 -0700 (PDT)
X-Gm-Message-State: AOJu0YxLtg7zQdmGF4ITAXJFh7ZmBYyNRDJO1b3UncRd5/bkZomktVFS
 d5AokgvpyFUwy0MKTLbRRkSETHZOqOOekQ9wQOM=
X-Google-Smtp-Source: AGHT+IHA9/MbVARLlM8LWdL6THD+U88plnrQK3x9BxLdFGt6e48JR4IfmA7hTsR8Y1DNUquQ4HCRiuoCV33U6e2iw9w=
X-Received: by 2002:a5b:285:0:b0:d7b:9d44:7574 with SMTP id
 x5-20020a5b0285000000b00d7b9d447574mr1679243ybl.64.1696422497875; Wed, 04 Oct
 2023 05:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <thqm4hqbkgqxj5fh6olad5brvwvtlof55tjk3kfzzz6r65xcd4@pww7dj5lvr25>
In-Reply-To: <thqm4hqbkgqxj5fh6olad5brvwvtlof55tjk3kfzzz6r65xcd4@pww7dj5lvr25>
From: Josh Boyer <jwboyer@kernel.org>
Date: Wed, 4 Oct 2023 08:27:00 -0400
X-Gmail-Original-Message-ID: <CA+5PVA4RVQDWMrZkA3_XVfM8j3y5KjVokhzjLRgNMoQSHHmGrg@mail.gmail.com>
Message-ID: <CA+5PVA4RVQDWMrZkA3_XVfM8j3y5KjVokhzjLRgNMoQSHHmGrg@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for MTL DMC v2.17
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

On Mon, Oct 2, 2023 at 8:59=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel.c=
om> wrote:
>
> The following changes since commit 8b855f3797e6b1d207b7a2b8dae0e9913f907e=
5b:
>
>   Merge branch 'main' into 'main' (2023-09-26 18:31:16 +0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.17

Pulled and pushed out.

josh

>
> for you to fetch changes up to 18b60f44e61c72eb5a5a36dc8e0381c77ba670b3:
>
>   i915: Update MTL DMC to v2.17 (2023-10-02 09:52:35 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Update MTL DMC to v2.17
>
>  WHENCE           |   2 +-
>  i915/mtl_dmc.bin | Bin 52388 -> 52508 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
