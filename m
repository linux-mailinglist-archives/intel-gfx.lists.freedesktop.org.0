Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B45C2303
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 16:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9916E44F;
	Mon, 30 Sep 2019 14:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E683C6E44F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 14:19:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18668188-1500050 for multiple; Mon, 30 Sep 2019 15:18:14 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190930141522.9319-1-chris@chris-wilson.co.uk>
References: <20190930113106.27596-1-chris@chris-wilson.co.uk>
 <20190930141522.9319-1-chris@chris-wilson.co.uk>
Message-ID: <156985308798.1880.5802470138621202783@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Sep 2019 15:18:08 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests: Exercise context
 switching in parallel
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMzAgMTU6MTU6MjIpCj4gV2UgY3VycmVudGx5
IHRlc3QgY29udGV4dCBzd2l0Y2hpbmcgb24gZWFjaCBlbmdpbmUgYXMgYSBiYXNpYyBzdHJlc3MK
PiB0ZXN0IChqdXN0IHZlcmlmeWluZyB0aGF0IG5vdGhpbmcgZXhwbG9kZXMgaWYgd2UgZXhlY3V0
ZSAyIHJlcXVlc3RzIGZyb20KPiBkaWZmZXJlbnQgY29udGV4dHMgc2VxdWVudGlhbGx5KS4gV2hh
dCB3ZSBoYXZlIG5vdCB0ZXN0ZWQgaXMgd2hhdAo+IGhhcHBlbnMgaWYgd2UgdHJ5IGFuZCBkbyBz
byBvbiBhbGwgYXZhaWxhYmxlIGVuZ2luZXMgc2ltdWx0YW5lb3VzbHksCj4gcHV0dGluZyBvdXIg
U1cgYW5kIHRoZSBIVyB1bmRlciB0aGUgbWF4aW1hbCBzdHJlc3MuCj4gCj4gdjI6IENsb25lIHRo
ZSBzZXQgb2YgZW5naW5lcyBmcm9tIHRoZSBmaXJzdCBjb250ZXh0IGludG8gdGhlIHNlY29uZGFy
eQo+IGNvbnRleHRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiAtLS0KCj4gK3N0YXRpYyBpbnQgbGl2ZV9wYXJhbGxlbF9zd2l0Y2godm9pZCAqYXJnKQo+
ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKPiArICAg
ICAgIHN0YXRpYyBpbnQgKCogY29uc3QgZnVuY1tdKSh2b2lkICphcmcpID0gewo+ICsgICAgICAg
ICAgICAgICBfX2xpdmVfcGFyYWxsZWxfc3dpdGNoMSwKPiArICAgICAgICAgICAgICAgX19saXZl
X3BhcmFsbGVsX3N3aXRjaE4sCj4gKyAgICAgICAgICAgICAgIE5VTEwsCj4gKyAgICAgICB9Owo+
ICsgICAgICAgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmVuZ2luZXM7Cj4gKyAgICAgICBzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIGl0Owo+ICsgICAgICAgaW50ICgqIGNvbnN0ICpmbiko
dm9pZCAqYXJnKTsKPiArICAgICAgIHN0cnVjdCBwYXJhbGxlbF9zd2l0Y2ggKmRhdGE7Cj4gKyAg
ICAgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4Owo+ICsgICAgICAgc3RydWN0IGludGVs
X2NvbnRleHQgKmNlOwo+ICsgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlOwo+ICsgICAgICAg
aW50IG4sIG0sIGNvdW50Owo+ICsgICAgICAgaW50IGVyciA9IDA7Cj4gKwo+ICsgICAgICAgLyoK
PiArICAgICAgICAqIENoZWNrIHdlIGNhbiBwcm9jZXNzIHN3aXRjaGVzIG9uIGFsbCBlbmdpbmVz
IHNpbXVsdGFuZW91c2x5Lgo+ICsgICAgICAgICovCj4gKwo+ICsgICAgICAgaWYgKCFEUklWRVJf
Q0FQUyhpOTE1KS0+aGFzX2xvZ2ljYWxfY29udGV4dHMpCj4gKyAgICAgICAgICAgICAgIHJldHVy
biAwOwo+ICsKPiArICAgICAgIGZpbGUgPSBtb2NrX2ZpbGUoaTkxNSk7Cj4gKyAgICAgICBpZiAo
SVNfRVJSKGZpbGUpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihmaWxlKTsKPiAr
Cj4gKyAgICAgICBtdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCj4gKyAg
ICAgICBjdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7Cj4gKyAgICAgICBpZiAoSVNfRVJS
KGN0eCkpIHsKPiArICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihjdHgpOwo+ICsgICAgICAg
ICAgICAgICBnb3RvIG91dF9sb2NrZWQ7CgpUaGlzIG5lZWRzIGRhdGEgPSBOVUxMIHRvIGJlIHNh
ZmUuCi4uLgoKPiArICAgICAgIG11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+
ICtvdXRfbG9ja2VkOgo+ICsgICAgICAgZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKyspIHsKPiAr
ICAgICAgICAgICAgICAgZm9yIChtID0gMDsgbSA8IEFSUkFZX1NJWkUoZGF0YS0+Y2UpOyBtKysp
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoIWRhdGFbbl0uY2VbbV0pCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiArCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaW50ZWxfY29udGV4dF91bnBpbihkYXRhW25dLmNlW21dKTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBpbnRlbF9jb250ZXh0X3B1dChkYXRhW25dLmNlW21dKTsKPiArICAgICAg
ICAgICAgICAgfQo+ICsgICAgICAgfQo+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPiArICAgICAgIGtmcmVlKGRhdGEpOwo+ICsgICAgICAgbW9ja19maWxl
X2ZyZWUoaTkxNSwgZmlsZSk7Cj4gKyAgICAgICByZXR1cm4gZXJyOwo+ICt9Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
