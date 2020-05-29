Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9351E88AE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 22:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F52C6E96B;
	Fri, 29 May 2020 20:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292BD6E96B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 20:13:46 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id r10so2216770vsa.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 13:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YgW3HwIbVVt9iR94ZExwNU/b2JEaHDFzwzyHVU3/fLg=;
 b=l/PsuhAqQWJJop48TQdAAiLDtZ6Nkj97tTip1rt0dSSn07HL+5ghpKsEiIXp3rHKSh
 eAL3ZaoIU4dEfI/4QRjYe7CExpbMF84Q6nBX0Uzp4tIkqFSWo1eiTLJulyT3n0yPdU2j
 B1z8rP0/DHnk4hWIvoAfEEsayozG1Tj61DgLjArLyU07dvrNQ6VWySJ5cDcJG2M6fQxe
 5/rz+3oL6TKSUYdLK0oO6EX/VdeRB1cjguZg2WjKVhj5EvJjuYr8CXcrbjMNA6ir9ZLB
 OOurzUc1k8R6V6F5NKplK0DimspYV382zBA6vE2Flf79UthfL8+9tDFuYc3ieuDIZyNY
 DnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YgW3HwIbVVt9iR94ZExwNU/b2JEaHDFzwzyHVU3/fLg=;
 b=KyrmcrZXUMV+HtOGbQLgquEKH3+/5jCSCVUfQtVuEubDu3GSDu9cWvhBjD4ibDR+44
 492O0RQcQDnml8PJOMU5uKBusD21Hmev/XmLgz4uVXntXNmI3r+c7Qr0VY+FkIboM1au
 AZcEUGIVDslP0wYd4NRlQDI5WBJ4ShIkrPbchtjmMQix1+DucEi73yhNpnMccpX5itp6
 xPm6+dO7AYPbjrm+A3Ql2h6iTLOIch1moPVnp08mt34+y1EfYFV5/7O9dboQCdoaFPKs
 A+WcF2CRGcwRkFgKmn6teFP07aaxPAIai/gHFGYCX/F+PSaKt2dCaDFNYVzVA2PoCWor
 L0kA==
X-Gm-Message-State: AOAM530gfIj/Z2fdLo7UXq9tbTurDFcQEjkJ+/dTtUzeGrhnJ92Bnz8p
 JnjFNhR7ebOhJn4NGvF2WL4eogFmo8Ixrdo9LmU=
X-Google-Smtp-Source: ABdhPJwRQcrUTnbhSw1AdGEW9i9e9xHv11u5kr6fqJQKyN1JfXM7MtiA6IawbD+iS5vmPN8eAizmT19VytAGjxG0+U0=
X-Received: by 2002:a67:690e:: with SMTP id e14mr7522797vsc.34.1590783225236; 
 Fri, 29 May 2020 13:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200529183204.16850-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529183204.16850-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 May 2020 21:13:19 +0100
Message-ID: <CAM0jSHP8eJmEkscrtOzuQzP9Qo=6W_L+fLGUUZ7TYHFxn2=4GQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Taint all shrinkable
 object locks
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

On Fri, 29 May 2020 at 19:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we declare that an object type is shrinkable (any that we can reclaim
> to recover system pages), make sure we taint the object mutex so that
> lockdep expects us to use it within fs_reclaim. lockdep will then
> complain the first time we try to allocate while holding the plain
> mutex, as doing so invites potential recursion.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
