Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 325A76BCB9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355F589F89;
	Wed, 17 Jul 2019 13:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D818E89F89
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:04:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:04:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158457624"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:04:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dacd4362-4e76-5165-37e5-a9d4308835bb@linux.intel.com>
Date: Wed, 17 Jul 2019 14:04:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716124931.5870-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Push engine stopping into
 reset-prepare
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

Ck9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBQdXNoIHRoZSBlbmdp
bmUgc3RvcCBpbnRvIHRoZSBiYWNrIHJlc2V0X3ByZXBhcmUgKHdoZXJlIGl0IGFscmVhZHkgd2Fz
ISkKPiBUaGlzIGFsbG93cyB1cyB0byBhdm9pZCBkYW5nZXJvdXNseSBzZXR0aW5nIHRoZSBSSU5H
IHJlZ2lzdGVycyB0byAwIGZvcgo+IGxvZ2ljYWwgY29udGV4dHMuIElmIHdlIGNsZWFyIHRoZSBy
ZWdpc3RlciBvbiBhIGxpdmUgY29udGV4dCwgdGhvc2UKPiBpbnZhbGlkIHJlZ2lzdGVyIHZhbHVl
cyBhcmUgcmVjb3JkZWQgaW4gdGhlIGxvZ2ljYWwgY29udGV4dCBzdGF0ZSBhbmQKPiByZXBsYXll
ZCAod2l0aCBoaWxhcmlvdXMgcmVzdWx0cykuCgpTbyBlc3NlbnRpYWxseSBzdGF0ZW1lbnQgaXMg
Z2VuM19zdG9wX2VuZ2luZSBpcyBub3QgbmVlZGVkIGFuZCBldmVuIApkYW5nZXJvdXMgd2l0aCBl
eGVjbGlzdHM/Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgICAgICAgIHwgMTYgKysrKystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jICAgICAgfCA1OCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCA0MCArKysrKysrKysrKysrKy0KPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA5ZTA5OTI0OTgwODcuLjliODdhMmZj
MTg2YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTIxNzMsMTEg
KzIxNzMsMjMgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX3Jlc2V0X3ByZXBhcmUoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCV9fdGFza2xldF9kaXNhYmxlX3N5bmNfb25jZSgm
ZXhlY2xpc3RzLT50YXNrbGV0KTsKPiAgIAlHRU1fQlVHX09OKCFyZXNldF9pbl9wcm9ncmVzcyhl
eGVjbGlzdHMpKTsKPiAgIAo+IC0JaW50ZWxfZW5naW5lX3N0b3BfY3MoZW5naW5lKTsKPiAtCj4g
ICAJLyogQW5kIGZsdXNoIGFueSBjdXJyZW50IGRpcmVjdCBzdWJtaXNzaW9uLiAqLwo+ICAgCXNw
aW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7Cj4gICAJc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5hY3RpdmUubG9jaywgZmxhZ3MpOwo+ICsKPiArCS8q
Cj4gKwkgKiBXZSBzdG9wIGVuZ2luZXMsIG90aGVyd2lzZSB3ZSBtaWdodCBnZXQgZmFpbGVkIHJl
c2V0IGFuZCBhCj4gKwkgKiBkZWFkIGdwdSAob24gZWxrKS4gQWxzbyBhcyBtb2Rlcm4gZ3B1IGFz
IGtibCBjYW4gc3VmZmVyCj4gKwkgKiBmcm9tIHN5c3RlbSBoYW5nIGlmIGJhdGNoYnVmZmVyIGlz
IHByb2dyZXNzaW5nIHdoZW4KPiArCSAqIHRoZSByZXNldCBpcyBpc3N1ZWQsIHJlZ2FyZGxlc3Mg
b2YgUkVBRFlfVE9fUkVTRVQgYWNrLgo+ICsJICogVGh1cyBhc3N1bWUgaXQgaXMgYmVzdCB0byBz
dG9wIGVuZ2luZXMgb24gYWxsIGdlbnMKPiArCSAqIHdoZXJlIHdlIGhhdmUgYSBncHUgcmVzZXQu
Cj4gKwkgKgo+ICsJICogV2FLQkxWRUNTU2VtYXBob3JlV2FpdFBvbGw6a2JsIChvbiBBTExfRU5H
SU5FUykKPiArCSAqCj4gKwkgKiBGSVhNRTogV2EgZm9yIG1vcmUgbW9kZXJuIGdlbnMgbmVlZHMg
dG8gYmUgdmFsaWRhdGVkCj4gKwkgKi8KPiArCWludGVsX2VuZ2luZV9zdG9wX2NzKGVuZ2luZSk7
Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIHJlc2V0X2NzYl9wb2ludGVycyhzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
Cj4gaW5kZXggN2RkZWRmYjE2YWEyLi41NWUyZGRjYmQyMTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtMTM1LDQ3ICsxMzUsNiBAQCB2b2lkIF9faTkxNV9y
ZXF1ZXN0X3Jlc2V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBib29sIGd1aWx0eSkKPiAgIAl9
Cj4gICB9Cj4gICAKPiAtc3RhdGljIHZvaWQgZ2VuM19zdG9wX2VuZ2luZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCj4gLXsKPiAtCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9
IGVuZ2luZS0+dW5jb3JlOwo+IC0JY29uc3QgdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsK
PiAtCj4gLQlHRU1fVFJBQ0UoIiVzXG4iLCBlbmdpbmUtPm5hbWUpOwo+IC0KPiAtCWlmIChpbnRl
bF9lbmdpbmVfc3RvcF9jcyhlbmdpbmUpKQo+IC0JCUdFTV9UUkFDRSgiJXM6IHRpbWVkIG91dCBv
biBTVE9QX1JJTkdcbiIsIGVuZ2luZS0+bmFtZSk7Cj4gLQo+IC0JaW50ZWxfdW5jb3JlX3dyaXRl
X2Z3KHVuY29yZSwKPiAtCQkJICAgICAgUklOR19IRUFEKGJhc2UpLAo+IC0JCQkgICAgICBpbnRl
bF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdfVEFJTChiYXNlKSkpOwo+IC0JaW50ZWxfdW5j
b3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChiYXNlKSk7IC8qIHBhcmFub2lh
ICovCj4gLQo+IC0JaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgUklOR19IRUFEKGJhc2Up
LCAwKTsKPiAtCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJTkdfVEFJTChiYXNlKSwg
MCk7Cj4gLQlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkX2Z3KHVuY29yZSwgUklOR19UQUlMKGJh
c2UpKTsKPiAtCj4gLQkvKiBUaGUgcmluZyBtdXN0IGJlIGVtcHR5IGJlZm9yZSBpdCBpcyBkaXNh
YmxlZCAqLwo+IC0JaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgUklOR19DVEwoYmFzZSks
IDApOwo+IC0KPiAtCS8qIENoZWNrIGFjdHMgYXMgYSBwb3N0ICovCj4gLQlpZiAoaW50ZWxfdW5j
b3JlX3JlYWRfZncodW5jb3JlLCBSSU5HX0hFQUQoYmFzZSkpKQo+IC0JCUdFTV9UUkFDRSgiJXM6
IHJpbmcgaGVhZCBbJXhdIG5vdCBwYXJrZWRcbiIsCj4gLQkJCSAgZW5naW5lLT5uYW1lLAo+IC0J
CQkgIGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgUklOR19IRUFEKGJhc2UpKSk7Cj4gLX0K
PiAtCj4gLXN0YXRpYyB2b2lkIHN0b3BfZW5naW5lcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnRl
bF9lbmdpbmVfbWFza190IGVuZ2luZV9tYXNrKQo+IC17Cj4gLQlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7Cj4gLQlpbnRlbF9lbmdpbmVfbWFza190IHRtcDsKPiAtCj4gLQlpZiAoSU5U
RUxfR0VOKGd0LT5pOTE1KSA8IDMpCj4gLQkJcmV0dXJuOwo+IC0KPiAtCWZvcl9lYWNoX2VuZ2lu
ZV9tYXNrZWQoZW5naW5lLCBndC0+aTkxNSwgZW5naW5lX21hc2ssIHRtcCkKPiAtCQlnZW4zX3N0
b3BfZW5naW5lKGVuZ2luZSk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgYm9vbCBpOTE1X2luX3Jlc2V0
KHN0cnVjdCBwY2lfZGV2ICpwZGV2KQo+ICAgewo+ICAgCXU4IGdkcnN0Owo+IEBAIC02MDcsMjMg
KzU2Niw2IEBAIGludCBfX2ludGVsX2d0X3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludGVs
X2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spCj4gICAJICovCj4gICAJaW50ZWxfdW5jb3JlX2Zv
cmNld2FrZV9nZXQoZ3QtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gICAJZm9yIChyZXRyeSA9
IDA7IHJldCA9PSAtRVRJTUVET1VUICYmIHJldHJ5IDwgcmV0cmllczsgcmV0cnkrKykgewo+IC0J
CS8qCj4gLQkJICogV2Ugc3RvcCBlbmdpbmVzLCBvdGhlcndpc2Ugd2UgbWlnaHQgZ2V0IGZhaWxl
ZCByZXNldCBhbmQgYQo+IC0JCSAqIGRlYWQgZ3B1IChvbiBlbGspLiBBbHNvIGFzIG1vZGVybiBn
cHUgYXMga2JsIGNhbiBzdWZmZXIKPiAtCQkgKiBmcm9tIHN5c3RlbSBoYW5nIGlmIGJhdGNoYnVm
ZmVyIGlzIHByb2dyZXNzaW5nIHdoZW4KPiAtCQkgKiB0aGUgcmVzZXQgaXMgaXNzdWVkLCByZWdh
cmRsZXNzIG9mIFJFQURZX1RPX1JFU0VUIGFjay4KPiAtCQkgKiBUaHVzIGFzc3VtZSBpdCBpcyBi
ZXN0IHRvIHN0b3AgZW5naW5lcyBvbiBhbGwgZ2Vucwo+IC0JCSAqIHdoZXJlIHdlIGhhdmUgYSBn
cHUgcmVzZXQuCj4gLQkJICoKPiAtCQkgKiBXYUtCTFZFQ1NTZW1hcGhvcmVXYWl0UG9sbDprYmwg
KG9uIEFMTF9FTkdJTkVTKQo+IC0JCSAqCj4gLQkJICogV2FNZWRpYVJlc2V0TWFpblJpbmdDbGVh
bnVwOmN0ZyxlbGsgKHByZXN1bWFibHkpCj4gLQkJICoKPiAtCQkgKiBGSVhNRTogV2EgZm9yIG1v
cmUgbW9kZXJuIGdlbnMgbmVlZHMgdG8gYmUgdmFsaWRhdGVkCj4gLQkJICovCj4gLQkJaWYgKHJl
dHJ5KQo+IC0JCQlzdG9wX2VuZ2luZXMoZ3QsIGVuZ2luZV9tYXNrKTsKPiAtCgpPbmx5IG90aGVy
IGZ1bmN0aW9uYWwgY2hhbmdlIEkgc2VlIGlzIHRoYXQgd2Ugc3RvcCByZXRyeWluZyB0byBzdG9w
IHRoZSAKZW5naW5lcyBiZWZvcmUgcmVzZXQgYXR0ZW1wdHMuIEkgZG9uJ3Qga25vdyBpZiB0aGF0
IGlzIGEgY29uY2VybiBvciBub3QuCgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgCQlHRU1fVFJBQ0Uo
ImVuZ2luZV9tYXNrPSV4XG4iLCBlbmdpbmVfbWFzayk7Cj4gICAJCXByZWVtcHRfZGlzYWJsZSgp
Owo+ICAgCQlyZXQgPSByZXNldChndCwgZW5naW5lX21hc2ssIHJldHJ5KTsKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gaW5kZXggZjFlNTcxZmEyZTZkLi4y
MTNkZjE0NGJlMTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1
ZmZlci5jCj4gQEAgLTczOSw3ICs3MzksNDUgQEAgc3RhdGljIGludCB4Y3NfcmVzdW1lKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIAo+ICAgc3RhdGljIHZvaWQgcmVzZXRfcHJl
cGFyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICB7Cj4gLQlpbnRlbF9lbmdp
bmVfc3RvcF9jcyhlbmdpbmUpOwo+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZW5n
aW5lLT51bmNvcmU7Cj4gKwljb25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwo+ICsK
PiArCS8qCj4gKwkgKiBXZSBzdG9wIGVuZ2luZXMsIG90aGVyd2lzZSB3ZSBtaWdodCBnZXQgZmFp
bGVkIHJlc2V0IGFuZCBhCj4gKwkgKiBkZWFkIGdwdSAob24gZWxrKS4gQWxzbyBhcyBtb2Rlcm4g
Z3B1IGFzIGtibCBjYW4gc3VmZmVyCj4gKwkgKiBmcm9tIHN5c3RlbSBoYW5nIGlmIGJhdGNoYnVm
ZmVyIGlzIHByb2dyZXNzaW5nIHdoZW4KPiArCSAqIHRoZSByZXNldCBpcyBpc3N1ZWQsIHJlZ2Fy
ZGxlc3Mgb2YgUkVBRFlfVE9fUkVTRVQgYWNrLgo+ICsJICogVGh1cyBhc3N1bWUgaXQgaXMgYmVz
dCB0byBzdG9wIGVuZ2luZXMgb24gYWxsIGdlbnMKPiArCSAqIHdoZXJlIHdlIGhhdmUgYSBncHUg
cmVzZXQuCj4gKwkgKgo+ICsJICogV2FLQkxWRUNTU2VtYXBob3JlV2FpdFBvbGw6a2JsIChvbiBB
TExfRU5HSU5FUykKPiArCSAqCj4gKwkgKiBXYU1lZGlhUmVzZXRNYWluUmluZ0NsZWFudXA6Y3Rn
LGVsayAocHJlc3VtYWJseSkKPiArCSAqCj4gKwkgKiBGSVhNRTogV2EgZm9yIG1vcmUgbW9kZXJu
IGdlbnMgbmVlZHMgdG8gYmUgdmFsaWRhdGVkCj4gKwkgKi8KPiArCUdFTV9UUkFDRSgiJXNcbiIs
IGVuZ2luZS0+bmFtZSk7Cj4gKwo+ICsJaWYgKGludGVsX2VuZ2luZV9zdG9wX2NzKGVuZ2luZSkp
Cj4gKwkJR0VNX1RSQUNFKCIlczogdGltZWQgb3V0IG9uIFNUT1BfUklOR1xuIiwgZW5naW5lLT5u
YW1lKTsKPiArCj4gKwlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLAo+ICsJCQkgICAgICBS
SU5HX0hFQUQoYmFzZSksCj4gKwkJCSAgICAgIGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwg
UklOR19UQUlMKGJhc2UpKSk7Cj4gKwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkX2Z3KHVuY29y
ZSwgUklOR19IRUFEKGJhc2UpKTsgLyogcGFyYW5vaWEgKi8KPiArCj4gKwlpbnRlbF91bmNvcmVf
d3JpdGVfZncodW5jb3JlLCBSSU5HX0hFQUQoYmFzZSksIDApOwo+ICsJaW50ZWxfdW5jb3JlX3dy
aXRlX2Z3KHVuY29yZSwgUklOR19UQUlMKGJhc2UpLCAwKTsKPiArCWludGVsX3VuY29yZV9wb3N0
aW5nX3JlYWRfZncodW5jb3JlLCBSSU5HX1RBSUwoYmFzZSkpOwo+ICsKPiArCS8qIFRoZSByaW5n
IG11c3QgYmUgZW1wdHkgYmVmb3JlIGl0IGlzIGRpc2FibGVkICovCj4gKwlpbnRlbF91bmNvcmVf
d3JpdGVfZncodW5jb3JlLCBSSU5HX0NUTChiYXNlKSwgMCk7Cj4gKwo+ICsJLyogQ2hlY2sgYWN0
cyBhcyBhIHBvc3QgKi8KPiArCWlmIChpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdf
SEVBRChiYXNlKSkpCj4gKwkJR0VNX1RSQUNFKCIlczogcmluZyBoZWFkIFsleF0gbm90IHBhcmtl
ZFxuIiwKPiArCQkJICBlbmdpbmUtPm5hbWUsCj4gKwkJCSAgaW50ZWxfdW5jb3JlX3JlYWRfZnco
dW5jb3JlLCBSSU5HX0hFQUQoYmFzZSkpKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgcmVz
ZXRfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
