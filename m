Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B0EA3CEA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 19:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3EB6E38D;
	Fri, 30 Aug 2019 17:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82A26E38D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:22:07 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id p189so450795vkf.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SW0ajfp+AFG8EZ2ulwn0fGhbxZyq9hYXw1w3/3+1/YQ=;
 b=nXLj+4J7Hg3KgXGtk3ylMdbkRS0UqMBWfNz6YgOEPJU72QH9k92I8eJf2Gs8WbH4rB
 1A4euzcm4YqVLzDbPY5r7TCMDi38tlNQhsu7TS/ixAen4nJA5rYnkto+5zCj6xCiF2xB
 ae3mwlDE4LLcmqSuZbK6HbSfOCZvqJEfBO+5sdv2cDxRQ2yB3NPdoLKoSFdw3mNAl09F
 kU9eGZyozc0x6Qqn+yYemfX0KDBw1JQD6h4+Ssz+6QsPk8yOTfLJi9isfCHShDS/7EYT
 PtBlr1wqzMltAoNECDCPb5e7S+KGCckjN6qRLCS1CPhPgVsn5xgVy8rsHA09r/fYm3Du
 j3Eg==
X-Gm-Message-State: APjAAAU6plUx+0HZ878nxNlg50z6k7xq8KirbNZGaw+ClwlvV2xV2QmQ
 afuB2ImIYHo2DOQuJ8mc5AqoPsI0wMQHNlYwrmwOOQ==
X-Google-Smtp-Source: APXvYqxOkdXayqFqMa36Yra2wo7b+tkeqKepLdlKv8ux1s3HLr1eH03DXfSoH4iJvzhQxunUe+Pz+NwztKOisP8VwWs=
X-Received: by 2002:a1f:3045:: with SMTP id w66mr8755233vkw.76.1567185726709; 
 Fri, 30 Aug 2019 10:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
 <20190830061204.21206-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190830061204.21206-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 30 Aug 2019 18:21:40 +0100
Message-ID: <CAM0jSHPZv+bsjRVpSXju5cqYUUJmTcmOGvSY7Zuz-p4mEHiuJA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=SW0ajfp+AFG8EZ2ulwn0fGhbxZyq9hYXw1w3/3+1/YQ=;
 b=mWk3IiJ1cz2cHzpBlM1BC+qGWGDH0nJboN3a7N0vMuKEGvOg78Tp8T6WAD5O8sRY4c
 Msm5I+XUtnqQ7bJF3OGPZtIHAXVFJApGuIgYT2iSnOng4fMaosGDM8xggxb2Sl7JLesO
 KZ5FLM4Av89HaZtkN0Fssh4Z2HexZ/axUG9+CacNlzqxcTC/01IKc9Yj+mJM1SoQVGAr
 oz86q0NzuJLlCS6LLBox4sKsm/Bs5Qt/t6D4nGRv2kysTMyv+Ctzm1rpzfcjB5X98x/S
 3LuhOc31mbp9JjCBCvUTsvPuOIn21PEG/TJIF8LPZbl8Fo8UQhBksJuSMNubnpcOyfBv
 9XMA==
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915: Remove ppgtt->dirty_engines
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

T24gRnJpLCAzMCBBdWcgMjAxOSBhdCAwNzoxMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhpcyBpcyBubyBsb25nZXIgdXNlZCBhbnl3aGVyZSBh
bmQgc28gY2FuIGJlIHJlbW92ZWQuIEhvd2V2ZXIsIHRyYWNraW5nCj4gdGhlIGRpcnR5IHN0YXR1
cyBvbiB0aGUgcHBndHQgZG9lc24ndCB3b3JrIHZlcnkgd2VsbCBpZiB0aGUgcHBndHQgaXMKPiBz
aGFyZWQsIHNvIHBlcmhhcHMgZm9yIHRoZSBiZXN0IHRoYXQgaXQgaXMgbm8gbG9uZ2VyIHJlcXVp
cmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
