Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAC321FE58
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFDEA6E88B;
	Tue, 14 Jul 2020 20:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514926E888
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 20:15:27 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id k23so18655436iom.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 13:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=basnieuwenhuizen-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/p+bzwQ5QmwSIzj6F5AB3nkYDC6rYoTIEY0YZ290OuQ=;
 b=XFk3n0rC1iLpK80lY+HAOO1hbISONecERQS6IMwz1DkGmZrBJDxS1q2tfAPOgs5tJT
 QVtM2ceFLcUn64poiMwiP9T8x47Gyd9jYo66OPWOAlF8gah2QUztXKlAMYJB/TGMePkX
 rUkkrr6/uRaxzvHY5wQlniEV6Y1OM+AZejg5DpMeOc7YxjYLCu7Va7K22Zrjgi7DkVY6
 IbpGJDcU9/sigTr9SrZvm81ql6U62wCZ49+d4FFyR2oIdww+BW47IkzCkueVbqG5IPDr
 XBpUFTUX6AXJdfnJob5g9djHoX7pfHe2iTIJS998V/Opugxy3/OGm8Prnzv1YB11mROB
 Z3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/p+bzwQ5QmwSIzj6F5AB3nkYDC6rYoTIEY0YZ290OuQ=;
 b=QVQ4UiLqOWPUbhaZ36Su8ndBJV/tk7nHr4ZJkQkt4Hbs+LjU/h6NuxX28+t1d2dSZ2
 NEpJLRfJZVqmk8zcwhpJ3hz8NIM3reKf5tEblWAemNeYtf6XMIZMRt8nY5ZYeYItn3WL
 JJemP6xegnMbJC74rapSib6mqWYDgiBgRuO8+EIrI3AK3z3L9hiuhCGteAjlvt2LR3oi
 i7caEYmxjhZYV5FBnmsJ/fJ9gQSKPbE2yNLJTJsXNs+XV7F6GR2/VaQLYaDAL7uvxInK
 ug+b9Pzyj+U/jUKykX8W1+LUGM7dhXURvraNe/l/IUsDPWmCbHNAHeBCuD6bDFwReub6
 Ip3g==
X-Gm-Message-State: AOAM531C97NA9TsOel7AsSqdNK674vW9NFJ6bLVxOEKil7JnIi6mrEHU
 qMKdsA75ojHayqOAzrYob9LEbp8VJXLJog7seUFKPQ==
X-Google-Smtp-Source: ABdhPJwDIGVrJ7lxywITvDgwcv+EfcTlfNr95Jjd9li82NJlpmmppxQ7J1WX4hGgfSFieyM5CTPkkDsIYmau/LZrIHs=
X-Received: by 2002:a05:6602:22d5:: with SMTP id
 e21mr4801657ioe.98.1594757726673; 
 Tue, 14 Jul 2020 13:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200714200646.14041-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200714200646.14041-1-chris@chris-wilson.co.uk>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Tue, 14 Jul 2020 22:14:40 +0200
Message-ID: <CAP+8YyFz5qii=3pK4t2GKxgC=z6_Q0dsGTGzXX=tUgLihrp41g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/3] dma-buf/sw_sync: Avoid recursive lock
 during fence signal.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB1cGRhdGluZyB0aGUgcGF0Y2guIExHVE0KCk9uIFR1ZSwgSnVsIDE0LCAyMDIw
