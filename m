Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD166061C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 14:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064D06E49A;
	Fri,  5 Jul 2019 12:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E781C6E49A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 12:42:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 05:42:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,455,1557212400"; d="scan'208";a="169667614"
Received: from ngabryex-mobl1.ger.corp.intel.com (HELO [10.249.141.77])
 ([10.249.141.77])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2019 05:42:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190705123057.19346-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0ff02900-acdb-12a2-84d4-8df69e2e08cf@intel.com>
Date: Fri, 5 Jul 2019 15:42:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190705123057.19346-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/oa: Reconfigure contexts on the fly
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

V293IG5pY2UuIEkgZGlkbid0IGhhdmUgdGhlIGNvdXJhZ2UgdG8gYWN0dWFsbHkgd3JpdGUgaXQs
IGtub3dpbmcgaG93IAplYXN5IGl0IGNvdWxkIGJlIHRvIHNjcmV3IGFuIG9mZnNldCBhbmQgd3Jp
dGUgYXQgcmFuZG9tIGluIEdHVFQuLi4KCkkgb25seSBoYXZlIG9uZSBjb25jZXJuIGJlbG93LgoK
VGhhbmtzIGEgbG90LAoKLUxpb25lbAoKT24gMDUvMDcvMjAxOSAxNTozMCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+IEF2b2lkIGEgZ2xvYmFsIGlkbGUgYmFycmllciBieSByZWNvbmZpZ3VyaW5nIGVh
Y2ggY29udGV4dCBieSByZXdyaXRpbmcKPiB0aGVtIHdpdGggTUlfU1RPUkVfRFdPUkQgZnJvbSB0
aGUga2VybmVsIGNvbnRleHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYyB8ICAgMiArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAg
ICAgICAgIHwgICA3ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAg
ICAgICAgIHwgMjU1ICsrKysrKysrKysrKysrKy0tLS0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDIw
MCBpbnNlcnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4IGUzNjdkY2UyYTY5Ni4uMWYwZDEwYmI4
OGMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
Cj4gQEAgLTYyNCw3ICs2MjQsOSBAQCBpOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9rZXJuZWwoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBwcmlvKQo+ICAgCWN0eC0+c2NoZWQucHJp
b3JpdHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7Cj4gICAJY3R4LT5yaW5nX3NpemUgPSBQ
QUdFX1NJWkU7Cj4gICAKPiArCS8qIElzb2xhdGUgdGhlIGtlcm5lbCBjb250ZXh0IGZyb20gcHJ5
aW5nIGV5ZXMgYW5kIHN0aWNreSBmaW5nZXJzICovCj4gICAJR0VNX0JVR19PTighaTkxNV9nZW1f
Y29udGV4dF9pc19rZXJuZWwoY3R4KSk7Cj4gKwlsaXN0X2RlbF9pbml0KCZjdHgtPmxpbmspOwo+
ICAgCj4gICAJcmV0dXJuIGN0eDsKPiAgIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Ywo+IGluZGV4IGUxYWUxMzk5YzcyYi4uOWNjNTM3NDQwMWUxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMTU1Miw5ICsxNTUyLDEyIEBAIF9fZXhlY2xpc3RzX3Vw
ZGF0ZV9yZWdfc3RhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAgCXJlZ3NbQ1RYX1JJ
TkdfVEFJTCArIDFdID0gcmluZy0+dGFpbDsKPiAgIAo+ICAgCS8qIFJQQ1MgKi8KPiAtCWlmIChl
bmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUykKPiArCWlmIChlbmdpbmUtPmNsYXNzID09IFJF
TkRFUl9DTEFTUykgewo+ICAgCQlyZWdzW0NUWF9SX1BXUl9DTEtfU1RBVEUgKyAxXSA9Cj4gICAJ
CQlpbnRlbF9zc2V1X21ha2VfcnBjcyhlbmdpbmUtPmk5MTUsICZjZS0+c3NldSk7Cj4gKwo+ICsJ
CWk5MTVfb2FfaW5pdF9yZWdfc3RhdGUoZW5naW5lLCBjZSwgcmVncyk7Cj4gKwl9Cj4gICB9Cj4g
ICAKPiAgIHN0YXRpYyBpbnQKPiBAQCAtMjk2Niw4ICsyOTY5LDYgQEAgc3RhdGljIHZvaWQgZXhl
Y2xpc3RzX2luaXRfcmVnX3N0YXRlKHUzMiAqcmVncywKPiAgIAlpZiAocmNzKSB7Cj4gICAJCXJl
Z3NbQ1RYX0xSSV9IRUFERVJfMl0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKPiAgIAkJQ1RY
X1JFRyhyZWdzLCBDVFhfUl9QV1JfQ0xLX1NUQVRFLCBHRU44X1JfUFdSX0NMS19TVEFURSwgMCk7
Cj4gLQo+IC0JCWk5MTVfb2FfaW5pdF9yZWdfc3RhdGUoZW5naW5lLCBjZSwgcmVncyk7Cj4gICAJ
fQo+ICAgCj4gICAJcmVnc1tDVFhfRU5EXSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKPiBpbmRleCAzNTdlNjNiZWIzNzMuLmEyYTA3NTJmZmE1NyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gQEAgLTE2MzAsNiArMTYzMCwyNyBAQCBzdGF0
aWMgdm9pZCBoc3dfZGlzYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgIAkJCQkgICAgICB+R1RfTk9BX0VOQUJMRSkpOwo+ICAgfQo+ICAgCj4gK3N0
YXRpYyB1MzIgb2FfY29uZmlnX2ZsZXhfcmVnKGNvbnN0IHN0cnVjdCBpOTE1X29hX2NvbmZpZyAq
b2FfY29uZmlnLAo+ICsJCQkgICAgICBpOTE1X3JlZ190IHJlZykKPiArewo+ICsJdTMyIG1taW8g
PSBpOTE1X21taW9fcmVnX29mZnNldChyZWcpOwo+ICsJaW50IGk7Cj4gKwo+ICsJLyoKPiArCSAq
IFRoaXMgYXJiaXRyYXJ5IGRlZmF1bHQgd2lsbCBzZWxlY3QgdGhlICdFVSBGUFUwIFBpcGVsaW5l
Cj4gKwkgKiBBY3RpdmUnIGV2ZW50LiBJbiB0aGUgZnV0dXJlIGl0J3MgYW50aWNpcGF0ZWQgdGhh
dCB0aGVyZQo+ICsJICogd2lsbCBiZSBhbiBleHBsaWNpdCAnTm8gRXZlbnQnIHdlIGNhbiBzZWxl
Y3QsIGJ1dCBub3QgeWV0Li4uCj4gKwkgKi8KPiArCWlmICghb2FfY29uZmlnKQo+ICsJCXJldHVy
biAwOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBvYV9jb25maWctPmZsZXhfcmVnc19sZW47IGkr
Kykgewo+ICsJCWlmIChpOTE1X21taW9fcmVnX29mZnNldChvYV9jb25maWctPmZsZXhfcmVnc1tp
XS5hZGRyKSA9PSBtbWlvKQo+ICsJCQlyZXR1cm4gb2FfY29uZmlnLT5mbGV4X3JlZ3NbaV0udmFs
dWU7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAgIC8qCj4gICAgKiBOQjogSXQgbXVz
dCBhbHdheXMgcmVtYWluIHBvaW50ZXIgc2FmZSB0byBydW4gdGhpcyBldmVuIGlmIHRoZSBPQSB1
bml0Cj4gICAgKiBoYXMgYmVlbiBkaXNhYmxlZC4KPiBAQCAtMTY2MywyOCArMTY4NCw4IEBAIGdl
bjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4g
ICAJCUdFTjhfT0FfQ09VTlRFUl9SRVNVTUUpOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IEFS
UkFZX1NJWkUoZmxleF9yZWdzKTsgaSsrKSB7Cj4gLQkJdTMyIHN0YXRlX29mZnNldCA9IGN0eF9m
bGV4ZXUwICsgaSAqIDI7Cj4gLQkJdTMyIG1taW8gPSBpOTE1X21taW9fcmVnX29mZnNldChmbGV4
X3JlZ3NbaV0pOwo+IC0KPiAtCQkvKgo+IC0JCSAqIFRoaXMgYXJiaXRyYXJ5IGRlZmF1bHQgd2ls
bCBzZWxlY3QgdGhlICdFVSBGUFUwIFBpcGVsaW5lCj4gLQkJICogQWN0aXZlJyBldmVudC4gSW4g
dGhlIGZ1dHVyZSBpdCdzIGFudGljaXBhdGVkIHRoYXQgdGhlcmUKPiAtCQkgKiB3aWxsIGJlIGFu
IGV4cGxpY2l0ICdObyBFdmVudCcgd2UgY2FuIHNlbGVjdCwgYnV0IG5vdCB5ZXQuLi4KPiAtCQkg
Ki8KPiAtCQl1MzIgdmFsdWUgPSAwOwo+IC0KPiAtCQlpZiAob2FfY29uZmlnKSB7Cj4gLQkJCXUz
MiBqOwo+IC0KPiAtCQkJZm9yIChqID0gMDsgaiA8IG9hX2NvbmZpZy0+ZmxleF9yZWdzX2xlbjsg
aisrKSB7Cj4gLQkJCQlpZiAoaTkxNV9tbWlvX3JlZ19vZmZzZXQob2FfY29uZmlnLT5mbGV4X3Jl
Z3Nbal0uYWRkcikgPT0gbW1pbykgewo+IC0JCQkJCXZhbHVlID0gb2FfY29uZmlnLT5mbGV4X3Jl
Z3Nbal0udmFsdWU7Cj4gLQkJCQkJYnJlYWs7Cj4gLQkJCQl9Cj4gLQkJCX0KPiAtCQl9Cj4gLQo+
IC0JCUNUWF9SRUcocmVnX3N0YXRlLCBzdGF0ZV9vZmZzZXQsIGZsZXhfcmVnc1tpXSwgdmFsdWUp
Owo+ICsJCUNUWF9SRUcocmVnX3N0YXRlLCBjdHhfZmxleGV1MCArIGkgKiAyLCBmbGV4X3JlZ3Nb
aV0sCj4gKwkJCW9hX2NvbmZpZ19mbGV4X3JlZyhvYV9jb25maWcsIGZsZXhfcmVnc1tpXSkpOwo+
ICAgCX0KPiAgIAo+ICAgCUNUWF9SRUcocmVnX3N0YXRlLAo+IEBAIC0xNjkyLDYgKzE2OTMsMTUw
IEBAIGdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsCj4gICAJCWludGVsX3NzZXVfbWFrZV9ycGNzKGk5MTUsICZjZS0+c3NldSkpOwo+ICAgfQo+
ICAgCj4gK3N0cnVjdCBmbGV4IHsKPiArCWk5MTVfcmVnX3QgcmVnOwo+ICsJdTMyIG9mZnNldDsK
PiArCXUzMiB2YWx1ZTsKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQKPiArZ2VuOF9zdG9yZV9mbGV4
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICsJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwK
PiArCQljb25zdCBzdHJ1Y3QgZmxleCAqZmxleCwgdW5zaWduZWQgaW50IGNvdW50KQo+ICt7Cj4g
Kwl1MzIgb2Zmc2V0Owo+ICsJdTMyICpjczsKPiArCj4gKwljcyA9IGludGVsX3JpbmdfYmVnaW4o
cnEsIDQgKiBjb3VudCk7Cj4gKwlpZiAoSVNfRVJSKGNzKSkKPiArCQlyZXR1cm4gUFRSX0VSUihj
cyk7CgoKSXMgdGhlIHJpZ2h0IG9mIHRoZSBrZXJuZWwgY29udGV4dCBsYXJnZSBlbm91Z2ggdG8g
aG9sZCB0aGUgTUlfU0RJcyBmb3IgCmFsbCB0aGUgY29udGV4dHM/CgoKPiArCj4gKwlvZmZzZXQg
PSBpOTE1X2dndHRfb2Zmc2V0KGNlLT5zdGF0ZSkgKyBMUkNfU1RBVEVfUE4gKiBQQUdFX1NJWkU7
Cj4gKwlkbyB7Cj4gKwkJKmNzKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VONCB8IE1JX1VTRV9H
R1RUOwo+ICsJCSpjcysrID0gb2Zmc2V0ICsgKGZsZXgtPm9mZnNldCArIDEpICogc2l6ZW9mKHUz
Mik7Cj4gKwkJKmNzKysgPSAwOwo+ICsJCSpjcysrID0gZmxleC0+dmFsdWU7Cj4gKwl9IHdoaWxl
IChmbGV4KyssIC0tY291bnQpOwo+ICsKPiArCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+
ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50Cj4gK2dlbjhfbG9hZF9mbGV4
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICsJICAgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwKPiArCSAgICAgICBjb25zdCBzdHJ1Y3QgZmxleCAqZmxleCwgdW5zaWduZWQgaW50IGNv
dW50KQo+ICt7Cj4gKwl1MzIgKmNzOwo+ICsKPiArCUdFTV9CVUdfT04oIWNvdW50IHx8IGNvdW50
ID4gNjMpOwo+ICsKPiArCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgMiAqIGNvdW50ICsgMik7
Cj4gKwlpZiAoSVNfRVJSKGNzKSkKPiArCQlyZXR1cm4gUFRSX0VSUihjcyk7Cj4gKwo+ICsJKmNz
KysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShjb3VudCk7Cj4gKwlkbyB7Cj4gKwkJKmNzKysgPSBp
OTE1X21taW9fcmVnX29mZnNldChmbGV4LT5yZWcpOwo+ICsJCSpjcysrID0gZmxleC0+dmFsdWU7
Cj4gKwl9IHdoaWxlIChmbGV4KyssIC0tY291bnQpOwo+ICsJKmNzKysgPSBNSV9OT09QOwo+ICsK
PiArCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgaW50Cj4gK2dlbjhfZW1pdF9vYV9jb25maWcoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCj4gKwkJICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiArCQkgICAgY29uc3Qg
c3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcsCj4gKwkJICAgIGJvb2wgc2VsZikKPiAr
ewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBycS0+aTkxNTsKPiArCS8qIFRo
ZSBNTUlPIG9mZnNldHMgZm9yIEZsZXggRVUgcmVnaXN0ZXJzIGFyZW4ndCBjb250aWd1b3VzICov
Cj4gKwljb25zdCB1MzIgY3R4X2ZsZXhldTAgPSBpOTE1LT5wZXJmLm9hLmN0eF9mbGV4ZXUwX29m
ZnNldDsKPiArI2RlZmluZSBjdHhfZmxleGV1TihOKSAoY3R4X2ZsZXhldTAgKyAyICogKE4pKQo+
ICsJc3RydWN0IGZsZXggcmVnc1tdID0gewo+ICsJCXsKPiArCQkJR0VOOF9SX1BXUl9DTEtfU1RB
VEUsCj4gKwkJCUNUWF9SX1BXUl9DTEtfU1RBVEUsCj4gKwkJCWludGVsX3NzZXVfbWFrZV9ycGNz
KGk5MTUsICZjZS0+c3NldSkKPiArCQl9LAo+ICsJCXsKPiArCQkJR0VOOF9PQUNUWENPTlRST0ws
Cj4gKwkJCWk5MTUtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZzZXQsCj4gKwkJCSgoaTkxNS0+
cGVyZi5vYS5wZXJpb2RfZXhwb25lbnQgPDwgR0VOOF9PQV9USU1FUl9QRVJJT0RfU0hJRlQpIHwK
PiArCQkJIChpOTE1LT5wZXJmLm9hLnBlcmlvZGljID8gR0VOOF9PQV9USU1FUl9FTkFCTEUgOiAw
KSB8Cj4gKwkJCSBHRU44X09BX0NPVU5URVJfUkVTVU1FKQo+ICsJCX0sCj4gKwkJeyBFVV9QRVJG
X0NOVEwwLCBjdHhfZmxleGV1TigwKSB9LAo+ICsJCXsgRVVfUEVSRl9DTlRMMSwgY3R4X2ZsZXhl
dU4oMSkgfSwKPiArCQl7IEVVX1BFUkZfQ05UTDIsIGN0eF9mbGV4ZXVOKDIpIH0sCj4gKwkJeyBF
VV9QRVJGX0NOVEwzLCBjdHhfZmxleGV1TigzKSB9LAo+ICsJCXsgRVVfUEVSRl9DTlRMNCwgY3R4
X2ZsZXhldU4oNCkgfSwKPiArCQl7IEVVX1BFUkZfQ05UTDUsIGN0eF9mbGV4ZXVOKDUpIH0sCj4g
KwkJeyBFVV9QRVJGX0NOVEw2LCBjdHhfZmxleGV1Tig2KSB9LAo+ICsJfTsKPiArI3VuZGVmIGN0
eF9mbGV4ZXVOCj4gKwlpbnQgaTsKPiArCj4gKwlmb3IgKGkgPSAyOyBpIDwgQVJSQVlfU0laRShy
ZWdzKTsgaSsrKQo+ICsJCXJlZ3NbaV0udmFsdWUgPSBvYV9jb25maWdfZmxleF9yZWcob2FfY29u
ZmlnLCByZWdzW2ldLnJlZyk7CgoKSSBndWVzcyB0aGlzIG1hcHBpbmcgY291bGQgYmUgZG9uZSBv
bmx5IG9uY2UgaW4gCmdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cygpLgoKCj4gKwo+ICsJaWYg
KHNlbGYpCj4gKwkJcmV0dXJuIGdlbjhfbG9hZF9mbGV4KHJxLCBjZSwgcmVncywgQVJSQVlfU0la
RShyZWdzKSk7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIGdlbjhfc3RvcmVfZmxleChycSwgY2UsIHJl
Z3MsIEFSUkFZX1NJWkUocmVncykpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdlbjhfbW9kaWZ5
X2NvbnRleHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJCQkgICAgICAgY29uc3Qgc3Ry
dWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCj4gK3sKPiArCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxOwo+ICsJaW50IGVycjsKPiArCj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjZS0+cGlu
X211dGV4KTsKPiArCj4gKwlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UtPmVuZ2luZS0+a2Vy
bmVsX2NvbnRleHQpOwo+ICsJaWYgKElTX0VSUihycSkpCj4gKwkJcmV0dXJuIFBUUl9FUlIocnEp
Owo+ICsKPiArCS8qIFNlcmlhbGlzZSB3aXRoIHRoZSByZW1vdGUgY29udGV4dCAqLwo+ICsJZXJy
ID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmNlLT5yaW5nLT50aW1lbGluZS0+bGFzdF9yZXF1
ZXN0LCBycSk7Cj4gKwlpZiAoZXJyKQo+ICsJCWdvdG8gb3V0X2FkZDsKPiArCj4gKwkvKiBLZWVw
IHRoZSByZW1vdGUgY29udGV4dCBhbGl2ZSB1bnRpbCBhZnRlciB3ZSBmaW5pc2ggZWRpdGluZyAq
Lwo+ICsJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZjZS0+YWN0aXZlLCBycS0+ZmVuY2UuY29udGV4
dCwgcnEpOwo+ICsJaWYgKGVycikKPiArCQlnb3RvIG91dF9hZGQ7Cj4gKwo+ICsJZXJyID0gZ2Vu
OF9lbWl0X29hX2NvbmZpZyhycSwgY2UsIG9hX2NvbmZpZywgZmFsc2UpOwo+ICsKPiArb3V0X2Fk
ZDoKPiArCWk5MTVfcmVxdWVzdF9hZGQocnEpOwo+ICsJcmV0dXJuIGVycjsKPiArfQo+ICsKPiAr
c3RhdGljIGludCBnZW44X21vZGlmeV9zZWxmKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAr
CQkJICAgIGNvbnN0IHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQo+ICt7Cj4gKwlz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiArCWludCBlcnI7Cj4gKwo+ICsJcnEgPSBpOTE1X3Jl
cXVlc3RfY3JlYXRlKGNlKTsKPiArCWlmIChJU19FUlIocnEpKQo+ICsJCXJldHVybiBQVFJfRVJS
KHJxKTsKPiArCj4gKwllcnIgPSBnZW44X2VtaXRfb2FfY29uZmlnKHJxLCBjZSwgb2FfY29uZmln
LCB0cnVlKTsKPiArCj4gKwlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKPiArCXJldHVybiBlcnI7Cj4g
K30KPiArCj4gICAvKgo+ICAgICogTWFuYWdlcyB1cGRhdGluZyB0aGUgcGVyLWNvbnRleHQgYXNw
ZWN0cyBvZiB0aGUgT0Egc3RyZWFtCj4gICAgKiBjb25maWd1cmF0aW9uIGFjcm9zcyBhbGwgY29u
dGV4dHMuCj4gQEAgLTE3MTYsMTUgKzE4NjEsMTUgQEAgZ2VuOF91cGRhdGVfcmVnX3N0YXRlX3Vu
bG9ja2VkKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAgICAqCj4gICAgKiBOb3RlOiBpdCdz
IG9ubHkgdGhlIFJDUy9SZW5kZXIgY29udGV4dCB0aGF0IGhhcyBhbnkgT0Egc3RhdGUuCj4gICAg
Ki8KPiAtc3RhdGljIGludCBnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICtzdGF0aWMgaW50IGdlbjhfY29uZmlndXJlX2FsbF9j
b250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIAkJCQkgICAgICAgY29u
c3Qgc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCj4gICB7Cj4gLQl1bnNpZ25lZCBp
bnQgbWFwX3R5cGUgPSBpOTE1X2NvaGVyZW50X21hcF90eXBlKGRldl9wcml2KTsKPiAgIAlzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4Owo+IC0Jc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4g
LQlpbnQgcmV0Owo+ICsJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+ICsJZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7Cj4gKwlpbnQgZXJyOwo+ICAgCj4gLQlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxk
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAo+ICAgCS8qCj4gICAJICogVGhlIE9BIHJl
Z2lzdGVyIGNvbmZpZyBpcyBzZXR1cCB0aHJvdWdoIHRoZSBjb250ZXh0IGltYWdlLiBUaGlzIGlt
YWdlCj4gQEAgLTE3MzUsNTkgKzE4ODAsNDcgQEAgc3RhdGljIGludCBnZW44X2NvbmZpZ3VyZV9h
bGxfY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAgCSAqIFdl
IGNvdWxkIGVtaXQgdGhlIE9BIHJlZ2lzdGVyIGNvbmZpZyB0aHJvdWdoIHRoZSBiYXRjaCBidWZm
ZXIgYnV0Cj4gICAJICogdGhpcyBtaWdodCBsZWF2ZSBzbWFsbCBpbnRlcnZhbCBvZiB0aW1lIHdo
ZXJlIHRoZSBPQSB1bml0IGlzCj4gICAJICogY29uZmlndXJlZCBhdCBhbiBpbnZhbGlkIHNhbXBs
aW5nIHBlcmlvZC4KPiAtCSAqCj4gLQkgKiBTbyBmYXIgdGhlIGJlc3Qgd2F5IHRvIHdvcmsgYXJv
dW5kIHRoaXMgaXNzdWUgc2VlbXMgdG8gYmUgZHJhaW5pbmcKPiAtCSAqIHRoZSBHUFUgZnJvbSBh
bnkgc3VibWl0dGVkIHdvcmsuCj4gICAJICovCj4gLQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9p
ZGxlKGRldl9wcml2LAo+IC0JCQkJICAgICBJOTE1X1dBSVRfTE9DS0VELAo+IC0JCQkJICAgICBN
QVhfU0NIRURVTEVfVElNRU9VVCk7Cj4gLQlpZiAocmV0KQo+IC0JCXJldHVybiByZXQ7Cj4gLQo+
IC0JLyogVXBkYXRlIGFsbCBjb250ZXh0cyBub3cgdGhhdCB3ZSd2ZSBzdGFsbGVkIHRoZSBzdWJt
aXNzaW9uLiAqLwo+IC0JbGlzdF9mb3JfZWFjaF9lbnRyeShjdHgsICZkZXZfcHJpdi0+Y29udGV4
dHMubGlzdCwgbGluaykgewo+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeShjdHgsICZpOTE1LT5jb250
ZXh0cy5saXN0LCBsaW5rKSB7Cj4gICAJCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7
Cj4gICAJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKPiAgIAo+ICAgCQlmb3JfZWFjaF9nZW1f
ZW5naW5lKGNlLAo+ICAgCQkJCSAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgp
LAo+ICAgCQkJCSAgICBpdCkgewo+IC0JCQl1MzIgKnJlZ3M7Cj4gLQo+ICAgCQkJaWYgKGNlLT5l
bmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFTUykKPiAgIAkJCQljb250aW51ZTsKPiAgIAo+IC0J
CQkvKiBPQSBzZXR0aW5ncyB3aWxsIGJlIHNldCB1cG9uIGZpcnN0IHVzZSAqLwo+IC0JCQlpZiAo
IWNlLT5zdGF0ZSkKPiAtCQkJCWNvbnRpbnVlOwo+IC0KPiAtCQkJcmVncyA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwKGNlLT5zdGF0ZS0+b2JqLAo+IC0JCQkJCQkgICAgICAgbWFwX3R5cGUpOwo+
IC0JCQlpZiAoSVNfRVJSKHJlZ3MpKSB7Cj4gLQkJCQlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19l
bmdpbmVzKGN0eCk7Cj4gLQkJCQlyZXR1cm4gUFRSX0VSUihyZWdzKTsKPiAtCQkJfQo+IC0KPiAt
CQkJY2UtPnN0YXRlLT5vYmotPm1tLmRpcnR5ID0gdHJ1ZTsKPiAtCQkJcmVncyArPSBMUkNfU1RB
VEVfUE4gKiBQQUdFX1NJWkUgLyBzaXplb2YoKnJlZ3MpOwo+ICsJCQllcnIgPSBpbnRlbF9jb250
ZXh0X2xvY2tfcGlubmVkKGNlKTsKPiArCQkJaWYgKGVycikKPiArCQkJCWJyZWFrOwo+ICAgCj4g
LQkJCWdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChjZSwgcmVncywgb2FfY29uZmlnKTsK
PiArCQkJLyogT3RoZXJ3aXNlIE9BIHNldHRpbmdzIHdpbGwgYmUgc2V0IHVwb24gZmlyc3QgdXNl
ICovCj4gKwkJCWlmIChpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpCj4gKwkJCQllcnIgPSBn
ZW44X21vZGlmeV9jb250ZXh0KGNlLCBvYV9jb25maWcpOwo+ICAgCj4gLQkJCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAoY2UtPnN0YXRlLT5vYmopOwo+ICsJCQlpbnRlbF9jb250ZXh0X3VubG9j
a19waW5uZWQoY2UpOwo+ICsJCQlpZiAoZXJyKQo+ICsJCQkJYnJlYWs7Cj4gICAJCX0KPiAgIAkJ
aTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOwo+ICsJCWlmIChlcnIpCj4gKwkJ
CXJldHVybiBlcnI7Cj4gICAJfQo+ICAgCj4gICAJLyoKPiAtCSAqIEFwcGx5IHRoZSBjb25maWd1
cmF0aW9uIGJ5IGRvaW5nIG9uZSBjb250ZXh0IHJlc3RvcmUgb2YgdGhlIGVkaXRlZAo+IC0JICog
Y29udGV4dCBpbWFnZS4KPiArCSAqIEFmdGVyIHVwZGF0aW5nIGFsbCBvdGhlciBjb250ZXh0cywg
d2UgbmVlZCB0byBtb2RpZnkgb3Vyc2VsdmVzLgo+ICsJICogSWYgd2UgZG9uJ3QgbW9kaWZ5IHRo
ZSBrZXJuZWxfY29udGV4dCwgd2UgZG8gbm90IGdldCBldmVudHMgd2hpbGUKPiArCSAqIGlkbGUu
Cj4gICAJICovCj4gLQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZGV2X3ByaXYtPmVuZ2luZVtS
Q1MwXS0+a2VybmVsX2NvbnRleHQpOwo+IC0JaWYgKElTX0VSUihycSkpCj4gLQkJcmV0dXJuIFBU
Ul9FUlIocnEpOwo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiArCQlp
ZiAoZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCj4gKwkJCWNvbnRpbnVlOwo+ICAgCj4g
LQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKPiArCQllcnIgPSBnZW44X21vZGlmeV9zZWxmKGVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQsIG9hX2NvbmZpZyk7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0dXJu
IGVycjsKPiArCX0KPiAgIAo+ICAgCXJldHVybiAwOwo+ICAgfQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
