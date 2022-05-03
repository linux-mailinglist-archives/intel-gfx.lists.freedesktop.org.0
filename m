Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F4351842B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 14:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F0F10F9E0;
	Tue,  3 May 2022 12:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D89010F9E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 12:21:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 077E2B81DBE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 12:21:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C487AC385B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 12:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651580469;
 bh=S6At7mx3NVUUtbPoyAtM+qqgCK/kx2Xxh5t2wxKSb/w=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=BHKHE5GFSj4Bbj7zfLMjUXAoHF4p6TNE4PbHotWKzuH1l7I0QmMjS9q+0SWOw9wyY
 GtIYmRGpllW81QQr4NYGXUwA8izO+0Ov8sCgzOcQ/gHoi+TBRBFNL4ZcO4FnLjrgwM
 ViWgHoeiiSJdXlUQ/XeluiPLWIQGdIEq2ido2Te4H7y852wCMzBmghPHBbaybLxdHX
 ZsyJoeC7yP3Y6GY91Ld9CctsIOFH5nbnzlR4JPWKGkAgiaw5rvBJmJ8SQaU/2CCGhY
 U//hsd6mb1Hy6FPPbiXa6834o4EO/31+Iuseo2wK8CIXrLpvFWgoIHpM0Ln9nz5cly
 yDw9wgxVjyYjg==
Received: by mail-il1-f171.google.com with SMTP id s14so3407009ild.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 May 2022 05:21:09 -0700 (PDT)
X-Gm-Message-State: AOAM5330+svR4orlrvyeWTErk/ENkdUgXeuZpi6clpMeC362Bc5lx7CW
 cwxID8wHTMonztNSBNgUj3uJG5OOnouRJ8JDI7Q=
X-Google-Smtp-Source: ABdhPJwORRLo6seSzlb42mXL/ZJIr6lcjNgZwf/LnArap3y3wvHoh0Jk4E0BCkc7NtA9u4RAmG0VQoj9BvHTP9SH4qM=
X-Received: by 2002:a92:d752:0:b0:2c7:dbf5:70dd with SMTP id
 e18-20020a92d752000000b002c7dbf570ddmr6634353ilq.251.1651580468804; Tue, 03
 May 2022 05:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <8593a140a0ee01998d28cdafa5a10aa5f8e44380.camel@intel.com>
In-Reply-To: <8593a140a0ee01998d28cdafa5a10aa5f8e44380.camel@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Tue, 3 May 2022 08:20:58 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5vFH6vZQpYsTjsGkuc8_d53YPcuXGxM2EyThmudr8itQ@mail.gmail.com>
Message-ID: <CA+5PVA5vFH6vZQpYsTjsGkuc8_d53YPcuXGxM2EyThmudr8itQ@mail.gmail.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] i915 Updates: DG2 DMC v2.06
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 2, 2022 at 3:56 PM Tolakanahalli Pradeep, Madhumitha
<madhumitha.tolakanahalli.pradeep@intel.com> wrote:
>
> The following changes since commit c3624ebd67c68722e0fabc9cae01397b15310239:
>
>   Merge branch 'ath10k-20220423' of
> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/linux-firmware into main
> (2022-05-02 08:31:40 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_v2.06_rebase
>
> for you to fetch changes up to b8bd6ccd9c409508a0b424492981721b45c55127:
>
>   i915: Add DMC v2.06 for DG2 (2022-05-02 22:53:23 +0530)
>
> ----------------------------------------------------------------
> Madhumitha Tolakanahalli Pradeep (1):
>       i915: Add DMC v2.06 for DG2

Pulled and pushed out.

josh

>
>  WHENCE                   |   3 +++
>  i915/dg2_dmc_ver2_06.bin | Bin 0 -> 22416 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/dg2_dmc_ver2_06.bin
>
