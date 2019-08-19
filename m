Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB3B94BD0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 19:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD6B6E220;
	Mon, 19 Aug 2019 17:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F8F6E220
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 17:36:41 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id w7so939550uao.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 10:36:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hCTzlc91Ld0EIbXs2X8h3IV3kn06nvwm/wC2t0ouKLA=;
 b=ip1/3pQOJs9gUl0p4yfFkoG5EGmhFFDrXbL5OqimblSyUFfeR7GJjYyi7cegVIg7PA
 ANbHa4+hiELfohZSMnMmUlcTqAZXdypS+YwGyUPYaiy/YDA0TITMK5jHBY36KnQSq76N
 k3TrXeAOYVQsMtZTXCEhzhcNoF36GaN6tKKFVKLqKUrPINi6IgTS53YQdmMSc5E9jqhu
 LZoMuY2UC7gkK0Ni9WzbscwOF6MEqoxqfVgSMAWTLkgMigYn0r7ZhLxX1CCCPNdF25JI
 D4bI+8u0quC9G7I/oZZnwLpTrznCUkkk/drW72Yg3CZpwClVLuE1NRhFt87t7Uw7yhJV
 6LhA==
X-Gm-Message-State: APjAAAUMhtQyjPqyFbPv0ojjaC59DZAPXMk5Cp3wHqtxk+wTDglOSmEP
 GTTgwICS8J32d9fAPP1tw6CC8RHJUCr62gXCnkE=
X-Google-Smtp-Source: APXvYqxECxb39byfTPP83/du8KJPrCbbLdpt8+m+fkOWoWdrDYcsHHEV/eBt97me1EhlVbb0s9YwOow+9LOXjm0fHzo=
X-Received: by 2002:ab0:7042:: with SMTP id v2mr2565302ual.141.1566236200164; 
 Mon, 19 Aug 2019 10:36:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190819164448.22132-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 19 Aug 2019 18:36:14 +0100
Message-ID: <CAM0jSHOxy4UyP3OHvSnAL4CaNjF4643U9xHmOY3K+4cW70MLuw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hCTzlc91Ld0EIbXs2X8h3IV3kn06nvwm/wC2t0ouKLA=;
 b=WfN5gf1kz8q7nx/Pesk/hF9yt4Pd38U00Nh0oV8OxB+RAHx8FEN5jrvn8jEjinvOw5
 DTFbs2ay+avz4Fj2E4HaLG7wxMn2OWu9iwSm1CbKFNwC0WKCXM1/E96018NoGzQKfeAY
 NfP+2Oq/Bpp/SwxY1ivNa6d9F0lAz3tly8TVyIONSt8t/hbsRfn45dxXdiP3DW+YylHK
 NXCOvvNDoq4QWrdIcUQzkTAZcYKPHNsBI9dIJQUDW21fAEGyu04FAhteOx1ptuKEZYee
 1cy4GzelUh0hGl1m1QbE0AFn/Bh8uE3Dm7puj9o3Y/nUk3bYWTOdWwhczJlDGVe2TOX5
 zwXQ==
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Use 0 for the unordered
 context
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

T24gTW9uLCAxOSBBdWcgMjAxOSBhdCAxNzo0NSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgY29tbWl0IDA3OGRlYzMzMjZlMiAoImRtYS1i
dWY6IGFkZCBkbWFfZmVuY2VfZ2V0X3N0dWIiKSB0aGUgMAo+IGZlbmNlIGNvbnRleHQgYmVjYW1l
IGFuIGltcG9zc2libGUgbWF0Y2ggYXMgaXQgaXMgdXNlZCBmb3IgYW4gYWx3YXlzCj4gc2lnbmFs
ZWQgZmVuY2UuIFdlIGNhbiBzaW1wbGlmeSBvdXIgdGltZWxpbmUgdHJhY2tpbmcgYnkga25vd2lu
ZyB0aGF0IDAKPiBhbHdheXMgbWVhbnMgbm8gbWF0Y2guCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
