Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B939C516F94
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 14:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19C1110E453;
	Mon,  2 May 2022 12:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A38610E453
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 12:30:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 84A03B816E4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 12:29:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5418FC385B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 12:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651494597;
 bh=EsmYFwfMHQTy4IqFW58UOfCfW2WnrOBdYhWKBTzZmtU=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=On2UsJZR+gy0xzq5Jb4QI4zel8DoTuC5QiPjXW6qWUULBOIxZ6HiaBCuhMOsTaoHu
 Vnr3FgXt74Ixw7MTdpC3sMri2PI15feudNeFgRxoMCFvTfC4pqGpVqJ+ojtOHDtj+C
 R4FTDma1fi2EZzJGxoKNLpj8li6QgfeOIRBOWsrarisNT6MmaljM87Lt6PGoO914Cl
 8df9rGJztPZo7i/ymrxJClGuFcJC9SuCeE/EJQCsnyd99OSTQqs2lIfRVA1djVujaz
 rAS7nrH/Ed5TtyMFNG2T7f3HrPcfLQ6DFfoQ4LsK8jA5SyqrmQ2DSK85Ot0ailDnsg
 JTyVQP7ATAaUw==
Received: by mail-io1-f44.google.com with SMTP id g21so15768271iom.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 05:29:57 -0700 (PDT)
X-Gm-Message-State: AOAM5307PoKQ1He97DEanxlbUX5xU48NjD5TQW2RdVbZbQOey+2tdoO4
 5qHnt9PJFsQBn63d5MEbfjlVb8a7k7/BEbT743o=
X-Google-Smtp-Source: ABdhPJx6dzE13U4u5EW3uGCoZVC0g17eY5T/fJIFCIT7PZ/SPrTHyd2Z+Ax9mMBVrnptesovqdvfm+YXKMfIfjnKZmM=
X-Received: by 2002:a5e:821a:0:b0:657:c59f:898c with SMTP id
 l26-20020a5e821a000000b00657c59f898cmr4056306iom.209.1651494596445; Mon, 02
 May 2022 05:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220428190725.3704842-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220428190725.3704842-1-John.C.Harrison@Intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 2 May 2022 08:29:45 -0400
X-Gmail-Original-Message-ID: <CA+5PVA50kgprAj-n+HsB4sEa=MEujkvm_dA2sEQ-a0NEE6-3Tw@mail.gmail.com>
Message-ID: <CA+5PVA50kgprAj-n+HsB4sEa=MEujkvm_dA2sEQ-a0NEE6-3Tw@mail.gmail.com>
To: John Harrison <John.C.Harrison@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for new GuC v70.1.2 for DG2
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

On Thu, Apr 28, 2022 at 3:07 PM <John.C.Harrison@intel.com> wrote:
>
> The following changes since commit ac21ab5d1de0de34201c90d32eee436f873d1e5b:
>
>   Mellanox: Add lc_ini_bundle for xx.2010.1006 (2022-04-25 07:36:16 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware guc_v70.1.2_dg2
>
> for you to fetch changes up to 89ae5eb20f65752db6a3e38b9a69144f19540567:
>
>   i915: Add GuC v70.1.2 for DG2 (2022-04-26 13:27:47 -0700)

Pulled and pushed out.

josh

>
> ----------------------------------------------------------------
> John Harrison (1):
>       i915: Add GuC v70.1.2 for DG2
>
>  WHENCE                  |   3 +++
>  i915/dg2_guc_70.1.2.bin | Bin 0 -> 365568 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/dg2_guc_70.1.2.bin
