Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7FEF00CC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 16:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81EC6EAA7;
	Tue,  5 Nov 2019 15:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E2F6EAA5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 15:08:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 07:08:33 -0800
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="205526349"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 07:08:28 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 05 Nov 2019 16:08:15 +0100
Message-ID: <5486761.8KMq25HaxG@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20191105142755.GI10326@phenom.ffwll.local>
References: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
 <20191105142755.GI10326@phenom.ffwll.local>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RESEND PATCH 1/3] drm/i915/dmabuf: Implement
 pwrite() callback
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLAoKT24gVHVlc2RheSwgTm92ZW1iZXIgNSwgMjAxOSAzOjI3OjU1IFBNIENFVCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFRodSwgT2N0IDMxLCAyMDE5IGF0IDA5OjI5OjU2QU0g
KzAxMDAsIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPiA+IFdlIG5lZWQgZG1hYnVmIHNwZWNp
ZmljIHB3cml0ZSgpIGNhbGxiYWNrIHV0aWxpemluZyBkbWEtYnVmIEFQSSwKPiA+IG90aGVyd2lz
ZSBHRU1fUFdSSVRFIElPQ1RMIHdpbGwgbm8gbG9uZ2VyIHdvcmsgd2l0aCBkbWEtYnVmIGJhY2tl
ZAo+ID4gKGkuZS4sIFBSSU1FIGltcG9ydGVkKSBvYmplY3RzIG9uIGhhcmR3YXJlIHdpdGggbm8g
bWFwcGFibGUgYXBlcnR1cmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0
b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4gQ2M6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IAo+IERvIHdl
IGhhdmUgdXNlcnNwYWNlIGZvciB0aGlzIChhc2lkZSBmcm9tIGlndHMpPyBTcGVjaWZpY2FsbHkg
Zm9yIHRoZQo+IGdlbjEyICsgZG1hLWJ1ZiBpbXBvcnQgKyBwd3JpdGUvcmVhZC93aGF0ZXZlciBj
YXNlIHlvdSdyZSBmaXhpbmcgaW4gdGhpcwo+IHNlcmllcyBoZXJlLgoKSSBkb24ndCBrbm93IHRo
ZSBhbnN3ZXIsIHNvcnJ5LCBJIGNhbiBvbmx5IHRlbGwgdGhhdCBwcmltZV92Z2VtIElHVCB0ZXN0
IHVzZXMgCmdlbV9yZWFkKCkvZ2VtX3dyaXRlKCksIHdoaWNoIGNhbGwgSTkxNV9HRU1fUFJFQUQv
STkxNV9HRU1fUFdSSVRFIERSTSBJT0NUTHMgCnJlc3BlY3RpdmVseSwgb24gUFJJTUUgaW1wb3J0
ZWQgdmdlbSBvYmplY3RzLgoKVGhhbmtzLApKYW51c3oKCgo+IC1EYW5pZWwKPiAKPiA+IC0tLQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8IDU1ICsrKysr
KysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCj4gPiBp
bmRleCA5NmNlOTVjOGFjNWEuLjkzZWVhMTAzMWM4MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCj4gPiBAQCAtMjQ4LDkgKzI0OCw2NCBAQCBz
dGF0aWMgdm9pZCBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2RtYWJ1ZihzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gIAkJCQkgRE1BX0JJRElSRUNUSU9OQUwpOwo+ID4gIH0K
PiA+ICAKPiA+ICtzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9wd3JpdGVfZG1hYnVmKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gPiArCQkJCQkgY29uc3Qgc3RydWN0IGRybV9p
OTE1X2dlbV9wd3JpdGUgKmFyZ3MpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
ID0gb2JqLT5iYXNlLmltcG9ydF9hdHRhY2gtPmRtYWJ1ZjsKPiA+ICsJdm9pZCBfX3VzZXIgKnVz
ZXJfZGF0YSA9IHU2NF90b191c2VyX3B0cihhcmdzLT5kYXRhX3B0cik7Cj4gPiArCXN0cnVjdCBm
aWxlICpmaWxlID0gZG1hYnVmLT5maWxlOwo+ID4gKwljb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRp
b25zICpmb3AgPSBmaWxlLT5mX29wOwo+ID4gKwl2b2lkIF9fZm9yY2UgKnZhZGRyOwo+ID4gKwlp
bnQgcmV0Owo+ID4gKwo+ID4gKwlpZiAoZm9wLT53cml0ZSkgewo+ID4gKwkJbG9mZl90IG9mZnNl
dCA9IGFyZ3MtPm9mZnNldDsKPiA+ICsKPiA+ICsJCS8qCj4gPiArCQkgKiBmb3AtPndyaXRlKCkg
aXMgc3VwcG9zZWQgdG8gY2FsbCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKQo+ID4gKwkJICog
aWYgT19TWU5DIGZsYWcgaXMgc2V0LCBhdm9pZCBjYWxsaW5nIGl0IHR3aWNlCj4gPiArCQkgKi8K
PiA+ICsJCWlmICghKGZpbGUtPmZfZmxhZ3MgJiBPX1NZTkMpKSB7Cj4gPiArCQkJcmV0ID0gZG1h
X2J1Zl9iZWdpbl9jcHVfYWNjZXNzKGRtYWJ1ZiwgRE1BX1RPX0RFVklDRSk7Cj4gPiArCQkJaWYg
KHJldCkKPiA+ICsJCQkJcmV0dXJuIHJldDsKPiA+ICsJCX0KPiA+ICsKPiA+ICsJCXJldCA9IGZv
cC0+d3JpdGUoZmlsZSwgdXNlcl9kYXRhLCBhcmdzLT5zaXplLCAmb2Zmc2V0KTsKPiA+ICsKPiA+
ICsJCWlmICghKGZpbGUtPmZfZmxhZ3MgJiBPX1NZTkMpKQo+ID4gKwkJCWRtYV9idWZfZW5kX2Nw
dV9hY2Nlc3MoZG1hYnVmLCBETUFfVE9fREVWSUNFKTsKPiA+ICsKPiA+ICsJCWlmICghcmV0KQo+
ID4gKwkJCXJldHVybiAwOwo+ID4gKwl9Cj4gPiArCj4gPiArCS8qIGRtYS1idWYgZmlsZSAud3Jp
dGUoKSBub3Qgc3VwcG9ydGVkIG9yIGZhaWxlZCwgdHJ5IGRtYV9idWZfdm1hcCgpICovCj4gPiAr
CXJldCA9IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhkbWFidWYsIERNQV9UT19ERVZJQ0UpOwo+
ID4gKwlpZiAocmV0KQo+ID4gKwkJcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsJdmFkZHIgPSBkbWFf
YnVmX3ZtYXAoZG1hYnVmKTsKPiA+ICsJaWYgKCF2YWRkcikKPiA+ICsJCWdvdG8gb3V0X2VycjsK
PiA+ICsKPiA+ICsJcmV0ID0gY29weV9mcm9tX3VzZXIodmFkZHIgKyBhcmdzLT5vZmZzZXQsIHVz
ZXJfZGF0YSwgYXJncy0+c2l6ZSk7Cj4gPiArCWRtYV9idWZfdnVubWFwKGRtYWJ1ZiwgdmFkZHIp
Owo+ID4gKwlpZiAoIXJldCkKPiA+ICsJCWdvdG8gb3V0X2VuZDsKPiA+ICsKPiA+ICtvdXRfZXJy
Ogo+ID4gKwkvKiBmYWxsIGJhY2sgdG8gR1RUIG1hcHBpbmcgKi8KPiA+ICsJcmV0ID0gLUVOT0RF
VjsKPiA+ICtvdXRfZW5kOgo+ID4gKwlkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKGRtYWJ1ZiwgRE1B
X1RPX0RFVklDRSk7Cj4gPiArCXJldHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fb2JqZWN0X2RtYWJ1
Zl9vcHMgPSB7Cj4gPiAgCS5nZXRfcGFnZXMgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2Rt
YWJ1ZiwKPiA+ICAJLnB1dF9wYWdlcyA9IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfZG1hYnVm
LAo+ID4gKwkucHdyaXRlID0gaTkxNV9nZW1fb2JqZWN0X3B3cml0ZV9kbWFidWYsCj4gPiAgfTsK
PiA+ICAKPiA+ICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmk5MTVfZ2VtX3ByaW1lX2ltcG9ydChz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+IAo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
