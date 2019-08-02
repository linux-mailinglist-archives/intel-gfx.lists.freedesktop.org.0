Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A018B7FE04
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 18:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A595F6EEC0;
	Fri,  2 Aug 2019 16:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CFA56EEC0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 16:01:31 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id s16so15404412vke.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2019 09:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rRjqo6fzWUsr59vrTDJgNjjIrmr2dDUMwaccBH+Ri0g=;
 b=MNTA1QZky/8jIM/sOXgx803Lrwbw2DEMK3JSK52SeOxXRGXROYTsAKcw+dEAS79Zla
 iW03kEqv9VovgY36n6JvdNP7L7rLACNxYcXbHW0UMaBt5xdMJQEyt1xN6Z9zXFxmHOVK
 qFaDeWc2dbsjsPc0lNOikcOcyYXcInlhvutbDqo6NBmDgaDYmwahXdEb7ICmlBs02fu5
 YCtP8TGTi0PFjh60nbYUmk+wzGBMlQ4ZHsZtErUJauRrs2LN6RGz/MSml1G5iLCVyTH0
 2NJ3EJrVmfWdA3p17x6XaIakuTzAQb6AVCEJABrxgtr+DZojitryizlktoayFdCM9hnP
 X7vg==
X-Gm-Message-State: APjAAAWFzlblsFMPp4F4SEDyFm5ECzi2NbukTGRyV0L3b82aM8BI3B7a
 35HuFZ2Rdj82g14DeaYuCMHkkKekOmPBve2xyR8=
X-Google-Smtp-Source: APXvYqzSeLSkpAi6wDRqPM2CEqS6bHBE3PJmqeLSqnes92ZMRaIRvm8JFKNSkm0d0TmBySd2+ainYphzyXl4b3oYI/w=
X-Received: by 2002:a1f:6045:: with SMTP id u66mr53682459vkb.54.1564761690061; 
 Fri, 02 Aug 2019 09:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-11-chris@chris-wilson.co.uk>
In-Reply-To: <20190730133035.1977-11-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 2 Aug 2019 17:01:05 +0100
Message-ID: <CAM0jSHPqsi6Z4Nos93PRZztAOGMam8qTyU5+teyVNQyiEAjjJA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=rRjqo6fzWUsr59vrTDJgNjjIrmr2dDUMwaccBH+Ri0g=;
 b=rfirEIWbrfCXhmXt5Uf2yT4EDiHErWbkSy9ug7nNFnsjDsSLRu4OZolg6zxoxiYORI
 WuIkQW7kQcu+jkVlT/WGMvcw0Ro1Xku1pcDGBUQDM6bvaGLeof1y5pYw1iitxonGOM7Q
 VBkxc4W8L/XaUzXy5lUDmkk4sIdD0Lup949XNtarbL5SqfQZW2vqPsDmoTnU+UaMsuOz
 k4eLBlUQ+ZD/dB3249/ubauuCfL9zp1xErLDiEQjxv4wpKd0DTDNLaPfO8DAHRugMr4K
 FJmdK0uSDC4i3Kblot4gb8wFUWswEs5drVAY2Ayy8SznoU04harKPeONRxA8+8ofo5DK
 vZdw==
Subject: Re: [Intel-gfx] [PATCH 10/17] drm/i915: Hide unshrinkable context
 objects from the shrinker
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

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxNDozMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhlIHNocmlua2VyIGNhbm5vdCB0b3VjaCBvYmplY3Rz
IHVzZWQgYnkgdGhlIGNvbnRleHRzIChsb2dpY2FsIHN0YXRlCj4gYW5kIHJpbmcpLiBDdXJyZW50
bHkgd2UgbWFyayB0aG9zZSBhcyAicGluX2dsb2JhbCIgdG8gbGV0IHRoZSBzaHJpbmtlcgo+IHNr
aXAgb3ZlciB0aGVtLCBob3dldmVyLCBpZiB3ZSByZW1vdmUgdGhlbSBmcm9tIHRoZSBzaHJpbmtl
ciBsaXN0cwo+IGVudGlyZWx5LCB3ZSBkb24ndCBldmVudCBoYXZlIHRvIGluY2x1ZGUgdGhlbSBp
biBvdXIgc2hyaW5rIGFjY291bnRpbmcuCj4KPiBCeSBrZWVwaW5nIHRoZSB1bnNocmlua2FibGUg
b2JqZWN0cyBpbiBvdXIgc2hyaW5rZXIgdHJhY2tpbmcsIHdlIHJlcG9ydAo+IGEgbGFyZ2UgbnVt
YmVyIG9mIG9iamVjdHMgYXZhaWxhYmxlIHRvIGJlIHNocnVuaywgYW5kIGxlYXZlIHRoZSBzaHJp
bmtlcgo+IGRlZXBseSB1bnNhdGlzZmllZCB3aGVuIHdlIGZhaWwgdG8gcmVjbGFpbSB0aG9zZS4g
VGhlIHNocmlua2VyIHdpbGwKPiBwZXJzaXN0IGluIHRyeWluZyB0byByZWNsYWltIHRoZSB1bmF2
YWlsYWJsZSBvYmplY3RzLCBmb3JjaW5nIHRoZSBzeXN0ZW0KPiBpbnRvIGEgbGl2ZWxvY2sgKG5v
dCBldmVuIGhpdHRpbmcgdGhlIGRyZWFkIG9vbWtpbGxlcikuCj4KPiB2MjogRXh0ZW5kIHVuc2hy
aW5rYWJsZSBwcm90ZWN0aW9uIGZvciBwZXJtYS1waW5uZWQgc2NyYXRjaCBhbmQgZ3VjCj4gYWxs
b2NhdGlvbnMgKFR2cnRrbykKPiB2MzogTm90aWNlIHRoYXQgd2Ugc2hvdWxkIGJlIHBpbm5lZCB3
aGVuIG1hcmtpbmcgdW5zaHJpbmthYmxlIGFuZCBzbyB0aGUKPiBsaW5rIGNhbm5vdCBiZSBlbXB0
eTsgbWVyZ2UgZHVwbGljYXRlIHBhdGhzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
