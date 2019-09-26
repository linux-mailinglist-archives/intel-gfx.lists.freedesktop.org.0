Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B352BEDE7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 10:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5126EE3F;
	Thu, 26 Sep 2019 08:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 252D86EE3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 08:55:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 01:55:18 -0700
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="180105994"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Sep 2019 01:55:17 -0700
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5a6f8e64-371f-adc7-d278-5e1f5562043a@linux.intel.com>
Date: Thu, 26 Sep 2019 09:55:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926052135.29911-1-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create dumb buffer from LMEM
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

Ck9uIDI2LzA5LzIwMTkgMDY6MjEsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBXaGVuIExNRU0gaXMg
c3VwcG9ydGVkLCBkdW1iIGJ1ZmZlciBwcmVmZXJyZWQgdG8gYmUgY3JlYXRlZCBmcm9tIExNRU0u
Cj4gCj4gVGhpcyBpcyBkZXZlbG9wZWQgb24gdG9wIG9mIHYzIExNRU0gc2VyaWVzCj4gaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81NjY4My8uCj4gCj4gdjI6Cj4gICAg
UGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQo+IAo+IFNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiBjYzogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYyB8IDE4ICsrKysrKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4g
aW5kZXggZTQ1ODUwN2IxNTU4Li42ODEwYTU0OWVlOTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKPiBAQCAtNDQsNiArNDQsNyBAQAo+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jbGZs
dXNoLmgiCj4gICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKPiAgICNpbmNsdWRl
ICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCj4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbG1lbS5o
Igo+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgo+ICAgI2luY2x1ZGUgImd0L2ludGVs
X2VuZ2luZV91c2VyLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiBAQCAtMTYwLDYg
KzE2MSw3IEBAIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCj4gICBzdGF0aWMgaW50Cj4gICBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxl
ICpmaWxlLAo+ICAgCQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJZW51
bSBpbnRlbF9yZWdpb25faWQgbWVtX3JlZ2lvbiwKPiAgIAkJdTY0ICpzaXplX3AsCj4gICAJCXUz
MiAqaGFuZGxlX3ApCj4gICB7Cj4gQEAgLTE3Myw3ICsxNzUsMTIgQEAgaTkxNV9nZW1fY3JlYXRl
KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAKPiAgIAkv
KiBBbGxvY2F0ZSB0aGUgbmV3IG9iamVjdCAqLwo+IC0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7Cj4gKwlpZiAobWVtX3JlZ2lvbiA9PSBJTlRFTF9N
RU1PUllfTE1FTSkKPiArCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oZGV2X3By
aXYsIHNpemUsIDApOwo+ICsJZWxzZSBpZiAobWVtX3JlZ2lvbiA9PSBJTlRFTF9NRU1PUllfU1RP
TEVOKQo+ICsJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGRldl9wcml2LCBz
aXplKTsKPiArCWVsc2UKPiArCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRl
dl9wcml2LCBzaXplKTsKPiAgIAlpZiAoSVNfRVJSKG9iaikpCj4gICAJCXJldHVybiBQVFJfRVJS
KG9iaik7Cj4gICAKPiBAQCAtMTkzLDYgKzIwMCw3IEBAIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0
cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiAgIAkJICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+
ICAgCQkgICAgIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncykKPiAgIHsKPiArCWVu
dW0gaW50ZWxfcmVnaW9uX2lkIG1lbV9yZWdpb24gPSBJTlRFTF9NRU1PUllfVUtOT1dOOwo+ICAg
CWludCBjcHAgPSBESVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KTsKPiAgIAl1MzIgZm9ybWF0Owo+
ICAgCj4gQEAgLTIxOSw3ICsyMjcsMTEgQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRy
bV9maWxlICpmaWxlLAo+ICAgCQlhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3MtPnBpdGNoLCA0MDk2
KTsKPiAgIAo+ICAgCWFyZ3MtPnNpemUgPSBhcmdzLT5waXRjaCAqIGFyZ3MtPmhlaWdodDsKPiAt
CXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgdG9faTkxNShkZXYpLAo+ICsKPiArCWlmIChI
QVNfTE1FTSh0b19pOTE1KGRldikpKQo+ICsJCW1lbV9yZWdpb24gPSBJTlRFTF9NRU1PUllfTE1F
TTsKPiArCj4gKwlyZXR1cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIHRvX2k5MTUoZGV2KSwgbWVt
X3JlZ2lvbiwKPiAgIAkJCSAgICAgICAmYXJncy0+c2l6ZSwgJmFyZ3MtPmhhbmRsZSk7Cj4gICB9
Cj4gICAKPiBAQCAtMjM4LDcgKzI1MCw3IEBAIGk5MTVfZ2VtX2NyZWF0ZV9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCj4gICAJaTkxNV9nZW1fZmx1c2hfZnJl
ZV9vYmplY3RzKGRldl9wcml2KTsKPiAgIAo+IC0JcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxl
LCBkZXZfcHJpdiwKPiArCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgZGV2X3ByaXYsIElO
VEVMX01FTU9SWV9VS05PV04sCj4gICAJCQkgICAgICAgJmFyZ3MtPnNpemUsICZhcmdzLT5oYW5k
bGUpOwoKV2UgZG9uJ3QgaGF2ZSBzaG1lbSBtZW1vcnkgcmVnaW9uPyBPciBkZWZhdWx0PyBPciBp
cyB1bmtub3duIHN1cHBvc2VkIHRvIAptZWFuIGRlZmF1bHQgZm9yIGEgZ2l2ZW4gcGxhdGZvcm0/
CgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgfQo+ICAgCj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
