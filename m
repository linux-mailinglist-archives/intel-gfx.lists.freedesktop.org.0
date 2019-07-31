Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7537BB2F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 10:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26A7898C8;
	Wed, 31 Jul 2019 08:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C646898FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 08:08:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17751945-1500050 for multiple; Wed, 31 Jul 2019 09:08:16 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190730154853.19157-1-chris@chris-wilson.co.uk>
 <20190731070050.4845-1-chris@chris-wilson.co.uk>
 <73f4a5d8-405c-4c93-074d-9097ea27f6cd@linux.intel.com>
In-Reply-To: <73f4a5d8-405c-4c93-074d-9097ea27f6cd@linux.intel.com>
Message-ID: <156456049511.6373.11131224800630070231@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 09:08:15 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Pass intel_context
 to igt_spinner
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMSAwODozNzo0NCkKPiAKPiBPbiAzMS8w
Ny8yMDE5IDA4OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBAQCAtMTE4MywxMSArMTE5MSwx
NiBAQCBsaXZlX2VuZ2luZV9yZXNldF93b3JrYXJvdW5kcyh2b2lkICphcmcpCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgCj4gPiAt
ICAgICAgICAgICAgIHJldCA9IGlndF9zcGlubmVyX2luaXQoJnNwaW4sIGk5MTUpOwo+ID4gLSAg
ICAgICAgICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+
ID4gKyAgICAgICAgICAgICBjZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVu
Z2luZS0+aWQpOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKGNlKSkKPiAKPiBJIHRob3Vn
aHQgd2l0aCBsb2NrZWQgZW5naW5lcyB5b3Ugd291bGQgYmUgYWJsZSB0byBkcm9wIHRoZSBnZXQv
cHV0IGluIAo+IHRoZSBsb29wLiBXcm9uZz8gUmVxdWVzdCB3aWxsIHRha2UgYSByZWZlcmVuY2Uu
LgoKWWVhaC4uLiBZb3UgbWVhbiBpdCBkaWRuJ3QgYXV0b21hdGljYWxseSByZW1vdmUgdGhlIG9s
ZCBjZSBnZXR0ZXIuClN0dXBpZCByZWZhY3RvcmluZyBib3QuIEknbGwgZGVtb3RlIGl0IHRvIGNv
ZmZlZSBtYWtlci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
