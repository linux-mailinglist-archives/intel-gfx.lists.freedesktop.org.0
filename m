Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F6F7CF725
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 13:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584BB10E4C3;
	Thu, 19 Oct 2023 11:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05E210E4C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 11:39:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 5552EB8287D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 11:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF2FAC433CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 11:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697715597;
 bh=3NPR4tsWiOseLUdVXRHH3VkNRoj1EbEcxNKLOJC3RVw=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=tUjY2kBiOkj3JNpv21AufPyw53G/iQtGOvSl2eVhWpyi9oHuQTOhH/SeE1N+oStCB
 aPaAlcNbFiKnClOjXpp3VwHxl5GE7IdZeTacEOA6FJXfAz4ihdgMMmOzyrjAQncTsf
 4egfg3gPLri626yGnQNeIDTcgiF0rQTTB0WbNisitJsUSEe4lyJjaKueaxI2qHqHtQ
 FQv4RB36PbrlI2PhcZdvifkVu0S4P8U3Al2Zg0idDKvKcjUGeAj/JMIbLJS865UUnZ
 zWcaU6APWd7/6zRRNDCEq15pdvBWhgbjXjiTfY458jRW0CSL7wq0FmiqQsUzhyD3ql
 iOq7s7FJvuUuw==
Received: by mail-yw1-f170.google.com with SMTP id
 00721157ae682-5a7eef0b931so96758867b3.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 04:39:57 -0700 (PDT)
X-Gm-Message-State: AOJu0YxZaEcH8JIrMM8aJmZC2fvieo67WTxM8uAEBex41iHHvaHwa2WE
 E2V5graf5/0E+WhHsYWXyKEUIVyTiapXtNnTro4=
X-Google-Smtp-Source: AGHT+IFkSSuqS3qxQRKctlKyrgkIhF/Jf1MxWXy7lClwDKwwTCUA4uEhxY9zbZTB/tlazZO00jo8d41zpqs1fxJKw8w=
X-Received: by 2002:a5b:a02:0:b0:d9b:4f28:f6ce with SMTP id
 k2-20020a5b0a02000000b00d9b4f28f6cemr2101059ybq.1.1697715596904; Thu, 19 Oct
 2023 04:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <20231018190701.2388817-1-John.C.Harrison@Intel.com>
 <c5a4f07e-1383-446c-8eb5-e473733e3b7a@intel.com>
In-Reply-To: <c5a4f07e-1383-446c-8eb5-e473733e3b7a@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 19 Oct 2023 07:39:46 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5A-XKTwAcnjraQe=CMa+MHCfpi68a1wFZ=F1_hHoyojg@mail.gmail.com>
Message-ID: <CA+5PVA5A-XKTwAcnjraQe=CMa+MHCfpi68a1wFZ=F1_hHoyojg@mail.gmail.com>
To: John Harrison <john.c.harrison@intel.com>,
 Mario Limonciello <superm1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [CI] PR for new GuC v70.13.1
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk, linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already merged.

josh

On Wed, Oct 18, 2023 at 3:11=E2=80=AFPM John Harrison <john.c.harrison@inte=
l.com> wrote:
>
> Apologies, I sent this with the wrong subject. Please ignore. Will
> resend with the correct subject.
>
> John.
>
>
> On 10/18/2023 12:07, John.C.Harrison@Intel.com wrote:
> > The following changes since commit 7727f7e3b3358713c7c91c64a835e80c331a=
6b8b:
> >
> >    Merge branch 'patch-1696561325' into 'main' (2023-10-06 03:04:57 +00=
00)
> >
> > are available in the Git repository at:
> >
> >    git://anongit.freedesktop.org/drm/drm-firmware guc_70.13.1
> >
> > for you to fetch changes up to 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa=
:
> >
> >    i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34=
:26 -0700)
> >
> > ----------------------------------------------------------------
> > John Harrison (1):
> >        i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL
> >
> >   WHENCE               |   8 ++++----
> >   i915/adlp_guc_70.bin | Bin 297984 -> 342848 bytes
> >   i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
> >   i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
> >   i915/tgl_guc_70.bin  | Bin 285888 -> 330304 bytes
> >   5 files changed, 4 insertions(+), 4 deletions(-)
>
