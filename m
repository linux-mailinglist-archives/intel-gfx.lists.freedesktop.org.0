Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42294D913E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 14:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A058D6E967;
	Wed, 16 Oct 2019 12:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F3E6E967
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 12:43:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 05:43:52 -0700
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="186137245"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 05:43:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191016115311.12894-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <702d398f-3ec5-ab1b-46fe-b56b8d00e04d@linux.intel.com>
Date: Wed, 16 Oct 2019 13:43:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191016115311.12894-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Teach guc to take
 intel_gt as its argument
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

Ck9uIDE2LzEwLzIwMTkgMTI6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgZ3VjIHNlbGZ0
ZXN0cyBhcmUgaGFyZHdhcmVeVyBmaXJtYXJlIGNlbnRyaWMgYW5kIHNvIHdhbnQgdG8gdXNlIHRo
ZQoKVHlwbyBpbiBmaXJtd2FyZS4KCj4gZ3QgYXMgaXRzIHRhcmdldC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL3NlbGZ0ZXN0X2d1Yy5jIHwgNDIgKysrKysrKystLS0tLS0tLS0tLS0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3Vj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9zZWxmdGVzdF9ndWMuYwo+IGluZGV4IGY5
MjdmODUxYWFkZi4uZDhhODAzODhiZDMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL3NlbGZ0ZXN0X2d1Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvc2VsZnRlc3RfZ3VjLmMKPiBAQCAtMTA4LDIyICsxMDgsMTUgQEAgc3RhdGljIGJvb2wgY2xp
ZW50X2Rvb3JiZWxsX2luX3N5bmMoc3RydWN0IGludGVsX2d1Y19jbGllbnQgKmNsaWVudCkKPiAg
ICAqIHZhbGlkYXRpbmcgdGhhdCB0aGUgZG9vcmJlbGxzIHN0YXR1cyBleHBlY3RlZCBieSB0aGUg
ZHJpdmVyIG1hdGNoZXMgd2hhdCB0aGUKPiAgICAqIEd1Qy9IVyBoYXZlLgo+ICAgICovCj4gLXN0
YXRpYyBpbnQgaWd0X2d1Y19jbGllbnRzKHZvaWQgKmFyZ3MpCj4gK3N0YXRpYyBpbnQgaWd0X2d1
Y19jbGllbnRzKHZvaWQgKmFyZykKPiAgIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IGFyZ3M7Cj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOwo+ICsJc3RydWN0
IGludGVsX2d1YyAqZ3VjID0gJmd0LT51Yy5ndWM7Cj4gICAJaW50ZWxfd2FrZXJlZl90IHdha2Vy
ZWY7Cj4gLQlzdHJ1Y3QgaW50ZWxfZ3VjICpndWM7Cj4gICAJaW50IGVyciA9IDA7Cj4gICAKPiAt
CUdFTV9CVUdfT04oIUhBU19HVF9VQyhkZXZfcHJpdikpOwo+IC0Jd2FrZXJlZiA9IGludGVsX3J1
bnRpbWVfcG1fZ2V0KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Cj4gLQo+IC0JZ3VjID0gJmRldl9w
cml2LT5ndC51Yy5ndWM7Cj4gLQlpZiAoIWd1Yykgewo+IC0JCXByX2VycigiTm8gZ3VjIG9iamVj
dCFcbiIpOwo+IC0JCWVyciA9IC1FSU5WQUw7Cj4gLQkJZ290byB1bmxvY2s7Cj4gLQl9CgpNdXN0
IGJlIHNvbWUgcmVmYWN0b3IgY2F1Z2h0IHNvbWVvbmUgb2YgZ3VhcmQuIDopCgo+ICsJR0VNX0JV
R19PTighSEFTX0dUX1VDKGd0LT5pOTE1KSk7Cj4gKwl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9w
bV9nZXQoZ3QtPnVuY29yZS0+cnBtKTsKPiAgIAo+ICAgCWVyciA9IGNoZWNrX2FsbF9kb29yYmVs
bHMoZ3VjKTsKPiAgIAlpZiAoZXJyKQo+IEBAIC0xODgsNyArMTgxLDcgQEAgc3RhdGljIGludCBp
Z3RfZ3VjX2NsaWVudHModm9pZCAqYXJncykKPiAgIAlndWNfY2xpZW50c19jcmVhdGUoZ3VjKTsK
PiAgIAlndWNfY2xpZW50c19lbmFibGUoZ3VjKTsKPiAgIHVubG9jazoKPiAtCWludGVsX3J1bnRp
bWVfcG1fcHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZik7Cj4gKwlpbnRlbF9ydW50
aW1lX3BtX3B1dChndC0+dW5jb3JlLT5ycG0sIHdha2VyZWYpOwo+ICAgCXJldHVybiBlcnI7Cj4g
ICB9Cj4gICAKPiBAQCAtMTk5LDIxICsxOTIsMTQgQEAgc3RhdGljIGludCBpZ3RfZ3VjX2NsaWVu
dHModm9pZCAqYXJncykKPiAgICAqLwo+ICAgc3RhdGljIGludCBpZ3RfZ3VjX2Rvb3JiZWxscyh2
b2lkICphcmcpCj4gICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBh
cmc7Cj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOwo+ICsJc3RydWN0IGludGVsX2d1YyAq
Z3VjID0gJmd0LT51Yy5ndWM7Cj4gICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gLQlzdHJ1
Y3QgaW50ZWxfZ3VjICpndWM7Cj4gICAJaW50IGksIGVyciA9IDA7Cj4gICAJdTE2IGRiX2lkOwo+
ICAgCj4gLQlHRU1fQlVHX09OKCFIQVNfR1RfVUMoZGV2X3ByaXYpKTsKPiAtCXdha2VyZWYgPSBp
bnRlbF9ydW50aW1lX3BtX2dldCgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwo+IC0KPiAtCWd1YyA9
ICZkZXZfcHJpdi0+Z3QudWMuZ3VjOwo+IC0JaWYgKCFndWMpIHsKPiAtCQlwcl9lcnIoIk5vIGd1
YyBvYmplY3QhXG4iKTsKPiAtCQllcnIgPSAtRUlOVkFMOwo+IC0JCWdvdG8gdW5sb2NrOwo+IC0J
fQo+ICsJR0VNX0JVR19PTighSEFTX0dUX1VDKGd0LT5pOTE1KSk7Cj4gKwl3YWtlcmVmID0gaW50
ZWxfcnVudGltZV9wbV9nZXQoZ3QtPnVuY29yZS0+cnBtKTsKPiAgIAo+ICAgCWVyciA9IGNoZWNr
X2FsbF9kb29yYmVsbHMoZ3VjKTsKPiAgIAlpZiAoZXJyKQo+IEBAIC0yOTUsMTkgKzI4MSwxOSBA
QCBzdGF0aWMgaW50IGlndF9ndWNfZG9vcmJlbGxzKHZvaWQgKmFyZykKPiAgIAkJCWd1Y19jbGll
bnRfZnJlZShjbGllbnRzW2ldKTsKPiAgIAkJfQo+ICAgdW5sb2NrOgo+IC0JaW50ZWxfcnVudGlt
ZV9wbV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiArCWludGVsX3J1bnRp
bWVfcG1fcHV0KGd0LT51bmNvcmUtPnJwbSwgd2FrZXJlZik7Cj4gICAJcmV0dXJuIGVycjsKPiAg
IH0KPiAgIAo+IC1pbnQgaW50ZWxfZ3VjX2xpdmVfc2VsZnRlc3Qoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+ICtpbnQgaW50ZWxfZ3VjX2xpdmVfc2VsZnRlc3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICB7Cj4gICAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1
X3N1YnRlc3QgdGVzdHNbXSA9IHsKPiAgIAkJU1VCVEVTVChpZ3RfZ3VjX2NsaWVudHMpLAo+ICAg
CQlTVUJURVNUKGlndF9ndWNfZG9vcmJlbGxzKSwKPiAgIAl9Owo+ICAgCj4gLQlpZiAoIVVTRVNf
R1VDX1NVQk1JU1NJT04oZGV2X3ByaXYpKQo+ICsJaWYgKCFVU0VTX0dVQ19TVUJNSVNTSU9OKGk5
MTUpKQo+ICAgCQlyZXR1cm4gMDsKPiAgIAo+IC0JcmV0dXJuIGk5MTVfc3VidGVzdHModGVzdHMs
IGRldl9wcml2KTsKPiArCXJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCAmaTkx
NS0+Z3QpOwo+ICAgfQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
