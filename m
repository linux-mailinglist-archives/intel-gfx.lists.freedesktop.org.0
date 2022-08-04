Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 044C9589B1E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 13:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C684966F4;
	Thu,  4 Aug 2022 11:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AA59666B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:37:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 602F06173B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2654C433D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 11:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659613044;
 bh=FjzXh9wOhnz0QVqLzamIpPYTx002hj5ogg6FPrVMARk=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=LeJWqUBKM9e1iLBRaBbvAaTrs82DgqZEG1tJnhrv/Ag/tk9nrJXf1JYGKCl7zjn8k
 2hxADa/NJZ03Wilv0mKS4VyREQjFERSgXj436UZv1IiJm0db/kf/AlupYr8qntYYWH
 4Uu/vYyZG5riyezGfBHFV55jjdhsQDOqN+Ee4KSPhWvOzPnF1I5zlNNa4V7vzITOy7
 SHIqHNJjt3IwqHen6ZFtPPDyAv0S+EL0VCiWauVMC0o6sTknEN+zvY3g+EwcScfz59
 AthlpUGI9NPc3eW5b3Unyc7VQqFDSV6h/3w6/TlRgUoc30V4a7L9QW5lC/HfjKJOaf
 ohJMGVAWYqocA==
Received: by mail-io1-f50.google.com with SMTP id l24so14881086ion.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Aug 2022 04:37:24 -0700 (PDT)
X-Gm-Message-State: ACgBeo13+PkNkx23Q41k6XcHXuygHhgBgMcn8j9spdk9306TkdsnMm67
 Fs+0y+K/iNhoRvYjyF++3M1FliftRmd7yjatP+M=
X-Google-Smtp-Source: AA6agR67GgEjCgGkXgFF+9BAHSMV8skpESzkE5ASXWbb7mE8b3ZxaqvrS2KhOWjeIZpYwfzaOCRq8DiaMY4ntkUlRjw=
X-Received: by 2002:a6b:e511:0:b0:67f:9ef6:5779 with SMTP id
 y17-20020a6be511000000b0067f9ef65779mr595706ioc.177.1659613043974; Thu, 04
 Aug 2022 04:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <badb459d915e98b52402f9b517c032b2a6efd5c0.camel@intel.com>
In-Reply-To: <badb459d915e98b52402f9b517c032b2a6efd5c0.camel@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 4 Aug 2022 07:37:13 -0400
X-Gmail-Original-Message-ID: <CA+5PVA4CLLnCFoJr+BEAf=UTZTHDS0E5vcz1yeLwD8m7ymNVeQ@mail.gmail.com>
Message-ID: <CA+5PVA4CLLnCFoJr+BEAf=UTZTHDS0E5vcz1yeLwD8m7ymNVeQ@mail.gmail.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] i915 Updates: DG2 DMC v2.07
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

On Fri, Jul 29, 2022 at 1:25 PM Tolakanahalli Pradeep, Madhumitha
<madhumitha.tolakanahalli.pradeep@intel.com> wrote:
>
> Kindly add the below changes to linux-firmware:
>
> The following changes since commit 150864a4d73e8c448eb1e2c68e65f07635fe1a66:
>
>   amdgpu partially revert "amdgpu: update beige goby to release 22.20" (2022-07-
> 25 14:16:04 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_2_07

Pulled and pushed out.

josh

>
> for you to fetch changes up to 3ab394af47ab6b0139a3fa6a7b39564a4d18cb25:
>
>   i915: Add DMC v2.07 for DG2 (2022-07-27 10:52:59 -0700)
>
> ----------------------------------------------------------------
> Anusha Srivatsa (1):
>       i915: Add DMC v2.07 for DG2
>
>  WHENCE                   |   3 +++
>  i915/dg2_dmc_ver2_07.bin | Bin 0 -> 22488 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/dg2_dmc_ver2_07.bin
>
> --
> 2.37.1
>
> Thanks!
> - Madhumitha
