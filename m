Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C043F3D7476
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 13:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3362B6E832;
	Tue, 27 Jul 2021 11:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5976E857
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 11:41:42 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 48-20020a9d0bb30000b02904cd671b911bso13180306oth.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 04:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DVk/roXn7MDuqTNl8/MPtBH5EOXDiRDcUKDft9jM5Cw=;
 b=S8/vNhxVJWViK6VZinPpJgk0KHS8SoxUwHNSM7XwV2ugslXwoRBevRd5Mh4xY5EcdY
 h9dtOd1SBp1Pc6i4VGMyZ+V4yvThgyrnlgXi5gvREFemZj/ExmaGrbuUbm0j+AmVzoPO
 HMl109nuyZL1XTYqCHKsMMno4W9Y9UKDY39e8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DVk/roXn7MDuqTNl8/MPtBH5EOXDiRDcUKDft9jM5Cw=;
 b=ddAvXgK36F0RSK8bTVpbh1rw7UAkIczXcvBN4eijKAm1o/pl1FHOIi9FT0G81bMQVc
 Zl9HsgIILcWf4lF+Wbk3iXcO2FJKdpaPmaRwEL4qdSq0eTzuzL87sfORXRiPUEj8IRoe
 du/azRr0WOy2A+zSJv9AmRkojFQl3ZVbB4pzhDd+5rX6cGz969mFChGXp9mwU7JA2zRF
 GjxdM2axHEv7iMLFY1E9s4pXVAI71pLdeiBCHW3n6jvCGvptQ9AWot6fd5XEj1Vdxe/P
 kiyQj6UX5arD7XYT2xnML3KVPaWV4wIrHa2azbCUPSvVpiDgwDziRL2puydV1CRkt+iT
 xvew==
X-Gm-Message-State: AOAM532LMuWICQyzsvzl3cwgAMFEoPVbQjfY//SWm7zLIpkRTQeho4pv
 2ibF04mdqkfjhr6jpta3d/8RSIZVkEGObeFyGBVwcA==
X-Google-Smtp-Source: ABdhPJwwqUJE8UKjF7vKwaBCoePrBQHFhIEc5QZ1sCYFnwQrwt9cNdqIxKdScWiZ8ggu9u1j1HNhn1elDyZZOK7BcGg=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr15331222otb.281.1627386101729; 
 Tue, 27 Jul 2021 04:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210727111448.1443-1-broonie@kernel.org>
In-Reply-To: <20210727111448.1443-1-broonie@kernel.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jul 2021 13:41:30 +0200
Message-ID: <CAKMK7uFNFOTrcLbFW3eoziPaZaH9JFKJe1AVvJGT6wU_rqfUeA@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 the drm-next tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Zack Rusin <zackr@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 27, 2021 at 1:15 PM Mark Brown <broonie@kernel.org> wrote:
>
> Hi all,
>
> Today's linux-next merge of the drm-misc tree got a conflict in:
>
>   drivers/gpu/drm/vmwgfx/vmwgfx_drv.h
>
> between commit:
>
>   ebc9ac7c3dfe ("drm/vmwgfx: Update device headers")
>
> from the drm-next tree and commit:
>
>   be4f77ac6884 ("drm/vmwgfx: Cleanup fifo mmio handling")
>
> from the drm-misc tree.

I got confused for a bit how we managed a conflict here because vmwgfx
flows drm-misc.git -> drm.git -> linus. The 2nd patch is in
drm-misc-fixes, which makes sense, not in drm-misc-next like I assumed
at first drm-misc means.
-Daniel

> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>
> diff --cc drivers/gpu/drm/vmwgfx/vmwgfx_drv.h
> index 356f82c26f59,5652d982b1ce..000000000000
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.h
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.h



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
