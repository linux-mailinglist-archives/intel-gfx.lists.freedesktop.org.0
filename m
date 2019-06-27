Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA98957EB8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0402F6E848;
	Thu, 27 Jun 2019 08:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419F76E842
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:52:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:52:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="188986416"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 01:52:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-5-lionel.g.landwerlin@intel.com>
 <156162407789.20851.7175557604200284018@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4cfb5122-fcac-2c03-12c3-5a384e2b14f4@intel.com>
Date: Thu, 27 Jun 2019 11:52:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156162407789.20851.7175557604200284018@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 04/10] drm/i915/perf: implement active
 wait for noa configurations
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDYvMjAxOSAxMToyNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMDk6MDA6MzkpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jCj4+IGluZGV4IDJmMWRjOWJlM2JmYi4uYjJmNWJhODc5MjFjIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+PiBAQCAtNDEwLDYgKzQxMCw4IEBAIHN0YXRpYyBpbnQgYWxsb2Nf
b2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gICAgICAg
ICAgc2l6ZV90IGNvbmZpZ19sZW5ndGggPSAwOwo+PiAgICAgICAgICB1MzIgKmNzOwo+PiAgIAo+
PiArICAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+
IFdoYXQgaW5zaWRlICp0aGlzKiBmdW5jdGlvbiBkZXBlbmRzIG9uIHRoZSBzdHJ1Y3RfbXV0ZXg/
IFRoZSBub2Ffd2FpdAo+IHZtYSBpcyBhbHJlYWR5IHBpbm5lZCBhbmQgSSBkaWRuJ3Qgc3BvdCBh
bnl0aGluZyBlbHNlIGFkZGVkIHRoYXQgbWlnaHQKPiBiZSBjb250ZW50aW91cy4KCgpUaGFua3Ms
IHdpbGwgZHJvcCB0aGlzLgoKCj4KPj4gICAgICAgICAgaWYgKG9hX2NvbmZpZy0+bXV4X3JlZ3Nf
bGVuID4gMCkgewo+PiAgICAgICAgICAgICAgICAgIGNvbmZpZ19sZW5ndGggKz0gRElWX1JPVU5E
X1VQKG9hX2NvbmZpZy0+bXV4X3JlZ3NfbGVuLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIE1JX0xPQURfUkVHSVNURVJfSU1NX01BWF9SRUdTKSAqIDQ7
Cj4+IEBAIC00MjUsNyArNDI3LDcgQEAgc3RhdGljIGludCBhbGxvY19vYV9jb25maWdfYnVmZmVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIE1JX0xPQURfUkVHSVNURVJfSU1NX01BWF9SRUdTKSAq
IDQ7Cj4+ICAgICAgICAgICAgICAgICAgY29uZmlnX2xlbmd0aCArPSBvYV9jb25maWctPmZsZXhf
cmVnc19sZW4gKiA4Owo+PiAgICAgICAgICB9Cj4+IC0gICAgICAgY29uZmlnX2xlbmd0aCArPSA0
OyAvKiBNSV9CQVRDSF9CVUZGRVJfRU5EICovCj4+ICsgICAgICAgY29uZmlnX2xlbmd0aCArPSAx
MjsgLyogTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIGludG8gbm9hX3dhaXQgbG9vcCAqLwo+PiAgICAg
ICAgICBjb25maWdfbGVuZ3RoID0gQUxJR04oY29uZmlnX2xlbmd0aCwgSTkxNV9HVFRfUEFHRV9T
SVpFKTsKPj4gICAKPj4gICAgICAgICAgYm8gPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVt
KGk5MTUsIGNvbmZpZ19sZW5ndGgpOwo+PiBAQCAtNDQyLDcgKzQ0NCwxMiBAQCBzdGF0aWMgaW50
IGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+
ICAgICAgICAgIGNzID0gd3JpdGVfY3NfbWlfbHJpKGNzLCBvYV9jb25maWctPmJfY291bnRlcl9y
ZWdzLCBvYV9jb25maWctPmJfY291bnRlcl9yZWdzX2xlbik7Cj4+ICAgICAgICAgIGNzID0gd3Jp
dGVfY3NfbWlfbHJpKGNzLCBvYV9jb25maWctPmZsZXhfcmVncywgb2FfY29uZmlnLT5mbGV4X3Jl
Z3NfbGVuKTsKPj4gICAKPj4gLSAgICAgICAqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4+
ICsKPj4gKyAgICAgICAvKiBKdW1wIGludG8gdGhlIE5PQSB3YWl0IGJ1c3kgbG9vcC4gKi8KPj4g
KyAgICAgICAqY3MrKyA9IChJTlRFTF9HRU4oaTkxNSkgPCA4ID8KPj4gKyAgICAgICAgICAgICAg
ICBNSV9CQVRDSF9CVUZGRVJfU1RBUlQgOiBNSV9CQVRDSF9CVUZGRVJfU1RBUlRfR0VOOCk7Cj4+
ICsgICAgICAgKmNzKysgPSBpOTE1LT5wZXJmLm9hLm5vYV93YWl0LT5ub2RlLnN0YXJ0Owo+IGk5
MTVfZ2d0dF9vZmZzZXQoaTkxNS0+cGVyZi5vYS5ub2Ffd2FpdCk7Cj4gZG91YmxlIGNoZWNrcyB0
aGF0IHlvdSBhcmUgaW4gdGhlIGdndHQgYW5kIHNvIGFzc3VtaW5nIHUzMiBpcyB2YWxpZC4KCgpS
aWdodCwgd2lsbCBkby4KCgo+Cj4gVGhpcyBpcyBvcGVyYXRpbmcgaW5zaWRlIHRoZSB1c2VyIGNv
bnRleHQgcmlnaHQ/IChJZiBJIHJlbWVtYmVyCj4gY29ycmVjdGx5LCB5b3UgcGx1ZyBpbnRvIHRo
ZSB1c2VyIGRpc3BhdGNoKSBJZiBzbywgd2hlcmUgZG8geW91IHNhdmUgYW5kCj4gcmVzdG9yZSB0
aGUgQ1NfR1BSIG92ZXJ3cml0dGVuPwoKCkR1aCEgSW4gYSBwcmV2aW91cyBpdGVyYXRpb24gSSB3
YXMgc2F2aW5nIHRoaXMgaW4gdGhlIHNjcmF0Y2ggQk8gYXMgYSAKZ2l2ZW4gbG9jYXRpb24uCgpT
aG91bGQgSSBhbGxvYyBteSBvd24gYnVmZmVyPwoKClRoYW5rcyBhIGxvdCwKCgotTGlvbmVsCgoK
PiAtQ2hyaXMKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
