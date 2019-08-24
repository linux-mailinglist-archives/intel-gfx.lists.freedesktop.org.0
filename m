Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D62239BCA9
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 11:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE02C6E09C;
	Sat, 24 Aug 2019 09:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28556E09C
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Aug 2019 09:04:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18248963-1500050 for multiple; Sat, 24 Aug 2019 10:04:00 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190824002022.27636-1-daniele.ceraolospurio@intel.com>
References: <20190824002022.27636-1-daniele.ceraolospurio@intel.com>
Message-ID: <156663743830.4019.9135699386186936827@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 24 Aug 2019 10:03:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use a separate context for gpu
 relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTI0IDAxOjIwOjIyKQo+IEBA
IC05NDMsNiArOTQ1LDcgQEAgc3RhdGljIHZvaWQgcmVsb2NfZ3B1X2ZsdXNoKHN0cnVjdCByZWxv
Y19jYWNoZSAqY2FjaGUpCj4gIHN0YXRpYyB2b2lkIHJlbG9jX2NhY2hlX3Jlc2V0KHN0cnVjdCBy
ZWxvY19jYWNoZSAqY2FjaGUpCj4gIHsKPiAgICAgICAgIHZvaWQgKnZhZGRyOwo+ICsgICAgICAg
c3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICAKPiAgICAgICAgIGlmIChjYWNoZS0+cnEpCj4g
ICAgICAgICAgICAgICAgIHJlbG9jX2dwdV9mbHVzaChjYWNoZSk7Cj4gQEAgLTk3Myw2ICs5NzYs
MTAgQEAgc3RhdGljIHZvaWQgcmVsb2NfY2FjaGVfcmVzZXQoc3RydWN0IHJlbG9jX2NhY2hlICpj
YWNoZSkKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+ICAKPiArICAgICAgIGNlID0g
ZmV0Y2hfYW5kX3plcm8oJmNhY2hlLT5jZSk7Cj4gKyAgICAgICBpZiAoY2UpCj4gKyAgICAgICAg
ICAgICAgIGludGVsX2NvbnRleHRfcHV0KGNlKTsKCkZvciBwZWFjZSBvZiBtaW5kLCB0aGlzIGlz
IHRvbyBsYXRlLiBGb3IgcHVyZSBncHUgcmVsb2NzLCBjYWNoZS0+dmFkZHIgaXMgMAphbmQgc28g
d2UgdG9vayB0aGUgc2hvcnQtY2lyY3VpdCBhdCB0aGUgYmVnaW5uaW5nIG9mIHRoZSBmdW5jdGlv
bi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
