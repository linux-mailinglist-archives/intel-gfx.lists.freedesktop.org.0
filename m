Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215CB64C35
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 20:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33C56E109;
	Wed, 10 Jul 2019 18:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055956E120
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 18:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 11:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="189258608"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2019 11:37:17 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.180.238])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6AIbGof010390; Wed, 10 Jul 2019 19:37:16 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190710005437.3496-1-daniele.ceraolospurio@intel.com>
 <20190710005437.3496-13-daniele.ceraolospurio@intel.com>
Date: Wed, 10 Jul 2019 20:37:16 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z4p50ehlxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190710005437.3496-13-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915/uc: kill <g,h>uc_to_i915
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

T24gV2VkLCAxMCBKdWwgMjAxOSAwMjo1NDozNyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gR2V0IHJpZCBv
ZiB0aGVtIHRvIGF2b2lkIG1vcmUgdXNlcnMgYmVpbmcgYWRkZWQgd2hpbGUgdGhlIGd1YyBjb2Rl
Cj4gdHJhbnNpdGlvbnMgdG8gdXNlIGd0IG1vcmUgdGhhbiBpOTE1Lgo+Cj4gU2lnbmVkLW9mZi1i
eTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4g
LS0tCgpBY2tlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+Cgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyAgICAgfCAgOCAr
KysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMgfCAg
MyArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMgIHwgIDIg
Ky0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jIHwgMTMgKysr
KysrKy0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAg
fCAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYyAgfCAg
MiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAgICAgfCAgNCAr
Ky0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8IDEwIC0t
LS0tLS0tLS0KPiAgOCBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+IGluZGV4
IDZiNTZmMzkwNzJiMS4uODNmMmMxOTczNzVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmMKPiBAQCAtNzcsNyArNzcsNyBAQCB2b2lkIGludGVsX2d1Y19pbml0X3Nl
bmRfcmVncyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gdm9pZCBpbnRlbF9ndWNfaW5pdF9lYXJs
eShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gZ3VjX3RvX2d0KGd1YyktPmk5MTU7Cj4gCWludGVsX2d1Y19md19pbml0X2Vhcmx5KGd1
Yyk7Cj4gIAlpbnRlbF9ndWNfY3RfaW5pdF9lYXJseSgmZ3VjLT5jdCk7Cj4gQEAgLTIwNCw3ICsy
MDQsNyBAQCBzdGF0aWMgdTMyIGd1Y19jdGxfZmVhdHVyZV9mbGFncyhzdHJ1Y3QgaW50ZWxfZ3Vj
ICAKPiAqZ3VjKQo+ICB7Cj4gIAl1MzIgZmxhZ3MgPSAwOwo+IC0JaWYgKCFVU0VTX0dVQ19TVUJN
SVNTSU9OKGd1Y190b19pOTE1KGd1YykpKQo+ICsJaWYgKCFpbnRlbF91Y19pc191c2luZ19ndWNf
c3VibWlzc2lvbigmZ3VjX3RvX2d0KGd1YyktPnVjKSkKPiAgCQlmbGFncyB8PSBHVUNfQ1RMX0RJ
U0FCTEVfU0NIRURVTEVSOwo+IAlyZXR1cm4gZmxhZ3M7Cj4gQEAgLTIxNCw3ICsyMTQsNyBAQCBz
dGF0aWMgdTMyIGd1Y19jdGxfY3R4aW5mb19mbGFncyhzdHJ1Y3QgaW50ZWxfZ3VjICAKPiAqZ3Vj
KQo+ICB7Cj4gIAl1MzIgZmxhZ3MgPSAwOwo+IC0JaWYgKFVTRVNfR1VDX1NVQk1JU1NJT04oZ3Vj
X3RvX2k5MTUoZ3VjKSkpIHsKPiArCWlmIChpbnRlbF91Y19pc191c2luZ19ndWNfc3VibWlzc2lv
bigmZ3VjX3RvX2d0KGd1YyktPnVjKSkgewo+ICAJCXUzMiBjdHhudW0sIGJhc2U7Cj4gCQliYXNl
ID0gaW50ZWxfZ3VjX2dndHRfb2Zmc2V0KGd1YywgZ3VjLT5zdGFnZV9kZXNjX3Bvb2wpOwo+IEBA
IC00MTQsNyArNDE0LDcgQEAgaW50IGludGVsX2d1Y190b19ob3N0X3Byb2Nlc3NfcmVjdl9tc2co
c3RydWN0ICAKPiBpbnRlbF9ndWMgKmd1YywKPiBpbnQgaW50ZWxfZ3VjX3NhbXBsZV9mb3JjZXdh
a2Uoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSBndWNfdG9faTkxNShndWMpOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZ3VjX3RvX2d0KGd1YyktPmk5MTU7Cj4gIAl1MzIgYWN0aW9uWzJdOwo+
IAlhY3Rpb25bMF0gPSBJTlRFTF9HVUNfQUNUSU9OX1NBTVBMRV9GT1JDRVdBS0U7Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19hZHMuYyAgCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMKPiBpbmRleCA2OTg1OWQx
ZTA0N2YuLmEwZGE4MDI0MWYyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfYWRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfYWRzLmMKPiBAQCAtMjIsNiArMjIsNyBAQAo+ICAgKgo+ICAgKi8KPiArI2luY2x1
ZGUgImd0L2ludGVsX2d0LmgiCj4gICNpbmNsdWRlICJpbnRlbF9ndWNfYWRzLmgiCj4gICNpbmNs
dWRlICJpbnRlbF91Yy5oIgo+ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiBAQCAtODUsNyArODYs
NyBAQCBzdHJ1Y3QgX19ndWNfYWRzX2Jsb2Igewo+IHN0YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0
KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+ICAJc3RydWN0IF9fZ3VjX2Fkc19i
bG9iICpibG9iID0gZ3VjLT5hZHNfYmxvYjsKPiAgCWNvbnN0IHUzMiBza2lwcGVkX3NpemUgPSBM
UkNfUFBIV1NQX1NaICogUEFHRV9TSVpFICsgIAo+IExSX0hXX0NPTlRFWFRfU0laRTsKPiAgCXUz
MiBiYXNlOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfZncuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwo+
IGluZGV4IDk4MzA1ZTNmZDQyYy4uM2RmYTQwZmRiZTk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMKPiBAQCAtNzYsNyArNzYsNyBAQCBNT0RVTEVfRklS
TVdBUkUoSUNMX0dVQ19GSVJNV0FSRV9QQVRIKTsKPiAgc3RhdGljIHZvaWQgZ3VjX2Z3X3NlbGVj
dChzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdykKPiAgewo+ICAJc3RydWN0IGludGVsX2d1YyAq
Z3VjID0gY29udGFpbmVyX29mKGd1Y19mdywgc3RydWN0IGludGVsX2d1YywgZncpOwo+IC0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMpOwo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsKPiAJR0VNX0JV
R19PTihndWNfZnctPnR5cGUgIT0gSU5URUxfVUNfRldfVFlQRV9HVUMpOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMgIAo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCj4gaW5kZXggMDM1NTcyNGVlOTk3
Li41MmY4MTQ3MDRkOGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2xvZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2xvZy5jCj4gQEAgLTI0LDYgKzI0LDcgQEAKPiAjaW5jbHVkZSA8bGludXgvZGVidWdmcy5o
Pgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiAgI2luY2x1ZGUgImludGVsX2d1Y19sb2cu
aCIKPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gQEAgLTIxNSw3ICsyMTYsNyBAQCBzdGF0aWMg
Ym9vbCBndWNfY2hlY2tfbG9nX2J1Zl9vdmVyZmxvdyhzdHJ1Y3QgIAo+IGludGVsX2d1Y19sb2cg
KmxvZywKPiAgCQkJbG9nLT5zdGF0c1t0eXBlXS5zYW1wbGVkX292ZXJmbG93ICs9IDE2Owo+ICAJ
CX0KPiAtCQlkZXZfbm90aWNlX3JhdGVsaW1pdGVkKGd1Y190b19pOTE1KGxvZ190b19ndWMobG9n
KSktPmRybS5kZXYsCj4gKwkJZGV2X25vdGljZV9yYXRlbGltaXRlZChndWNfdG9fZ3QobG9nX3Rv
X2d1Yyhsb2cpKS0+aTkxNS0+ZHJtLmRldiwKPiAgCQkJCSAgICAgICAiR3VDIGxvZyBidWZmZXIg
b3ZlcmZsb3dcbiIpOwo+ICAJfQo+IEBAIC0zODksNyArMzkwLDcgQEAgdm9pZCBpbnRlbF9ndWNf
bG9nX2luaXRfZWFybHkoc3RydWN0IGludGVsX2d1Y19sb2cgIAo+ICpsb2cpCj4gIHN0YXRpYyBp
bnQgZ3VjX2xvZ19yZWxheV9jcmVhdGUoc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKPiAgewo+
ICAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0gbG9nX3RvX2d1Yyhsb2cpOwo+IC0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiArCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+ICAJc3Ry
dWN0IHJjaGFuICpndWNfbG9nX3JlbGF5X2NoYW47Cj4gIAlzaXplX3Qgbl9zdWJidWZzLCBzdWJi
dWZfc2l6ZTsKPiAgCWludCByZXQ7Cj4gQEAgLTQzNSw3ICs0MzYsNyBAQCBzdGF0aWMgdm9pZCBn
dWNfbG9nX3JlbGF5X2Rlc3Ryb3koc3RydWN0ICAKPiBpbnRlbF9ndWNfbG9nICpsb2cpCj4gIHN0
YXRpYyB2b2lkIGd1Y19sb2dfY2FwdHVyZV9sb2dzKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cp
Cj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9IGxvZ190b19ndWMobG9nKTsKPiAtCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGd1Y190b19pOTE1KGd1Yyk7Cj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsK
PiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+IAlndWNfcmVhZF91cGRhdGVfbG9nX2J1ZmZl
cihsb2cpOwo+IEBAIC01MDQsNyArNTA1LDcgQEAgdm9pZCBpbnRlbF9ndWNfbG9nX2Rlc3Ryb3ko
c3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKPiAgaW50IGludGVsX2d1Y19sb2dfc2V0X2xldmVs
KHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2csIHUzMiBsZXZlbCkKPiAgewo+ICAJc3RydWN0IGlu
dGVsX2d1YyAqZ3VjID0gbG9nX3RvX2d1Yyhsb2cpOwo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+ICAJaW50ZWxfd2FrZXJlZl90
IHdha2VyZWY7Cj4gIAlpbnQgcmV0ID0gMDsKPiBAQCAtNjIxLDcgKzYyMiw3IEBAIGludCBpbnRl
bF9ndWNfbG9nX3JlbGF5X29wZW4oc3RydWN0IGludGVsX2d1Y19sb2cgIAo+ICpsb2cpCj4gIHZv
aWQgaW50ZWxfZ3VjX2xvZ19yZWxheV9mbHVzaChzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQo+
ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSBsb2dfdG9fZ3VjKGxvZyk7Cj4gLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+ICAJaW50ZWxf
d2FrZXJlZl90IHdha2VyZWY7Cj4gCS8qCj4gQEAgLTY0MCw3ICs2NDEsNyBAQCB2b2lkIGludGVs
X2d1Y19sb2dfcmVsYXlfZmx1c2goc3RydWN0IGludGVsX2d1Y19sb2cgIAo+ICpsb2cpCj4gIHZv
aWQgaW50ZWxfZ3VjX2xvZ19yZWxheV9jbG9zZShzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQo+
ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSBsb2dfdG9fZ3VjKGxvZyk7Cj4gLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+IAlndWNfbG9n
X2Rpc2FibGVfZmx1c2hfZXZlbnRzKGxvZyk7Cj4gIAlpbnRlbF9zeW5jaHJvbml6ZV9pcnEoaTkx
NSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5j
ICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCj4gaW5kZXggOTlm
MGZhMmU4ZmY1Li5iYzE0NDM5MTczZDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfaHVjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9odWMuYwo+IEBAIC0zMCw3ICszMCw3IEBACj4gdm9pZCBpbnRlbF9odWNfaW5pdF9lYXJs
eShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gaHVjX3RvX2k5MTUoaHVjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gaHVjX3RvX2d0KGh1YyktPmk5MTU7Cj4gCWludGVsX2h1Y19md19pbml0X2Vhcmx5KGh1
Yyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19m
dy5jICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCj4gaW5k
ZXggYmVjZmQzNGEyNmMxLi41NDM4NTRjNDJkOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9odWNfZncuYwo+IEBAIC03MCw3ICs3MCw3IEBAIE1PRFVMRV9GSVJNV0FS
RShJOTE1X0lDTF9IVUNfVUNPREUpOwo+ICBzdGF0aWMgdm9pZCBodWNfZndfc2VsZWN0KHN0cnVj
dCBpbnRlbF91Y19mdyAqaHVjX2Z3KQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfaHVjICpodWMgPSBj
b250YWluZXJfb2YoaHVjX2Z3LCBzdHJ1Y3QgaW50ZWxfaHVjLCBmdyk7Cj4gLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBodWNfdG9faTkxNShodWMpOwo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gaHVjX3RvX2d0KGh1YyktPmk5MTU7Cj4gCUdFTV9C
VUdfT04oaHVjX2Z3LT50eXBlICE9IElOVEVMX1VDX0ZXX1RZUEVfSFVDKTsKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gaW5kZXggM2ZlYWQyZGM5ZDMyLi5iZTBmOGRl
YmEyY2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBAQCAtMjQ4
LDcgKzI0OCw3IEBAIHN0YXRpYyB2b2lkIGd1Y19nZXRfbW1pb19tc2coc3RydWN0IGludGVsX2d1
YyAqZ3VjKQo+IHN0YXRpYyB2b2lkIGd1Y19oYW5kbGVfbW1pb19tc2coc3RydWN0IGludGVsX2d1
YyAqZ3VjKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19p
OTE1KGd1Yyk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19ndChn
dWMpLT5pOTE1Owo+IAkvKiB3ZSBuZWVkIGNvbW11bmljYXRpb24gdG8gYmUgZW5hYmxlZCB0byBy
ZXBseSB0byBHdUMgKi8KPiAgCUdFTV9CVUdfT04oZ3VjLT5oYW5kbGVyID09IGludGVsX2d1Y190
b19ob3N0X2V2ZW50X2hhbmRsZXJfbm9wKTsKPiBAQCAtMjgwLDcgKzI4MCw3IEBAIHN0YXRpYyB2
b2lkIGd1Y19kaXNhYmxlX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAgCj4gKmd1YykKPiBz
dGF0aWMgaW50IGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMp
Cj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2k5MTUoZ3Vj
KTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2d0KGd1YyktPmk5
MTU7Cj4gIAlpbnQgcmV0Owo+IAlyZXQgPSBpbnRlbF9ndWNfY3RfZW5hYmxlKCZndWMtPmN0KTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggMmFjZTFhZDE3M2FkLi4xZGJjNGY1
Yzg2NjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTkwMSwxNiArMTkwMSw2
IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgIAo+ICp3b3BjbV90b19p
OTE1KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCj4gIAlyZXR1cm4gY29udGFpbmVyX29mKHdv
cGNtLCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgd29wY20pOwo+ICB9Cj4gLXN0YXRpYyBpbmxp
bmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmd1Y190b19pOTE1KHN0cnVjdCBpbnRlbF9ndWMg
IAo+ICpndWMpCj4gLXsKPiAtCXJldHVybiBjb250YWluZXJfb2YoZ3VjLCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSwgZ3QudWMuZ3VjKTsKPiAtfQo+IC0KPiAtc3RhdGljIGlubGluZSBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaHVjX3RvX2k5MTUoc3RydWN0IGludGVsX2h1YyAgCj4gKmh1YykK
PiAtewo+IC0JcmV0dXJuIGNvbnRhaW5lcl9vZihodWMsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
LCBndC51Yy5odWMpOwo+IC19Cj4gLQo+ICAvKiBTaW1wbGUgaXRlcmF0b3Igb3ZlciBhbGwgaW5p
dGlhbGlzZWQgZW5naW5lcyAqLwo+ICAjZGVmaW5lIGZvcl9lYWNoX2VuZ2luZShlbmdpbmVfXywg
ZGV2X3ByaXZfXywgaWRfXykgXAo+ICAJZm9yICgoaWRfXykgPSAwOyBcCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
