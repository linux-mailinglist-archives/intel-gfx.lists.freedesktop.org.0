Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A873BCB55
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 17:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929C089A4F;
	Tue, 24 Sep 2019 15:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6645489A4F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 15:26:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 08:26:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="188498701"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 24 Sep 2019 08:26:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-18-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d40a865b-b72e-c8b7-d2a6-49c968d05197@linux.intel.com>
Date: Tue, 24 Sep 2019 16:26:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902040303.14195-18-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/21] drm/i915: Remove the GEM idle worker
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

Ck9uIDAyLzA5LzIwMTkgMDU6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3RoaW5nIGluc2lk
ZSB0aGUgaWRsZSB3b3JrZXIgbm93IHJlcXVpcmVzIHN0cnVjdF9tdXRleCwgc28gd2UgY2FuCj4g
cmVtb3ZlIHRoZSBpbmRpcmVjdGlvbiBvZiB1c2luZyBvdXIgb3duIHdvcmtlci4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jICAgICAgICB8IDI4ICsr
LS0tLS0tLS0tLS0tLS0tLS0KPiAgIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X21tYW4uYyAgICB8ICAzIC0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyAgICAgICAgICAgfCAgNSAtLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgOSAtLS0tLS0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L21vY2tfZ2VtX2RldmljZS5jICB8ICA2IC0tLS0KPiAgIDUgZmlsZXMgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcG0uYwo+IGluZGV4IGZlYzBiNDEwZDFkOS4uZTgzZWVkOGZhNDUyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiBAQCAtMTMsMzYgKzEzLDEzIEBACj4g
ICAKPiAgIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gICB7Cj4gLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKPiArCWNhbmNlbF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yayk7Cj4g
ICAKPiAgIAlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7Cj4gICAKPiAgIAlpOTE1X2dsb2JhbHNfcGFy
aygpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyB2b2lkIGlkbGVfd29ya19oYW5kbGVyKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKPiAtewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PQo+IC0JCWNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0uaWRsZV93b3JrKTsK
PiAtCWJvb2wgcGFyazsKPiAtCj4gLQljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmk5MTUtPmdl
bS5yZXRpcmVfd29yayk7Cj4gLQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
PiAtCj4gLQlpbnRlbF93YWtlcmVmX2xvY2soJmk5MTUtPmd0Lndha2VyZWYpOwo+IC0JcGFyayA9
ICghaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUoJmk5MTUtPmd0Lndha2VyZWYpICYmCj4gLQkJIXdv
cmtfcGVuZGluZyh3b3JrKSk7Cj4gLQlpbnRlbF93YWtlcmVmX3VubG9jaygmaTkxNS0+Z3Qud2Fr
ZXJlZik7Cj4gLQlpZiAocGFyaykKPiAtCQlpOTE1X2dlbV9wYXJrKGk5MTUpOwo+IC0JZWxzZQo+
IC0JCXF1ZXVlX2RlbGF5ZWRfd29yayhpOTE1LT53cSwKPiAtCQkJCSAgICZpOTE1LT5nZW0ucmV0
aXJlX3dvcmssCj4gLQkJCQkgICByb3VuZF9qaWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7Cj4gLQo+
IC0JbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAtfQo+IC0KPiAgIHN0
YXRpYyB2b2lkIHJldGlyZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+
ICAgewo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPiBAQCAtNzEsNyArNDgs
NyBAQCBzdGF0aWMgaW50IHBtX25vdGlmaWVyKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCj4g
ICAJCWJyZWFrOwo+ICAgCj4gICAJY2FzZSBJTlRFTF9HVF9QQVJLOgo+IC0JCXF1ZXVlX3dvcmso
aTkxNS0+d3EsICZpOTE1LT5nZW0uaWRsZV93b3JrKTsKPiArCQlpOTE1X2dlbV9wYXJrKGk5MTUp
Owo+ICAgCQlicmVhazsKPiAgIAl9Cj4gICAKPiBAQCAtMjQ0LDcgKzIyMSw2IEBAIHZvaWQgaTkx
NV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCj4gICB2b2lk
IGk5MTVfZ2VtX2luaXRfX3BtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgewo+
IC0JSU5JVF9XT1JLKCZpOTE1LT5nZW0uaWRsZV93b3JrLCBpZGxlX3dvcmtfaGFuZGxlcik7Cj4g
ICAJSU5JVF9ERUxBWUVEX1dPUksoJmk5MTUtPmdlbS5yZXRpcmVfd29yaywgcmV0aXJlX3dvcmtf
aGFuZGxlcik7Cj4gICAKPiAgIAlpOTE1LT5nZW0ucG1fbm90aWZpZXIubm90aWZpZXJfY2FsbCA9
IHBtX25vdGlmaWVyOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggMzljMDFiYzRlYjUxLi44NTYzYWYxODE5YzQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
bWFuLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X21tYW4uYwo+IEBAIC0zODQsMTEgKzM4NCw4IEBAIHN0YXRpYyBib29sIGFzc2VydF9tbWFwX29m
ZnNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIHN0YXRpYyB2b2lkIGRpc2Fi
bGVfcmV0aXJlX3dvcmtlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgIHsKPiAg
IAlpOTE1X2dlbV9kcml2ZXJfdW5yZWdpc3Rlcl9fc2hyaW5rZXIoaTkxNSk7Cj4gLQo+ICAgCWlu
dGVsX2d0X3BtX2dldCgmaTkxNS0+Z3QpOwo+IC0KPiAgIAljYW5jZWxfZGVsYXllZF93b3JrX3N5
bmMoJmk5MTUtPmdlbS5yZXRpcmVfd29yayk7Cj4gLQlmbHVzaF93b3JrKCZpOTE1LT5nZW0uaWRs
ZV93b3JrKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgcmVzdG9yZV9yZXRpcmVfd29ya2Vy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCj4gaW5kZXggNTVmMGZjMDNhYTNlLi4wOWM2YzQ4NWE3MzIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0zNjQyLDExICszNjQyLDYgQEAgaTkxNV9kcm9w
X2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkKPiAgIAkJaTkxNV9nZW1fc2hyaW5rX2Fs
bChpOTE1KTsKPiAgIAlmc19yZWNsYWltX3JlbGVhc2UoR0ZQX0tFUk5FTCk7Cj4gICAKPiAtCWlm
ICh2YWwgJiBEUk9QX0lETEUpIHsKPiAtCQlmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5y
ZXRpcmVfd29yayk7Cj4gLQkJZmx1c2hfd29yaygmaTkxNS0+Z2VtLmlkbGVfd29yayk7Cj4gLQl9
Cj4gLQo+ICAgCWlmICh2YWwgJiBEUk9QX0ZSRUVEKQo+ICAgCQlpOTE1X2dlbV9kcmFpbl9mcmVl
ZF9vYmplY3RzKGk5MTUpOwo+ICAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggZGI3
NDgwODMxZTUyLi5iMzNmYzc5NzJlNmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBA
QCAtMTcxOCwxNSArMTcxOCw2IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKPiAgIAkJICog
ZmlyZXMsIGdvIHJldGlyZSByZXF1ZXN0cy4KPiAgIAkJICovCj4gICAJCXN0cnVjdCBkZWxheWVk
X3dvcmsgcmV0aXJlX3dvcms7Cj4gLQo+IC0JCS8qKgo+IC0JCSAqIFdoZW4gd2UgZGV0ZWN0IGFu
IGlkbGUgR1BVLCB3ZSB3YW50IHRvIHR1cm4gb24KPiAtCQkgKiBwb3dlcnNhdmluZyBmZWF0dXJl
cy4gU28gb25jZSB3ZSBzZWUgdGhhdCB0aGVyZQo+IC0JCSAqIGFyZSBubyBtb3JlIHJlcXVlc3Rz
IG91dHN0YW5kaW5nIGFuZCBubyBtb3JlCj4gLQkJICogYXJyaXZlIHdpdGhpbiBhIHNtYWxsIHBl
cmlvZCBvZiB0aW1lLCB3ZSBmaXJlCj4gLQkJICogb2ZmIHRoZSBpZGxlX3dvcmsuCj4gLQkJICov
Cj4gLQkJc3RydWN0IHdvcmtfc3RydWN0IGlkbGVfd29yazsKPiAgIAl9IGdlbTsKPiAgIAo+ICAg
CS8qIEZvciBpOTQ1Z20gdmJsYW5rIGlycSB2cy4gQzMgd29ya2Fyb3VuZCAqLwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiBpbmRleCAx
OTU2MDA2YTBkNWIuLmYzZTliNWQ3ZDA5OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiBAQCAtNTUsNyArNTUsNiBAQCBzdGF0
aWMgdm9pZCBtb2NrX2RldmljZV9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gICAK
PiAgIAltb2NrX2RldmljZV9mbHVzaChpOTE1KTsKPiAgIAo+IC0JZmx1c2hfd29yaygmaTkxNS0+
Z2VtLmlkbGVfd29yayk7Cj4gICAJaTkxNV9nZW1fZHJhaW5fd29ya3F1ZXVlKGk5MTUpOwo+ICAg
Cj4gICAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gQEAgLTEwMywxMCAr
MTAyLDYgQEAgc3RhdGljIHZvaWQgbW9ja19yZXRpcmVfd29ya19oYW5kbGVyKHN0cnVjdCB3b3Jr
X3N0cnVjdCAqd29yaykKPiAgIHsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZCBtb2NrX2lkbGVf
d29ya19oYW5kbGVyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAtewo+IC19Cj4gLQo+ICAg
c3RhdGljIGludCBwbV9kb21haW5fcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgIHsKPiAg
IAlyZXR1cm4gcG1fZ2VuZXJpY19ydW50aW1lX3Jlc3VtZShkZXYpOwo+IEBAIC0xODYsNyArMTgx
LDYgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2RldmljZSh2b2lkKQo+ICAg
CW1vY2tfaW5pdF9jb250ZXh0cyhpOTE1KTsKPiAgIAo+ICAgCUlOSVRfREVMQVlFRF9XT1JLKCZp
OTE1LT5nZW0ucmV0aXJlX3dvcmssIG1vY2tfcmV0aXJlX3dvcmtfaGFuZGxlcik7Cj4gLQlJTklU
X1dPUksoJmk5MTUtPmdlbS5pZGxlX3dvcmssIG1vY2tfaWRsZV93b3JrX2hhbmRsZXIpOwo+ICAg
Cj4gICAJaTkxNS0+Z3QuYXdha2UgPSB0cnVlOwo+ICAgCj4gCgpSZXZpZXdlZC1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
