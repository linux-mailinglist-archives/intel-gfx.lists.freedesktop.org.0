Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67E52D97D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB69C8954A;
	Wed, 29 May 2019 09:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10118954A;
 Wed, 29 May 2019 09:51:31 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id k187so1287140vsk.12;
 Wed, 29 May 2019 02:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RunDnKrmEEaKbtQGHztspUwjpnBitmp/h875kAluhd8=;
 b=DkvEquD3Ke9wR5JPho7bl8Zctt2vUy2oRfT+1Shd/sZPcT9X25AKbesFLDQS33RCRP
 Z0BjIwUMJEcw/lTZSlRfrtEPtdNePkjvozTQ7k/oWlhicyN0SI6EIRb8iQ9//zp7QFg2
 +UgXIJO8AFe0pMdhYbHmK72A8njbik0tfFG6X4K7qXjz5wIU2UL84ZfXh5OUBE/8ryQP
 UN6b6H7EXYw2003Uzi0Ofdt7ccwe/FB4tSm/iXYd6U40RGV8WRn9OeUxSJZqd/iEm+l7
 gI+aBlF59Bg/amBFbXdmLNySoMvHc6QGhn3iqquTmqqnxhVzaU+loa08C2bR9MOsH8uW
 vFZg==
X-Gm-Message-State: APjAAAVxRyvnSEolb3FZyjUKTCqHIFRBGwAQnUXXrNO2ba55ojG2rhcy
 2Ex6rZkm3Li1Lhm8hWFPQxYgnYOadYKLm9OZau5DX1vo
X-Google-Smtp-Source: APXvYqxZRZe7ClaArFsGSlrQcFPI+yAOaxIvD+tqWKNqL6aR/PtqUTTPYgiru7G0bmjEubCIvX9T3dQIexgNX10Ir+o=
X-Received: by 2002:a05:6102:c3:: with SMTP id u3mr79584216vsp.0.1559123490856; 
 Wed, 29 May 2019 02:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190525070525.22770-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190525070525.22770-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 29 May 2019 10:51:04 +0100
