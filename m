Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967A443E0B0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 14:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE746E835;
	Thu, 28 Oct 2021 12:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94AC6899E6;
 Wed, 27 Oct 2021 13:49:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6611660D43;
 Wed, 27 Oct 2021 13:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635342556;
 bh=fYZWrsKGlOp7lc/xKrJeyNzK/8u8cgiGUJ+/2sKfEe4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U77fnHxIIXJm4+qiC90pNvz1GrZM8catxUQG7co8cVjv+UYRYVBKwCeKgPPwHViuj
 xoJ27M5dFmNBhFvyMPli6fYHsUydemysyTGE9Ebf0eWT8F2Ulk9F04sK1UnFnlhiJF
 0vm6HcrSv3i8ETCP2piQNWl+EDlH3FTJ1cAzruc0ybYXacPFwluwmr2EdnzUyJ+Iep
 +SOUOC4U5ZF59ELZ475X7m09U5PLF/OnvDVfcHidoo8TzjjHp+FUfWWfgMQ007IbRo
 b5gi4tQFssHjeeHLKRHrH2Yns7c+HmBmUHKYMHTx4ccmilVI/ycU+QmygFQ9Kvxseo
 FxFxqsIBUdY9A==
Received: by mail-wr1-f53.google.com with SMTP id d10so4352608wrb.1;
 Wed, 27 Oct 2021 06:49:16 -0700 (PDT)
X-Gm-Message-State: AOAM530yXlueA8L5xb3BCgfjGYvpyza8pXcxgxKj0P4KU6+T/aIMMnVp
 mmYCF815j0JO0Dqj8R3QOd/bZf6BCQvzTpMTqgU=
X-Google-Smtp-Source: ABdhPJwyFrogSswX9aFMchaesz3OloZkKeoRK58xGE8J8a1euHLGUsdWENXaWPhRgbPktw6Hq/mkQOMklICoHioJnp4=
X-Received: by 2002:a5d:4692:: with SMTP id u18mr210674wrq.428.1635342554955; 
 Wed, 27 Oct 2021 06:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20211027132732.3993279-1-arnd@kernel.org>
 <20211027132732.3993279-3-arnd@kernel.org>
 <87r1c6h9ek.fsf@intel.com>
In-Reply-To: <87r1c6h9ek.fsf@intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 27 Oct 2021 15:48:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0Lcwb4mROKt-sZHYFfCF2ji-dAbpWyy5_f7v6SHnzpjQ@mail.gmail.com>
Message-ID: <CAK8P3a0Lcwb4mROKt-sZHYFfCF2ji-dAbpWyy5_f7v6SHnzpjQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>, 
 Intel Graphics <intel-gfx@lists.freedesktop.org>, Arnd Bergmann <arnd@arndb.de>,
 Matthew Auld <matthew.auld@intel.com>, Zhenyu Wang <zhenyuw@linux.intel.com>, 
 Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 28 Oct 2021 12:17:23 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] [v2] i915: fix backlight configuration
 issue
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

On Wed, Oct 27, 2021 at 3:41 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > @@ -16,10 +18,6 @@ config DRM_I915
> >       select IRQ_WORK
> >       # i915 depends on ACPI_VIDEO when ACPI is enabled
> >       # but for select to work, need to select ACPI_VIDEO's dependencies, ick
>
> The comment needs updating as well.

Right, I've removed that comment now.

> Other than that,
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
>
> on the series.

Thanks!

         Arnd
