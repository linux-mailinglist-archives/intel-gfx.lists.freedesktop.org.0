Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27655201B86
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E7B6E914;
	Fri, 19 Jun 2020 19:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305546E914
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:44:56 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id n188so2543011vkc.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 12:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=goHoWzbS1PL3tGnjJ0CM37v/oW5nDRhOmYuxjqXokE0=;
 b=r5HgtYS64R9f+SB/Pll24GXZLLtQYy5FaUPJbNJ2DbrEslhsVCsFPir0viPSQJKCAA
 B/X7U2XLXP/X9Z386E/WejNRSwHyENCNPyfsGyIh6IZitxR6TQ9bX+07bj2W7vyN+99q
 GzuzimoY7u8KIFqNBzfGbFHGCsQaw6Hs4usuvOJy85gP65Vxjmfakzma1bq390tWz0LN
 LXZwLlE7zxrbw+Oknp82mWohg3vXCAd4EIwDAsma6K+tAODtQwasD+g8gd6o32ljb5th
 GK1FwO8BpHpYPCbHttUIJ/63e/ioRkT7UoG+L7AQMqouYA6UDXDO8doS7zx+aFK/2txg
 67zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=goHoWzbS1PL3tGnjJ0CM37v/oW5nDRhOmYuxjqXokE0=;
 b=Yk3i3N2RGe9RA+sz1+7qLL/xxjj7pzzpjFH/qYggh75f1J1SxXvTFgmlpGIfx0+r4q
 sbPN325sOBR6Bl8rvjMQNgGKe7og0QEYJ0fIV++V5sGyXIbYVGnu+Gxqu3L/Xx/EjNKE
 IJy/BU4mxvuEidS42pPKlCXwEGaui26WubnXXY/Mj30gWt/r9fIgCD3GifnqgX/6+ssi
 kv9IO/g0EFlppR8CMPJx2FnPumYwzJ+W0OAOsUFD0d9q1kfh6ylbrEd+u4VTVqEqMJFN
 ngtJ2krFF0Yeuf/uzM7ygZZpx0/UVMEyvoD8DfMsGqdw8oh+1MVwgap0+R2CfK+CvpWK
 UsBg==
X-Gm-Message-State: AOAM533M51Zz2EzY21Hth5Tvt7o3K9XC/dJzPADHXVdeBG6HfZsaI5J8
 KWTMskNynD/mYPcgcbLC/rMWMJcgdX4OgPlYRZ8k7M99
X-Google-Smtp-Source: ABdhPJwnfjdQoeHwMr28/rk1Andms5mDXcA54EKaA1VA0yzXwp5Tc35aq4TkObioig6KsIgxeeN2z/9ClopPcdOF5N0=
X-Received: by 2002:a1f:ddc3:: with SMTP id u186mr8715366vkg.57.1592595895365; 
 Fri, 19 Jun 2020 12:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
 <20200619143106.10356-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200619143106.10356-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 19 Jun 2020 20:44:29 +0100
Message-ID: <CAM0jSHNuujgCy=JVSHZwyjYj08EiW_DYJko9__BxHD7Rw2Hd0Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gvt: Drop redundant
 prepare_write/pin_pages
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Jun 2020 at 15:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since gvt calls pin_map for the shadow batch buffer, this makes the
> action of prepare_write [+pin_pages] redundant. We can write into the
> obj->mm.mapping directory and the flush_map routine knows when it has to
> flush the cpu cache afterwards.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
