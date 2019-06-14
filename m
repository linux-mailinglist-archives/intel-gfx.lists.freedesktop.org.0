Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C24F2468A3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF7A89010;
	Fri, 14 Jun 2019 20:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E25C89010
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:13:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16907171-1500050 for multiple; Fri, 14 Jun 2019 21:13:54 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156054228965.4513.10521691270666765118@skylake-alporthouse-com>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-36-chris@chris-wilson.co.uk>
 <CAM0jSHNBM-ow8LnyBZe1tp7ZcAE1-V9LiGV9=svarQrqP4nhOQ@mail.gmail.com>
 <156054228965.4513.10521691270666765118@skylake-alporthouse-com>
Message-ID: <156054323194.4609.10322814362363782962@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Jun 2019 21:13:51 +0100
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Pin pages before waiting
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTQgMjA6NTg6MDkpCj4gUXVvdGluZyBNYXR0
aGV3IEF1bGQgKDIwMTktMDYtMTQgMjA6NTM6MjYpCj4gPiBPbiBGcmksIDE0IEp1biAyMDE5IGF0
IDA4OjExLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiA+IEBAIC02NywxMCArNjEsMTcgQEAgaTkxNV9nZW1fb2JqZWN0X3NldF90b193Y19kb21haW4o
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgYm9vbCB3cml0ZSkKPiA+ID4gICAgICAg
ICAgKiBjb250aW51ZSB0byBhc3N1bWUgdGhhdCB0aGUgb2JqIHJlbWFpbmVkIG91dCBvZiB0aGUg
Q1BVIGNhY2hlZAo+ID4gPiAgICAgICAgICAqIGRvbWFpbi4KPiA+ID4gICAgICAgICAgKi8KPiA+
ID4gLSAgICAgICByZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gPiA+ICsg
ICAgICAgcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlc19hc3luYyhvYmopOwo+ID4gPiAg
ICAgICAgIGlmIChyZXQpCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPgo+
ID4gPiArICAgICAgIHJldCA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSB8Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHdyaXRlID8gSTkxNV9XQUlU
X0FMTCA6IDApLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1BWF9T
Q0hFRFVMRV9USU1FT1VUKTsKPiA+ID4gKyAgICAgICBpZiAocmV0KQo+ID4gPiArICAgICAgICAg
ICAgICAgZ290byBvdXRfdW5waW47Cj4gPiA+ICsKPiA+IAo+ID4gRG8gd2Ugc29tZWhvdyBwcm9w
YWdhdGUgYSBwb3RlbnRpYWwgZXJyb3IgZnJvbSBhIHdvcmtlciB0byB0aGUKPiA+IG9iamVjdF93
YWl0KCk/IE9yIHNob3VsZCB3ZSBiZSBsb29raW5nIGF0IG9iai0+bW0ucGFnZXMgaGVyZT8KPiAK
PiBZZWFoLCBJJ3ZlIHByb3BhZ2F0ZWQgc3VjaCBlcnJvcnMgZWxzZXdoZXJlIChwcmluY2lwYWxs
eSBhbG9uZyB0aGUKPiBmZW5jZXMpLiBXaGF0IHlvdSBhcmUgc3VnZ2VzdGluZyBpcyB0YW50YW1v
dW50IHRvIG1ha2luZwo+IGk5MTVfZ2VtX29iamVjdF93YWl0KCkgcmVwb3J0IGFuIGVycm9yLCBh
bmQgSSBoYXZlIGJhZCBtZW1vcmllcyBmcm9tIGFsbAo+IHRoZSB1bmhhbmRsZWQgLUVJTyBpbiB0
aGUgcGFzdC4gSG93ZXZlciwgdGhhdCBmZWVscyB0aGUgbmF0dXJhbCB0aGluZyB0bwo+IGRvLCBz
byBsZXRzIGdpdmUgaXQgYSB3aGlybC4KClNvIHdlIG5lZWQgdG8gY2hlY2sgZm9yIGVycm9yIHBh
Z2VzIGFueXdheSwgYmVjYXVzZSB3ZSBjYW4ndCBydWxlIG91dCBhCnJhY2UgYmV0d2VlbiB0aGUg
cGluX3BhZ2VzX2FzeW5jIGFuZCBpOTE1X2dlbV9vYmplY3Rfd2FpdC4KClRoZXJlJ3MgcGxlbnR5
IG9mIGR1cGxpY2F0ZWQgY29kZSBmb3IgcGluX3BhZ2VzX2FzeW5jLCBvYmplY3Rfd2FpdCwKY2hl
Y2sgcGFnZXMgc28gSSBzaG91bGQgcmVmYWN0b3IgdGhhdCBpbnRvIGEgdmFyaWFudCwgCmk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXNfd2FpdCgpID8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
