Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C3D985DF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 22:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0926E99D;
	Wed, 21 Aug 2019 20:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7E76E99D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 20:45:08 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id r10so1278902uam.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iEfAl3XJp2XAnZMW6HnJHLUR7OrD9CzN9XKexA9jcfo=;
 b=gVa1WHxduWN1fwwL3YNY0PxehYfZyRbZmFMnG1NAMYQ3ACN4A8l3U2FK/f/zzV29WJ
 srxg4KfJKHVssrV6pL/QEegh/s9OcEHMj8HiXwesfl6I4pUFZoAIKXKVf//THTaDlBri
 yFhP2xGCl9Ijql9+hW3ufDxhGOpmRzjTFx92//5J3o/rmryqOXN3FR5z++F9OMa3J8TL
 Id1VTxmrZ/yRKdjiuUIl3PnZZVz2a9YGLWPBn69v5lrSX0nZkBnUrTa6dpaq0vTt2hOc
 lj8QUmq/n8bYIwrMxWNVVXKYPBe5RUCTnb9Wk9bLJMJT7f+CSKm+YheP9lJCXLn2qNbf
 joNA==
X-Gm-Message-State: APjAAAUIgrTtOvB8i+n3MgTP6o1Yhb6gu7Tv4lP1dPgFFuT0Rvg2+OJx
 DWWhQBBKTz7+dQRWRmmTFQYRRo0kA4RuNbDvkqg=
X-Google-Smtp-Source: APXvYqwKtvM6ObbUVIpYrfGhjitoOkI4Kf0JVp4FbAoBjWapHEH5/vTLdTKDV775rVl6csqpYMV4NQD+mwTSQ4NJ7+Y=
X-Received: by 2002:ab0:7042:: with SMTP id v2mr3339590ual.141.1566420307173; 
 Wed, 21 Aug 2019 13:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
 <20190821155728.2839-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190821155728.2839-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 21:44:41 +0100
Message-ID: <CAM0jSHNy3OVug8ZA+eLQATdSYuSP1kQ2zODSGYsynmqUEQGdMw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=iEfAl3XJp2XAnZMW6HnJHLUR7OrD9CzN9XKexA9jcfo=;
 b=qzu+If/XfdaHyhoQaUdF3LyCyEOaruGMTyePQnMFe4mNPaGD+/1BU+OLSQz+MJZkZf
 +u12TlF32me95dO5Dc/4k6+OKK0NrHDPC2aoZ37EC+tae0r2YLi7GviPpoBmqIMqecFk
 j8qikUm/ro3OIJn4HgJqZwkegzdGkijNsP+huXpTt5tDe1eLfSlQ3xFovIGWQXzTwXX6
 L+YNXYYGE3EBi7COedJ7GKEcWP15qhMNwVwcSNO5hJtD5vOwGaFdyScaNYUAQOP4+h9l
 ebABnTYGhdC7UH0lewVQsvKJrP/zOwdUcQRdjLc0KL1yGKg3ZY9PyM/w1nadvYm6I6BE
 +0Pg==
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Pull obj->userfault tracking
 under the ggtt->mutex
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAxNjo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2Ugd2Ugd2FudCB0byByZXZva2UgdGhlIGdndHQg
dm1hIGZyb20gb25seSB1bmRlciB0aGUgZ2d0dC0+bXV0ZXgsIHdlCj4gbmVlZCB0byBtb3ZlIHBy
b3RlY3Rpb24gb2YgdGhlIHVzZXJmYXVsdCB0cmFja2luZyBmcm9tIHRoZSBzdHJ1Y3RfbXV0ZXgK
PiB0byB0aGUgZ2d0dC0+bXV0ZXguCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
