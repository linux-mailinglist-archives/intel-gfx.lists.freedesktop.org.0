Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA2110C64B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 11:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9A089B22;
	Thu, 28 Nov 2019 10:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D5B89B22
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 10:00:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 02:00:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203388404"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 Nov 2019 02:00:20 -0800
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191128021005.3350-1-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea4abee6-f1cc-ec30-d3b2-c590760d4aac@linux.intel.com>
Date: Thu, 28 Nov 2019 10:00:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128021005.3350-1-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/tgl: Implement Wa_1604555607
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

Ck9uIDI4LzExLzIwMTkgMDI6MTAsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBGcm9tOiBNaWNoZWwg
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
b20gZW5naW5lLiBbVHZydGtvXQo+IHY2Ogo+ICAgIEFkZGVkIHdhX2FkZCBhcyBhIHdyYXBwZXIg
Zm9yIF9fd2FfYWRkIFtDaHJpc10KPiAgICB3YV9hZGQgaXMgZGlyZWN0bHkgY2FsbGVkIGluc3Rl
YWQgb2YgbmV3IHdyYXBwZXIgW3R2cnRrb10KPiAKPiBCU3BlYzogMTkzNjMKPiBIU0RFUzogMTYw
NDU1NTYwNwo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1saW5nYW0uY0BpbnRl
bC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+IFt2NV0KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAyOSArKysrKysrKysrKysrKysrKystLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAgNCArKysKPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCAzOTlh
Y2FlMmYzM2YuLjcyMjk3M2UwOTE4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xNDYsMjAgKzE0NiwyNiBAQCBzdGF0aWMgdm9pZCBf
d2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgY29uc3Qgc3RydWN0IGk5MTVfd2EgKndh
KQo+ICAgCX0KPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZAo+IC13YV93cml0ZV9tYXNrZWRfb3Io
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4gLQkJ
ICAgdTMyIHZhbCkKPiArc3RhdGljIHZvaWQgd2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCwgaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLAo+ICsJCSAgIHUzMiB2YWwsIHUzMiByZWFkX21h
c2spCj4gICB7Cj4gICAJc3RydWN0IGk5MTVfd2Egd2EgPSB7Cj4gICAJCS5yZWcgID0gcmVnLAo+
ICAgCQkubWFzayA9IG1hc2ssCj4gICAJCS52YWwgID0gdmFsLAo+IC0JCS5yZWFkID0gbWFzaywK
PiArCQkucmVhZCA9IHJlYWRfbWFzaywKPiAgIAl9Owo+ICAgCj4gICAJX3dhX2FkZCh3YWwsICZ3
YSk7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArd2Ffd3JpdGVfbWFza2VkX29yKHN0cnVj
dCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLAo+ICsJCSAgIHUz
MiB2YWwpCj4gK3sKPiArCXdhX2FkZCh3YWwsIHJlZywgbWFzaywgdmFsLCBtYXNrKTsKPiArfQo+
ICsKPiAgIHN0YXRpYyB2b2lkCj4gICB3YV9tYXNrZWRfZW4oc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPiAgIHsKPiBAQCAtNTY4LDkgKzU3NCwyNCBA
QCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAo+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAkJCQkgICAgIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkKPiAgIHsKPiArCXUzMiB2YWw7Cj4gKwo+ICAgCS8qIFdhXzE0MDkxNDIyNTk6
dGdsICovCj4gICAJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4z
LAo+ICAgCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsKPiArCj4gKwkv
KiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+ICsJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoZW5naW5l
LT51bmNvcmUsIEZGX01PREUyKTsKPiArCXZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7
Cj4gKwl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPiArCS8qCj4gKwkgKiBGSVhNRTog
RkZfTU9ERTIgcmVnaXN0ZXIgaXMgbm90IHJlYWRhYmxlIHRpbGwgVEdMIEIwLiBXZSBjYW4KPiAr
CSAqIGVuYWJsZSB2ZXJpZmljYXRpb24gb2YgV0EgZnJvbSB0aGUgbGF0ZXIgc3RlcHBpbmdzLCB3
aGljaCBlbmFibGVzCj4gKwkgKiB0aGUgcmVhZCBvZiBGRl9NT0RFMi4KPiArCSAqLwo+ICsJd2Ff
YWRkKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwsCj4gKwkgICAg
ICAgSVNfVEdMX1JFVklEKGVuZ2luZS0+aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTAp
ID8gMCA6Cj4gKwkJCSAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyk7Cj4gICB9Cj4gICAKPiAg
IHN0YXRpYyB2b2lkCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggOTRkMGY1OTNlZWI3
Li5hOTlmZGY4ZWE1M2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNzkyMiw2
ICs3OTIyLDEwIEBAIGVudW0gewo+ICAgI2RlZmluZSAgIFBJWEVMX1JPVU5ESU5HX1RSVU5DX0ZC
X1BBU1NUSFJVIAkoMSA8PCAxNSkKPiAgICNkZWZpbmUgICBQRVJfUElYRUxfQUxQSEFfQllQQVNT
X0VOCQkoMSA8PCA3KQo+ICAgCj4gKyNkZWZpbmUgRkZfTU9ERTIJCQlfTU1JTygweDY2MDQpCj4g
KyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSwlSRUdfR0VOTUFTSygyMywgMTYpCj4g
KyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfMTI4CVJFR19GSUVMRF9QUkVQKEZGX01PREUy
X1REU19USU1FUl9NQVNLLCA0KQo+ICsKPiAgIC8qIFBDSCAqLwo+ICAgCj4gICAjZGVmaW5lIFBD
SF9ESVNQTEFZX0JBU0UJMHhjMDAwMHUKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
