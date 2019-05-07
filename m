Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D831A1621D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52886E215;
	Tue,  7 May 2019 10:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DBAC6E215
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:48:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:48:29 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:48:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503115225.30831-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d87b87ad-e40c-eb2b-f124-11dccb485dcf@linux.intel.com>
Date: Tue, 7 May 2019 11:48:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503115225.30831-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915: Prefer checking the wakeref
 itself rather than the counter
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

Ck9uIDAzLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgY291bnRlciBn
b2VzIHRvIHplcm8gYXQgdGhlIHN0YXJ0IG9mIHRoZSBwYXJraW5nIGN5Y2xlLCBidXQgdGhlCj4g
d2FrZXJlZiBpdHNlbGYgaXMgaGVsZCB1bnRpbCB0aGUgZW5kLiBMaWtld2lzZSwgdGhlIGNvdW50
ZXIgYmVjb21lcyBvbmUKPiBhdCB0aGUgZW5kIG9mIHRoZSB1bnBhcmtpbmcsIGJ1dCB0aGUgd2Fr
ZXJlZiBpcyB0YWtlbiBmaXJzdC4gSWYgd2UgY2hlY2sKPiB0aGUgd2FrZXJlZiBpbnN0ZWFkIG9m
IHRoZSBjb3VudGVyLCB3ZSBpbmNsdWRlIHRoZSB1bnBhcmsvdW5wYXJraW5nIHRpbWUKPiBhcyBp
bnRlbF93YWtlcmVmX2lzX2FjdGl2ZSgpLCBhbmQgZG8gbm90IHNwdXJpb3VzbHkgZGVjbGFyZSBp
bmFjdGl2ZSBpZgo+IHdlIGZhaWwgdG8gcGFyayAoaS5lLiB0aGUgcGFya2luZyBhbmQgd2FrZXJl
ZiBkcm9wIGlzIHBvc3Rwb25lZCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF93YWtlcmVmLmMgfCAyMCArKysrKysrKysrKysrKysrKy0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oIHwgIDIgKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTgg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
d2FrZXJlZi5jCj4gaW5kZXggMWY5NGJjNGZmOWU0Li45MTE5NmQ5NjEyYmIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jCj4gQEAgLTcsNiArNywxOSBAQAo+ICAgI2luY2x1
ZGUgImludGVsX2Rydi5oIgo+ICAgI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKPiAgIAo+ICtz
dGF0aWMgdm9pZCBycG1fZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YpCj4gK3sKPiArCXdmLT53YWtlcmVmID0gaW50ZWxfcnVudGltZV9w
bV9nZXQoaTkxNSk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHJwbV9wdXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKPiArewo+ICsJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWYgPSBmZXRjaF9hbmRfemVybygmd2YtPndha2VyZWYpOwo+ICsK
PiArCWludGVsX3J1bnRpbWVfcG1fcHV0KGk5MTUsIHdha2VyZWYpOwo+ICsJR0VNX0JVR19PTigh
d2FrZXJlZik7Cj4gK30KPiArCj4gICBpbnQgX19pbnRlbF93YWtlcmVmX2dldF9maXJzdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIAkJCSAgICAgIHN0cnVjdCBpbnRlbF93YWtl
cmVmICp3ZiwKPiAgIAkJCSAgICAgIGludCAoKmZuKShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
KQo+IEBAIC0yMSwxMSArMzQsMTEgQEAgaW50IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICAJaWYgKCFhdG9taWNfcmVhZCgmd2YtPmNv
dW50KSkgewo+ICAgCQlpbnQgZXJyOwo+ICAgCj4gLQkJd2YtPndha2VyZWYgPSBpbnRlbF9ydW50
aW1lX3BtX2dldChpOTE1KTsKPiArCQlycG1fZ2V0KGk5MTUsIHdmKTsKPiAgIAo+ICAgCQllcnIg
PSBmbih3Zik7Cj4gICAJCWlmICh1bmxpa2VseShlcnIpKSB7Cj4gLQkJCWludGVsX3J1bnRpbWVf
cG1fcHV0KGk5MTUsIHdmLT53YWtlcmVmKTsKPiArCQkJcnBtX3B1dChpOTE1LCB3Zik7Cj4gICAJ
CQltdXRleF91bmxvY2soJndmLT5tdXRleCk7Cj4gICAJCQlyZXR1cm4gZXJyOwo+ICAgCQl9Cj4g
QEAgLTQ2LDcgKzU5LDcgQEAgaW50IF9faW50ZWxfd2FrZXJlZl9wdXRfbGFzdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIAo+ICAgCWVyciA9IGZuKHdmKTsKPiAgIAlpZiAobGlr
ZWx5KCFlcnIpKQo+IC0JCWludGVsX3J1bnRpbWVfcG1fcHV0KGk5MTUsIHdmLT53YWtlcmVmKTsK
PiArCQlycG1fcHV0KGk5MTUsIHdmKTsKPiAgIAllbHNlCj4gICAJCWF0b21pY19pbmMoJndmLT5j
b3VudCk7Cj4gICAJbXV0ZXhfdW5sb2NrKCZ3Zi0+bXV0ZXgpOwo+IEBAIC01OCw0ICs3MSw1IEBA
IHZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVsX3dha2VyZWYgKndmLCBzdHJ1
Y3QgbG9ja19jbGFzc19rZXkgKmtleSkKPiAgIHsKPiAgIAlfX211dGV4X2luaXQoJndmLT5tdXRl
eCwgIndha2VyZWYiLCBrZXkpOwo+ICAgCWF0b21pY19zZXQoJndmLT5jb3VudCwgMCk7Cj4gKwl3
Zi0+d2FrZXJlZiA9IDA7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3dha2VyZWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaAo+
IGluZGV4IGE5NzlkNjM4MzQ0Yi4uZGI3NDIyOTEyMTFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3dha2VyZWYuaAo+IEBAIC0xMjcsNyArMTI3LDcgQEAgaW50ZWxfd2FrZXJlZl91bmxv
Y2soc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+ICAgc3RhdGljIGlubGluZSBib29sCj4gICBp
bnRlbF93YWtlcmVmX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCj4gICB7Cj4gLQly
ZXR1cm4gYXRvbWljX3JlYWQoJndmLT5jb3VudCk7Cj4gKwlyZXR1cm4gUkVBRF9PTkNFKHdmLT53
YWtlcmVmKTsKPiAgIH0KPiAgIAo+ICAgI2VuZGlmIC8qIElOVEVMX1dBS0VSRUZfSCAqLwo+IAoK
UmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpS
ZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
