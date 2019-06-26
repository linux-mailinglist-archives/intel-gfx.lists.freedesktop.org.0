Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CB256501
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 11:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E736E33A;
	Wed, 26 Jun 2019 09:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC7C6E33A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 09:01:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17027583-1500050 for multiple; Wed, 26 Jun 2019 10:00:43 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190625230815.32244-1-chris@chris-wilson.co.uk>
References: <20190625230815.32244-1-chris@chris-wilson.co.uk>
Message-ID: <156153963881.2637.1183662050290179684@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 10:00:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fail harder if GPU reset fails
 outright
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMjYgMDA6MDg6MTUpCj4gSWYgd2UgcmVxdWVz
dCBhIHJlc2V0IGFuZCB0aGUgR1BVIGZhaWxzIHRvIHJlc3BvbmQsIGFiYW5kb24gYWxsIGhvcGUu
IElmCj4gdGhlIHJlcXVlc3QgaXMgc3RpbGwgc3R1Y2sgd2hlbiB3ZSBhdHRlbXB0IHRvIGRvIGFu
b3RoZXIsIGZhaWwgZWFybHkgYW5kCj4gYXZvaWQgcmVxdWVzdGluZyBtdWx0aXBsZSBwb3NzaWJs
eSBjb25mbGljdGluZyBkb21haW5zIGJlIHJlc2V0Cj4gc2ltdWx0YW5lb3VzbHkuCj4gCj4gV2Ug
c2hvdWxkIG5ldmVyIHNlZSB0aGlzIGluIHByYWN0aWNlLCBhbmQgaWYgd2UgZG8sIGl0IGlzIGFs
cmVhZHkgdG9vCj4gbGF0ZS4KPiAKPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5OTgKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgfCAxNSArKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCj4gaW5kZXggNzIwMDJjMGY5Njk4Li41NmM0M2Y4Y2JjMTcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtMzAxLDggKzMwMSwxNiBAQCBz
dGF0aWMgaW50IGdlbjZfaHdfZG9tYWluX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIGh3X2RvbWFpbl9tYXNr
KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5j
b3JlOwo+ICsgICAgICAgdTMyIHN0YXR1czsKPiAgICAgICAgIGludCBlcnI7Cj4gIAo+ICsgICAg
ICAgLyoKPiArICAgICAgICAqIENoZWNrIHRoYXQgYWxsIHByZXZpb3VzIHJlc2V0IHJlcXVlc3Rz
IGhhdmUgYmVlbiBmbHVzaGVkIHNvCj4gKyAgICAgICAgKiB0aGF0IHdlIGRvbid0IHNpbXVsdGFu
ZW91c2x5IHRyeSB0byByZXNldCAyIG92ZXJsYXBwaW5nIGRvbWFpbnMuCj4gKyAgICAgICAgKi8K
PiArICAgICAgIGlmIChpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfR0RSU1QpKQoK
VGhpbmtpbmcgYWJvdXQgdGhpcywgdGhpcyBkb2VzIG5lcmYgb3VyIGF0dGVtcHQgdG8gdHJ5IGFu
ZCByZXNldCB0d28KZW5naW5lcyBhdCBvbmNlIGZyb20gZGlmZmVyZW50IGV2ZW50cy4KClB1dCBp
dCBvbiB0aGUgYmFjayBidXJuZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
