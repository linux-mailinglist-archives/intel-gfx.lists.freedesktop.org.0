Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB35FE3C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 23:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292F76E2D0;
	Thu,  4 Jul 2019 21:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06136E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 21:43:03 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id f68so834811vkf.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 14:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rObIz2rEETPh0ewuaAiEnDNl1cQHo/iZuo+cqWz7wic=;
 b=O3F8fcNRfokBfIaVOm5FHsjZHNPDil8OfWY0S2EZYdzrOaZMj/EeQQYRMvBC6PqXwd
 itTK94EK5cGGDNTcD9irSG09S6KsFvCAAXfn2bGnIfUhHcBD3AkfyL28W7wAV6IdVtTT
 zpXECZhENC2/rKt7Q3ybbuB86/HDsMPRqRHcrBKQtvrsTmCgl+kp1bFuR64lcu0E9URX
 6MPk4bilz9nnjDpas7TDF4mntB+y0D9uN6tFv/ztb0l4t2ynwYyr2KRlGnp8TZd7oYQH
 TV7E3JaBk024NzLb7dyHCFdwLH7lEGyDVaJIcYqmYn9R/ECbcJoIzCKKR6dyKZcxEm9E
 pBag==
X-Gm-Message-State: APjAAAV9YxMZ1mT4CxZ7jfkA8NkJnDwNqr7TbKAOiIrFMO/2JE0NjmsR
 3PRelv8TSotJY8PUfL+kCbLi4yL9AZkOxAFMTLo=
X-Google-Smtp-Source: APXvYqxVYAgqPR8hWTkYS+ymelvVxuTwPbi523fSVwT9ZRkjQ/Ap8VccKjZ6nLQaLN84v6URVccHuf0pjE7CYF37Xh0=
X-Received: by 2002:a1f:8641:: with SMTP id i62mr55634vkd.79.1562276582804;
 Thu, 04 Jul 2019 14:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190704200455.14870-1-chris@chris-wilson.co.uk>
 <20190704200455.14870-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190704200455.14870-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 22:42:36 +0100
Message-ID: <CAM0jSHPurwYdXGqt8JyKphK-Kpi5CNbg=0bqJMM64PbKw0k27Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=rObIz2rEETPh0ewuaAiEnDNl1cQHo/iZuo+cqWz7wic=;
 b=ZYOuE0gtafjXDFLs/qXzztjzgZqgIiJpz0ZGUhJOicZWLDIkDLYrwc73v9FX6+ePZX
 MwrB8Ok1wv36/KTLQV5RvUO/gJV/8P9tq4J1vn8f9WN37wVx1IfweYhHL/aE2Dq0rYi9
 M2LhtRa+umJaYf16eKkqrAZlAU1VgZRPNbUMGFuVyYMqZkydgTkK9O7EdAbWza3jFvsc
 nXDkI62ezwE/VhwRL8tF08T5Z8Q/8/sPZoj+wp4qxG7ig5ZAGVbvyRNhRNwkJZa29Ip7
 KENRIzyPkh81fn6ap9ZAJtoCZVysENoEKoFP3upzKAKxZWqHr5UGee4csi/xanKvREom
 PfWw==
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Show instdone for each engine
 in debugfs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDIxOjA1LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBbHRob3VnaCBwb2xsaW5nIGVhY2ggZW5naW5lIHF1aWNr
bHkgaXMgcHJlZmVyYWJsZSBhcyBpdCBzaG91bGQgZ2l2ZSB1cwo+IGEgc2FtcGxlIG9mIGVhY2gg
ZW5naW5lIGF0IHJvdWdobHkgdGhlIHNhbWUgdGltZSwga2VlcCBpdCBzaW1wbGUgYW5kCj4ganVz
dCBzYW1wbGUgdGhlIGVuZ2luZSBhcyBwcmludCBvdXQgdGhlIGRlYnVnIHN0YXRlLgoKYXMgd2UK
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