IGF0IDEwOjA3IFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90
ZToKPgo+IEZyb206IEJhcyBOaWV1d2VuaHVpemVuIDxiYXNAYmFzbmlldXdlbmh1aXplbi5ubD4K
Pgo+IENhbGx0cmVlOgo+ICAgdGltZWxpbmVfZmVuY2VfcmVsZWFzZQo+ICAgZHJtX3NjaGVkX2Vu
dGl0eV93YWtldXAKPiAgIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkCj4gICBzeW5jX3RpbWVsaW5l
X3NpZ25hbAo+ICAgc3dfc3luY19pb2N0bAo+Cj4gUmVsZWFzaW5nIHRoZSByZWZlcmVuY2UgdG8g
dGhlIGZlbmNlIGluIHRoZSBmZW5jZSBzaWduYWwgY2FsbGJhY2sKPiBzZWVtcyByZWFzb25hYmxl
IHRvIG1lLCBzbyB0aGlzIHBhdGNoIGF2b2lkcyB0aGUgbG9ja2luZyBpc3N1ZSBpbgo+IHN3X3N5
bmMuCj4KPiBkMzg2MmU0NGRhYTcgKCJkbWEtYnVmL3N3LXN5bmM6IEZpeCBsb2NraW5nIGFyb3Vu
ZCBzeW5jX3RpbWVsaW5lIGxpc3RzIikKPiBmaXhlZCB0aGUgcmVjdXJzaXZlIGxvY2tpbmcgaXNz
dWUgYnV0IGNhdXNlZCBhbiB1c2UtYWZ0ZXItZnJlZS4gTGF0ZXIKPiBkM2M2ZGQxZmIzMGQgKCJk
bWEtYnVmL3N3X3N5bmM6IFN5bmNocm9uaXplIHNpZ25hbCB2cyBzeW5jcHQgZnJlZSIpCj4gZml4
ZWQgdGhlIHVzZS1hZnRlci1mcmVlIGJ1dCByZWludHJvZHVjZWQgdGhlIHJlY3Vyc2l2ZSBsb2Nr
aW5nIGlzc3VlLgo+Cj4gSW4gdGhpcyBhdHRlbXB0IHdlIGF2b2lkIHRoZSB1c2UtYWZ0ZXItZnJl
ZSBzdGlsbCBiZWNhdXNlIHRoZSByZWxlYXNlCj4gZnVuY3Rpb24gc3RpbGwgYWx3YXlzIGxvY2tz
LCBhbmQgb3V0c2lkZSBvZiB0aGUgbG9ja2luZyByZWdpb24gaW4gdGhlCj4gc2lnbmFsIGZ1bmN0
aW9uIHdlIGhhdmUgcHJvcGVybHkgcmVmY291bnRlZCByZWZlcmVuY2VzLgo+Cj4gV2UgZnVydGhl
cm1vcmUgYWxzbyBhdm9pZCB0aGUgcmVjdXJpdmUgbG9jayBieSBtYWtpbmcgc3VyZSB0aGF0IGVp
dGhlcjoKPgo+IDEpIFdlIGhhdmUgYSBwcm9wZXJseSByZWZjb3VudGVkIHJlZmVyZW5jZSwgcHJl
dmVudGluZyB0aGUgc2lnbmFsIGZyb20KPiAgICB0cmlnZ2VyaW5nIHRoZSByZWxlYXNlIGZ1bmN0
aW9uIGluc2lkZSB0aGUgbG9ja2VkIHJlZ2lvbi4KPiAyKSBUaGUgcmVmY291bnQgd2FzIGFscmVh
ZHkgemVybywgYW5kIGhlbmNlIG5vYm9keSB3aWxsIGJlIGFibGUgdG8gdHJpZ2dlcgo+ICAgIHRo
ZSByZWxlYXNlIGZ1bmN0aW9uIGZyb20gdGhlIHNpZ25hbCBmdW5jdGlvbi4KPgo+IHYyOiBNb3Zl
IGRtYV9mZW5jZV9zaWduYWwoKSBpbnRvIHNlY29uZCBsb29wIGluIHByZXBhcmF0aW9uIHRvIG1v
dmluZwo+IHRoZSBjYWxsYmFjayBvdXQgb2YgdGhlIHRpbWVsaW5lIG9iai0+bG9jay4KPgo+IEZp
eGVzOiBkM2M2ZGQxZmIzMGQgKCJkbWEtYnVmL3N3X3N5bmM6IFN5bmNocm9uaXplIHNpZ25hbCB2
cyBzeW5jcHQgZnJlZSIpCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBH
dXN0YXZvIFBhZG92YW4gPGd1c3Rhdm9AcGFkb3Zhbi5vcmc+Cj4gQ2M6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogQmFzIE5pZXV3ZW5odWl6ZW4gPGJhc0BiYXNuaWV1d2VuaHVp
emVuLm5sPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIHwgMzIgKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19z
eW5jLmMgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jCj4gaW5kZXggMzQ4YjNhOTE3MGZhLi44
MDdjODIxNDgwNjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYwo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMKPiBAQCAtMTkyLDYgKzE5Miw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7Cj4gIHN0
YXRpYyB2b2lkIHN5bmNfdGltZWxpbmVfc2lnbmFsKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmos
IHVuc2lnbmVkIGludCBpbmMpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBzeW5jX3B0ICpwdCwgKm5l
eHQ7Cj4gKyAgICAgICBMSVNUX0hFQUQoc2lnbmFsKTsKPgo+ICAgICAgICAgdHJhY2Vfc3luY190
aW1lbGluZShvYmopOwo+Cj4gQEAgLTIwMywyMSArMjA0LDMyIEBAIHN0YXRpYyB2b2lkIHN5bmNf
dGltZWxpbmVfc2lnbmFsKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGludCBp
bmMpCj4gICAgICAgICAgICAgICAgIGlmICghdGltZWxpbmVfZmVuY2Vfc2lnbmFsZWQoJnB0LT5i
YXNlKSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPgo+IC0gICAgICAgICAgICAg
ICBsaXN0X2RlbF9pbml0KCZwdC0+bGluayk7Cj4gLSAgICAgICAgICAgICAgIHJiX2VyYXNlKCZw
dC0+bm9kZSwgJm9iai0+cHRfdHJlZSk7Cj4gLQo+ICAgICAgICAgICAgICAgICAvKgo+IC0gICAg
ICAgICAgICAgICAgKiBBIHNpZ25hbCBjYWxsYmFjayBtYXkgcmVsZWFzZSB0aGUgbGFzdCByZWZl
cmVuY2UgdG8gdGhpcwo+IC0gICAgICAgICAgICAgICAgKiBmZW5jZSwgY2F1c2luZyBpdCB0byBi
ZSBmcmVlZC4gVGhhdCBvcGVyYXRpb24gaGFzIHRvIGJlCj4gLSAgICAgICAgICAgICAgICAqIGxh
c3QgdG8gYXZvaWQgYSB1c2UgYWZ0ZXIgZnJlZSBpbnNpZGUgdGhpcyBsb29wLCBhbmQgbXVzdAo+
IC0gICAgICAgICAgICAgICAgKiBiZSBhZnRlciB3ZSByZW1vdmUgdGhlIGZlbmNlIGZyb20gdGhl
IHRpbWVsaW5lIGluIG9yZGVyIHRvCj4gLSAgICAgICAgICAgICAgICAqIHByZXZlbnQgZGVhZGxv
Y2tpbmcgb24gdGltZWxpbmUtPmxvY2sgaW5zaWRlCj4gLSAgICAgICAgICAgICAgICAqIHRpbWVs
aW5lX2ZlbmNlX3JlbGVhc2UoKS4KPiArICAgICAgICAgICAgICAgICogV2UgbmVlZCB0byB0YWtl
IGEgcmVmZXJlbmNlIHRvIGF2b2lkIGEgcmVsZWFzZSBkdXJpbmcKPiArICAgICAgICAgICAgICAg
ICogc2lnbmFsbGluZyAod2hpY2ggY2FuIGNhdXNlIGEgcmVjdXJzaXZlIGxvY2sgb2Ygb2JqLT5s
b2NrKS4KPiArICAgICAgICAgICAgICAgICogSWYgcmVmY291bnQgd2FzIGFscmVhZHkgemVybywg
YW5vdGhlciB0aHJlYWQgaXMgYWxyZWFkeQo+ICsgICAgICAgICAgICAgICAgKiB0YWtpbmcgY2Fy
ZSBvZiBkZXN0cm95aW5nIHRoZSBmZW5jZS4KPiAgICAgICAgICAgICAgICAgICovCj4gLSAgICAg
ICAgICAgICAgIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZwdC0+YmFzZSk7Cj4gKyAgICAgICAg
ICAgICAgIGlmICghZG1hX2ZlbmNlX2dldF9yY3UoJnB0LT5iYXNlKSkKPiArICAgICAgICAgICAg
ICAgICAgICAgICBjb250aW51ZTsKPiArCj4gKyAgICAgICAgICAgICAgIGxpc3RfbW92ZV90YWls
KCZwdC0+bGluaywgJnNpZ25hbCk7Cj4gKyAgICAgICAgICAgICAgIHJiX2VyYXNlKCZwdC0+bm9k
ZSwgJm9iai0+cHRfdHJlZSk7Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIHNwaW5fdW5sb2NrX2ly
cSgmb2JqLT5sb2NrKTsKPiArCj4gKyAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUocHQs
IG5leHQsICZzaWduYWwsIGxpbmspIHsKPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAg
ICAgICAgICogVGhpcyBuZWVkcyB0byBiZSBjbGVhcmVkIGJlZm9yZSByZWxlYXNlLCBvdGhlcndp
c2UgdGhlCj4gKyAgICAgICAgICAgICAgICAqIHRpbWVsaW5lX2ZlbmNlX3JlbGVhc2UgZnVuY3Rp
b24gZ2V0cyBjb25mdXNlZCBhYm91dCBhbHNvCj4gKyAgICAgICAgICAgICAgICAqIHJlbW92aW5n
IHRoZSBmZW5jZSBmcm9tIHRoZSBwdF90cmVlLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAg
ICAgICAgICAgICAgbGlzdF9kZWxfaW5pdCgmcHQtPmxpbmspOwo+ICsKPiArICAgICAgICAgICAg
ICAgZG1hX2ZlbmNlX3NpZ25hbCgmcHQtPmJhc2UpOwo+ICsgICAgICAgICAgICAgICBkbWFfZmVu
Y2VfcHV0KCZwdC0+YmFzZSk7Cj4gKyAgICAgICB9Cj4gIH0KPgo+ICAvKioKPiAtLQo+IDIuMjAu
MQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
