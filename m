Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2FEBEDE0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 10:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA256EE8A;
	Thu, 26 Sep 2019 08:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354806EE8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 08:53:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 01:53:06 -0700
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="180105354"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Sep 2019 01:53:05 -0700
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
 <20190926052135.29911-3-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1d52529c-9ecf-6525-43f5-1d2bd5f506a2@linux.intel.com>
Date: Thu, 26 Sep 2019 09:53:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926052135.29911-3-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: FB backing gem obj should
 reside in LMEM
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

Ck9uIDI2LzA5LzIwMTkgMDY6MjEsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBJZiBMb2NhbCBtZW1v
cnkgaXMgc3VwcG9ydGVkIGJ5IGhhcmR3YXJlLCB3ZSB3YW50IGZyYW1lYnVmZmVyIGJhY2tpbmcK
PiBnZW0gb2JqZWN0cyBvdXQgb2YgbG9jYWwgbWVtb3J5Lgo+IAo+IElmIGxvY2FsIG1lbW9yeSBp
cyBzdXBwb3J0ZWQgYW5kIGdlbSBvYmplY3QgaWYgbm90IGZyb20gbG9jYWwgbWVtb3J5IHdlCj4g
bWlncmF0ZSB0aGUgb2JqIGludG8gbG9jYWwgbWVtb3J5LiBBbmQgb25jZSBmcmFtZWJ1ZmZlciBp
cyBjcmVhdGVkIHdlCj4gYmxvY2sgdGhlIG1pZ3JhdGlvbiBvZiB0aGUgYXNzb2NpYXRlZCBvYmpl
Y3Qgb3V0IG9mIGxvY2FsIG1lbW9yeS4KPiAKPiBUaGlzIGlzIGRldmVsb3BlZCBvbiB0b3Agb2Yg
djMgTE1FTSBzZXJpZXMKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzU2NjgzLwo+IAo+IGNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyNSAr
KysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAg
IHwgNTggKysrKysrKysrKysrLS0tLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaCAgIHwgIDMgKwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRp
b25zKCspLCAyNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDFjYzc0ODQ0ZDNlYS4uZDE5MjFhMzE3MDY2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBA
QCAtNTYsNiArNTYsOCBAQAo+ICAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfdHYuaCIKPiAgICNp
bmNsdWRlICJkaXNwbGF5L2ludGVsX3Zkc2MuaCIKPiAgIAo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVf
Z2VtX29iamVjdC5oIgo+ICsKPiAgICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICAgI2luY2x1ZGUg
Imk5MTVfdHJhY2UuaCIKPiAgICNpbmNsdWRlICJpbnRlbF9hY3BpLmgiCj4gQEAgLTE1NDk2LDYg
KzE1NDk4LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3NldHVwX291dHB1dHMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgc3RhdGljIHZvaWQgaW50ZWxfdXNlcl9mcmFtZWJ1
ZmZlcl9kZXN0cm95KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKQo+ICAgewo+ICAgCXN0cnVj
dCBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmIgPSB0b19pbnRlbF9mcmFtZWJ1ZmZlcihmYik7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGZiLT5kZXYp
Owo+ICsKPiArCS8qIHJlbW92aW5nIHRoZSBGQiBtZW1vcnkgcmVnaW9uIHJlc3RyaWN0aW9uIG9u
IG9iaiwgaWYgYW55ICovCj4gKwlpbnRlbF9mYi0+ZnJvbnRfYnVmZmVyLT5vYmogPSBJTlRFTF9J
TkZPKGRldl9wcml2KS0+bWVtb3J5X3JlZ2lvbnM7CgpJcyB0aGlzIHJpZ2h0LCBhc3NpZ25pbmcg
Yml0bWFzayB0byBzb21ldGhpbmcgY2FsbGVkIG9iaj8KCj4gICAKPiAgIAlkcm1fZnJhbWVidWZm
ZXJfY2xlYW51cChmYik7Cj4gICAJaW50ZWxfZnJvbnRidWZmZXJfcHV0KGludGVsX2ZiLT5mcm9u
dGJ1ZmZlcik7Cj4gQEAgLTE1NTQzLDExICsxNTU0OSwyNiBAQCBzdGF0aWMgaW50IGludGVsX2Zy
YW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiwKPiAgIHsK
PiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KG9iai0+YmFz
ZS5kZXYpOwo+ICAgCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gJmludGVsX2ZiLT5iYXNl
Owo+ICsJdTMyICpyZWdpb25fbWFwOwo+ICAgCXUzMiBtYXhfc3RyaWRlOwo+ICAgCXVuc2lnbmVk
IGludCB0aWxpbmcsIHN0cmlkZTsKPiAgIAlpbnQgcmV0ID0gLUVJTlZBTDsKPiAgIAlpbnQgaTsK
PiAgIAo+ICsJLyogR0VNIE9iaiBmb3IgZnJhbWUgYnVmZmVyIGlzIGV4cGVjdGVkIHRvIGJlIGlu
IExNRU0uICovCj4gKwlpZiAoSEFTX0xNRU0oZGV2X3ByaXYpKQo+ICsJCWlmIChvYmotPm1tLnJl
Z2lvbi0+dHlwZSAhPSBJTlRFTF9MTUVNKSB7Cj4gKwkJCXJlZ2lvbl9tYXAgPSAmaW50ZWxfcmVn
aW9uX21hcFtJTlRFTF9NRU1PUllfTE1FTV07Cj4gKwkJCXJldCA9IGk5MTVfZ2VtX29iamVjdF9t
ZW1fcmVnaW9uX21pZ3JhdGUoZGV2X3ByaXYsIG9iaiwKPiArCQkJCQkJCQkgcmVnaW9uX21hcCwK
PiArCQkJCQkJCQkgMSk7Cj4gKwkJCWlmIChyZXQpIHsKPiArCQkJCURSTV9FUlJPUigiRkIgbWln
cmF0aW9uIHRvIExNRU0gRmFpbGVkKCVkKVxuIiwKPiArCQkJCQkgIHJldCk7CgpQcm9iYWJseSBz
aG91bGQgYmUganVzdCBkZWJ1ZyBsZXZlbCBzaW5jZSBpdCBpcyBpbWFnaW5hYmx5IHVzZXIgCnRy
aWdnZXJhYmxlIGFuZCBub3QgcmVhbGx5IGFuIGVycm9yIGZvciB0aGUga2VybmVsIGFzIHN1Y2gu
Cgo+ICsJCQkJcmV0dXJuIHJldDsKPiArCQkJfQo+ICsJCX0KPiArCj4gICAJaW50ZWxfZmItPmZy
b250YnVmZmVyID0gaW50ZWxfZnJvbnRidWZmZXJfZ2V0KG9iaik7Cj4gICAJaWYgKCFpbnRlbF9m
Yi0+ZnJvbnRidWZmZXIpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+IEBAIC0xNTY2Niw2ICsxNTY4
NywxMCBAQCBzdGF0aWMgaW50IGludGVsX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2Zy
YW1lYnVmZmVyICppbnRlbF9mYiwKPiAgIAkJZ290byBlcnI7Cj4gICAJfQo+ICAgCj4gKwkvKiBC
bG9ja2luZyB0aGUgbWlncmF0aW9uIG9mIGdlbSBvYmogb3V0IG9mIExNRU0gKi8KPiArCWlmIChI
QVNfTE1FTShkZXZfcHJpdikpCj4gKwkJb2JqLT5tZW1vcnlfcmVnaW9ucyA9IFJFR0lPTl9MTUVN
Owo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIAo+ICAgZXJyOgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiBpbmRleCBlNmY4NDI2ZGVkZmYuLjY1YjQ3MDU0MTMw
YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiBA
QCAtNTAxLDMwICs1MDEsMTEgQEAgX19yZWdpb25faWQodTMyIHJlZ2lvbikKPiAgIAlyZXR1cm4g
SU5URUxfTUVNT1JZX1VLTk9XTjsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgaW50IGk5MTVfZ2VtX29i
amVjdF9yZWdpb25fc2VsZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAt
CQkJCQkgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3RfcGFyYW0gKmFyZ3MsCj4gLQkJCQkJIHN0
cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiAtCQkJCQkgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaikKPiAraW50IGk5MTVfZ2VtX29iamVjdF9tZW1fcmVnaW9uX21pZ3JhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsJCQkJICAgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCj4gKwkJCQkgICAgICAgdTMyICp1cmVnaW9ucywgdTMyIHJlZ2lvbl9j
b3VudCkKPiAgIHsKPiAgIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBkZXZfcHJpdi0+ZW5n
aW5lW0JDUzBdLT5rZXJuZWxfY29udGV4dDsKPiAtCXUzMiBfX3VzZXIgKnVyZWdpb25zID0gdTY0
X3RvX3VzZXJfcHRyKGFyZ3MtPmRhdGEpOwo+IC0JdTMyIHVyZWdpb25zX2NvcHlbSU5URUxfTUVN
T1JZX1VLTk9XTl07Cj4gLQlpbnQgaSwgcmV0Owo+IC0KPiAtCWlmIChhcmdzLT5zaXplID4gSU5U
RUxfTUVNT1JZX1VLTk9XTikKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCj4gLQltZW1zZXQodXJl
Z2lvbnNfY29weSwgMCwgc2l6ZW9mKHVyZWdpb25zX2NvcHkpKTsKPiAtCWZvciAoaSA9IDA7IGkg
PCBhcmdzLT5zaXplOyBpKyspIHsKPiAtCQl1MzIgcmVnaW9uOwo+IC0KPiAtCQlyZXQgPSBnZXRf
dXNlcihyZWdpb24sIHVyZWdpb25zKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+
IC0KPiAtCQl1cmVnaW9uc19jb3B5W2ldID0gcmVnaW9uOwo+IC0JCSsrdXJlZ2lvbnM7Cj4gLQl9
Cj4gICAKPiAgIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gICAJ
cmV0ID0gaTkxNV9nZW1fb2JqZWN0X3ByZXBhcmVfbW92ZShvYmopOwo+IEBAIC01MzMsOCArNTE0
LDggQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfcmVnaW9uX3NlbGVjdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAJICAgICAgICBnb3RvIGVycjsKPiAgIAl9Cj4g
ICAKPiAtCWZvciAoaSA9IDA7IGkgPCBhcmdzLT5zaXplOyBpKyspIHsKPiAtCQl1MzIgcmVnaW9u
ID0gdXJlZ2lvbnNfY29weVtpXTsKPiArCWZvciAoaSA9IDA7IGkgPCByZWdpb25fY291bnQ7IGkr
Kykgewo+ICsJCXUzMiByZWdpb24gPSB1cmVnaW9uc1tpXTsKPiAgIAkJZW51bSBpbnRlbF9yZWdp
b25faWQgaWQgPSBfX3JlZ2lvbl9pZChyZWdpb24pOwo+ICAgCj4gICAJCWlmICghKG9iai0+bWVt
b3J5X3JlZ2lvbiAmIHJlZ2lvbikpIHsKPiBAQCAtNTc2LDYgKzU1NywzNSBAQCBzdGF0aWMgaW50
IGk5MTVfZ2VtX29iamVjdF9yZWdpb25fc2VsZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiAgIAlyZXR1cm4gcmV0Owo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQgaTkxNV9n
ZW1fb2JqZWN0X3JlZ2lvbl9zZWxlY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAo+ICsJCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9wYXJhbSAqYXJncywKPiArCQkJ
CQkgc3RydWN0IGRybV9maWxlICpmaWxlLAo+ICsJCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBkZXZfcHJpdi0+
ZW5naW5lW0JDUzBdLT5rZXJuZWxfY29udGV4dDsKPiArCXUzMiBfX3VzZXIgKnVyZWdpb25zID0g
dTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmRhdGEpOwo+ICsJdTMyIHVyZWdpb25zX2NvcHlbSU5URUxf
TUVNT1JZX1VLTk9XTl07Cj4gKwlpbnQgaSwgcmV0Owo+ICsKPiArCWlmIChhcmdzLT5zaXplID4g
SU5URUxfTUVNT1JZX1VLTk9XTikKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwltZW1zZXQo
dXJlZ2lvbnNfY29weSwgMCwgc2l6ZW9mKHVyZWdpb25zX2NvcHkpKTsKPiArCWZvciAoaSA9IDA7
IGkgPCBhcmdzLT5zaXplOyBpKyspIHsKPiArCQl1MzIgcmVnaW9uOwo+ICsKPiArCQlyZXQgPSBn
ZXRfdXNlcihyZWdpb24sIHVyZWdpb25zKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0
Owo+ICsKPiArCQl1cmVnaW9uc19jb3B5W2ldID0gcmVnaW9uOwo+ICsJCSsrdXJlZ2lvbnM7Cj4g
Kwl9CgpJIGRvIHVuZGVyc3RhbmQgdGhpcyBpcyBvbGQgY29kZSAobm90IHlvdXJzKSBidXQgSSBm
YWlsIHRvIHBlbmV0cmF0ZSB3aHkgCmlzIHRoaXMgYSBsb29wIGFuZCBub3QgY29weV9mcm9tX3Vz
ZXI/Cgo+ICsKPiArCXJldHVybiBpOTE1X2dlbV9vYmplY3RfbWVtX3JlZ2lvbl9taWdyYXRlKGRl
dl9wcml2LCBvYmosIHVyZWdpb25zX2NvcHksCj4gKwkJCQkJCSAgYXJncy0+c2l6ZSk7Cj4gK30K
PiArCj4gICBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAJCQkJICAgc3RydWN0IGRybV9maWxlICpmaWxlKQo+
ICAgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBpbmRl
eCBhN2MwNzNhZWI3NzcuLmQwOWE5Yzc0MWI0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBAQCAtNDcsNiArNDcsOSBAQCBpbnQgaTkxNV9nZW1f
b2JqZWN0X21pZ3JhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCSAg
ICBlbnVtIGludGVsX3JlZ2lvbl9pZCBpZCk7Cj4gICAKPiAgIHZvaWQgaTkxNV9nZW1fZmx1c2hf
ZnJlZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiAraW50IGk5MTVf
Z2VtX29iamVjdF9tZW1fcmVnaW9uX21pZ3JhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICsJCQkJICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4g
KwkJCQkgICAgICAgdTMyICp1cmVnaW9ucywgdTMyIHJlZ2lvbl9jb3VudCk7Cj4gICAKPiAgIHZv
aWQgX19pOTE1X2dlbV9vYmplY3RfcmVzZXRfcGFnZV9pdGVyKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopOwo+ICAgCj4gCgpHZW5lcmFsIGFwcHJvYWNoIGxvb2tzIGZlYXNpYmxlIHRv
IG1lLCBidXQgSSdsbCBsZWF2ZSBndXlzIGRpcmVjdGx5IAppbnZvbHZlZCB3aXRoIGxvY2FsIG1l
bW9yeSB0byBjYWxsIGl0LgoKQW5vdGhlciBteSBjb21tZW50L3F1ZXN0aW9uIHdvdWxkIGJlIC0g
ZG8gd2UgaGF2ZSBhIGhvb2sgd2hlbiBvYmplY3RzIAphcmUgcmVsZWFzZWQvZGlzYXNzb2NpYXRl
ZCBmcm9tIHRoZSBmcmFtZWJ1ZmZlciBhbmQgc2hvdWxkIHdlIHJlc3RvcmUgCnRoZSBhbGxvd2Vk
IG1lbW9yeSByZWdpb24gbWFzayB0byBkZWZhdWx0IGF0IHRoYXQgcG9pbnQ/CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
