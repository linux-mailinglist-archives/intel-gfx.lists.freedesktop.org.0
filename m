Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCB95BCFB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F65689BF0;
	Mon,  1 Jul 2019 13:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A251089BF0
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:32:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085597-1500050 for multiple; Mon, 01 Jul 2019 14:32:46 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-11-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-11-lionel.g.landwerlin@intel.com>
Message-ID: <156198796295.1583.946008928784734214@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 14:32:42 +0100
Subject: Re: [Intel-gfx] [PATCH v6 10/11] drm/i915/perf: execute OA
 configuration from command stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDozNikKPiBAQCAtMTg2
MCwyMyArMTg5Myw1NSBAQCBzdGF0aWMgaW50IGFsbG9jX25vYV93YWl0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+ICAKPiAtc3RhdGlj
IHZvaWQgY29uZmlnX29hX3JlZ3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X29hX3JlZyAqcmVn
cywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgbl9yZWdzKQo+ICtzdGF0aWMgaW50
IGVtaXRfb2FfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPiAgewo+
IC0gICAgICAgdTMyIGk7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZp
ZyA9IHN0cmVhbS0+b2FfY29uZmlnOwo+ICsgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEg
PSBzdHJlYW0tPmluaXRpYWxfY29uZmlnX3JxOwo+ICsgICAgICAgc3RydWN0IGk5MTVfdm1hICp2
bWE7Cj4gKyAgICAgICB1MzIgKmNzOwo+ICsgICAgICAgaW50IGVycjsKPiAgCj4gLSAgICAgICBm
b3IgKGkgPSAwOyBpIDwgbl9yZWdzOyBpKyspIHsKPiAtICAgICAgICAgICAgICAgY29uc3Qgc3Ry
dWN0IGk5MTVfb2FfcmVnICpyZWcgPSByZWdzICsgaTsKPiArICAgICAgIHZtYSA9IGk5MTVfdm1h
X2luc3RhbmNlKG9hX2NvbmZpZy0+b2JqLCAmaTkxNS0+Z2d0dC52bSwgTlVMTCk7Cj4gKyAgICAg
ICBpZiAodW5saWtlbHkoSVNfRVJSKHZtYSkpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUih2bWEpOwo+ICsKPiArICAgICAgIGVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsIFBJ
Tl9HTE9CQUwpOwo+ICsgICAgICAgaWYgKGVycikKPiArICAgICAgICAgICAgICAgcmV0dXJuIGVy
cjsKCk5vIHBpbm5pbmcgdW5kZXJuZWF0aCB0aGUgdGltZWxpbmUtPm11dGV4LgoKLi4uCgo+IEBA
IC0yNDU1LDQ3ICsyNDY2LDkwIEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1
Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAg
ICAgICAgICAgZ290byBlcnJfb2FfYnVmX2FsbG9jOwo+ICAKPiArICAgICAgIHJldCA9IGk5MTVf
cGVyZl9nZXRfb2FfY29uZmlnKGRldl9wcml2LCBwcm9wcy0+bWV0cmljc19zZXQsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmc3RyZWFtLT5vYV9jb25maWcsICZvYmop
Owo+ICsgICAgICAgaWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICBEUk1fREVCVUcoIkludmFs
aWQgT0EgY29uZmlnIGlkPSVpXG4iLCBwcm9wcy0+bWV0cmljc19zZXQpOwo+ICsgICAgICAgICAg
ICAgICBnb3RvIGVycl9jb25maWc7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgLyoKPiArICAg
ICAgICAqIFdlIGp1c3QgbmVlZCB0aGUgYnVmZmVyIHRvIGJlIGNyZWF0ZWQsIGJ1dCBub3Qgb3Vy
IG93biByZWZlcmVuY2Ugb24KPiArICAgICAgICAqIGl0IGFzIHRoZSBvYV9jb25maWcgYWxyZWFk
eSBoYXMgb25lLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7Cj4gKwo+ICsgICAgICAgc3RyZWFtLT5pbml0aWFsX2NvbmZpZ19ycSA9Cj4gKyAgICAgICAg
ICAgICAgIGk5MTVfcmVxdWVzdF9jcmVhdGUoZGV2X3ByaXYtPmVuZ2luZVtSQ1MwXS0+a2VybmVs
X2NvbnRleHQpOwo+ICsgICAgICAgaWYgKElTX0VSUihzdHJlYW0tPmluaXRpYWxfY29uZmlnX3Jx
KSkgewo+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKHN0cmVhbS0+aW5pdGlhbF9jb25m
aWdfcnEpOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9pbml0aWFsX2NvbmZpZzsKPiArICAg
ICAgIH0KPiArCj4gKyAgICAgICBzdHJlYW0tPm9wcyA9ICZpOTE1X29hX3N0cmVhbV9vcHM7Cj4g
Kwo+ICAgICAgICAgcmV0ID0gaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmRldl9wcml2
LT5kcm0pOwo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZ290byBlcnJfbG9j
azsKClRoaXMgbG9ja2luZyBpcyBpbnZlcnRlZCBhcyB0aW1lbGluZS0+bXV0ZXggaXMgbm90IGEg
Y29tcGxldGUgZ3VhcmQgZm9yCnJlcXVlc3QgYWxsb2NhdGlvbiB5ZXQuCgo+IC0gICAgICAgc3Ry
ZWFtLT5vcHMgPSAmaTkxNV9vYV9zdHJlYW1fb3BzOwo+ICsgICAgICAgcmV0ID0gaTkxNV9hY3Rp
dmVfcmVxdWVzdF9zZXQoJmRldl9wcml2LT5lbmdpbmVbUkNTMF0tPmxhc3Rfb2FfY29uZmlnLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RyZWFtLT5pbml0aWFsX2Nv
bmZpZ19ycSk7CgpJJ20gbm90IGNvbnZpbmNlZCB5b3Ugd2FudCB0aGlzIChhbmQgdGhlIG1pc3Np
bmcgbXV0ZXgpIG9uIHRoZSBlbmdpbmUsCmFzIGl0IGlzIGp1c3QgZGVzY3JpYmluZyB0aGUgcGVy
ZiBvYV9jb25maWcgdGltZWxpbmUuIEkgdGhpbmsgaXQncwpiZXR0ZXIgdG8gcHV0IHRoYXQgYXQg
dGhlIHNhbWUgZ3JhbnVsYXJpdHkgYXMgaXQgaXMgdXNlZC4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
