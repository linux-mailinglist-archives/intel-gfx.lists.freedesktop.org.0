Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2EC7B92C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 07:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822AB8952F;
	Wed, 31 Jul 2019 05:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B543A8952F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 05:40:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 22:40:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,328,1559545200"; d="scan'208";a="183557174"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 22:40:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190730163441.16477-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3118bf73-fa0d-3f14-debf-8d558ba5b2ce@linux.intel.com>
Date: Wed, 31 Jul 2019 06:40:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730163441.16477-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid ce->gem_context->i915
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

Ck9uIDMwLzA3LzIwMTkgMTc6MzQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBNeSBwbGFuIGZvciB0
aGUgZnV0dXJlIGlzIHRvIGhhdmUga2VybmVsIGNvbnRleHRzIG5vIGhhdmUgYSBHRU0gY29udGV4
dAo+IGJhY2twb2ludGVyIChhcyB0aGV5IHdpbGwgbm90IGJlbG9uZyB0byBhbnkgR0VNIGNvbnRl
eHQpLiBJbiBhIGZldwo+IHBsYWNlcywgd2UgdXNlIGNlLT5nZW1fY29udGV4dCB0byBzaW1wbHkg
b2J0YWluIHRoZSBpOTE1IGJhY2twb2ludGVyLAo+IHdoaWNoIHdlIGNhbiB1c2UgY2UtPmVuZ2lu
ZS0+aTkxNSBpbnN0ZWFkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NsaWVudF9ibHQuYyB8IDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgICAgfCA0ICsrLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jICAgICAgICAgICAgICAgfCAyICstCj4gICAzIGZpbGVzIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKPiBpbmRleCAyMzEyYTBjNmFmODkuLjk5N2UxMjI1
NDViYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xp
ZW50X2JsdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVu
dF9ibHQuYwo+IEBAIC0xNTIsNyArMTUyLDcgQEAgc3RhdGljIHZvaWQgY2xlYXJfcGFnZXNfZG1h
X2ZlbmNlX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+ICAgc3RhdGljIHZvaWQgY2xlYXJf
cGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgIHsKPiAgIAlzdHJ1Y3Qg
Y2xlYXJfcGFnZXNfd29yayAqdyA9IGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKncpLCB3b3Jr
KTsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdy0+Y2UtPmdlbV9jb250ZXh0
LT5pOTE1Owo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB3LT5jZS0+ZW5naW5l
LT5pOTE1Owo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB3LT5zbGVldmUt
PnZtYS0+b2JqOwo+ICAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gdy0+c2xlZXZlLT52bWE7Cj4g
ICAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jCj4gaW5kZXggYjI4YzdjYTY4MWE4Li5lYjJkMjhhMzdiNTggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBAQCAt
MTE5NCw3ICsxMTk0LDcgQEAgX19pbnRlbF9jb250ZXh0X3JlY29uZmlndXJlX3NzZXUoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLAo+ICAgewo+ICAgCWludCByZXQ7Cj4gICAKPiAtCUdFTV9CVUdf
T04oSU5URUxfR0VOKGNlLT5nZW1fY29udGV4dC0+aTkxNSkgPCA4KTsKPiArCUdFTV9CVUdfT04o
SU5URUxfR0VOKGNlLT5lbmdpbmUtPmk5MTUpIDwgOCk7Cj4gICAKPiAgIAlyZXQgPSBpbnRlbF9j
b250ZXh0X2xvY2tfcGlubmVkKGNlKTsKPiAgIAlpZiAocmV0KQo+IEBAIC0xMjE2LDcgKzEyMTYs
NyBAQCBfX2ludGVsX2NvbnRleHRfcmVjb25maWd1cmVfc3NldShzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCj4gICBzdGF0aWMgaW50Cj4gICBpbnRlbF9jb250ZXh0X3JlY29uZmlndXJlX3NzZXUo
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBzdHJ1Y3QgaW50ZWxfc3NldSBzc2V1KQo+ICAgewo+
IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjZS0+Z2VtX2NvbnRleHQtPmk5MTU7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGNlLT5lbmdpbmUtPmk5MTU7Cj4g
ICAJaW50IHJldDsKPiAgIAo+ICAgCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkx
NS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBpbmRleCA5
ODhhNDA5MjE2NGUuLmYyY2M2OWNjYjYzNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
Cj4gQEAgLTE2NjcsNyArMTY2Nyw3IEBAIGdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gICAJCQkgICAgICAgdTMyICpyZWdfc3RhdGUsCj4g
ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCj4gICB7
Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGNlLT5nZW1fY29udGV4dC0+aTkx
NTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY2UtPmVuZ2luZS0+aTkxNTsK
PiAgIAl1MzIgY3R4X29hY3R4Y3RybCA9IGk5MTUtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZz
ZXQ7Cj4gICAJdTMyIGN0eF9mbGV4ZXUwID0gaTkxNS0+cGVyZi5vYS5jdHhfZmxleGV1MF9vZmZz
ZXQ7Cj4gICAJLyogVGhlIE1NSU8gb2Zmc2V0cyBmb3IgRmxleCBFVSByZWdpc3RlcnMgYXJlbid0
IGNvbnRpZ3VvdXMgKi8KPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
