Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0081257CB
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 00:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B60C66EAA1;
	Wed, 18 Dec 2019 23:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A74F6EAA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 23:31:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 15:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222126425"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2019 15:31:01 -0800
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Fernando Pacheco <fernando.pacheco@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191212184359.16280-1-fernando.pacheco@intel.com>
 <b99c5b08-a1b9-87ba-1e0f-107108b39792@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <5136ddbe-798c-1c54-5ce9-2d54c39b282c@intel.com>
Date: Wed, 18 Dec 2019 15:31:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b99c5b08-a1b9-87ba-1e0f-107108b39792@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Provide mmio list to be
 saved/restored on engine reset
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

CgpPbiAxMi8xMi8xOSAzOjAxIFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiAKPiBPbiAxMi8x
Mi8yMDE5IDE4OjQzLCBGZXJuYW5kbyBQYWNoZWNvIHdyb3RlOgo+PiBUaGUgZHJpdmVyIG11c3Qg
cHJvdmlkZSBHdUMgd2l0aCBhIGxpc3Qgb2YgbW1pbyByZWdpc3RlcnMKPj4gdGhhdCBzaG91bGQg
YmUgc2F2ZWQvcmVzdG9yZWQgZHVyaW5nIGEgR3VDLWJhc2VkIGVuZ2luZSByZXNldC4KPj4gV2Ug
cHJvdmlkZSBhIG1pbmltYWwgc2V0IG9mIHJlZ2lzdGVycyB0aGF0IHNob3VsZCBnZXQgdGhpbmdz
Cj4+IHdvcmtpbmcgYW5kIGV4dGVuZCBhcyBuZWVkZWQuCj4+Cj4+IHYyOiByZWJhc2UgYW5kIGNv
bW1lbnQgdG8gZXhwbGFpbiB3aHkgbW1pbyBsaXN0IGlzIGtlcHQgc29ydGVkCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEZlcm5hbmRvIFBhY2hlY28gPGZlcm5hbmRvLnBhY2hlY29AaW50ZWwuY29tPgo+
PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+
IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jwqDC
oCB8IDI1ICsrKy0tCj4+IMKgIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHNf
dHlwZXMuaCB8wqAgMSArCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19hZHMuY8KgwqDCoCB8IDk2ICsrKysrKysrKysrKysrKysrKy0KPj4gwqAgMyBmaWxlcyBjaGFu
Z2VkLCAxMTQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgCj4+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBpbmRleCAxOTVjY2Y3ZGIy
NzIuLjg2NmQ0YTdiYTBlYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4+IEBAIC0xNDgsMjkgKzE0OCwzNyBAQCBzdGF0aWMgdm9pZCBfd2Ff
YWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgCj4+IGNvbnN0IHN0cnVjdCBpOTE1X3dhICp3
YSkKPj4gwqAgfQo+PiDCoCBzdGF0aWMgdm9pZCB3YV9hZGQoc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCB1
MzIgdmFsLCB1MzIgcmVhZF9tYXNrKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHZhbCwg
dTMyIHJlYWRfbWFzaywgYm9vbCBtYXNrZWRfYml0cykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0
cnVjdCBpOTE1X3dhIHdhID0gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLnJlZ8KgID0gcmVnLAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgLm1hc2sgPSBtYXNrLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
LnZhbMKgID0gdmFsLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLnJlYWQgPSByZWFkX21hc2ssCj4+
ICvCoMKgwqDCoMKgwqDCoCAubWFza2VkX2JpdHMgPSBtYXNrZWRfYml0cywKPj4gwqDCoMKgwqDC
oCB9Owo+PiDCoMKgwqDCoMKgIF93YV9hZGQod2FsLCAmd2EpOwo+PiDCoCB9Cj4+ICtzdGF0aWMg
dm9pZAo+PiArX193YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBp
OTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMy
IHZhbCwgYm9vbCBtYXNrZWRfYml0cykKPj4gK3sKPj4gK8KgwqDCoCB3YV9hZGQod2FsLCByZWcs
IG1hc2ssIHZhbCwgbWFzaywgbWFza2VkX2JpdHMpOwo+PiArfQo+PiArCj4+IMKgIHN0YXRpYyB2
b2lkCj4+IMKgIHdhX3dyaXRlX21hc2tlZF9vcihzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5
MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiB2
YWwpCj4+IMKgIHsKPj4gLcKgwqDCoCB3YV9hZGQod2FsLCByZWcsIG1hc2ssIHZhbCwgbWFzayk7
Cj4+ICvCoMKgwqAgX193YV93cml0ZV9tYXNrZWRfb3Iod2FsLCByZWcsIG1hc2ssIHZhbCwgZmFs
c2UpOwo+PiDCoCB9Cj4+IMKgIHN0YXRpYyB2b2lkCj4+IMKgIHdhX21hc2tlZF9lbihzdHJ1Y3Qg
aTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQo+PiDCoCB7Cj4+IC3C
oMKgwqAgd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgcmVnLCB2YWwsIF9NQVNLRURfQklUX0VOQUJM
RSh2YWwpKTsKPj4gK8KgwqDCoCBfX3dhX3dyaXRlX21hc2tlZF9vcih3YWwsIHJlZywgdmFsLCBf
TUFTS0VEX0JJVF9FTkFCTEUodmFsKSwgdHJ1ZSk7Cj4+IMKgIH0KPj4gwqAgc3RhdGljIHZvaWQK
Pj4gQEAgLTE4NiwxMyArMTk0LDE2IEBAIHdhX3dyaXRlX29yKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCwgaTkxNV9yZWdfdCAKPj4gcmVnLCB1MzIgdmFsKQo+PiDCoCB9Cj4+IMKgICNkZWZpbmUg
V0FfU0VUX0JJVF9NQVNLRUQoYWRkciwgbWFzaykgXAo+PiAtwqDCoMKgIHdhX3dyaXRlX21hc2tl
ZF9vcih3YWwsIChhZGRyKSwgKG1hc2spLCBfTUFTS0VEX0JJVF9FTkFCTEUobWFzaykpCj4+ICvC
oMKgwqAgX193YV93cml0ZV9tYXNrZWRfb3Iod2FsLCAoYWRkciksIChtYXNrKSwgXAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX01BU0tFRF9CSVRfRU5BQkxFKG1hc2spLCB0
cnVlKQo+PiDCoCAjZGVmaW5lIFdBX0NMUl9CSVRfTUFTS0VEKGFkZHIsIG1hc2spIFwKPj4gLcKg
wqDCoCB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCAoYWRkciksIChtYXNrKSwgX01BU0tFRF9CSVRf
RElTQUJMRShtYXNrKSkKPj4gK8KgwqDCoCBfX3dhX3dyaXRlX21hc2tlZF9vcih3YWwsIChhZGRy
KSwgKG1hc2spLCBcCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfTUFTS0VE
X0JJVF9ESVNBQkxFKG1hc2spLCB0cnVlKQo+PiDCoCAjZGVmaW5lIFdBX1NFVF9GSUVMRF9NQVNL
RUQoYWRkciwgbWFzaywgdmFsdWUpIFwKPj4gLcKgwqDCoCB3YV93cml0ZV9tYXNrZWRfb3Iod2Fs
LCAoYWRkciksIChtYXNrKSwgX01BU0tFRF9GSUVMRCgobWFzayksIAo+PiAodmFsdWUpKSkKPj4g
K8KgwqDCoCBfX3dhX3dyaXRlX21hc2tlZF9vcih3YWwsIChhZGRyKSwgKG1hc2spLCBcCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfTUFTS0VEX0ZJRUxEKChtYXNrKSwgKHZh
bHVlKSksIHRydWUpCj4+IMKgIHN0YXRpYyB2b2lkIGdlbjhfY3R4X3dvcmthcm91bmRzX2luaXQo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPj4gQEAg
LTU5Miw3ICs2MDMsNyBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IAo+PiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPj4gwqDCoMKgwqDCoMKgICovCj4+IMKg
wqDCoMKgwqAgd2FfYWRkKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2
YWwsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJU19UR0xfUkVWSUQoZW5naW5lLT5pOTE1
LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkgPyAwIDoKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyk7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIGZhbHNlKTsKPj4gwqAg
fQo+PiDCoCBzdGF0aWMgdm9pZAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHNfdHlwZXMuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kc190eXBlcy5oCj4+IGluZGV4IGUyN2FiMWI3MTBiMy4uYTQzZDVm
OTY4ZjJkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kc190eXBlcy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzX3R5cGVzLmgKPj4gQEAgLTE2LDYgKzE2LDcgQEAgc3RydWN0IGk5MTVfd2Egewo+
PiDCoMKgwqDCoMKgIHUzMsKgwqDCoMKgwqDCoMKgIG1hc2s7Cj4+IMKgwqDCoMKgwqAgdTMywqDC
oMKgwqDCoMKgwqAgdmFsOwo+PiDCoMKgwqDCoMKgIHUzMsKgwqDCoMKgwqDCoMKgIHJlYWQ7Cj4+
ICvCoMKgwqAgYm9vbMKgwqDCoMKgwqDCoMKgIG1hc2tlZF9iaXRzOwo+PiDCoCB9Owo+PiDCoCBz
dHJ1Y3QgaTkxNV93YV9saXN0IHsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19hZHMuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfYWRzLmMKPj4gaW5kZXggMTAxNzI4MDA2YWU5Li4zZmVhMTNmYzJiMWEgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19hZHMuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMKPj4gQEAgLTMs
NiArMyw4IEBACj4+IMKgwqAgKiBDb3B5cmlnaHQgwqkgMjAxNC0yMDE5IEludGVsIENvcnBvcmF0
aW9uCj4+IMKgwqAgKi8KPj4gKyNpbmNsdWRlIDxsaW51eC9ic2VhcmNoLmg+Cj4+ICsKPj4gwqAg
I2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4+IMKgICNpbmNsdWRlICJpbnRlbF9ndWNfYWRzLmgi
Cj4+IMKgICNpbmNsdWRlICJpbnRlbF91Yy5oIgo+PiBAQCAtMTYsNiArMTgsOSBAQAo+PiDCoMKg
ICogaXRzIGludGVybmFsIHN0YXRlIGZvciBzbGVlcC4KPj4gwqDCoCAqLwo+PiArc3RhdGljIHZv
aWQgZ3VjX21taW9fcmVnX3N0YXRlX2luaXQoc3RydWN0IGd1Y19tbWlvX3JlZ19zdGF0ZSAKPj4g
KnJlZ19zdGF0ZSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4+ICsKPj4gwqAgc3RhdGljIHZvaWQgZ3Vj
X3BvbGljeV9pbml0KHN0cnVjdCBndWNfcG9saWN5ICpwb2xpY3kpCj4+IMKgIHsKPj4gwqDCoMKg
wqDCoCBwb2xpY3ktPmV4ZWN1dGlvbl9xdWFudHVtID0gUE9MSUNZX0RFRkFVTFRfRVhFQ1VUSU9O
X1FVQU5UVU1fVVM7Cj4+IEBAIC02NywxMiArNzIsMTkgQEAgc3RydWN0IF9fZ3VjX2Fkc19ibG9i
IHsKPj4gwqAgc3RhdGljIHZvaWQgX19ndWNfYWRzX2luaXQoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQo+PiDCoCB7Cj4+IC3CoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
Z3VjX3RvX2d0KGd1YyktPmk5MTU7Cj4+ICvCoMKgwqAgc3RydWN0IGludGVsX2d0ICpndCA9IGd1
Y190b19ndChndWMpOwo+PiArwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IGd0LT5pOTE1Owo+PiDCoMKgwqDCoMKgIHN0cnVjdCBfX2d1Y19hZHNfYmxvYiAqYmxvYiA9
IGd1Yy0+YWRzX2Jsb2I7Cj4+IMKgwqDCoMKgwqAgY29uc3QgdTMyIHNraXBwZWRfc2l6ZSA9IExS
Q19QUEhXU1BfU1ogKiBQQUdFX1NJWkUgKyAKPj4gTFJfSFdfQ09OVEVYVF9TSVpFOwo+PiArwqDC
oMKgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPj4gK8KgwqDCoCBlbnVtIGludGVs
X2VuZ2luZV9pZCBpZDsKPj4gwqDCoMKgwqDCoCB1MzIgYmFzZTsKPj4gwqDCoMKgwqDCoCB1OCBl
bmdpbmVfY2xhc3M7Cj4+ICvCoMKgwqAgLyogR3VDIG1taW8gc2F2ZS9yZXN0b3JlIGxpc3QgKi8K
Pj4gK8KgwqDCoCBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpCj4+ICvCoMKgwqDCoMKg
wqDCoCBndWNfbW1pb19yZWdfc3RhdGVfaW5pdCgmYmxvYi0+cmVnX3N0YXRlLCBlbmdpbmUpOwo+
PiArCj4+IMKgwqDCoMKgwqAgLyogR3VDIHNjaGVkdWxpbmcgcG9saWNpZXMgKi8KPj4gwqDCoMKg
wqDCoCBndWNfcG9saWNpZXNfaW5pdCgmYmxvYi0+cG9saWNpZXMpOwo+PiBAQCAtMTcwLDMgKzE4
Miw4NSBAQCB2b2lkIGludGVsX2d1Y19hZHNfcmVzZXQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiDCoMKgwqDCoMKgIF9fZ3VjX2Fkc19pbml0
KGd1Yyk7Cj4+IMKgIH0KPj4gKwo+PiArc3RhdGljIGludCBndWNfbW1pb19yZWdfY21wKGNvbnN0
IHZvaWQgKmEsIGNvbnN0IHZvaWQgKmIpCj4+ICt7Cj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IGd1
Y19tbWlvX3JlZyAqcmEgPSBhOwo+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBndWNfbW1pb19yZWcg
KnJiID0gYjsKPj4gKwo+PiArwqDCoMKgIHJldHVybiAoaW50KXJhLT5vZmZzZXQgLSAoaW50KXJi
LT5vZmZzZXQ7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGd1Y19tbWlvX3JlZ19hZGQoc3Ry
dWN0IGd1Y19tbWlvX3JlZ3NldCAqcmVnc2V0LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdTMyIG9mZnNldCwgdTMyIGZsYWdzKQo+PiArewo+PiArwqDCoMKgIHUzMiBjb3Vu
dCA9IHJlZ3NldC0+bnVtYmVyX29mX3JlZ2lzdGVyczsKPj4gK8KgwqDCoCBzdHJ1Y3QgZ3VjX21t
aW9fcmVnIHJlZyA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgIC5vZmZzZXQgPSBvZmZzZXQsCj4+ICvC
oMKgwqDCoMKgwqDCoCAuZmxhZ3MgPSBmbGFncywKPj4gK8KgwqDCoCB9Owo+PiArwqDCoMKgIHN0
cnVjdCBndWNfbW1pb19yZWcgKnNsb3Q7Cj4+ICsKPj4gK8KgwqDCoCBHRU1fQlVHX09OKGNvdW50
ID49IEdVQ19SRUdTRVRfTUFYX1JFR0lTVEVSUyk7Cj4+ICsKPj4gK8KgwqDCoCAvKgo+PiArwqDC
oMKgwqAgKiBUaGUgbW1pbyBsaXN0IGlzIGJ1aWx0IHVzaW5nIHNlcGFyYXRlIGxpc3RzIHdpdGhp
biB0aGUgZHJpdmVyLgo+PiArwqDCoMKgwqAgKiBJdCdzIHBvc3NpYmxlIHRoYXQgYXQgc29tZSBw
b2ludCB3ZSBtYXkgYXR0ZW1wdCB0byBhZGQgdGhlIHNhbWUKPj4gK8KgwqDCoMKgICogcmVnaXN0
ZXIgbW9yZSB0aGFuIG9uY2UuIERvIG5vdCBjb25zaWRlciB0aGlzIGFuIGVycm9yOyBzaWxlbnRs
eQo+PiArwqDCoMKgwqAgKiBtb3ZlIG9uIGlmIHRoZSByZWdpc3RlciBpcyBhbHJlYWR5IGluIHRo
ZSBsaXN0Lgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBpZiAoYnNlYXJjaCgmcmVnLCByZWdz
ZXQtPnJlZ2lzdGVycywgY291bnQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVvZihy
ZWcpLCBndWNfbW1pb19yZWdfY21wKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gKwo+
PiArwqDCoMKgIHNsb3QgPSAmcmVnc2V0LT5yZWdpc3RlcnNbY291bnRdOwo+PiArwqDCoMKgIHJl
Z3NldC0+bnVtYmVyX29mX3JlZ2lzdGVycysrOwo+PiArwqDCoMKgICpzbG90ID0gcmVnOwo+PiAr
Cj4+ICvCoMKgwqAgd2hpbGUgKHNsb3QtLSA+IHJlZ3NldC0+cmVnaXN0ZXJzKSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoCBHRU1fQlVHX09OKHNsb3RbMF0ub2Zmc2V0ID09IHNsb3RbMV0ub2Zmc2V0KTsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChzbG90WzFdLm9mZnNldCA+IHNsb3RbMF0ub2Zmc2V0KQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAg
c3dhcChzbG90WzFdLCBzbG90WzBdKTsKPj4gK8KgwqDCoCB9Cj4+ICt9Cj4+ICsKPj4gKyNkZWZp
bmUgR1VDX01NSU9fUkVHX0FERChyZWdzZXQsIHJlZywgbWFza2VkKSBcCj4+ICvCoMKgwqAgZ3Vj
X21taW9fcmVnX2FkZChyZWdzZXQsIFwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1
X21taW9fcmVnX29mZnNldCgocmVnKSksIFwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
bWFza2VkKSA/IEdVQ19SRUdTRVRfTUFTS0VEIDogMCkKPj4gKwo+PiArc3RhdGljIHZvaWQgZ3Vj
X21taW9fcmVnc2V0X2luaXQoc3RydWN0IGd1Y19tbWlvX3JlZ3NldCAqcmVnc2V0LAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+PiArewo+PiArwqDCoMKgIGNvbnN0IHUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7
Cj4+ICvCoMKgwqAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsID0gJmVuZ2luZS0+d2FfbGlzdDsK
Pj4gK8KgwqDCoCBzdHJ1Y3QgaTkxNV93YSAqd2E7Cj4+ICvCoMKgwqAgdW5zaWduZWQgaW50IGk7
Cj4+ICsKPj4gK8KgwqDCoCBHVUNfTU1JT19SRUdfQUREKHJlZ3NldCwgUklOR19NT0RFX0dFTjco
YmFzZSksIHRydWUpOwo+PiArwqDCoMKgIEdVQ19NTUlPX1JFR19BREQocmVnc2V0LCBSSU5HX0hX
U19QR0EoYmFzZSksIGZhbHNlKTsKPj4gK8KgwqDCoCBHVUNfTU1JT19SRUdfQUREKHJlZ3NldCwg
UklOR19JTVIoYmFzZSksIGZhbHNlKTsKPj4gKwo+PiArwqDCoMKgIGZvciAoaSA9IDAsIHdhID0g
d2FsLT5saXN0OyBpIDwgd2FsLT5jb3VudDsgaSsrLCB3YSsrKQo+PiArwqDCoMKgwqDCoMKgwqAg
R1VDX01NSU9fUkVHX0FERChyZWdzZXQsIHdhLT5yZWcsIHdhLT5tYXNrZWRfYml0cyk7Cj4+ICsK
Pj4gK8KgwqDCoCAvKiBCZSBleHRyYSBwYXJhbm9pZCBhbmQgaW5jbHVkZSBhbGwgd2hpdGVsaXN0
IHJlZ2lzdGVycy4gKi8KPj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgUklOR19NQVhfTk9OUFJJ
Vl9TTE9UUzsgaSsrKQo+PiArwqDCoMKgwqDCoMKgwqAgR1VDX01NSU9fUkVHX0FERChyZWdzZXQs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBSSU5HX0ZPUkNFX1RPX05PTlBS
SVYoYmFzZSwgaSksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmYWxzZSk7
Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGd1Y19tbWlvX3JlZ19zdGF0ZV9pbml0KHN0cnVj
dCBndWNfbW1pb19yZWdfc3RhdGUgCj4+ICpyZWdfc3RhdGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+
ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGd1Y19tbWlvX3JlZ3NldCAqcmVnc2V0Owo+PiArCj4+ICvC
oMKgwqAgR0VNX0JVR19PTihlbmdpbmUtPmNsYXNzID49IEdVQ19NQVhfRU5HSU5FX0NMQVNTRVMp
Owo+PiArwqDCoMKgIEdFTV9CVUdfT04oZW5naW5lLT5pbnN0YW5jZSA+PSBHVUNfTUFYX0lOU1RB
TkNFU19QRVJfQ0xBU1MpOwo+PiArwqDCoMKgIHJlZ3NldCA9ICZyZWdfc3RhdGUtPmVuZ2luZV9y
ZWdbZW5naW5lLT5jbGFzc11bZW5naW5lLT5pbnN0YW5jZV07Cj4+ICsKPj4gK8KgwqDCoCBndWNf
bW1pb19yZWdzZXRfaW5pdChyZWdzZXQsIGVuZ2luZSk7Cj4+ICt9Cj4+Cj4gCj4gU28gcHJlc3Vt
YWJseSB0aGUgcmVsZXZhbnQgR3VDIEZXIGludGVyZmFjZSBzdHJ1Y3R1cmVzIHdpbGwgcmVtYWlu
IHRoZSAKPiBzYW1lIGZyb20gdXBzdHJlYW0gdG8gbmV3IGludGVyZmFjZT8KClRoZSBzdHJ1Y3R1
cmVzIGFyZSB0aGUgc2FtZSBpbiB0aGUgbGF0ZXN0IEd1QyBkcm9wLiBJJ3ZlIGhlYXJkIHRoYXQg
CnRoZXJlIGlzIGEgZGlzY3Vzc2lvbiBvbmdvaW5nIGFib3V0IHBvdGVudGlhbGx5IG1ha2luZyB0
aGUgbGlzdCBzaXplIApkeW5hbWljIGF0IHNvbWUgcG9pbnQgKGluc3RlYWQgb2YgYWx3YXlzIHN0
YXRpY2FsbHkgYWxsb2NhdGluZyA2NCAKZW50cmllcyBmb3IgYWxsIHBvc3NpYmxlIGVuZ2luZXMp
LCBidXQgZXZlbiB3aXRoIHRoYXQgdGhlIGJ1bGsgb2YgdGhpcyAKcGF0Y2ggc2hvdWxkIHN0aWxs
IGJlIG9rLgoKQWNrZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+CgpJIGJlbGlldmUgd2UgbmVlZCBhIHNlbGZ0ZXN0IG9yIHNvbWUg
b3RoZXIgbG9naWMgaW4gdGhlIGRyaXZlciB0byBtYWtlIApzdXJlIHRoZSByZWdpc3RlciBsaXN0
IHN0YXlzIHVwIHRvIGRhdGUgd2l0aCB3aGF0IHdlIHByb2dyYW0gZHVyaW5nIAplbmdpbmUgaW5p
dCwgYnV0IHdlIGNhbiBhZGQgdGhhdCBhcyBhIGZvbGxvdyB1cC4KCkRhbmllbGUKCj4gCj4gQXNz
dW1pbmcgdGhhdCwgdGhlIGNvZGUgbG9va3MgZmluZSBzbzoKPiAKPiBSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAKPiBCdXQgaXQgaXMgZGVh
ZCBjb2RlIGZvciBub3csIHJpZ2h0PyBEZWFkIGluIHRoZSBzZW5zZSBHdUMgZW5naW5lIHJlc2V0
IAo+IHBhdGggZG9lcyBub3QgZ2V0IGV4ZXJjaXNlZCB1bnRpbCBtb3JlIG5ldyBwYXRjaGVzIGxh
bmQuCj4gCj4gUmVnYXJkcywKPiAKPiBUdnJ0a28KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
