Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C2270BF0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 23:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35CA89E08;
	Mon, 22 Jul 2019 21:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9D189E08
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 21:48:07 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id s20so41865215otp.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 14:48:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQbZ6FKraUkEQS8OQRHPkFbVo8s7vJL+2Z3ZFG8RGSs=;
 b=rnUvfdqcN609LmXH69XMsW0pq4wqxskZ1pYN2zsQN5USm6g/e3yGAeulD6WcV85zd6
 GhyQxKw38X74BKggH7+be5tdJafRgy+uOJqTl+pDkXVIPgQvSSUkoUkQWCXnVuI2nEXf
 ZDh4JTEhifjVooddAM+GpOrGK8UL5oJ6kkWkRoRPUlO1KXzQ7yjXo9HqZjsob1jcx0A5
 5I3AFRglayYnIHpS8ESCQlLi0nV04hxdn6Sj1KoOHIbcoPBUL1e8JjF4c0kvsKYr33CH
 XaSKmiZhJM6oPr5dA2iiQQelJ2v1GDVUm936B/fgKGlUHMTmcsNxMFAK2uOMtUmxJ43l
 043w==
X-Gm-Message-State: APjAAAUpTTdVrVQlL3HFx5vCTT3btESgV5esHTiaTh+80kO1ynTXA+fi
 RTFdKEfEBtYMJKbg0IngBwuCFJ9Nf9BDBX2kuYKxXCEa
X-Google-Smtp-Source: APXvYqxBj3p84pwiNMhJO+aLhRhoC43Kcqrr587gM5BotZbycpBxDVDhsjnpHWgxU5darkMc9S9BqB2XUIjYwq3Ezhw=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr16283800otp.106.1563832086858; 
 Mon, 22 Jul 2019 14:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190722212101.26030-1-daniel.vetter@ffwll.ch>
 <20190722213759.26612-1-daniel.vetter@ffwll.ch>
 <156383165396.31349.434812108404058391@skylake-alporthouse-com>
In-Reply-To: <156383165396.31349.434812108404058391@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 22 Jul 2019 23:47:54 +0200
Message-ID: <CAKMK7uH0XiqCaZwcsU5akTuw4ec5St=sLwkxSarNQCf=wgTJvw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=rQbZ6FKraUkEQS8OQRHPkFbVo8s7vJL+2Z3ZFG8RGSs=;
 b=ZZRUDbATgwBhlueeWH1qE5t0vPxGah1fd/YCPXf2+jLI7DHl80HeLTW6kHnaa8gnOr
 3HFuEcB010FVrQBT6eNoN2ioMBsiayUtLZhCPIlbxqdrz7bkrEmpFLLnGO7E4e7PXtCX
 BSiL5yzqEU/KpIW0faiEExMbyUVI2Wz7Yw36g=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix up broken merge
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMTE6NDEgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA3
LTIyIDIyOjM3OjU5KQo+ID4gTWF4aW1lIGRpZG4ndCByZWFsbHkgY29tcGlsZS10ZXN0IHRoaXMg
Oi0vCj4gPgo+ID4gV2UgbmVlZCB0byByZS1hcHBseQo+ID4KPiA+IGNvbW1pdCBlNGZhODQ1N2Iy
MTk3MTE4NTM4YTE0MDBiNzVjODk4ZjlmYWFmMTY0Cj4gPiBBdXRob3I6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBEYXRlOiAgIEZyaSBKdW4gMTQgMjI6MzU6MjUg
MjAxOSArMDIwMAo+ID4KPiA+ICAgICBkcm0vcHJpbWU6IEFsaWduIGdlbV9wcmltZV9leHBvcnQg
d2l0aCBvYmpfZnVuY3MuZXhwb3J0Cj4gPgo+ID4gcGx1cyBtYWtlIHN1cmUgaTkxNV9nZW1fZG1h
X2J1Zi5jIGRvZXNuJ3QgZ2V0IHpvbWJpZS1yZXN1cnJlY3QuIEl0Cj4gPiBtb3ZlZCBpbgo+ID4K
PiA+IGNvbW1pdCAxMGJlOThhNzdjNTU4ZjhjZmI4MjNjZDI3NzcxNzFmYmIzNTA0MGY2Cj4gPiBB
dXRob3I6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gRGF0ZTog
ICBUdWUgTWF5IDI4IDEwOjI5OjQ5IDIwMTkgKzAxMDAKPiA+Cj4gPiAgICAgZHJtL2k5MTU6IE1v
dmUgbW9yZSBHRU0gb2JqZWN0cyB1bmRlciBnZW0vCj4gPgo+ID4gdjI6IFJlbWVtYmVyIHRoZSBz
ZWxmdGVzdHMgKENocmlzKS4KPiA+Cj4gPiBGaXhlczogMDNiMGYyY2U3MzVlICgiTWVyZ2UgdjUu
My1yYzEgaW50byBkcm0tbWlzYy1uZXh0IikKPiA+IENjOiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUu
cmlwYXJkQGJvb3RsaW4uY29tPgo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+Cj4KPiBNYXRjaGVzIHRoZSBzYW1lIGNvbXBpbGUgZml4IGFuZCBnaXQgcm0g
YXMgSSBkaWQgbG9jYWxseSwKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CgpBbmQgcHVzaGVkIHdpdGggRGF2ZSdzIGlyYy1hY2suIFRoYW5rcyBm
b3IgaGVscGluZyBhbG9uZyB0byBnZXQgdGhpcyByZWN0aWZpZWQuCi1EYW5pZWwKLS0gCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkg
MzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
