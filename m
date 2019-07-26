Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9339977320
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 23:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8A16EE5D;
	Fri, 26 Jul 2019 21:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7026EE5D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 21:02:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="369662424"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 14:02:08 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.129])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QL27Pu004768; Fri, 26 Jul 2019 22:02:08 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190726171240.6008-1-michal.wajdeczko@intel.com>
 <156416743292.30723.10783842803027593914@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 23:02:06 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5jzdswkxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156416743292.30723.10783842803027593914@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't fail on HuC firmware
 failure
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBKdWwgMjAxOSAyMDo1NzoxMiArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNy0yNiAxODoxMjo0MCkKPj4gSHVDIGlzIHVzdWFsbHkgbm90IGEgY3JpdGljYWwgY29t
cG9uZW50LCBzbyB3ZSBjYW4gc2FmZWx5IGlnbm9yZQo+PiBmaXJtd2FyZSBsb2FkIG9yIGF1dGhl
bnRpY2F0aW9uIGZhaWx1cmVzIHVubGVzcyBIdUMgd2FzIGV4cGxpY2l0bHkKPj4gcmVxdWVzdGVk
IGJ5IHRoZSB1c2VyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Yy5jICAgIHwgOCArKysrLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYyB8IDMgKystCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5oIHwgNiArKysrKysKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmMgIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMKPj4gaW5kZXggNWI5YjIwZDFjYjZkLi45OTQxOWM1YzBhZDMgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+PiBAQCAtNDcyLDcgKzQ3Miw3IEBAIGlu
dCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCj4+Cj4+ICAgICAgICAgICAg
ICAgICBpZiAoaW50ZWxfdWNfaXNfdXNpbmdfaHVjKHVjKSkgewo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICByZXQgPSBpbnRlbF9odWNfZndfdXBsb2FkKGh1Yyk7Cj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGlmIChyZXQpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQgJiYg
aW50ZWxfdWNfZndfaXNfb3ZlcnJpZGRlbigmaHVjLT5mdykpCj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnJfb3V0Owo+PiAgICAgICAgICAgICAgICAgfQo+Pgo+PiBA
QCAtNDk0LDkgKzQ5NCw5IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAq
dWMpCj4+ICAgICAgICAgaWYgKHJldCkKPj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2xvZ19j
YXB0dXJlOwo+Pgo+PiAtICAgICAgIGlmIChpbnRlbF91Y19pc191c2luZ19odWModWMpKSB7Cj4+
ICsgICAgICAgaWYgKGludGVsX3VjX2lzX3VzaW5nX2h1Yyh1YykgJiYgIAo+PiBpbnRlbF91Y19m
d19pc19sb2FkZWQoJmh1Yy0+ZncpKSB7Cj4KPiBDYW4gd2UgZXZlbiBsb2FkIHRoZSBodWMgZncg
aXMgIXVzaW5nX2h1YygpPwoKYXMgb2YgdG9kYXksIG1lYW5pbmcgb2YgImludGVsX3VjX2lzX3Vz
aW5nX2h1YyIgaXMgdGhhdCBIdUMgd2FzCnJlcXVlc3RlZCB0byBydW4gKGllLiBlbmFibGVkIHZp
YSBtb2RwYXJhbSkgYW5kIG5vdCB0aGF0IGlzIG5vdwpiZWluZyB1c2VkLgoKPgo+PiAgICAgICAg
ICAgICAgICAgcmV0ID0gaW50ZWxfaHVjX2F1dGgoaHVjKTsKPj4gLSAgICAgICAgICAgICAgIGlm
IChyZXQpCj4+ICsgICAgICAgICAgICAgICBpZiAocmV0ICYmIGludGVsX3VjX2Z3X2lzX292ZXJy
aWRkZW4oJmh1Yy0+ZncpKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9jb21t
dW5pY2F0aW9uOwo+PiAgICAgICAgIH0KPj4KPj4gQEAgLTUxNSw3ICs1MTUsNyBAQCBpbnQgaW50
ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+PiAgICAgICAgIGRldl9pbmZvKGk5
MTUtPmRybS5kZXYsICJHdUMgc3VibWlzc2lvbiAlc1xuIiwKPj4gICAgICAgICAgICAgICAgICBl
bmFibGVkZGlzYWJsZWQoaW50ZWxfdWNfaXNfdXNpbmdfZ3VjX3N1Ym1pc3Npb24odWMpKSk7Cj4+
ICAgICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkh1QyAlc1xuIiwKPj4gLSAgICAgICAg
ICAgICAgICBlbmFibGVkZGlzYWJsZWQoaW50ZWxfdWNfaXNfdXNpbmdfaHVjKHVjKSkpOwo+PiAr
ICAgICAgICAgICAgICAgIGVuYWJsZWRkaXNhYmxlZChpbnRlbF9odWNfaXNfYXV0aGVudGljYXRl
ZChodWMpKSk7Cj4KPiBTZWVtcyByZWFzb25hYmxlIGJ5IGl0c2VsZi4KPgo+Pgo+PiAgICAgICAg
IHJldHVybiAwOwo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuYyAgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuYwo+PiBpbmRleCA1ZmJkZDE3YTg2NGIuLjFlOWFlMzhlNWIxMCAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4+IEBAIC0xNDYsNyArMTQ2LDggQEAg
X191Y19md19vdmVycmlkZShzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KQo+PiAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4+ICAgICAgICAgfQo+Pgo+PiAtICAgICAgIHJldHVybiB1Y19mdy0+cGF0
aDsKPj4gKyAgICAgICB1Y19mdy0+dXNlcl9vdmVycmlkZGVuID0gdWNfZnctPnBhdGg7Cj4KPiB1
Y19mdy0+dXNlcl9vdmVycmlkZGVuID0gdWNfZnctPnBhdGggJiYgKnVjX2Z3LT5wYXRoOwo+Cj4g
VGhhdCBpcyBpOTE1Lmh1Y19maXJtd2FyZT0iIiBzaG91bGQgYmUgYSBjb252ZW5pZW50IHdheSB0
byBkaXNhYmxlCj4gbG9hZGluZy4KCmhtbSwgdG8gYmUgd29ya2luZyBhcyBleHBlY3RlZCB0aGlz
IHNob3VsZCBkb25lIGluaXRfZWFybHkgYXM6CgoJaWYgKHVjX2Z3LT5wYXRoICYmICp1Y19mdy0+
cGF0aCkKCQl1Y19mdy0+c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfU0VMRUNURUQ7CgllbHNl
CgkJdWNfZnctPnN0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQ7Cgo+Cj4g
SWYgd2UgYWdyZWUgb24gdGhhdCAiY3JlYXRpdmUgbWlzdXNlIiBvZiB0aGUgbW9kcGFyYW0sIG9y
IGlmIHlvdSBjYW4KPiByZWFzc3VyZSBtZSB0aGF0IGl0IHdvcmtzIGNvcnJlY3RseSBhbnl3YXks
Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IC1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
