Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7975E633F1
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D620896E4;
	Tue,  9 Jul 2019 10:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E37589D86
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:07:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17181578-1500050 for multiple; Tue, 09 Jul 2019 11:07:53 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-13-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190709093208.20470-13-lionel.g.landwerlin@intel.com>
Message-ID: <156266687143.9375.1534457969796318438@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 11:07:51 +0100
Subject: Re: [Intel-gfx] [PATCH v7 12/12] drm/i915: add support for perf
 configuration queries
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMDozMjowOCkKPiArc3RhdGlj
IGludCBxdWVyeV9wZXJmX2NvbmZpZ19kYXRhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVl
cnlfaXRlbSAqcXVlcnlfaXRlbSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Ym9vbCB1c2VfdXVpZCkKPiArewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZf
Y29uZmlnIF9fdXNlciAqdXNlcl9xdWVyeV9jb25maWdfcHRyID0KPiArICAgICAgICAgICAgICAg
dTY0X3RvX3VzZXJfcHRyKHF1ZXJ5X2l0ZW0tPmRhdGFfcHRyKTsKPiArICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wZXJmX29hX2NvbmZpZyBfX3VzZXIgKnVzZXJfY29uZmlnX3B0ciA9Cj4gKyAgICAg
ICAgICAgICAgIHU2NF90b191c2VyX3B0cihxdWVyeV9pdGVtLT5kYXRhX3B0ciArCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2Yoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3Bl
cmZfY29uZmlnKSk7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcGVyZl9vYV9jb25maWcgdXNl
cl9jb25maWc7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IE5V
TEw7Cj4gKyAgICAgICB1MzIgZmxhZ3MsIHRvdGFsX3NpemU7Cj4gKyAgICAgICBpbnQgcmV0Owo+
ICsKPiArICAgICAgIGlmICghaTkxNS0+cGVyZi5pbml0aWFsaXplZCkKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICsgICAgICAgdG90YWxfc2l6ZSA9IHNpemVvZihzdHJ1
Y3QgZHJtX2k5MTVfcXVlcnlfcGVyZl9jb25maWcpICsKPiArICAgICAgICAgICAgICAgc2l6ZW9m
KHN0cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyk7Cj4gKwo+ICsgICAgICAgaWYgKHF1ZXJ5
X2l0ZW0tPmxlbmd0aCA9PSAwKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gdG90YWxfc2l6ZTsK
PiArCj4gKyAgICAgICBpZiAocXVlcnlfaXRlbS0+bGVuZ3RoIDwgdG90YWxfc2l6ZSkgewo+ICsg
ICAgICAgICAgICAgICBEUk1fREVCVUcoIkludmFsaWQgcXVlcnkgY29uZmlnIGRhdGEgaXRlbSBz
aXplPSV1IGV4cGVjdGVkPSV1XG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgcXVlcnlf
aXRlbS0+bGVuZ3RoLCB0b3RhbF9zaXplKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaWYgKCFhY2Nlc3Nfb2sodXNlcl9xdWVyeV9j
b25maWdfcHRyLCB0b3RhbF9zaXplKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7
Cj4gKwo+ICsgICAgICAgaWYgKF9fZ2V0X3VzZXIoZmxhZ3MsICZ1c2VyX3F1ZXJ5X2NvbmZpZ19w
dHItPmZsYWdzKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7Cj4gKwo+ICsgICAg
ICAgaWYgKGZsYWdzICE9IDApCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsK
PiArICAgICAgIHJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkxNS0+cGVyZi5tZXRy
aWNzX2xvY2spOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiArCj4gKyAgICAgICBpZiAodXNlX3V1aWQpIHsKPiArICAgICAgICAgICAgICAgY2hhciB1
dWlkW1VVSURfU1RSSU5HX0xFTiArIDFdID0geyAwLCB9Owo+ICsgICAgICAgICAgICAgICBzdHJ1
Y3QgaTkxNV9vYV9jb25maWcgKnRtcDsKPiArICAgICAgICAgICAgICAgaW50IGlkOwo+ICsKPiAr
ICAgICAgICAgICAgICAgQlVJTERfQlVHX09OKHNpemVvZih1c2VyX3F1ZXJ5X2NvbmZpZ19wdHIt
PnV1aWQpID49IHNpemVvZih1dWlkKSk7Cj4gKwo+ICsgICAgICAgICAgICAgICBpZiAoX19jb3B5
X2Zyb21fdXNlcih1dWlkLCB1c2VyX3F1ZXJ5X2NvbmZpZ19wdHItPnV1aWQsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZih1c2VyX3F1ZXJ5X2NvbmZpZ19wdHIt
PnV1aWQpKSkgewoKX19jb3B5X2Zyb21fdXNlcigpIGZyb20gaW5zaWRlIGEgbXV0ZXggYnJpbmdz
IGJhY2sgbmlnaHRtYXJlcy4gSSB0aGluawp5b3UgYXJlIG9rLCBidXQgeW91IGFyZSB0YXJuaXNo
aW5nIHRoaXMgbG9jayB3aXRoIG1tYXBfc2VtLCB3aGljaCBpcwpodWdlIGFuZCBtYXkgYml0ZSBp
biBmdXR1cmUuIEFuZCBpdCBsb29rcyBzdXBlcmZsdW91cywgbm8/IFlvdSBjb3VsZCBkbwp0aGUg
Y29weSBmb3JtIHVzZXIgYmVmb3JlIHRha2luZyB0aGUgbG9jaywgYW5kIHRoZW4gb25jZSB5b3Ug
aGF2ZSB0aGUKY29uZmlnIHBpbm5lZCwgeW91IGNhbiBkcm9wIHRoZSBsb2NrIGFnYWluLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
