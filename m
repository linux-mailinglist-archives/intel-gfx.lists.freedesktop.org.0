Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5012E5C9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 12:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6457E896ED;
	Thu,  2 Jan 2020 11:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF57B896ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 11:40:07 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id 73so13460209uac.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 03:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AryFBqaVVc2Cqv1V2EgWrhQhZ5tSK1SR04TOieTrYO0=;
 b=YPqYWkriiUI4Fhc/Ky/f0+Dj30YDMLgw0/sgxx08XPJyvY0n2KYx1m5D+GtKCx4GJP
 Ol2rCxX/Z4YYVM67PaO5b80A3SYwAmkudlGIAGloQjR79YrjRNem9uwfZKc2LvjVaOBX
 pqRSSD/bXpVz3LmPJtjQBNw6SIfwB6Rc1n1bIWupnxbAuDC3ixvRo+v29DrocPA5xMWs
 74V3b/WbNr1cY2x/W5i/RZU2hcD6STQRxJCt59X0LuoBPsA+NtEzO/hgugTVrhUuPOdh
 NnFo6s4J5ZA6ePrlhlNOR8B3J1REGV58Brin+87/D76ViLwnUkXTcZlh9kiwHxG+jJRm
 bG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AryFBqaVVc2Cqv1V2EgWrhQhZ5tSK1SR04TOieTrYO0=;
 b=STXvAbFpTk5Da/NxPieTSu4M9cdNgaeZ0alpoRvFRT8bYR2rglWFfFlPzlr3lk6zfu
 8/WB8iUHLcyQ6yAja7t8I5XWBYS3hp1RlEfMquPU59azPBD6imv8c/wxxp9R7nUPd2gj
 X9+mAt808xxmVPQgrsfu6jcoxljTs6zNMAknvSaABQ8ITNfvaluusmBWdIEa97wfdmS3
 sOcBBTC2RcZePNXEBhU1FyyViEKJxIocmjej0uiJ3dHPRiT6QAqr1xV5qzlo5bfhcEP5
 z5/5Qud1sjpG/Fnpl70tfHGkcfawWyrMbhOHwJWtt6xkM8IfY03SP/+nbrcEJxAO5WQw
 LvyQ==
X-Gm-Message-State: APjAAAXkZiVTawuzb0HEMZya3U2PS23Cc4/1KoVEmqC8y49QwGHSSYUR
 prOw4p0jBtkojHN5yfPsoPpHq+Wmzq/q9MJwy50=
X-Google-Smtp-Source: APXvYqzxCBKN5aiMxrvnp0C+ryz8Uy17anGSpijsvwcHZZnNUl7g6UbT30IbYq0cBT0G8WZe2ozBECqfEPX++4L3GXk=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr46195346uak.129.1577965206913; 
 Thu, 02 Jan 2020 03:40:06 -0800 (PST)
MIME-Version: 1.0
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
 <20200102103757.1344827-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102103757.1344827-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 2 Jan 2020 11:39:41 +0000
Message-ID: <CAM0jSHPFgKBG5OPoRaWkG8mzFb=ztMxxR2WDxV=7h7nBELrD6A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support discontiguous lmem
 object maps
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2 Jan 2020 at 10:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Create a vmap for discontinguous lmem objects to support
> i915_gem_object_pin_map().

Yes, please.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---

[snip]

> @@ -288,12 +284,28 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
>                 pgprot = pgprot_writecombine(PAGE_KERNEL_IO);
>                 break;
>         }
> -       addr = vmap(pages, n_pages, 0, pgprot);
>
> -       if (pages != stack_pages)
> -               kvfree(pages);
> +       if (i915_gem_object_has_struct_page(obj)) {
> +               struct sgt_iter iter;
> +               struct page *page;
> +               pte_t **ptes = mem;
> +
> +               for_each_sgt_page(page, iter, sgt)
> +                       **ptes++ = mk_pte(page, pgprot);
> +       } else {
> +               const resource_size_t iomap = obj->mm.region->iomap.base;
> +               struct sgt_iter iter;
> +               dma_addr_t addr;
> +               pte_t **ptes = mem;
> +
> +               for_each_sgt_daddr(addr, iter, sgt)

addr -= region.start; for poor old fake local-memory.

> +                       **ptes++ = iomap_pte(iomap, addr, pgprot);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
