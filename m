Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DCC509DE6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 12:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E04010E748;
	Thu, 21 Apr 2022 10:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5404010F3D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 10:46:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id ED81CB823AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 10:46:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2CF2C385A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 10:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650537962;
 bh=aIbP4lLTVTaeksomD30j0Z6NWPt93AnX8DLJF/5Jkhk=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=jVs/+HPFE95KOtEdF8QEFq6LVSYDX1STi2S9m1lpZuFb08Gs3qLFqxmg2z5Obqw0n
 XnyQL0UZ6E1aK4MGbwz44eLLifBsqNwB/kyo8W9UHr2G9nLHvmzkVH5xvbUbv9GGct
 HEtGJJLxlB/N4ujISb1LadQk9D1u32nBICmZYohfGvgQxovlGZczfTZxE67/XQIgOX
 sFN5rzBoSzwx9REXNwd70OOux29M/e1C1U8ZSaMg9UICY5A6VXbAHowaUIy6GgEJ7z
 g+/LhZVpWSWSASNr0IrkUYHQ7PgsGaXY43u0bxEC5ScrcKv3ZAqhRuoSdBWbYPyT3a
 Jj6nkO4Gdxo2Q==
Received: by mail-il1-f172.google.com with SMTP id r17so2780562iln.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 03:46:02 -0700 (PDT)
X-Gm-Message-State: AOAM530gwFbrBtqkqluhpMOPO56IT4Qb+9OQsncsscgiD1jDiMiqJSkk
 FgtxSwvpfxuo78U77Xw/zYZoQXWvZ3WQAQCEmE8=
X-Google-Smtp-Source: ABdhPJwnzCWXcNfPl/CrDtOFtkwOg/mX6LuOltVooQdZFTfuva0DcQ+S54kp39CXONNEgQsTMx4denV3Urdy1xL5gRQ=
X-Received: by 2002:a05:6e02:1a45:b0:2cc:2d09:b7 with SMTP id
 u5-20020a056e021a4500b002cc2d0900b7mr7258608ilv.2.1650537961862; Thu, 21 Apr
 2022 03:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220419234601.3075232-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220419234601.3075232-1-John.C.Harrison@Intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 21 Apr 2022 06:45:51 -0400
X-Gmail-Original-Message-ID: <CA+5PVA61QXTrpJq0-CHayz4Y4aFMSfd+MyBUt3ey+PQmSptiJw@mail.gmail.com>
Message-ID: <CA+5PVA61QXTrpJq0-CHayz4Y4aFMSfd+MyBUt3ey+PQmSptiJw@mail.gmail.com>
To: John Harrison <John.C.Harrison@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for new GuC v70.1.1
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 Linux Firmware <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pulled and pushed out.

josh

On Tue, Apr 19, 2022 at 7:46 PM <John.C.Harrison@intel.com> wrote:
>
> The following changes since commit 681281e49fb6778831370e5d94e6e1d97f0752d6:
>
>   amdgpu: update PSP 13.0.8 firmware (2022-03-18 07:35:54 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware guc_v70.1.1
>
> for you to fetch changes up to ab0d8c137d4235dbb09ac4c76dd5477719cd73f1:
>
>   i915: Add GuC v70.1.1 for all platforms (2022-04-07 13:14:24 -0700)
>
> ----------------------------------------------------------------
> John Harrison (1):
>       i915: Add GuC v70.1.1 for all platforms
>
>  WHENCE                   |  30 ++++++++++++++++++++++++++++++
>  i915/adlp_guc_70.1.1.bin | Bin 0 -> 289472 bytes
>  i915/bxt_guc_70.1.1.bin  | Bin 0 -> 206464 bytes
>  i915/cml_guc_70.1.1.bin  | Bin 0 -> 206976 bytes
>  i915/dg1_guc_70.1.1.bin  | Bin 0 -> 265152 bytes
>  i915/ehl_guc_70.1.1.bin  | Bin 0 -> 274496 bytes
>  i915/glk_guc_70.1.1.bin  | Bin 0 -> 206784 bytes
>  i915/icl_guc_70.1.1.bin  | Bin 0 -> 274496 bytes
>  i915/kbl_guc_70.1.1.bin  | Bin 0 -> 206976 bytes
>  i915/skl_guc_70.1.1.bin  | Bin 0 -> 206208 bytes
>  i915/tgl_guc_70.1.1.bin  | Bin 0 -> 277440 bytes
>  11 files changed, 30 insertions(+)
>  create mode 100644 i915/adlp_guc_70.1.1.bin
>  create mode 100644 i915/bxt_guc_70.1.1.bin
>  create mode 100644 i915/cml_guc_70.1.1.bin
>  create mode 100644 i915/dg1_guc_70.1.1.bin
>  create mode 100644 i915/ehl_guc_70.1.1.bin
>  create mode 100644 i915/glk_guc_70.1.1.bin
>  create mode 100644 i915/icl_guc_70.1.1.bin
>  create mode 100644 i915/kbl_guc_70.1.1.bin
>  create mode 100644 i915/skl_guc_70.1.1.bin
>  create mode 100644 i915/tgl_guc_70.1.1.bin
