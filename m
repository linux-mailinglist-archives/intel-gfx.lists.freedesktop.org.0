Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ABAF9548
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7174989E50;
	Tue, 12 Nov 2019 16:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B04B89E50
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:14:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:14:32 -0800
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="198126068"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:14:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <3e72da0b412354ed8be6719df55b0e0cc4caa61a.1573227240.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1573227240.git.jani.nikula@intel.com>
 <3e72da0b412354ed8be6719df55b0e0cc4caa61a.1573227240.git.jani.nikula@intel.com>
Date: Tue, 12 Nov 2019 18:14:26 +0200
Message-ID: <87v9rp2hst.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/bios: store child devices in a
 list
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAwOCBOb3YgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gVXNpbmcgdGhlIGFycmF5IGlzIGdldHRpbmcgY2x1bXN5LiBNYWtlIHRoaW5ncyBh
IGJpdCBtb3JlIGR5bmFtaWMuCj4KPiBSZW1vdmUgZWFybHkgcmV0dXJucyBvbiBub3QgaGF2aW5n
IGNoaWxkIGRldmljZXMgd2hlbiB0aGUgZW5kIHJlc3VsdAo+IGFmdGVyICJpdGVyYXRpbmciIHRo
ZSBlbXB0eSBsaXN0IHdvdWxkIGJlIHRoZSBzYW1lLgo+Cj4gdjM6Cj4gLSB1c2UgbGlzdF9hZGRf
dGFpbCB0byBub3QgcmV2ZXJzZSB0aGUgY2hpbGQgZGV2aWNlIGxpc3QgKFZpbGxlKQo+Cj4gdjI6
Cj4gLSBzdGljayB0byBwcmV2aW91cyBuYW1pbmcgb2YgY2hpbGQgZGV2aWNlcyAoVmlsbGUpCj4g
LSB1c2Uga3phbGxvYywgaGFuZGxlIGZhaWx1cmUKPiAtIGluaXRpYWxpemUgbGlzdCBoZWFkIGVh
cmxpZXIgdG8ga2VlcCBpbnRlbF9iaW9zX2RyaXZlcl9yZW1vdmUoKSBzYWZlCj4KPiBDYzogVmls
bGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KClB1c2hlZCB0aGlz
IG9uZSwgdGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKQlIsCkphbmkuCgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDEyMyArKysrKysrKysrLS0tLS0t
LS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgIHwgICAz
ICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgNjggZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IGluZGV4IGMx
OWIyMzRiZWJlNi4uN2MwY2E3MzNiZWY4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMKPiBAQCAtNTgsNiArNTgsMTIgQEAKPiAgICogdGhhdC4KPiAgICov
Cj4gIAo+ICsvKiBXcmFwcGVyIGZvciBWQlQgY2hpbGQgZGV2aWNlIGNvbmZpZyAqLwo+ICtzdHJ1
Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSB7Cj4gKwlzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyBj
aGlsZDsKPiArCXN0cnVjdCBsaXN0X2hlYWQgbm9kZTsKPiArfTsKPiArCj4gICNkZWZpbmUJU0xB
VkVfQUREUjEJMHg3MAo+ICAjZGVmaW5lCVNMQVZFX0FERFIyCTB4NzIKPiAgCj4gQEAgLTQ0OSw4
ICs0NTUsOSBAQCBzdGF0aWMgdm9pZAo+ICBwYXJzZV9zZHZvX2RldmljZV9tYXBwaW5nKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggYmRiX3ZlcnNpb24pCj4gIHsKPiAgCXN0
cnVjdCBzZHZvX2RldmljZV9tYXBwaW5nICptYXBwaW5nOwo+ICsJY29uc3Qgc3RydWN0IGRpc3Bs
YXlfZGV2aWNlX2RhdGEgKmRldmRhdGE7Cj4gIAljb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2Nv
bmZpZyAqY2hpbGQ7Cj4gLQlpbnQgaSwgY291bnQgPSAwOwo+ICsJaW50IGNvdW50ID0gMDsKPiAg
Cj4gIAkvKgo+ICAJICogT25seSBwYXJzZSBTRFZPIG1hcHBpbmdzIG9uIGdlbnMgdGhhdCBjb3Vs
ZCBoYXZlIFNEVk8uIFRoaXMgaXNuJ3QKPiBAQCAtNDYxLDggKzQ2OCw4IEBAIHBhcnNlX3Nkdm9f
ZGV2aWNlX21hcHBpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBiZGJf
dmVyc2lvbikKPiAgCQlyZXR1cm47Cj4gIAl9Cj4gIAo+IC0JZm9yIChpID0gMCwgY291bnQgPSAw
OyBpIDwgZGV2X3ByaXYtPnZidC5jaGlsZF9kZXZfbnVtOyBpKyspIHsKPiAtCQljaGlsZCA9IGRl
dl9wcml2LT52YnQuY2hpbGRfZGV2ICsgaTsKPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0
YSwgJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzLCBub2RlKSB7Cj4gKwkJY2hpbGQgPSAm
ZGV2ZGF0YS0+Y2hpbGQ7Cj4gIAo+ICAJCWlmIChjaGlsZC0+c2xhdmVfYWRkciAhPSBTTEFWRV9B
RERSMSAmJgo+ICAJCSAgICBjaGlsZC0+c2xhdmVfYWRkciAhPSBTTEFWRV9BRERSMikgewo+IEBA
IC0xNTcyLDggKzE1NzksNyBAQCBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAo+ICBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9y
dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBiZGJfdmVyc2lvbikKPiAg
ewo+IC0JY29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxkOwo+IC0JaW50IGk7
Cj4gKwljb25zdCBzdHJ1Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YTsKPiAgCj4gIAlp
ZiAoIUhBU19EREkoZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiAgCQly
ZXR1cm47Cj4gQEAgLTE1ODEsMTEgKzE1ODcsOCBAQCBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9y
dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBiZGJfdmVyc2lvbikKPiAg
CWlmIChiZGJfdmVyc2lvbiA8IDE1NSkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JZm9yIChpID0gMDsg
aSA8IGRldl9wcml2LT52YnQuY2hpbGRfZGV2X251bTsgaSsrKSB7Cj4gLQkJY2hpbGQgPSBkZXZf
cHJpdi0+dmJ0LmNoaWxkX2RldiArIGk7Cj4gLQo+IC0JCXBhcnNlX2RkaV9wb3J0KGRldl9wcml2
LCBjaGlsZCwgYmRiX3ZlcnNpb24pOwo+IC0JfQo+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeShkZXZk
YXRhLCAmZGV2X3ByaXYtPnZidC5kaXNwbGF5X2RldmljZXMsIG5vZGUpCj4gKwkJcGFyc2VfZGRp
X3BvcnQoZGV2X3ByaXYsICZkZXZkYXRhLT5jaGlsZCwgYmRiX3ZlcnNpb24pOwo+ICB9Cj4gIAo+
ICBzdGF0aWMgdm9pZAo+IEBAIC0xNTkzLDggKzE1OTYsOSBAQCBwYXJzZV9nZW5lcmFsX2RlZmlu
aXRpb25zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJICBjb25zdCBz
dHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQo+ICB7Cj4gIAljb25zdCBzdHJ1Y3QgYmRiX2dlbmVyYWxf
ZGVmaW5pdGlvbnMgKmRlZnM7Cj4gKwlzdHJ1Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0
YTsKPiAgCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZDsKPiAtCWludCBp
LCBjaGlsZF9kZXZpY2VfbnVtLCBjb3VudDsKPiArCWludCBpLCBjaGlsZF9kZXZpY2VfbnVtOwo+
ICAJdTggZXhwZWN0ZWRfc2l6ZTsKPiAgCXUxNiBibG9ja19zaXplOwo+ICAJaW50IGJ1c19waW47
Cj4gQEAgLTE2NTAsMjYgKzE2NTQsNyBAQCBwYXJzZV9nZW5lcmFsX2RlZmluaXRpb25zKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCj4gIAkvKiBnZXQgdGhlIG51bWJlciBv
ZiBjaGlsZCBkZXZpY2UgKi8KPiAgCWNoaWxkX2RldmljZV9udW0gPSAoYmxvY2tfc2l6ZSAtIHNp
emVvZigqZGVmcykpIC8gZGVmcy0+Y2hpbGRfZGV2X3NpemU7Cj4gLQljb3VudCA9IDA7Cj4gLQkv
KiBnZXQgdGhlIG51bWJlciBvZiBjaGlsZCBkZXZpY2UgdGhhdCBpcyBwcmVzZW50ICovCj4gLQlm
b3IgKGkgPSAwOyBpIDwgY2hpbGRfZGV2aWNlX251bTsgaSsrKSB7Cj4gLQkJY2hpbGQgPSBjaGls
ZF9kZXZpY2VfcHRyKGRlZnMsIGkpOwo+IC0JCWlmICghY2hpbGQtPmRldmljZV90eXBlKQo+IC0J
CQljb250aW51ZTsKPiAtCQljb3VudCsrOwo+IC0JfQo+IC0JaWYgKCFjb3VudCkgewo+IC0JCURS
TV9ERUJVR19LTVMoIm5vIGNoaWxkIGRldiBpcyBwYXJzZWQgZnJvbSBWQlRcbiIpOwo+IC0JCXJl
dHVybjsKPiAtCX0KPiAtCWRldl9wcml2LT52YnQuY2hpbGRfZGV2ID0ga2NhbGxvYyhjb3VudCwg
c2l6ZW9mKCpjaGlsZCksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFkZXZfcHJpdi0+dmJ0LmNoaWxk
X2Rldikgewo+IC0JCURSTV9ERUJVR19LTVMoIk5vIG1lbW9yeSBzcGFjZSBmb3IgY2hpbGQgZGV2
aWNlXG4iKTsKPiAtCQlyZXR1cm47Cj4gLQl9Cj4gIAo+IC0JZGV2X3ByaXYtPnZidC5jaGlsZF9k
ZXZfbnVtID0gY291bnQ7Cj4gLQljb3VudCA9IDA7Cj4gIAlmb3IgKGkgPSAwOyBpIDwgY2hpbGRf
ZGV2aWNlX251bTsgaSsrKSB7Cj4gIAkJY2hpbGQgPSBjaGlsZF9kZXZpY2VfcHRyKGRlZnMsIGkp
Owo+ICAJCWlmICghY2hpbGQtPmRldmljZV90eXBlKQo+IEBAIC0xNjc4LDE1ICsxNjYzLDIzIEBA
IHBhcnNlX2dlbmVyYWxfZGVmaW5pdGlvbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIFZCVCBjaGlsZCBkZXZpY2Ugd2l0aCB0eXBl
IDB4JXhcbiIsCj4gIAkJCSAgICAgIGNoaWxkLT5kZXZpY2VfdHlwZSk7Cj4gIAo+ICsJCWRldmRh
dGEgPSBremFsbG9jKHNpemVvZigqZGV2ZGF0YSksIEdGUF9LRVJORUwpOwo+ICsJCWlmICghZGV2
ZGF0YSkKPiArCQkJYnJlYWs7Cj4gKwo+ICAJCS8qCj4gIAkJICogQ29weSBhcyBtdWNoIGFzIHdl
IGtub3cgKHNpemVvZikgYW5kIGlzIGF2YWlsYWJsZQo+IC0JCSAqIChjaGlsZF9kZXZfc2l6ZSkg
b2YgdGhlIGNoaWxkIGRldmljZS4gQWNjZXNzaW5nIHRoZSBkYXRhIG11c3QKPiAtCQkgKiBkZXBl
bmQgb24gVkJUIHZlcnNpb24uCj4gKwkJICogKGNoaWxkX2Rldl9zaXplKSBvZiB0aGUgY2hpbGQg
ZGV2aWNlIGNvbmZpZy4gQWNjZXNzaW5nIHRoZQo+ICsJCSAqIGRhdGEgbXVzdCBkZXBlbmQgb24g
VkJUIHZlcnNpb24uCj4gIAkJICovCj4gLQkJbWVtY3B5KGRldl9wcml2LT52YnQuY2hpbGRfZGV2
ICsgY291bnQsIGNoaWxkLAo+ICsJCW1lbWNweSgmZGV2ZGF0YS0+Y2hpbGQsIGNoaWxkLAo+ICAJ
CSAgICAgICBtaW5fdChzaXplX3QsIGRlZnMtPmNoaWxkX2Rldl9zaXplLCBzaXplb2YoKmNoaWxk
KSkpOwo+IC0JCWNvdW50Kys7Cj4gKwo+ICsJCWxpc3RfYWRkX3RhaWwoJmRldmRhdGEtPm5vZGUs
ICZkZXZfcHJpdi0+dmJ0LmRpc3BsYXlfZGV2aWNlcyk7Cj4gIAl9Cj4gKwo+ICsJaWYgKGxpc3Rf
ZW1wdHkoJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzKSkKPiArCQlEUk1fREVCVUdfS01T
KCJubyBjaGlsZCBkZXYgaXMgcGFyc2VkIGZyb20gVkJUXG4iKTsKPiAgfQo+ICAKPiAgLyogQ29t
bW9uIGRlZmF1bHRzIHdoaWNoIG1heSBiZSBvdmVycmlkZGVuIGJ5IFZCVC4gKi8KPiBAQCAtMTgz
Niw2ICsxODI5LDggQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQo+ICAJY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYjsKPiAgCXU4IF9f
aW9tZW0gKmJpb3MgPSBOVUxMOwo+ICAKPiArCUlOSVRfTElTVF9IRUFEKCZkZXZfcHJpdi0+dmJ0
LmRpc3BsYXlfZGV2aWNlcyk7Cj4gKwo+ICAJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikgfHwg
IUlOVEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJT
a2lwcGluZyBWQlQgaW5pdCBkdWUgdG8gZGlzYWJsZWQgZGlzcGxheS5cbiIpOwo+ICAJCXJldHVy
bjsKPiBAQCAtMTg5NSw5ICsxODkwLDEzIEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgICovCj4gIHZvaWQgaW50ZWxfYmlvc19kcml2
ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+IC0Ja2Zy
ZWUoZGV2X3ByaXYtPnZidC5jaGlsZF9kZXYpOwo+IC0JZGV2X3ByaXYtPnZidC5jaGlsZF9kZXYg
PSBOVUxMOwo+IC0JZGV2X3ByaXYtPnZidC5jaGlsZF9kZXZfbnVtID0gMDsKPiArCXN0cnVjdCBk
aXNwbGF5X2RldmljZV9kYXRhICpkZXZkYXRhLCAqbjsKPiArCj4gKwlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X3NhZmUoZGV2ZGF0YSwgbiwgJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzLCBub2Rl
KSB7Cj4gKwkJbGlzdF9kZWwoJmRldmRhdGEtPm5vZGUpOwo+ICsJCWtmcmVlKGRldmRhdGEpOwo+
ICsJfQo+ICsKPiAgCWtmcmVlKGRldl9wcml2LT52YnQuc2R2b19sdmRzX3ZidF9tb2RlKTsKPiAg
CWRldl9wcml2LT52YnQuc2R2b19sdmRzX3ZidF9tb2RlID0gTlVMTDsKPiAgCWtmcmVlKGRldl9w
cml2LT52YnQubGZwX2x2ZHNfdmJ0X21vZGUpOwo+IEBAIC0xOTIxLDE3ICsxOTIwLDE4IEBAIHZv
aWQgaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgICovCj4gIGJvb2wgaW50ZWxfYmlvc19pc190dl9wcmVzZW50KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+ICsJY29uc3Qgc3RydWN0IGRpc3BsYXlfZGV2
aWNlX2RhdGEgKmRldmRhdGE7Cj4gIAljb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAq
Y2hpbGQ7Cj4gLQlpbnQgaTsKPiAgCj4gIAlpZiAoIWRldl9wcml2LT52YnQuaW50X3R2X3N1cHBv
cnQpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAtCWlmICghZGV2X3ByaXYtPnZidC5jaGlsZF9k
ZXZfbnVtKQo+ICsJaWYgKGxpc3RfZW1wdHkoJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2Vz
KSkKPiAgCQlyZXR1cm4gdHJ1ZTsKPiAgCj4gLQlmb3IgKGkgPSAwOyBpIDwgZGV2X3ByaXYtPnZi
dC5jaGlsZF9kZXZfbnVtOyBpKyspIHsKPiAtCQljaGlsZCA9IGRldl9wcml2LT52YnQuY2hpbGRf
ZGV2ICsgaTsKPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0YSwgJmRldl9wcml2LT52YnQu
ZGlzcGxheV9kZXZpY2VzLCBub2RlKSB7Cj4gKwkJY2hpbGQgPSAmZGV2ZGF0YS0+Y2hpbGQ7Cj4g
Kwo+ICAJCS8qCj4gIAkJICogSWYgdGhlIGRldmljZSB0eXBlIGlzIG5vdCBUViwgY29udGludWUu
Cj4gIAkJICovCj4gQEAgLTE5NjMsMTQgKzE5NjMsMTQgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX3R2
X3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgKi8KPiAgYm9v
bCBpbnRlbF9iaW9zX2lzX2x2ZHNfcHJlc2VudChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHU4ICppMmNfcGluKQo+ICB7Cj4gKwljb25zdCBzdHJ1Y3QgZGlzcGxheV9kZXZpY2Vf
ZGF0YSAqZGV2ZGF0YTsKPiAgCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGls
ZDsKPiAtCWludCBpOwo+ICAKPiAtCWlmICghZGV2X3ByaXYtPnZidC5jaGlsZF9kZXZfbnVtKQo+
ICsJaWYgKGxpc3RfZW1wdHkoJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzKSkKPiAgCQly
ZXR1cm4gdHJ1ZTsKPiAgCj4gLQlmb3IgKGkgPSAwOyBpIDwgZGV2X3ByaXYtPnZidC5jaGlsZF9k
ZXZfbnVtOyBpKyspIHsKPiAtCQljaGlsZCA9IGRldl9wcml2LT52YnQuY2hpbGRfZGV2ICsgaTsK
PiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0YSwgJmRldl9wcml2LT52YnQuZGlzcGxheV9k
ZXZpY2VzLCBub2RlKSB7Cj4gKwkJY2hpbGQgPSAmZGV2ZGF0YS0+Y2hpbGQ7Cj4gIAo+ICAJCS8q
IElmIHRoZSBkZXZpY2UgdHlwZSBpcyBub3QgTEZQLCBjb250aW51ZS4KPiAgCQkgKiBXZSBoYXZl
IHRvIGNoZWNrIGJvdGggdGhlIG5ldyBpZGVudGlmaWVycyBhcyB3ZWxsIGFzIHRoZQo+IEBAIC0y
MDEyLDYgKzIwMTIsNyBAQCBib29sIGludGVsX2Jpb3NfaXNfbHZkc19wcmVzZW50KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggKmkyY19waW4pCj4gICAqLwo+ICBib29sIGlu
dGVsX2Jpb3NfaXNfcG9ydF9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwb3J0IHBvcnQpCj4gIHsKPiArCWNvbnN0IHN0cnVjdCBkaXNwbGF5X2RldmljZV9k
YXRhICpkZXZkYXRhOwo+ICAJY29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxk
Owo+ICAJc3RhdGljIGNvbnN0IHN0cnVjdCB7Cj4gIAkJdTE2IGRwLCBoZG1pOwo+IEBAIC0yMDIy
LDcgKzIwMjMsNiBAQCBib29sIGludGVsX2Jpb3NfaXNfcG9ydF9wcmVzZW50KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcgo+ICAJCVtQT1JUX0VdID0geyBE
Vk9fUE9SVF9EUEUsIERWT19QT1JUX0hETUlFLCB9LAo+ICAJCVtQT1JUX0ZdID0geyBEVk9fUE9S
VF9EUEYsIERWT19QT1JUX0hETUlGLCB9LAo+ICAJfTsKPiAtCWludCBpOwo+ICAKPiAgCWlmIChI
QVNfRERJKGRldl9wcml2KSkgewo+ICAJCWNvbnN0IHN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAq
cG9ydF9pbmZvID0KPiBAQCAtMjAzNywxMSArMjAzNyw4IEBAIGJvb2wgaW50ZWxfYmlvc19pc19w
b3J0X3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQg
cG9yCj4gIAlpZiAoV0FSTl9PTihwb3J0ID09IFBPUlRfQSkgfHwgcG9ydCA+PSBBUlJBWV9TSVpF
KHBvcnRfbWFwcGluZykpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAtCWlmICghZGV2X3ByaXYt
PnZidC5jaGlsZF9kZXZfbnVtKQo+IC0JCXJldHVybiBmYWxzZTsKPiAtCj4gLQlmb3IgKGkgPSAw
OyBpIDwgZGV2X3ByaXYtPnZidC5jaGlsZF9kZXZfbnVtOyBpKyspIHsKPiAtCQljaGlsZCA9IGRl
dl9wcml2LT52YnQuY2hpbGRfZGV2ICsgaTsKPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0
YSwgJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzLCBub2RlKSB7Cj4gKwkJY2hpbGQgPSAm
ZGV2ZGF0YS0+Y2hpbGQ7Cj4gIAo+ICAJCWlmICgoY2hpbGQtPmR2b19wb3J0ID09IHBvcnRfbWFw
cGluZ1twb3J0XS5kcCB8fAo+ICAJCSAgICAgY2hpbGQtPmR2b19wb3J0ID09IHBvcnRfbWFwcGlu
Z1twb3J0XS5oZG1pKSAmJgo+IEBAIC0yMDYyLDYgKzIwNTksNyBAQCBib29sIGludGVsX2Jpb3Nf
aXNfcG9ydF9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBw
b3J0IHBvcgo+ICAgKi8KPiAgYm9vbCBpbnRlbF9iaW9zX2lzX3BvcnRfZWRwKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIHsKPiArCWNvbnN0IHN0
cnVjdCBkaXNwbGF5X2RldmljZV9kYXRhICpkZXZkYXRhOwo+ICAJY29uc3Qgc3RydWN0IGNoaWxk
X2RldmljZV9jb25maWcgKmNoaWxkOwo+ICAJc3RhdGljIGNvbnN0IHNob3J0IHBvcnRfbWFwcGlu
Z1tdID0gewo+ICAJCVtQT1JUX0JdID0gRFZPX1BPUlRfRFBCLAo+IEBAIC0yMDcwLDE2ICsyMDY4
LDEyIEBAIGJvb2wgaW50ZWxfYmlvc19pc19wb3J0X2VkcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+ICAJCVtQT1JUX0VdID0gRFZPX1BPUlRfRFBF
LAo+ICAJCVtQT1JUX0ZdID0gRFZPX1BPUlRfRFBGLAo+ICAJfTsKPiAtCWludCBpOwo+ICAKPiAg
CWlmIChIQVNfRERJKGRldl9wcml2KSkKPiAgCQlyZXR1cm4gZGV2X3ByaXYtPnZidC5kZGlfcG9y
dF9pbmZvW3BvcnRdLnN1cHBvcnRzX2VkcDsKPiAgCj4gLQlpZiAoIWRldl9wcml2LT52YnQuY2hp
bGRfZGV2X251bSkKPiAtCQlyZXR1cm4gZmFsc2U7Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IGRl
dl9wcml2LT52YnQuY2hpbGRfZGV2X251bTsgaSsrKSB7Cj4gLQkJY2hpbGQgPSBkZXZfcHJpdi0+
dmJ0LmNoaWxkX2RldiArIGk7Cj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGRldmRhdGEsICZkZXZf
cHJpdi0+dmJ0LmRpc3BsYXlfZGV2aWNlcywgbm9kZSkgewo+ICsJCWNoaWxkID0gJmRldmRhdGEt
PmNoaWxkOwo+ICAKPiAgCQlpZiAoY2hpbGQtPmR2b19wb3J0ID09IHBvcnRfbWFwcGluZ1twb3J0
XSAmJgo+ICAJCSAgICAoY2hpbGQtPmRldmljZV90eXBlICYgREVWSUNFX1RZUEVfZURQX0JJVFMp
ID09Cj4gQEAgLTIxMjgsMTMgKzIxMjIsMTAgQEAgc3RhdGljIGJvb2wgY2hpbGRfZGV2X2lzX2Rw
X2R1YWxfbW9kZShjb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQsCj4gIGJv
b2wgaW50ZWxfYmlvc19pc19wb3J0X2RwX2R1YWxfbW9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gIAkJCQkgICAgIGVudW0gcG9ydCBwb3J0KQo+ICB7Cj4gLQljb25zdCBz
dHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQ7Cj4gLQlpbnQgaTsKPiArCWNvbnN0IHN0
cnVjdCBkaXNwbGF5X2RldmljZV9kYXRhICpkZXZkYXRhOwo+ICAKPiAtCWZvciAoaSA9IDA7IGkg
PCBkZXZfcHJpdi0+dmJ0LmNoaWxkX2Rldl9udW07IGkrKykgewo+IC0JCWNoaWxkID0gZGV2X3By
aXYtPnZidC5jaGlsZF9kZXYgKyBpOwo+IC0KPiAtCQlpZiAoY2hpbGRfZGV2X2lzX2RwX2R1YWxf
bW9kZShjaGlsZCwgcG9ydCkpCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGRldmRhdGEsICZkZXZf
cHJpdi0+dmJ0LmRpc3BsYXlfZGV2aWNlcywgbm9kZSkgewo+ICsJCWlmIChjaGlsZF9kZXZfaXNf
ZHBfZHVhbF9tb2RlKCZkZXZkYXRhLT5jaGlsZCwgcG9ydCkpCj4gIAkJCXJldHVybiB0cnVlOwo+
ICAJfQo+ICAKPiBAQCAtMjE1MSwxMiArMjE0MiwxMiBAQCBib29sIGludGVsX2Jpb3NfaXNfcG9y
dF9kcF9kdWFsX21vZGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICBib29s
IGludGVsX2Jpb3NfaXNfZHNpX3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+ICAJCQkgICAgICAgZW51bSBwb3J0ICpwb3J0KQo+ICB7Cj4gKwljb25zdCBzdHJ1Y3Qg
ZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YTsKPiAgCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZp
Y2VfY29uZmlnICpjaGlsZDsKPiAgCXU4IGR2b19wb3J0Owo+IC0JaW50IGk7Cj4gIAo+IC0JZm9y
IChpID0gMDsgaSA8IGRldl9wcml2LT52YnQuY2hpbGRfZGV2X251bTsgaSsrKSB7Cj4gLQkJY2hp
bGQgPSBkZXZfcHJpdi0+dmJ0LmNoaWxkX2RldiArIGk7Cj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KGRldmRhdGEsICZkZXZfcHJpdi0+dmJ0LmRpc3BsYXlfZGV2aWNlcywgbm9kZSkgewo+ICsJCWNo
aWxkID0gJmRldmRhdGEtPmNoaWxkOwo+ICAKPiAgCQlpZiAoIShjaGlsZC0+ZGV2aWNlX3R5cGUg
JiBERVZJQ0VfVFlQRV9NSVBJX09VVFBVVCkpCj4gIAkJCWNvbnRpbnVlOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+IGluZGV4IDY3YmRmZTZkZTNmYS4uMmMwNjc0YTg2ZGQ4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTcyMCw4ICs3MjAsNyBAQCBzdHJ1Y3QgaW50ZWxfdmJ0
X2RhdGEgewo+ICAKPiAgCWludCBjcnRfZGRjX3BpbjsKPiAgCj4gLQlpbnQgY2hpbGRfZGV2X251
bTsKPiAtCXN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZF9kZXY7Cj4gKwlzdHJ1Y3Qg
bGlzdF9oZWFkIGRpc3BsYXlfZGV2aWNlczsKPiAgCj4gIAlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2lu
Zm8gZGRpX3BvcnRfaW5mb1tJOTE1X01BWF9QT1JUU107Cj4gIAlzdHJ1Y3Qgc2R2b19kZXZpY2Vf
bWFwcGluZyBzZHZvX21hcHBpbmdzWzJdOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
