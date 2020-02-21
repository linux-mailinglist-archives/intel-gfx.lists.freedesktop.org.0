Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5707E168312
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 17:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBB06F4C0;
	Fri, 21 Feb 2020 16:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C476F4C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 16:16:24 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id a2so1550579vso.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 08:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8QknwylFuPYRGoKU1i8F0cQ06whU+n4T2WvfsJX5LvI=;
 b=ZofjtA+p0o2uwBg3JkudGbEKrURjsZZuh5lg0AsCgcQIHAhucWJpc+Jd7vh47UH3m2
 e/0VJs8i48LQMm5tXuzA7PZomhCgUhpFM1reN+x6tqE6Yi69k9yGqBKgN7AQOnTwG90P
 97ie5TKgR2WSMrnOqU9hgCMVFNSqdysi0QVf9yO8hzS39a5SxWtQbWOU2+QlNuaIv6RF
 1Rc5GpvcifS+gld2NMLmkZha4SZHs7cd5pOyPCZpwY2lBZm4lYRrocH3cbSIynpPkkiC
 qEd+gSqq4OefaCthw0p1idGx4e4KNsO3UIcSiRP+o4Y1rq8QDp5AK6SqixjSvznogq26
 wOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8QknwylFuPYRGoKU1i8F0cQ06whU+n4T2WvfsJX5LvI=;
 b=EGdsZImcXJnXOT7HtuaAdlyL3FYB+Q3JxCgwA5eAZzssxirtWHyriL5MqkomfXe/Lv
 l0MWPwfl6P1kZ8xqhyXE/WC80O8XPjYGsyOu76R5G0GY9P63Cz1PgPrrUBiC4tSrlrV/
 P2GX+RvTOPmoRizFxF8NffaZWDyxS7RrwpzA1AcBw9sfysEAxElm80k5BmvcEdRvzAB+
 YOLKwX8DY6exubNtjwYSu+bZZyLKy+Nc4t3TbYyC7zEJUHjPDZHH8CTfIHjlh5tqeW6E
 JOfiOZdbOp9q4piLqbpn6w6ggJ7lIzWDeTiaR93xdJ8eX4cDkiuL51I4h8zv7wePQ6se
 SzGA==
X-Gm-Message-State: APjAAAXAj4Kthu6LipzQ1OZ9mdkgV1oRxbhODqka+z76uUJjnb1KvBLA
 DYWWGCNOkyKSDoL2/HF99F0IWyMozmtx025Gp8A=
X-Google-Smtp-Source: APXvYqyIAbzB8j7VikrwfJfvXuPec7T9HnGw2lCIp37vRAi9TLqHR6NjoLAHgnxPIQaWV/XVy/sEQePcdUdajsLZAu4=
X-Received: by 2002:a05:6102:303a:: with SMTP id
 v26mr21156444vsa.119.1582301783549; 
 Fri, 21 Feb 2020 08:16:23 -0800 (PST)
MIME-Version: 1.0
References: <20200221121940.2741563-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221121940.2741563-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 21 Feb 2020 16:15:57 +0000
Message-ID: <CAM0jSHP50wPgWBJF1u_2cPzeV8KYnGAUSq2_ox7RphtBL0HXsA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check that the vma hasn't been
 closed before we insert it
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

On Fri, 21 Feb 2020 at 12:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As there is a delay before we pin a vma, there is an opportunity for
> another thread to have closed the vm and its vma (including us).
> Check as soon as we acquire the vm->mutex and know the vm/vma is stable.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1291
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
