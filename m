Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B897A4B3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38276E47C;
	Tue, 30 Jul 2019 09:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2926E47E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:38:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17724443-1500050 for multiple; Tue, 30 Jul 2019 10:38:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
 <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
 <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
In-Reply-To: <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
Message-ID: <156447952867.6373.9286619293752854474@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 10:38:48 +0100
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Push the ring creation
 flags to the backend
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yOSAxMzo1OToyMikKPiAKPiBPbiAyNi8w
Ny8yMDE5IDA5OjQzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTI0IDEyOjExOjU0KQo+ID4+Cj4gPj4gT24gMjMvMDcvMjAxOSAxOTozOCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZy
b20gdGhlIG91dGVyIEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+ID4+PiBpbnRlbF9jb3RuZXh0
IHRvIGF2b2lkIGFuIHVuc2lnaHRseSBiYWNrLXJlZmVyZW5jZSBmcm9tIGluc2lkZSB0aGUKPiA+
Pj4gYmFja2VuZC4KPiA+Pgo+ID4+IFNvcnJ5IEkgZmluZCB0aGlzIHF1aXRlIHVnbHkuIFBhc3Np
bmcgaW4gaW50ZWdlcnMgaW4gcG9pbnRlcnMgZmlsZWQgYW5kCj4gPj4gY2FzdGluZyBiYWNrIGFu
ZCBmb3J0aC4KPiA+IAo+ID4gQnV0IGJldHRlciB0aGFuIGEgdW5pb24sIHNpbmNlIG9uY2UgdGhl
IGludGVsX2NvbnRleHQgaXMgYWN0aXZlLCB0aGUKPiA+IHJpbmcgaXMgYWx3YXlzIGEgcmluZy4K
PiAKPiBVbmxlc3MgaXQgaXMgdTY0IHNpemUuIEkgYW0gbm90IGJ1eWluZyBpdC4gOikKCldlIGRv
bid0IG5lZWQgdTY0IHNpemU/IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHlvdSBtZWFuLgoKPiA+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+Pj4gaW5kZXggNmQzOTExNDY5ODAx
Li5lMjM3YmNlY2ZhMWYgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCj4gPj4+IEBAIC0zMjgsMTAgKzMyOCwxNCBAQCBzdGF0aWMgdm9pZCBwcmludF9jb250ZXh0
X3N0YXRzKHN0cnVjdCBzZXFfZmlsZSAqbSwKPiA+Pj4gICAgCj4gPj4+ICAgICAgICAgICAgICAg
IGZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKPiA+Pj4g
LSAgICAgICAgICAgICAgICAgICAgIGlmIChjZS0+c3RhdGUpCj4gPj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBlcl9maWxlX3N0YXRzKDAsIGNlLT5zdGF0ZS0+b2JqLCAma3N0YXRz
KTsKPiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgIGlmIChjZS0+cmluZykKPiA+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgIGludGVsX2NvbnRleHRfbG9ja19waW5uZWQoY2UpOwo+ID4+PiArICAg
ICAgICAgICAgICAgICAgICAgaWYgKGludGVsX2NvbnRleHRfaXNfcGlubmVkKGNlKSkgewo+ID4+
Cj4gPj4gQW5kIHRoZXNlIGh1bmtzIGRvIG5vdCBzZWVtIHRvIGJlbG9uZyB0byB0aGlzIHBhdGNo
Lgo+ID4gCj4gPiBUaGVuIHlvdSBhcmUgbWlzdGFrZW4uIFRoZSBidWcgaXMgb2xkZXIsIGJ1dCBp
dCBnZXRzIHRyaWdnZXJlZCBieSB0aGlzCj4gPiBwYXRjaC4KPiAKPiBHZXRzIHRyaWdnZXJlZCBv
ciBnZXRzIGZpeGVkPyBQZXJoYXBzIGNvbW1pdCBtZXNzYWdlIG5lZWRzIGltcHJvdmluZyAKPiBz
aW5jZSBpdCB0YWxrcyBhYm91dCBhdm9pZGluZyBhbiB1bnNpZ2h0bHkgYmFjay1yZWZlcmVuY2Ug
KGFuZCBJIGFyZ3VlIAo+IGNlLT5yaW5nID0gdTY0IHNpemUgaXMgYXQgbGVhc3QgZXF1YWxseSB1
bnNpZ2h0bHkpLCBhbmQgbm90IGZpeGluZyBhbnkgYnVncy4KClRoZSBidWcgaXMgYSBwb3RlbnRp
YWwgcmFjZSBjb25kaXRpb24gaW5zaWRlIHRoZSBkZWJ1Zy4gV2hhdCBpcyBoaXQgaGVyZQppcyB0
aGF0IHdpdGhvdXQgdGhlIHN0YXRlIG9mIHRoZSBwaW4ga25vd24sIHRoZSBtZWFuaW5nIG9mIGNl
LT5yaW5nIGlzCnVua25vd24gKHdoZXJlYXMgdGhlIG90aGVyIGJ1ZyBpcyB0aGF0IGNvbmRpdGlv
biBjYW4gY2hhbmdlIGR1cmluZwpldmFsdWF0aW9uKS4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
