Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F09A84F362
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8E810F30D;
	Fri,  9 Feb 2024 10:25:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="DzsqcT4/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FB3112AC1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 11:35:11 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id
 3f1490d57ef6-d9b9adaf291so4530245276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Feb 2024 03:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google; t=1707219310; x=1707824110;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ipIFPiuOZlL03JscPcnqfUuXdCqKvtPZ/moGeh3312s=;
 b=DzsqcT4/hPYPeAxywb2kE0gW0ox8lXL9rEqE4t3gdXLu/QrSHFdO/3Ckt/+S5ToIlZ
 KMn0Q5V2XIUP84lpzvh+Mv75cQs0Uip+u2TTvzSRwN1OWYlQLzS7VS0iweINMkGmO9I2
 M8Gu14PjklUEmLnc1tiUY/y6PAxi4DI8C6qI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707219310; x=1707824110;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ipIFPiuOZlL03JscPcnqfUuXdCqKvtPZ/moGeh3312s=;
 b=alKsiZzMCztNxGbLrWjoE7fYI8I9I/grT/GsJEu6Ss2IdYGV8XIY7DVdg9NKjiUFaD
 9VD6x6+xrpOxaKMR2rSr1PHsY/ediCxnlLcJxkx0AZDcDUsSPtQCDGiobA79Y2liiLZB
 MzbJJzsEmCotlEc7XwVzgPsqAoxDfkCoxpHfJXhw3X+gZgmsnLBdvzAH+Vdit8XX4qK9
 iauX9fMDQzMT1atzyumMtEjHLZVFn62DmCdwvZtq1+JWvnVoKxqy2y6hbo6g5Uz0it+g
 g5k07mJ4BlSiBf7rfNCvzEnJpL0DFoOuKKxQppvu8JSvjeffSyDm5buMv9yq23nDJchb
 8Zyw==
X-Gm-Message-State: AOJu0YzcCkVE/yQdSPrlLQ20zMj2HKiZsE4r0uHRNKQI5ztOISwaFpnX
 026URGav76k4jG2R6mFK5FY693Z900ploFSUliQnuw0qhj9MwBbp5RmKVmX0zXa6W+qcMRXVvNC
 2wdUEni7DBBsJ8OywRRB3woVshPj6opAnUIBnXQ==
X-Google-Smtp-Source: AGHT+IFs9N+MMWXICUW8m7zjdBDfxfxKrJHf8SDeiP+oYRkgDorOT5XmQOl5gAjCH+qk4NmEovj7aTrJBhpDMGxfG60=
X-Received: by 2002:a25:824f:0:b0:dbd:b081:9663 with SMTP id
 d15-20020a25824f000000b00dbdb0819663mr1120369ybn.41.1707219310352; Tue, 06
 Feb 2024 03:35:10 -0800 (PST)
MIME-Version: 1.0
References: <20240206115956.4570e9b1@canb.auug.org.au>
 <20240206120643.1d30764c@canb.auug.org.au>
 <fe0b21360178348543e662e9d620af9c@kernel.org>
In-Reply-To: <fe0b21360178348543e662e9d620af9c@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 6 Feb 2024 12:34:59 +0100
Message-ID: <CABGWkvpuukHq_qcdjAyczaSxVyG_dUda0SATuS9VoSzmQgdjPA@mail.gmail.com>
Subject: Re: linux-next: manual merge of the drm-misc tree with Linus' tree
To: Michael Walle <mwalle@kernel.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>, Inki Dae <inki.dae@samsung.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>, 
 Michael Trimarchi <michael@amarulasolutions.com>,
 Robert Foss <rfoss@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 09 Feb 2024 10:25:43 +0000
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

Hi Michael,

On Tue, Feb 6, 2024 at 12:29=E2=80=AFPM Michael Walle <mwalle@kernel.org> w=
rote:
>
> Hi Stephen and all,
>
> >> Today's linux-next merge of the drm-misc tree got a conflict in:
> >>
> >>   drivers/gpu/drm/bridge/samsung-dsim.c
> >>
> >> between commit:
> >>
> >>   ff3d5d04db07 ("drm: bridge: samsung-dsim: Don't use
> >> FORCE_STOP_STATE")
> >>
> >> from Linus' tree and commit:
> >>
> >>   b2fe2292624a ("drm: bridge: samsung-dsim: enter display mode in the
> >> enable() callback")
> >>
> >> from the drm-misc tree.
> >>
> >> I fixed it up (see below, please check) and can carry the fix as
> >> necessary. This is now fixed as far as linux-next is concerned, but
> >> any
> >> non trivial conflicts should be mentioned to your upstream maintainer
> >> when your tree is submitted for merging.  You may also want to
> >> consider
> >> cooperating with the maintainer of the conflicting tree to minimise
> >> any
> >> particularly complex conflicts.
> >
> > I changed my mind and just used the latter version of this file.
>
> Bug wise, this is the wrong solution. Because it will reintroduce the
> faulty FORCE_STOP_STATE. Also keep in mind, my fixes commit is/was
> already
> backported to the stable series.
>
> See also the discussion at [1]. Unfortunately, there was no conculusion
> yet.
> I think [2] is the proper resolution, at least for the commit
> b2fe2292624a
> ("drm: bridge: samsung-dsim: enter display mode in the enable()
> callback")
> I'm not sure in what state the drm-misc tree is.
>
> -michael
>
> [1]
> https://lore.kernel.org/dri-devel/CAPM=3D9tytMB9frxNeD08hu1qsusY=3DwEE3bJ=
OFmUgA1rSpabwDpg@mail.gmail.com/
> [2]
> https://lore.kernel.org/dri-devel/31e1a38a1d012a32d6f7bc8372b6360e@kernel=
.org/


Unfortunately, in this recent period, I have been very busy and have
not been able to run tests on this matter.
As soon as I am able to do so, I will.

Thanks and regards,
Dario

--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com
