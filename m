Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6438466F32
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 14:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCE5899D4;
	Fri, 12 Jul 2019 12:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935DB899D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 12:52:10 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id j19so9352531otq.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 05:52:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q5R0P622I7gwVxMNrGOC0fCBgtiLO/7xHFV2Rnp0yUI=;
 b=ms5Yd9rz3NTrTTd+lPUlInjB9sBLxPGHOVcF8qgNWZlC7jbbpyqhodZXzZoa8ORU/v
 PRlBUZAyLGAZFVLa6ZxPaB0tblqckj5Iv6XnvZg0FupGWAC52qzVaopHsCslXQIsu3XL
 LZN0uGddqCO/Tpzljq0/ScuvIYCoquWsXDH3QxdFBmMxiXg7tJf4WDL4PXeckURhxcjF
 xKmSudal/KLnS1UNR1nZPfdGhZ0wCylM/Tq3DFZkUIr1LW1fhg3UEUp5BAK7phKY/TC5
 +kLJp/js45oL+Zk/edEph/Rxj/qmCwC0bwPGgLmgxU3JYWXQCi75fZL9Qfh3ipwTHj+c
 Obqw==
X-Gm-Message-State: APjAAAXsuIFsEwiVPRBwSltTE1XCPw+18IuMZBtDFlhtYBuROvliFU/5
 y0bUVGJN+QS2c15gnWIMFsXh19NjTnm1yHS0cyXdzQ==
X-Google-Smtp-Source: APXvYqx/6KVYpGofMZcQGi6c+iBnvD2M5z4r5KGAqb8phSGFuKy1ivMKKEIRaSuIFodPBwpdqF2g47yRU+PTp9nnwXU=
X-Received: by 2002:a9d:590d:: with SMTP id t13mr8761677oth.281.1562935929713; 
 Fri, 12 Jul 2019 05:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190712120147.29830-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190712120147.29830-1-chris@chris-wilson.co.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 12 Jul 2019 14:51:58 +0200
Message-ID: <CAKMK7uGiwnRkCT_A6NJB+aQaXy5A-TT-qUBDmBVsLogyXK7v5g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=q5R0P622I7gwVxMNrGOC0fCBgtiLO/7xHFV2Rnp0yUI=;
 b=hPmnMRndoxxV5fdObeTdaVVYV2dMReoHY7hMA2saRoB9HIA4jHxDsJ+0EIyk7hw11w
 twbKAXAWcqQVlFbh/diGNh8RQY3JC3pHk32n0Dn3H0LjAYgKhWZc1jHZM0iO4DU/AgYI
 e0ucKAoucmw4XvSHofX+ldAiGjtzJl8k2rS40=
Subject: Re: [Intel-gfx] [PATCH] drm/vgem: Reclassify buffer creation debug
 message
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMjowMSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBBIGJ1ZmZlciBpcyBjcmVhdGVkIGluIHJlc3BvbnNl
IHRvIHRoZSB1c2VyIGlvY3RsLCBpdCBzaG91bGQgdGhlcmVmb3JlCj4gYmUgYSBwbGFpbiBEUk1f
REVCVUcoKSBtZXNzYWdlIHRvIHJlZmxlY3QgaXQgYmVpbmcgYSB1c2VyIGludm9rZWQKPiByZXNw
b25zZSBhbmQgbm90IGEgZHJpdmVyIGNvbnN0cnVjdC4KPgo+IFRoaXMgaXMganVzdCB0byBtYWtl
IHRoZSBjb21tb25wbGFjZSBkcm0uZGVidWc9WzI2ZV0gcXVpZXRlciB3aGVuCj4gcnVubmluZyB3
aXRoIHZnZW0uCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3Zn
ZW1fZHJ2LmMKPiBpbmRleCAzODZlZmMzYjU4NDMuLjc2ZDk1YjVlMjg5YyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3ZnZW0vdmdlbV9kcnYuYwo+IEBAIC0yMTQsNyArMjE0LDcgQEAgc3RhdGljIGludCB2Z2VtX2dl
bV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsIHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCj4gICAgICAgICBhcmdzLT5zaXplID0gZ2VtX29iamVjdC0+c2l6ZTsKPiAgICAgICAgIGFy
Z3MtPnBpdGNoID0gcGl0Y2g7Cj4KPiAtICAgICAgIERSTV9ERUJVR19EUklWRVIoIkNyZWF0ZWQg
b2JqZWN0IG9mIHNpemUgJWxsZFxuIiwgc2l6ZSk7Cj4gKyAgICAgICBEUk1fREVCVUcoIkNyZWF0
ZWQgb2JqZWN0IG9mIHNpemUgJWxsZFxuIiwgc2l6ZSk7CgpIbSwgSSBob25lc3RseSBkdW5ubyB3
aGF0IERSTV9ERUJVRyBpcyBmb3IsIGV4Y2VwdCBnZW5lcmF0aW5nIG5vaXNlLgpNYXliZSBhbHNv
IGRpdGNoIHRoaXMgb3V0cmlnaHQuIEVpdGhlciBhcHByb2FjaCBnZXRzIG15CgpSZXZpZXdlZC1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCj4KPiAgICAgICAgIHJl
dHVybiAwOwo+ICB9Cj4gLS0KPiAyLjIyLjAKPgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
