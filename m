Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2889E4F57
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 16:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A15B6EA72;
	Fri, 25 Oct 2019 14:40:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF83B6EA72
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 14:40:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18964104-1500050 for multiple; Fri, 25 Oct 2019 15:39:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191025142131.17378-1-tvrtko.ursulin@linux.intel.com>
 <20191025142131.17378-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191025142131.17378-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <157201439690.11797.17146714440657203072@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 15:39:56 +0100
Subject: Re: [Intel-gfx] [RFC 3/5] drm/i915: Update client name on context
 create
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yNSAxNToyMToyOSkKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCA1NWYxZjkzYzA5MjUu
LmM3ZjY2ODRlYjM2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NvbnRleHQuYwo+IEBAIC0yMDg0LDYgKzIwODQsOCBAQCBpbnQgaTkxNV9nZW1fY29udGV4dF9j
cmVhdGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgewo+ICAg
ICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRldik7Cj4gICAg
ICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCAqYXJncyA9IGRhdGE7
Cj4gKyAgICAgICBwaWRfdCBwaWQgPSBwaWRfbnIoZ2V0X3Rhc2tfcGlkKGN1cnJlbnQsIFBJRFRZ
UEVfUElEKSk7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3By
aXYgPSBmaWxlLT5kcml2ZXJfcHJpdjsKPiAgICAgICAgIHN0cnVjdCBjcmVhdGVfZXh0IGV4dF9k
YXRhOwo+ICAgICAgICAgaW50IHJldDsKPiAgCj4gQEAgLTIwOTcsMTQgKzIwOTksMjMgQEAgaW50
IGk5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+ICAKPiAtICAgICAgIGV4dF9kYXRhLmZwcml2ID0gZmlsZS0+ZHJpdmVyX3ByaXY7Cj4gKyAg
ICAgICBleHRfZGF0YS5mcHJpdiA9IGZpbGVfcHJpdjsKPiAgICAgICAgIGlmIChjbGllbnRfaXNf
YmFubmVkKGV4dF9kYXRhLmZwcml2KSkgewo+ICAgICAgICAgICAgICAgICBEUk1fREVCVUcoImNs
aWVudCAlc1slZF0gYmFubmVkIGZyb20gY3JlYXRpbmcgY3R4XG4iLAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgY3VycmVudC0+Y29tbSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgIHBp
ZF9ucihnZXRfdGFza19waWQoY3VycmVudCwgUElEVFlQRV9QSUQpKSk7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICBjdXJyZW50LT5jb21tLCBwaWQpOwo+ICAgICAgICAgICAgICAgICByZXR1
cm4gLUVJTzsKPiAgICAgICAgIH0KPiAgCj4gKyAgICAgICBtdXRleF9sb2NrKCZkZXYtPnN0cnVj
dF9tdXRleCk7Cj4gKyAgICAgICBpZiAoZmlsZV9wcml2LT5jbGllbnQucGlkICE9IHBpZCkgewo+
ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9yZW1vdmVfY2xpZW50KGZpbGVfcHJpdik7Cj4gKyAg
ICAgICAgICAgICAgIHJldCA9IGk5MTVfZ2VtX2FkZF9jbGllbnQoaTkxNSwgZmlsZV9wcml2LCBj
dXJyZW50LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZpbGVf
cHJpdi0+Y2xpZW50LmlkKTsKPiArICAgICAgIH0KPiArICAgICAgIG11dGV4X3VubG9jaygmZGV2
LT5zdHJ1Y3RfbXV0ZXgpOwoKWW91IGFyZSBzZXJpYWxpc2luZyBhZ2FpbnN0IG11bHRpcGxlIGNv
bnRleHRfY3JlYXRlX2lvY3RsIGZyb20gdGhlIHNhbWUKZmlsZSwgcmlnaHQ/IENvdWxkIGFidXNl
IGZwcml2LT5jb250ZXh0X2lkcl9sb2NrLiBPciBhZGQgYSBuZXcgb25lLgoKPiArICAgICAgIGlm
IChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwoKSG1tLCBpcyBnZXRfdGFz
a19waWQoKSB0aGUgb25lIHRoYXQgcmV0dXJucyBhIHJlZmVyZW5jZSB0byB0aGUgcGlkX3Q/CkF5
ZSwgaXQgaXMsIHdlIG5lZWQgYSBwdXRfcGlkKCkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
