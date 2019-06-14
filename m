Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980F146815
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 21:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E78489A6D;
	Fri, 14 Jun 2019 19:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDFE489A6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 19:14:54 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id m8so2458235vsj.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 12:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X9yDQmVPuvE0t53/KzAITC0YaiyrK2RT2jjUFT7QBho=;
 b=o30hi8OEZXvN/ro8v7DuTOsBM4ADtqoW483lm3RKxyQgacTiNb3k6yUG0jWxt7T0Dz
 k+pLWvyZzlkwk/mF20Rxh/GEHNq1RiepDJjUjiU46JjYDpHmgNjRItAj4I88QngwRaXa
 tjsulfuU7H1gM7weWUjbpqlStOhPEG8nNpsuCs8X+KhtPfYoQvLs8o022tcObGqyD9Db
 0XwBBK6c3fiWNn+/Hx6gMZKihr5lcNdV6AZK3j2dWQpVO1MB4rhdZwAOKsI6StRpsMEX
 o11BrvYdNWIk6pnPGw2qo+bJQzf9+04pix0yIc+FOvnIK2Qz6cGeMwvb+vk43vJEkKYc
 p2Sg==
X-Gm-Message-State: APjAAAULJrV5k8hDEyf9w/ZkgMBJcOJzKq1COM1T08X4qUjLeMA8zcxC
 htL8WHx0RxMCutbP2MmGXilhPCT51XmoNhZbm+iPcQ==
X-Google-Smtp-Source: APXvYqzZfMMPKetNtof9hVCc3CNGktqxWcXkeEANaY0HBe/Nlz9oNzCjbsCxfVNEoC7pP4IxunBu5TJo3FYrw9l8vrQ=
X-Received: by 2002:a67:8042:: with SMTP id b63mr28757051vsd.23.1560539693930; 
 Fri, 14 Jun 2019 12:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-35-chris@chris-wilson.co.uk>
In-Reply-To: <20190614071023.17929-35-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 14 Jun 2019 20:14:27 +0100
Message-ID: <CAM0jSHNdseC+x6XoD65SCAJ4Pgp_2S29uv7im+hXtp8qT6_iyQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=X9yDQmVPuvE0t53/KzAITC0YaiyrK2RT2jjUFT7QBho=;
 b=FjMABTff0rGTEQgSfO8KG8yNhxAsSDgneewf/awWgDFTFhobm/A1i6b/VW4oy/+RSd
 W/XQbj0J2FqLLV2wl3WLrn3S2rGhOGg7WTU8FG8D3vh7LqnoDTArqJBuspi+w+Txo3QC
 a1hNNDrhFi92stNc/ZNjSW5LqInoLeq+17Gjem5gEBlnJkRmZL6cjZY/SpPvqJ+s++Wo
 uNB0LH/AkQk154zOn9K0KE802JyqFMThRmfPKXadXr3Q/amo9DTYvZ4joUU9Pr5LJsp0
 zMcYo7RPNqhU3MOdkhSZ+1Sh4sTFT/Dl6Nw7f3tIiyZfUe9RaOdC6wWFLFG7lUSsL3Nz
 jKvg==
Subject: Re: [Intel-gfx] [PATCH 34/39] drm/i915: Use vm->mutex for
 serialising GTT insertion
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

T24gRnJpLCAxNCBKdW4gMjAxOSBhdCAwODoxMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2VyaWFsaXNpbmcgaW5zZXJ0aW9uIGludG8gZWFjaCBv
ZiB0aGUgZ2xvYmFsIEdUVCBhbmQgcHBHVFQgYWNjb3VudHMgZm9yCj4gYSBsYXJnZSBjaHVuayBv
ZiB0aGUgY3VycmVudCBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbiByZXF1aXJlZW1udHMuCj4g
KE5vdGUgdGhhdCBpdCBpcyBub3QganVzdCB0aGUgZHJtX21tIC8gZ3R0IG1hbmFnZW1lbnQgaXRz
ZWxmIGJlaW5nCj4gc2VyaWFsaXNlZCwgYnV0IHRoZSBwaW4gY291bnQgYW5kIHZhcmlvdXMgZmxh
Z3MuKSBQcmV2aW91c2x5LCB0aGUgbWFpbgo+IGJsb2NrZXIgZm9yIHJlcGxhY2luZyB0aGlzIG11
dGV4IHdhcyB0aGUgcmVzZXQgaGFuZGluZywgYnV0IHdpdGggdGhlCj4gYWR2ZW50IG9mICJsb2Nr
bGVzcyIgcmVzZXRzLCB3ZSBjYW4gZnJlZWx5IHRha2UgdGhlIHZtLT5tdXRleCBhbmQgYmxvY2sK
PiB3YWl0aW5nIGZvciB0aGUgR1BVICh3aXRob3V0IGZlYXIgb2YgZGVhZGxvY2sgaWYgdGhlIEdQ
VSBoYW5ncykuIFdlIGFsc28KPiBwcm9zY3JpYmUgYWxsb2NhdGlvbnMgdW5kZXJuZWF0aCB2bS0+
bXV0ZXgsIGFsbG93aW5nIHVzIHRvIHRha2UgdGhlCj4gbXV0ZXggaW5zaWRlIHRoZSBzaHJpbmtl
ciwgYXZvaWRpbmcgdGhlIHJlY3Vyc2l2ZSBzdHJ1Y3RfbXV0ZXggd2UKPiBwcmV2aW91c2x5IHVz
ZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KCltzbmlwXQoKPiBAQCAtMjQ4LDE2ICsyNDgsNiBAQCB2bV9mYXVsdF90IGk5
MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+ICAgICAgICAgICAgICAgICBnb3Rv
IGVycl9ycG07Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIHJldCA9IGk5MTVfbXV0ZXhfbG9ja19p
bnRlcnJ1cHRpYmxlKGRldik7Cj4gLSAgICAgICBpZiAocmV0KQo+IC0gICAgICAgICAgICAgICBn
b3RvIGVycl9yZXNldDsKPiAtCj4gLSAgICAgICAvKiBBY2Nlc3MgdG8gc25vb3BhYmxlIHBhZ2Vz
IHRocm91Z2ggdGhlIEdUVCBpcyBpbmNvaGVyZW50LiAqLwo+IC0gICAgICAgaWYgKG9iai0+Y2Fj
aGVfbGV2ZWwgIT0gSTkxNV9DQUNIRV9OT05FICYmICFIQVNfTExDKGk5MTUpKSB7Cj4gLSAgICAg
ICAgICAgICAgIHJldCA9IC1FRkFVTFQ7Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyX3VubG9j
azsKPiAtICAgICAgIH0KCkludGVudGlvbmFsPyBQZXJoYXBzIGhhcmRlciB0byBlbmZvcmNlIG5v
dz8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
