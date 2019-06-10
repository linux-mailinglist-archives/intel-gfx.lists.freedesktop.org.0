Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042CF3B3C9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DD8890F9;
	Mon, 10 Jun 2019 11:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF01890F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 11:12:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16851386-1500050 for multiple; Mon, 10 Jun 2019 12:11:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190610103610.19883-1-chris@chris-wilson.co.uk>
 <9f09f32c-9520-28a4-3f90-5ffa09c6d67d@linux.intel.com>
In-Reply-To: <9f09f32c-9520-28a4-3f90-5ffa09c6d67d@linux.intel.com>
Message-ID: <156016511746.383.16484294150165054652@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 12:11:57 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow interrupts when taking the
 timeline->mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxMjowODo0MCkKPiAKPiBPbiAxMC8w
Ni8yMDE5IDExOjM2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBCZWZvcmUgd2UgY29tbWl0IG91
cnNlbHZlcyB0byB3cml0aW5nIGNvbW1hbmRzIGludG8gdGhlCj4gPiByaW5nYnVmZmVyIGFuZCBz
dWJtaXR0aW5nIHRoZSByZXF1ZXN0LCBhbGxvdyBzaWduYWxzIHRvIGludGVycnVwdAo+ID4gYWNx
dWlzaXRpb24gb2YgdGhlIHRpbWVsaW5lIG11dGV4LiBXZSBhbGxvdyBvdXJzZWx2ZXMgdG8gYmUg
aW50ZXJydXB0ZWQKPiA+IGF0IGFueSB0aW1lIGxhdGVyIGlmIHdlIG5lZWQgdG8gYmxvY2sgZm9y
IHNwYWNlIGluIHRoZSByaW5nLCBhbnl3YXkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaCB8IDUgKysrLS0KPiA+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgIHwgNSArKysrLQo+ID4gICAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaAo+ID4gaW5kZXggNjMzOTJjODhjZDk4Li42ZDU0
NTNiYTJjMWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9j
b250ZXh0LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQu
aAo+ID4gQEAgLTExMywxMCArMTEzLDExIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250
ZXh0X3B1dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gPiAgICAgICBrcmVmX3B1dCgmY2Ut
PnJlZiwgY2UtPm9wcy0+ZGVzdHJveSk7Cj4gPiAgIH0KPiA+ICAgCj4gPiAtc3RhdGljIGlubGlu
ZSB2b2lkIGludGVsX2NvbnRleHRfdGltZWxpbmVfbG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCj4gPiArc3RhdGljIGlubGluZSBpbnQgX19tdXN0X2NoZWNrCj4gPiAraW50ZWxfY29udGV4
dF90aW1lbGluZV9sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ICAgICAgIF9fYWNx
dWlyZXMoJmNlLT5yaW5nLT50aW1lbGluZS0+bXV0ZXgpCj4gPiAgIHsKPiA+IC0gICAgIG11dGV4
X2xvY2soJmNlLT5yaW5nLT50aW1lbGluZS0+bXV0ZXgpOwo+ID4gKyAgICAgcmV0dXJuIG11dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmY2UtPnJpbmctPnRpbWVsaW5lLT5tdXRleCk7Cj4gPiAgIH0K
PiA+ICAgCj4gPiAgIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0X3RpbWVsaW5lX3Vu
bG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYwo+ID4gaW5kZXggZGExZTY5ODRhOGNjLi5lOWI1OWVlYTRmMTAgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiA+IEBAIC03ODQsOCArNzg0LDExIEBAIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKgo+ID4gICBpOTE1X3JlcXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7
Cj4gPiArICAgICBpbnQgZXJyOwo+ID4gICAKPiA+IC0gICAgIGludGVsX2NvbnRleHRfdGltZWxp
bmVfbG9jayhjZSk7Cj4gPiArICAgICBlcnIgPSBpbnRlbF9jb250ZXh0X3RpbWVsaW5lX2xvY2so
Y2UpOwo+ID4gKyAgICAgaWYgKGVycikKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIo
ZXJyKTsKPiA+ICAgCj4gPiAgICAgICAvKiBNb3ZlIG91ciBvbGRlc3QgcmVxdWVzdCB0byB0aGUg
c2xhYi1jYWNoZSAoaWYgbm90IGluIHVzZSEpICovCj4gPiAgICAgICBycSA9IGxpc3RfZmlyc3Rf
ZW50cnkoJmNlLT5yaW5nLT5yZXF1ZXN0X2xpc3QsIHR5cGVvZigqcnEpLCByaW5nX2xpbmspOwo+
ID4gCj4gCj4gUGF0Y2ggdHJpZ2dlcmVkIGJ5IGEgYnVnLCBpc3N1ZSwgcmVwb3J0PwoKTm9uZSwg
anVzdCBhIHRob3VnaHQgb2NjdXJyZWQgdG8gbWUgdG8gY2hlY2suCiAKPiBXZSBoYWQgdGhpcyBj
b251bmRydW0gaW4gYSBmZXcgb2YgdGhlIG90aGVyIHBhdGNoZXMgd2hpY2ggYWRkZWQgbmV3IAo+
IG11dGV4ZXMuIFNvbWV0aW1lcyBpdCBpcyBsZXNzIGltcG9ydGFudCwgYnV0IGluIHRoaXMgY2Fz
ZSBJIHN1cHBvc2UgaXQgCj4gaXMgYmV0dGVyIHRvIGhhbmRsZSBzaWduYWxzLgoKVGhlcmUgYXJl
IGEgZmV3IHBsYWNlcyB3aGVyZSB3ZSBzaG91bGQgbm90LCB0aGF0J3MgdGhlIGNoYWxsZW5nZS4g
OikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
