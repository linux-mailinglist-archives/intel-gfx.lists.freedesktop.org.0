Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B635120290
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22626E49A;
	Mon, 16 Dec 2019 10:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613A46E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:31:00 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id d20so6169652ljc.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 02:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R2CAqD7yphVxKpqpK+F/eAr7MRlAfENWVqw0CFqAnoY=;
 b=F98ofzZswi1ON1bAKTPSWd5+Icm6mrMRcWlGoNTeahpUdZxvSM6qFcZqGN4zAN4Osp
 NdlLEy7XHE0zbPmUPi2zZq5/U5/a9Ue2B+XfIh+EluUE+NoHaOMSjoxvxpExuwNfwwOs
 2oTEoPYR/rTYGmGXHzgc0Pr/FAj3QmcuhcAhTsRGt6RmxDIqCHgnOQMkUTOAHb4I3u1R
 m/2YQVrcDL+DR1UUH/SkmD8dEzpXTM4KzvF07eOk6LXi/nqEznJiz6kcl0yeiO3Lfg0O
 dcea358D79Zrq3wRs5ExA4+mnB0OVo8ZagEMOi3YmF/JKgrNYhNQ40lRqBXcsKfb/BZy
 RfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R2CAqD7yphVxKpqpK+F/eAr7MRlAfENWVqw0CFqAnoY=;
 b=Ix/n71WVlqRxidqGxRvciLYzizW/PgN8N0pPTkxoRYGSNhJD4+IGm24DX7uv0nIMDd
 mhFT0S29ZR1ybNyuj/eGN47xBQG3YYVszhSO7z87uoVQh8Hn6R70wMHVugrJfCWVPKZg
 H7+QB4kRFrkoLUcu6ZMFd4+5PP4U2wFSh4RTtPKGO4cLHgdZMEvaPZm60IlbMAxwG7hJ
 tf17sJNqXddLg+9/CtK+iNOGOQlSGG3Ifo4lSE4hBw9Lx0QECztOPSpXjh8ecx0FS5If
 XqlNTAcdNUDaK0d4hNkZc/9S6KVD8DsOIX6GvqJsXwMkY+pKBUodXRQv+8D/205036ww
 k+hg==
X-Gm-Message-State: APjAAAUlAhvzad9UdtgpGSjD8H7oCJNUGvYQNXEWTuQNg37XJc6ciiql
 1h+HRhR3lTigqYKPdg9Nat70AspasmgIVkk78joRxQ==
X-Google-Smtp-Source: APXvYqycu9hlE1s4S+Sge2Bqv8D+k87tga/cDOXtTcuobEYzip+IsUlyb9ENhVmckOFQwM0Ke6RmQOIym8zJ1np0yPg=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr18594833ljm.233.1576492258842; 
 Mon, 16 Dec 2019 02:30:58 -0800 (PST)
MIME-Version: 1.0
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <20191215163810.52356-5-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-5-hdegoede@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:30:46 +0100
Message-ID: <CACRpkdYLXU9SmrNZfk9vrJuai9O-evAoq_c1oPJ7Q=NQU8=gng@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/dsi: Move Crystal Cove PMIC
 panel GPIO lookup from mfd to the i915 driver
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 15, 2019 at 5:38 PM Hans de Goede <hdegoede@redhat.com> wrote:

> Move the Crystal Cove PMIC panel GPIO lookup-table from
> drivers/mfd/intel_soc_pmic_core.c to the i915 driver.
>
> The moved looked-up table is adding a GPIO lookup to the i915 PCI
> device and the GPIO subsys allows only one lookup table per device,
>
> The intel_soc_pmic_core.c code only adds lookup-table entries for the
> PMIC panel GPIO (as it deals only with the PMIC), but we also need to be
> able to access some GPIOs on the SoC itself, which requires entries for
> these GPIOs in the lookup-table.
>
> Since the lookup-table is attached to the i915 PCI device it really
> should be part of the i915 driver, this will also allow us to extend
> it with GPIOs from other sources when necessary.
>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Looks OK to me
Acked-by: Linus Walleij <linus.walleij@linaro.org>

But Lee & Andy should have a final word on this.

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
