Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFFD1068BD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 10:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCB06F507;
	Fri, 22 Nov 2019 09:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185E06F507
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 09:21:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 01:21:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201456403"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 01:21:47 -0800
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191122040226.15933-1-ramalingam.c@intel.com>
 <20191122040226.15933-2-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
Date: Fri, 22 Nov 2019 09:21:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122040226.15933-2-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzExLzIwMTkgMDQ6MDIsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBGcm9tOiBNaWNoZWwg
VGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IAo+IEltcGxlbWVudCBXYV8xNjA0
NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xlcykuCj4gRkZfTU9E
RTIgaXMgcGFydCBvZiB0aGUgcmVnaXN0ZXIgc3RhdGUgY29udGV4dCwgdGhhdCdzIHdoeSBpdCBp
cwo+IGltcGxlbWVudGVkIGhlcmUuCj4gCj4gQXQgVEdMIEEwIHN0ZXBwaW5nLCBGRl9NT0RFMiBy
ZWdpc3RlciByZWFkIGJhY2sgaXMgYnJva2VuLCBoZW5jZQo+IGRpc2FibGluZyB0aGUgV0EgdmVy
aWZpY2F0aW9uLgo+IAo+IHYyOiBSZWJhc2VkIG9uIHRvcCBvZiB0aGUgV0EgcmVmYWN0b3Jpbmcg
KE9zY2FyKQo+IHYzOiBDb3JyZWN0bHkgYWRkIHRvIGN0eF93b3JrYXJvdW5kc19pbml0IChNaWNo
ZWwpCj4gdjQ6Cj4gICAgdW5jb3JlIHJlYWQgaXMgdXNlZCBbVHZydGtvXQo+ICAgIE1hY3JvcyBh
cyB1c2VkIGZvciBNQVNLIGRlZmluaXRpb24gW0NocmlzXQo+IHY1Ogo+ICAgIFNraXAgdGhlIFdh
XzE2MDQ1NTU2MDcgdmVyaWZpY2F0aW9uIFtSYW1dCj4gICAgaTkxNSBwdHIgcmV0cmlldmVkIGZy
b20gZW5naW5lLiBbVHZydGtvXQo+IHY2Ogo+ICAgIF9fd2Ffd3JpdGVfbWFza2VkX29yIHVzZWQg
d2l0aCB2YXJ5aW5nIHBhcmFtZXRlciBbVHZydGtvXQo+ICAgIEFkZGVkIHdhX2FkZCBhcyBhIHdy
YXBwZXIgZm9yIF9fd2FfYWRkIFtDaHJpc10KPiB2NzoKPiAgICBXQSB2ZXJpZmljYXRpb24gaXMg
c2tpcHBlZCBvbiBhbGwgc3RlcHBpbmcgYXMgb2Ygbm93IFtMdWNhc10KPiAKPiBCU3BlYzogMTkz
NjMKPiBIU0RFUzogMTYwNDU1NTYwNwo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxt
aWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxy
YW1saW5nYW0uY0BpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+IFt2NV0KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAzNCArKysrKysrKysrKysrKysrKystLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAgNCArKysKPiAgIDIg
ZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCAzOTlhY2Fl
MmYzM2YuLmIxMTU0MGNhYTkyZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xNDYsMjAgKzE0NiwzMyBAQCBzdGF0aWMgdm9pZCBfd2Ff
YWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgY29uc3Qgc3RydWN0IGk5MTVfd2EgKndhKQo+
ICAgCX0KPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZAo+IC13YV93cml0ZV9tYXNrZWRfb3Ioc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4gLQkJICAg
dTMyIHZhbCkKPiArc3RhdGljIHZvaWQgd2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwg
aTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLAo+ICsJCSAgIHUzMiB2YWwsIHUzMiByZWFkX21hc2sp
Cj4gICB7Cj4gICAJc3RydWN0IGk5MTVfd2Egd2EgPSB7Cj4gICAJCS5yZWcgID0gcmVnLAo+ICAg
CQkubWFzayA9IG1hc2ssCj4gICAJCS52YWwgID0gdmFsLAo+IC0JCS5yZWFkID0gbWFzaywKPiAr
CQkucmVhZCA9IHJlYWRfbWFzaywKPiAgIAl9Owo+ICAgCj4gICAJX3dhX2FkZCh3YWwsICZ3YSk7
Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArX193YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4gKwkJICAgICB1
MzIgdmFsLCB1MzIgcmVhZF9tYXNrKQo+ICt7Cj4gKwl3YV9hZGQod2FsLCByZWcsIG1hc2ssIHZh
bCwgcmVhZF9tYXNrKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQKPiArd2Ffd3JpdGVfbWFza2Vk
X29yKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLAo+
ICsJCSAgIHUzMiB2YWwpCj4gK3sKPiArCV9fd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgcmVnLCBt
YXNrLCB2YWwsIG1hc2spOwoKTWlub3IgcG9pbnQgLSBub3Qgc3VyZSBhYm91dCB0aGUgbmVlZCBm
b3IgdGhpcyBoZWxwZXIgbm93LCB5b3UgY291bGQgCmp1c3QgY2FsbCB3YV9hZGQgZnJvbSBoZXJl
LgoKPiArfQo+ICsKPiAgIHN0YXRpYyB2b2lkCj4gICB3YV9tYXNrZWRfZW4oc3RydWN0IGk5MTVf
d2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPiAgIHsKPiBAQCAtNTY4LDkg
KzU4MSwyMiBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5k
c19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkJCQkgICAgIHN0cnVj
dCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgIHsKPiArCXUzMiB2YWw7Cj4gKwo+ICAgCS8qIFdhXzE0
MDkxNDIyNTk6dGdsICovCj4gICAJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNF
X0NISUNLRU4zLAo+ICAgCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsK
PiArCj4gKwkvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+ICsJdmFsID0gaW50ZWxfdW5jb3JlX3Jl
YWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKPiArCXZhbCAmPSB+RkZfTU9ERTJfVERTX1RJ
TUVSX01BU0s7Cj4gKwl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPiArCS8qCj4gKwkg
KiBGSVhNRTogRkZfTU9ERTIgcmVnaXN0ZXIgaXMgbm90IHJlYWRhYmxlIHRpbGwgVEdMIEIwLiBX
ZSBjYW4KPiArCSAqIGVuYWJsZSB2ZXJpZmljYXRpb24gb2YgV0EgZnJvbSB0aGUgbGF0ZXIgc3Rl
cHBpbmdzLCB3aGljaCBlbmFibGVzCj4gKwkgKiB0aGUgcmVhZCBvZiBGRl9NT0RFMi4KPiArCSAq
Lwo+ICsJX193YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJ
TUVSX01BU0ssIHZhbCwgMCk7CgpJZiBJIHdhcyBhIGJldHRpbmcgbWFuIEknZCBiZXQgbm8gb25l
IHdpbGwgZXZlciByZW1lbWJlciB0byBhZGQgdGhlIAp2ZXJpZmljYXRpb24gYmFjay4gU28gSSBo
YXZlIHRvIHNheSBJIGRpc2FncmVlIHdpdGggTHVjYXMgb24gdGhpcyBwb2ludC4gClNvbWVvbmUg
ZG8gYSBjYXN0aW5nIHZvdGUgcGxlYXNlLiA6KQoKV2Uga25vdyBpdCB3aWxsIHJlbWFpbiBicm9r
ZW4gdW50aWwgYXQgbGVhc3QgYWZ0ZXIgQjA/Cgo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDk0ZDBmNTkzZWViNy4uYTk5ZmRmOGVhNTNi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTc5MjIsNiArNzkyMiwxMCBAQCBl
bnVtIHsKPiAgICNkZWZpbmUgICBQSVhFTF9ST1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEg
PDwgMTUpCj4gICAjZGVmaW5lICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykK
PiAgIAo+ICsjZGVmaW5lIEZGX01PREUyCQkJX01NSU8oMHg2NjA0KQo+ICsjZGVmaW5lICAgRkZf
TU9ERTJfVERTX1RJTUVSX01BU0sJUkVHX0dFTk1BU0soMjMsIDE2KQo+ICsjZGVmaW5lICAgRkZf
TU9ERTJfVERTX1RJTUVSXzEyOAlSRUdfRklFTERfUFJFUChGRl9NT0RFMl9URFNfVElNRVJfTUFT
SywgNCkKPiArCj4gICAvKiBQQ0ggKi8KPiAgIAo+ICAgI2RlZmluZSBQQ0hfRElTUExBWV9CQVNF
CTB4YzAwMDB1Cj4gCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