Message-ID: <CAM0jSHO6Fja_BQDG0593acmyP2st90E_dO4W5HWV5KtdFAUFgw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=RunDnKrmEEaKbtQGHztspUwjpnBitmp/h875kAluhd8=;
 b=pPGswtHsXEPX/eGSKi0F/lPjGFWjk6eu9A/2uc3y8nl4enCiL8Xao8YJwFZXOG9KP4
 zdacqCfTTJSsORr4Pfik0oCwHYGGYly+0sL/VGEYjUoNJEy7H9AEkB9Da7eB/e8gD0fl
 v0U5rkOD0LOgPwReTEM8ozXkvqFhvnuIsNyapTccauWPX+nlm080XoY+JGJkc3kVuj8O
 3p2bte2hSMZKbHPR+ZZTWqI/6TLWqMG7bt9H7X5H430iGb8kjPYpMtPblU7dhlnjjO9h
 3qZMgAuwPFqka2nb5h7XoVZFC1SSCo44w93WHeY6epK60HNY28wLuKA3UK3lwkc7VGf1
 cmlw==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_workarounds:
 Verify regs directly
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyNSBNYXkgMjAxOSBhdCAwODowNSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gLS0tCgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKPiAgdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyB8
IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMzcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS90ZXN0
cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jIGIvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYwo+
IGluZGV4IDQ0ZTNkY2U4YS4uYmY4YjRmNjMwIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2Vt
X3dvcmthcm91bmRzLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jCj4gQEAg
LTgyLDYgKzgyLDcgQEAgc3RhdGljIGJvb2wgd3JpdGVfb25seShjb25zdCB1aW50MzJfdCBhZGRy
KQo+Cj4gICNkZWZpbmUgTUlfU1RPUkVfUkVHSVNURVJfTUVNICgweDI0IDw8IDIzKQo+Cj4gKyNp
ZiAwCj4gIHN0YXRpYyBpbnQgd29ya2Fyb3VuZF9mYWlsX2NvdW50KGludCBmZCwgdWludDMyX3Qg
Y3R4KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmpb
Ml07Cj4gQEAgLTE2MiwxNyArMTYzLDQ1IEBAIHN0YXRpYyBpbnQgd29ya2Fyb3VuZF9mYWlsX2Nv
dW50KGludCBmZCwgdWludDMyX3QgY3R4KQo+Cj4gICAgICAgICByZXR1cm4gZmFpbF9jb3VudDsK
PiAgfQo+IC0KPiAtc3RhdGljIGludCByZW9wZW4oaW50IGZkKQo+ICsjZWxzZQo+ICtzdGF0aWMg
aW50IHdvcmthcm91bmRfZmFpbF9jb3VudChpbnQgaTkxNSwgdWludDMyX3QgY3R4KQo+ICB7Cj4g
LSAgICAgICBjaGFyIHBhdGhbMjU2XTsKPiArICAgICAgIGlndF9zcGluX3QgKnNwaW47Cj4gKyAg
ICAgICBpbnQgZmFpbCA9IDA7Cj4gKwo+ICsgICAgICAgaW50ZWxfbW1pb191c2VfcGNpX2Jhcihp
bnRlbF9nZXRfcGNpX2RldmljZSgpKTsKPiArCj4gKyAgICAgICBzcGluID0gaWd0X3NwaW5fbmV3
KGk5MTUsIC5jdHggPSBjdHgsIC5mbGFncyA9IElHVF9TUElOX1BPTExfUlVOKTsKPiArICAgICAg
IGlndF9zcGluX2J1c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3Bpbik7Cj4gKwo+ICsgICAgICAgZm9y
IChpbnQgaSA9IDA7IGkgPCBudW1fd2FfcmVnczsgaSsrKSB7Cj4gKyAgICAgICAgICAgICAgIHVp
bnQzMl90IHZhbHVlID0KPiArICAgICAgICAgICAgICAgICAgICAgICAqKHVpbnQzMl90ICopKGln
dF9nbG9iYWxfbW1pbyArIHdhX3JlZ3NbaV0uYWRkcik7Cj4gKyAgICAgICAgICAgICAgIGNvbnN0
IGJvb2wgb2sgPQo+ICsgICAgICAgICAgICAgICAgICAgICAgICh3YV9yZWdzW2ldLnZhbHVlICYg
d2FfcmVnc1tpXS5tYXNrKSA9PQo+ICsgICAgICAgICAgICAgICAgICAgICAgICh2YWx1ZSAmIHdh
X3JlZ3NbaV0ubWFzayk7Cj4gKyAgICAgICAgICAgICAgIGNoYXIgYnVmWzgwXTsKPiArCj4gKyAg
ICAgICAgICAgICAgIHNucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICIweCUwNVhcdDB4JTA4WFx0MHglMDhYXHQweCUwOFgiLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICB3YV9yZWdzW2ldLmFkZHIsIHdhX3JlZ3NbaV0udmFsdWUsIHdhX3JlZ3Nb
aV0ubWFzaywKPiArICAgICAgICAgICAgICAgICAgICAgICAgdmFsdWUpOwo+ICsKPiArICAgICAg
ICAgICAgICAgaWYgKG9rKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWd0X2RlYnVnKCIl
c1x0T0tcbiIsIGJ1Zik7Cj4gKyAgICAgICAgICAgICAgIH0gZWxzZSBpZiAod3JpdGVfb25seSh3
YV9yZWdzW2ldLmFkZHIpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWd0X2RlYnVnKCIl
c1x0SUdOT1JFRCAody9vKVxuIiwgYnVmKTsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBpZ3Rfd2FybigiJXNcdEZBSUxcbiIsIGJ1Zik7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgZmFpbCsrOwo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAg
ICB9Cj4KPiAtICAgICAgIHNucHJpbnRmKHBhdGgsIHNpemVvZihwYXRoKSwgIi9wcm9jL3NlbGYv
ZmQvJWQiLCBmZCk7Cj4gLSAgICAgICBmZCA9IG9wZW4ocGF0aCwgT19SRFdSKTsKPiAtICAgICAg
IGlndF9hc3NlcnRfbHRlKDAsIGZkKTsKPiArICAgICAgIGlndF9zcGluX2ZyZWUoaTkxNSwgc3Bp
bik7Cj4KPiAtICAgICAgIHJldHVybiBmZDsKPiArICAgICAgIHJldHVybiBmYWlsOwo+ICB9Cj4g
KyNlbmRpZgo+Cj4gICNkZWZpbmUgQ09OVEVYVCAweDEKPiAgI2RlZmluZSBGRCAweDIKPiBAQCAt
MTgxLDcgKzIxMCw3IEBAIHN0YXRpYyB2b2lkIGNoZWNrX3dvcmthcm91bmRzKGludCBmZCwgZW51
bSBvcGVyYXRpb24gb3AsIHVuc2lnbmVkIGludCBmbGFncykKPiAgICAgICAgIHVpbnQzMl90IGN0
eCA9IDA7Cj4KPiAgICAgICAgIGlmIChmbGFncyAmIEZEKQo+IC0gICAgICAgICAgICAgICBmZCA9
IHJlb3BlbihmZCk7Cj4gKyAgICAgICAgICAgICAgIGZkID0gZ2VtX3Jlb3Blbl9kcml2ZXIoZmQp
Owo+Cj4gICAgICAgICBpZiAoZmxhZ3MgJiBDT05URVhUKSB7Cj4gICAgICAgICAgICAgICAgIGdl
bV9yZXF1aXJlX2NvbnRleHRzKGZkKTsKPiAtLQo+IDIuMjAuMQo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBpZ3QtZGV2IG1haWxpbmcgbGlzdAo+
IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pZ3QtZGV2Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
