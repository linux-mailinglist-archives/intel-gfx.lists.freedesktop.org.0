Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE5994C6E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 20:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038CB6E25D;
	Mon, 19 Aug 2019 18:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4F86E25D
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 18:16:47 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id b20so1810156vso.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 11:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uy8eOUnZzi14WsV4kAsJUm164G+Hp1m64QmMs7kXnH8=;
 b=KMdde3kWNipaPvus7e4q+SgIwVQJbpDULuye/bo8E6ITHgGC5MLJuh3C0/x9k73Ybe
 LyM2pJjghwcWYhVyKFA9mgA+Y4df73Rirc1OPZYbD+6r3CyztY319WgjegBsrlpEFEDb
 tGh6jx2YWrfSx882uzDY9I1/xaYzXqM28emksHrQCKePh7o3OYpNBIA57gWDX+fjHPoc
 zS0Fr95q8Q7p1dih8Z9gHMABrpb//hRYQK/W+Hty7o7aelgqhrcOO1BlvhiZvKFuFTV8
 Nglpd3TCkKszY2Ad71a/A7ScaicT00hMAnAyWhzK52zDNhCVqmI1QJ+Ig3dpuLYLEkx3
 iKRg==
X-Gm-Message-State: APjAAAVuwPoyASNWN+bdQwz8rtoOwOfBPLLQkqoFBudCUU2Ug7BxJIFE
 oFSLO6CGD5MY7ZGjDdYEnYkX0utBMo59uBPQKhdj+g==
X-Google-Smtp-Source: APXvYqzEMIAnfTcIBMiEsqQ2aFwILBORn0w1MRRS9hq9BS/DzlMmSndVrSFoHT9v0+8w9ambNVEQe+zLvELpWhegcSw=
X-Received: by 2002:a67:1c87:: with SMTP id c129mr1766024vsc.23.1566238606810; 
 Mon, 19 Aug 2019 11:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
 <20190819164448.22132-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190819164448.22132-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 19 Aug 2019 19:16:20 +0100
Message-ID: <CAM0jSHOy1=KT-XD96ORmY3Dj1Ex7TroqsaJAFwtCSA-2odKY9w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Uy8eOUnZzi14WsV4kAsJUm164G+Hp1m64QmMs7kXnH8=;
 b=TktbFHCv+XKI+cq3inm8sQIdJXCHG3lSo+gDF3cQ7P/hAU33y21uXpfBr4ogoT5Op+
 5W49e09L13+2IRX14eeWe0AOPl2VC0wc4YLPaD6U6s5u9BP6dbWk4dvGAxozWLV6g3oF
 qURM7o0KK4jAzpRzuThlB5aJJOGpnCg/StRzmVHvhNd7DAgcu1CjrroTXKYrpU4J3oIg
 IrnudAf28OMORiQxg8w1cZ56ZlFuAUqVbujPO7knkNo25qWZQMl0f9/bxsAqQ+BU0E3E
 ZNXQuBb1YwXT74tzLa8SZhTNPTh6GVaNAyNj1EZCIIicWBg0aGiu09tx6IAmuCLI/ehi
 mnGA==
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Generalise the clflush
 dma-worker
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
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gRXh0cmFjdCB0aGUgZG1hLWZlbmNlIHdvcmtlciB1c2Vk
IGJ5IGNsZmx1c2ggZm9yIHdpZGVyIHVzZSwgYXMgd2UKPiBhbnRpY2lwYXRlIHVzaW5nIHdvcmtl
cnMgY291cGxlZCB0byBkbWEtZmVuY2VzIG1vcmUgZnJlcXVlbnRseS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKPHNuaXA+Cgo+ICsK
PiArc3RhdGljIGNvbnN0IGNoYXIgKmdldF90aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQo+ICt7Cj4gKyAgICAgICByZXR1cm4gIndvcmsiOwo+ICt9Cgp3b3JrLT5uYW1lLCBv
ciBub3QgYWxsIHRoYXQgdXNlZnVsIGZvciBkZWJ1Zz8KCkFueXdheSwKUmV2aWV3ZWQtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
