Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1342564E19
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 23:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC9789346;
	Wed, 10 Jul 2019 21:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EFD89346
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 21:46:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 14:46:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="317489385"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2019 14:46:37 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190710005437.3496-1-daniele.ceraolospurio@intel.com>
 <20190710005437.3496-5-daniele.ceraolospurio@intel.com>
 <op.z4pzdnkfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0277f31e-78f8-2d96-1e88-55456f3498c1@intel.com>
Date: Wed, 10 Jul 2019 14:46:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <op.z4pzdnkfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/uc: introduce
 intel_uc_fw_supported
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

CgpPbiA3LzEwLzE5IDk6NTcgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gT24gV2VkLCAx
MCBKdWwgMjAxOSAwMjo1NDoyOSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAKPiA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4+IEluc3RlYWQgb2YgYWx3
YXlzIGNoZWNraW5nIGluIHRoZSBkZXZpY2UgY29uZmlnIGlzIEd1QyBhbmQgSHVDIGFyZQo+IAo+
IHMvaXMvaWYKPiAKPj4gc3VwcG9ydGVkIG9yIG5vdCwgd2UgY2FuIHNhdmUgdGhlIHN0YXRlIGlu
IHRoZSB1Y19mdyBzdHJ1Y3R1cmUgYW5kCj4+IGF2b2lkIGdvaW5nIHRocm91Z2ggaTkxNSBldmVy
eSB0aW1lIGZyb20gdGhlIGxvdy1sZXZlbCB1YyBtYW5hZ2VtZW50Cj4+IGNvZGUuIHdoaWxlIGF0
IGl0IEZJUk1XQVJFX05PTkUgaGFzIGJlZW4gcmVuYW1lZCB0byBiZXR0ZXIgaW5kaWNhdGUgdGhh
dAo+IAo+IHMvd2hpbGUvV2hpbGUKPiAKPj4gd2UgaGF2ZW4ndCBzdGFydGVkIHRoZSBmZXRjaC9s
b2FkIHlldCwgYnV0IHdlIG1pZ2h0IGhhdmUgYWxyZWFkeSBzZWxlY3RlZAo+PiBhIGJsb2IuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Cj4+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3LmMgfMKgIDYgKysrKystCj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3
LmMgfMKgIDYgKysrKystCj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuY8KgwqDC
oMKgIHwgMjUgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdWNfZncuY8KgIHzCoCA0ICsrKy0KPj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91Y19mdy5owqAgfCAzMCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+PiDCoDUg
ZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+PiBpbmRleCBkYjFlMGRhY2E3ZGIuLmVl
OTVkNDk2MGM1YyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKPj4gQEAg
LTc5LDggKzc5LDEyIEBAIHN0YXRpYyB2b2lkIGd1Y19md19zZWxlY3Qoc3RydWN0IGludGVsX3Vj
X2Z3ICpndWNfZncpCj4+IMKgwqDCoMKgR0VNX0JVR19PTihndWNfZnctPnR5cGUgIT0gSU5URUxf
VUNfRldfVFlQRV9HVUMpOwo+PiAtwqDCoMKgIGlmICghSEFTX0dVQyhpOTE1KSkKPj4gK8KgwqDC
oCBpZiAoIUhBU19HVUMoaTkxNSkpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGd1Y19mdy0+ZmV0Y2hf
c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfTk9UX1NVUFBPUlRFRDsKPj4gwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm47Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgZ3VjX2Z3LT5mZXRjaF9z
dGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1RBUlRFRDsKPj4gwqDCoMKgwqBpZiAoaTkx
NV9tb2RwYXJhbXMuZ3VjX2Zpcm13YXJlX3BhdGgpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBndWNf
ZnctPnBhdGggPSBpOTE1X21vZHBhcmFtcy5ndWNfZmlybXdhcmVfcGF0aDsKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Y19mdy5jIAo+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2h1Y19mdy5jCj4+IGluZGV4IDA1Y2JmODMzOGY1My4uMDZlNzI2YmE5
ODYzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWNfZncuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWNfZncuYwo+PiBAQCAtNzMsOCAr
NzMsMTIgQEAgc3RhdGljIHZvaWQgaHVjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1
Y19mdykKPj4gwqDCoMKgwqBHRU1fQlVHX09OKGh1Y19mdy0+dHlwZSAhPSBJTlRFTF9VQ19GV19U
WVBFX0hVQyk7Cj4+IC3CoMKgwqAgaWYgKCFIQVNfSFVDKGRldl9wcml2KSkKPj4gK8KgwqDCoCBp
ZiAoIUhBU19IVUMoZGV2X3ByaXYpKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBodWNfZnctPmZldGNo
X3N0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQ7Cj4+IMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGh1Y19mdy0+ZmV0Y2hf
c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfTk9UX1NUQVJURUQ7Cj4+IMKgwqDCoMKgaWYgKGk5
MTVfbW9kcGFyYW1zLmh1Y19maXJtd2FyZV9wYXRoKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgaHVj
X2Z3LT5wYXRoID0gaTkxNV9tb2RwYXJhbXMuaHVjX2Zpcm13YXJlX3BhdGg7Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3VjLmMKPj4gaW5kZXggNzg5YjBiY2NmYjQxLi5lZjJhODY0Yjg5OTAgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+PiBAQCAtNzEsNyArNzEsOCBAQCBzdGF0aWMg
aW50IF9fZ2V0X2RlZmF1bHRfZ3VjX2xvZ19sZXZlbChzdHJ1Y3QgCj4+IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4+IMKgewo+PiDCoMKgwqDCoCBpbnQgZ3VjX2xvZ19sZXZlbDsKPj4gLcKgwqDC
oCBpZiAoIUhBU19HVUMoaTkxNSkgfHwgIWludGVsX3VjX2lzX3VzaW5nX2d1YyhpOTE1KSkKPj4g
K8KgwqDCoCBpZiAoIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmaTkxNS0+Z3VjLmZ3KSB8fAo+IAo+
IHRoaXMgZ29lcyB0b28gZmFyLCB3ZSBzaG91bGQgbGltaXQgbnVtYmVyIG9mIGRpcmVjdCBhY2Nl
c3NlcyB0byAuZncKPiBtYXliZSB3ZSBjYW4gaGF2ZToKPiAKPiAgwqDCoMKgwqBpbmxpbmUgYm9v
bCBpbnRlbF91Y19oYXNfZ3VjKGk5MTUpCj4gIMKgwqDCoMKgewo+ICDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gaW50ZWxfZ3VjX2lzX3ByZXNlbnQoJmk5MTUtPmd1Yyk7Cj4gIMKgwqDCoMKgfQo+IAo+
ICDCoMKgwqDCoGlubGluZSBib29sIGludGVsX2d1Y19pc19wcmVzZW50KGd1YykKPiAgwqDCoMKg
wqB7Cj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF91Y19md19pc19kZWZpbmVkKCZndWMt
PmZ3KTsKPiAgwqDCoMKgwqB9Cj4gCgpNYXliZSBpbnN0ZWFkIG9mIHNhdmluZyB0aGlzIGluZm8g
aW4gdGhlIHVjX2Z3IGl0J2QgYmUgYmV0dGVyIHRvIGp1c3QgCmNoYW5nZSBndWNfaW5pdF9lYXJs
eSB0byBub3QgZG8gYW55dGhpbmcgaWYgIUhBU19HVUMgYW5kIHRoZW4gZG8gCnNvbWV0aGluZyBs
aWtlOgoKCWJvb2wgaW50ZWxfZ3VjX2lzX3ByZXNlbnQoZ3VjKQoJewoJCXJldHVybiAhIWd1Yy0+
c2VuZDsKCX0KCldoYXQgZG8geW91IHRoaW5rPyBvdGhlcndpc2UgSSdsbCBzcGxpdCBpdCBsaWtl
IHlvdSBzdWdnZXN0ZWQKCj4+ICvCoMKgwqDCoMKgwqDCoCAhaW50ZWxfdWNfaXNfdXNpbmdfZ3Vj
KGk5MTUpKQo+PiDCoMKgwqDCoMKgwqDCoMKgIGd1Y19sb2dfbGV2ZWwgPSBHVUNfTE9HX0xFVkVM
X0RJU0FCTEVEOwo+PiDCoMKgwqDCoCBlbHNlIGlmIChJU19FTkFCTEVEKENPTkZJR19EUk1fSTkx
NV9ERUJVRykgfHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIElTX0VOQUJMRUQoQ09ORklHX0RSTV9J
OTE1X0RFQlVHX0dFTSkpCj4+IEBAIC0xMTksMTYgKzEyMCwxNiBAQCBzdGF0aWMgdm9pZCBzYW5p
dGl6ZV9vcHRpb25zX2Vhcmx5KHN0cnVjdCAKPj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4g
wqDCoMKgwqAgaWYgKGludGVsX3VjX2lzX3VzaW5nX2d1YyhpOTE1KSAmJiAKPj4gIWludGVsX3Vj
X2Z3X2lzX3NlbGVjdGVkKGd1Y19mdykpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBEUk1fV0FSTigi
SW5jb21wYXRpYmxlIG9wdGlvbiBkZXRlY3RlZDogJXM9JWQsICVzIVxuIiwKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgImVuYWJsZV9ndWMiLCBpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3Vj
LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFIQVNfR1VDKGk5MTUpID8gIm5vIEd1QyBo
YXJkd2FyZSIgOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJubyBHdUMgZmlybXdhcmUiKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhaW50ZWxf
dWNfZndfc3VwcG9ydGVkKGd1Y19mdykgPwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJubyBHdUMgaGFyZHdhcmUiIDogIm5vIEd1QyBmaXJtd2FyZSIpOwo+PiDCoMKgwqDCoCB9
Cj4+IMKgwqDCoMKgLyogVmVyaWZ5IEh1QyBmaXJtd2FyZSBhdmFpbGFiaWxpdHkgKi8KPj4gwqDC
oMKgwqAgaWYgKGludGVsX3VjX2lzX3VzaW5nX2h1YyhpOTE1KSAmJiAKPj4gIWludGVsX3VjX2Z3
X2lzX3NlbGVjdGVkKGh1Y19mdykpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBEUk1fV0FSTigiSW5j
b21wYXRpYmxlIG9wdGlvbiBkZXRlY3RlZDogJXM9JWQsICVzIVxuIiwKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgImVuYWJsZV9ndWMiLCBpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjLAo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFIQVNfSFVDKGk5MTUpID8gIm5vIEh1QyBoYXJk
d2FyZSIgOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJu
byBIdUMgZmlybXdhcmUiKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhaW50ZWxfdWNf
Zndfc3VwcG9ydGVkKGh1Y19mdykgPwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJubyBIdUMgaGFyZHdhcmUiIDogIm5vIEh1QyBmaXJtd2FyZSIpOwo+PiDCoMKgwqDCoCB9Cj4+
IMKgwqDCoMKgLyogWFhYOiBHdUMgc3VibWlzc2lvbiBpcyB1bmF2YWlsYWJsZSBmb3Igbm93ICov
Cj4+IEBAIC0xNDgsOCArMTQ5LDggQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfb3B0aW9uc19lYXJs
eShzdHJ1Y3QgCj4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+IMKgwqDCoMKgIGlmIChpOTE1
X21vZHBhcmFtcy5ndWNfbG9nX2xldmVsID4gMCAmJiAKPj4gIWludGVsX3VjX2lzX3VzaW5nX2d1
YyhpOTE1KSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgIERSTV9XQVJOKCJJbmNvbXBhdGlibGUgb3B0
aW9uIGRldGVjdGVkOiAlcz0lZCwgJXMhXG4iLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiZ3VjX2xvZ19sZXZlbCIsIGk5MTVfbW9kcGFyYW1zLmd1Y19sb2dfbGV2ZWwsCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIUhBU19HVUMoaTkxNSkgPyAibm8gR3VDIGhhcmR3YXJlIiA6
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkd1QyBub3Qg
ZW5hYmxlZCIpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFpbnRlbF91Y19md19zdXBw
b3J0ZWQoZ3VjX2Z3KSA/Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm5vIEd1
QyBoYXJkd2FyZSIgOiAiR3VDIG5vdCBlbmFibGVkIik7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgaTkx
NV9tb2RwYXJhbXMuZ3VjX2xvZ19sZXZlbCA9IDA7Cj4+IMKgwqDCoMKgIH0KPj4gQEAgLTM3Niw3
ICszNzcsNyBAQCBpbnQgaW50ZWxfdWNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPj4gwqDCoMKgwqAgaWYgKCFVU0VTX0dVQyhpOTE1KSkKPj4gwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gMDsKPj4gLcKgwqDCoCBpZiAoIUhBU19HVUMoaTkxNSkpCj4+ICvCoMKgwqAgaWYgKCFp
bnRlbF91Y19md19zdXBwb3J0ZWQoJmd1Yy0+ZncpKQo+PiDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU5PREVWOwo+PiDCoMKgwqDCoC8qIFhYWDogR3VDIHN1Ym1pc3Npb24gaXMgdW5hdmFpbGFi
bGUgZm9yIG5vdyAqLwo+PiBAQCAtNDE5LDcgKzQyMCw3IEBAIHZvaWQgaW50ZWxfdWNfZmluaShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gwqDCoMKgwqAgaWYgKCFVU0VTX0dVQyhp
OTE1KSkKPj4gwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgR0VNX0JVR19PTigh
SEFTX0dVQyhpOTE1KSk7Cj4+ICvCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfZndfc3VwcG9y
dGVkKCZndWMtPmZ3KSk7Cj4+IMKgwqDCoMKgaWYgKFVTRVNfR1VDX1NVQk1JU1NJT04oaTkxNSkp
Cj4+IMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fZmluaShndWMpOwo+PiBA
QCAtNDM1LDcgKzQzNiw3IEBAIHN0YXRpYyB2b2lkIF9fdWNfc2FuaXRpemUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgCj4+ICppOTE1KQo+PiDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZ3VjICpndWMg
PSAmaTkxNS0+Z3VjOwo+PiDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfaHVjICpodWMgPSAmaTkxNS0+
aHVjOwo+PiAtwqDCoMKgIEdFTV9CVUdfT04oIUhBU19HVUMoaTkxNSkpOwo+PiArwqDCoMKgIEdF
TV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwo+PiDCoMKgwqDCoGlu
dGVsX2h1Y19zYW5pdGl6ZShodWMpOwo+PiDCoMKgwqDCoCBpbnRlbF9ndWNfc2FuaXRpemUoZ3Vj
KTsKPj4gQEAgLTQ2MCw3ICs0NjEsNyBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gwqDCoMKgwqAgaWYgKCFVU0VTX0dVQyhpOTE1KSkKPj4g
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gLcKgwqDCoCBHRU1fQlVHX09OKCFIQVNfR1VD
KGk5MTUpKTsKPj4gK8KgwqDCoCBHRU1fQlVHX09OKCFpbnRlbF91Y19md19zdXBwb3J0ZWQoJmd1
Yy0+ZncpKTsKPj4gwqDCoMKgwqBndWNfcmVzZXRfaW50ZXJydXB0cyhndWMpOwo+PiBAQCAtNTU3
LDcgKzU1OCw3IEBAIHZvaWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPj4gwqDCoMKgwqAgaWYgKCFpbnRlbF9ndWNfaXNfbG9hZGVkKGd1YykpCj4+IMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiAtwqDCoMKgIEdFTV9CVUdfT04oIUhBU19HVUMoaTkx
NSkpOwo+PiArwqDCoMKgIEdFTV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5m
dykpOwo+PiDCoMKgwqDCoGlmIChVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQo+PiDCoMKgwqDC
oMKgwqDCoMKgIGludGVsX2d1Y19zdWJtaXNzaW9uX2Rpc2FibGUoZ3VjKTsKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjX2Z3LmMgCj4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdWNfZncuYwo+PiBpbmRleCBmMzQyZGRkNDdkZjguLjhjZTcyMTA5MDdj
MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWNfZncuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Y19mdy5jCj4+IEBAIC00Nyw2ICs0Nyw4
IEBAIHZvaWQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgCj4+ICpk
ZXZfcHJpdiwKPj4gwqDCoMKgwqAgc2l6ZV90IHNpemU7Cj4+IMKgwqDCoMKgIGludCBlcnI7Cj4+
ICvCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdWNfZndfc3VwcG9ydGVkKHVjX2Z3KSk7Cj4+ICsK
Pj4gwqDCoMKgwqAgaWYgKCF1Y19mdy0+cGF0aCkgewo+PiDCoMKgwqDCoMKgwqDCoMKgIGRldl9p
bmZvKGRldl9wcml2LT5kcm0uZGV2LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJXM6
IE5vIGZpcm13YXJlIHdhcyBkZWZpbmVkIGZvciAlcyFcbiIsCj4+IEBAIC0zMjgsNyArMzMwLDcg
QEAgdm9pZCBpbnRlbF91Y19md19jbGVhbnVwX2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAKPj4g
KnVjX2Z3KQo+PiDCoMKgwqDCoCBpZiAob2JqKQo+PiDCoMKgwqDCoMKgwqDCoMKgIGk5MTVfZ2Vt
X29iamVjdF9wdXQob2JqKTsKPj4gLcKgwqDCoCB1Y19mdy0+ZmV0Y2hfc3RhdHVzID0gSU5URUxf
VUNfRklSTVdBUkVfTk9ORTsKPj4gK8KgwqDCoCB1Y19mdy0+ZmV0Y2hfc3RhdHVzID0gSU5URUxf
VUNfRklSTVdBUkVfTk9UX1NUQVJURUQ7Cj4+IMKgfQo+PiAvKioKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjX2Z3LmggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdWNfZncuaAo+PiBpbmRleCAyNGU2NjQ2OTE1M2MuLjgzM2QwNGQwNjU3NiAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWNfZncuaAo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Y19mdy5oCj4+IEBAIC0yNiw2ICsyNiw3IEBACj4+
IMKgI2RlZmluZSBfSU5URUxfVUNfRldfSF8KPj4gI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+
ICsjaW5jbHVkZSAiaTkxNV9nZW0uaCIKPj4gc3RydWN0IGRybV9wcmludGVyOwo+PiDCoHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlOwo+PiBAQCAtMzQsOCArMzUsMTAgQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGU7Cj4+IMKgI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9VUkwgCj4+ICJodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51eC1m
aXJtd2FyZS5naXQvdHJlZS9pOTE1IiAKPj4KPj4gZW51bSBpbnRlbF91Y19md19zdGF0dXMgewo+
PiArwqDCoMKgIElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQgPSAtMiwgLyogbm8gdWMg
SFcgKi8KPj4gwqDCoMKgwqAgSU5URUxfVUNfRklSTVdBUkVfRkFJTCA9IC0xLAo+PiAtwqDCoMKg
IElOVEVMX1VDX0ZJUk1XQVJFX05PTkUgPSAwLAo+PiArwqDCoMKgIElOVEVMX1VDX0ZJUk1XQVJF
X1VOSU5JVElBTElaRUQgPSAwLCAvKiB1c2VkIHRvIGNhdGNoIGNoZWNrcyBkb25lIAo+PiB0b28g
ZWFybHkgKi8KPj4gK8KgwqDCoCBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1RBUlRFRCA9IDEsCj4+
IMKgwqDCoMKgIElOVEVMX1VDX0ZJUk1XQVJFX1BFTkRJTkcsCj4+IMKgwqDCoMKgIElOVEVMX1VD
X0ZJUk1XQVJFX1NVQ0NFU1MKPj4gwqB9Owo+PiBAQCAtNzksMTAgKzgyLDE0IEBAIHN0YXRpYyBp
bmxpbmUKPj4gwqBjb25zdCBjaGFyICppbnRlbF91Y19md19zdGF0dXNfcmVwcihlbnVtIGludGVs
X3VjX2Z3X3N0YXR1cyBzdGF0dXMpCj4+IMKgewo+PiDCoMKgwqDCoCBzd2l0Y2ggKHN0YXR1cykg
ewo+PiArwqDCoMKgIGNhc2UgSU5URUxfVUNfRklSTVdBUkVfTk9UX1NVUFBPUlRFRDoKPiAKPiBt
YXliZSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfQVBQTElDQUJMRSwgYXMgdXNlZCBpbiBzdHJpbmcg
YmVsb3c/CgpvawoKPiAKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiTi9BIC0gdWMgSFcgbm90
IGF2YWlsYWJsZSI7Cj4gCj4gbm90ZSB0aGF0IG90aGVyIHN0YXRlcyBoYXZlIHNob3J0IHN0cmlu
Z3MsIHNvIGp1c3QgIk4vQSIgPwoKb2sKCj4gCj4+IMKgwqDCoMKgIGNhc2UgSU5URUxfVUNfRklS
TVdBUkVfRkFJTDoKPj4gwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gIkZBSUwiOwo+PiAtwqDCoMKg
IGNhc2UgSU5URUxfVUNfRklSTVdBUkVfTk9ORToKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiAi
Tk9ORSI7Cj4+ICvCoMKgwqAgY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9VTklOSVRJQUxJWkVEOgo+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJVTklOSVRJQUxJWkVEIjsKPj4gK8KgwqDCoCBjYXNl
IElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVEFSVEVEOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
ICJOT1RfU1RBUlRFRCI7Cj4gCj4gTk9UX1NUQVJURUQgYW5kIFBFTkRJTkcgYXJlIG5vdCB0aGF0
IG11Y2ggZGlmZmVyZW50LAo+IHNlZSBiZWxvdwoKTk9UX1NUQVJURUQgaXMgbm90IGEgbmV3IGNh
c2UgSSd2ZSBhZGRlZCwgSSd2ZSBqdXN0IHJlbmFtZWQgdGhlIE5PTkUgCmNhc2UgdG8gaW5kaWNh
dGUgdGhhdCB3ZSBoYWRuJ3QgZXZlbiBzdGFydGVkIHRoZSBmZXRjaCBwcm9jZXNzLCBidXQgd2Ug
Cm1pZ2h0IGJlIHBhc3QgdGhlIEZXIHNlbGVjdGlvbi4KCj4gCj4+IMKgwqDCoMKgIGNhc2UgSU5U
RUxfVUNfRklSTVdBUkVfUEVORElORzoKPj4gwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gIlBFTkRJ
TkciOwo+PiDCoMKgwqDCoCBjYXNlIElOVEVMX1VDX0ZJUk1XQVJFX1NVQ0NFU1M6Cj4gCj4gbWF5
YmUgd2Ugc2hvdWxkIGRyb3Agc3BsaXQgb24gZmV0Y2gvbG9hZCBhbmQgdXNlCj4gc2luZ2xlIHN0
YXR1cywgc29tZXRoaW5nIGxpa2U6Cj4gCj4gIMKgwqDCoMKgIFVOSU5JVElBTElaRUQgLS0+IE4v
QSAobm8gSFcpCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPiAgwqDCoMKgwqDCoMKgwqAgREVG
SU5FRCAtLS0tPiBNSVNTSU5HIChubyB2YWxpZCBmdykKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fAo+ICDCoMKgwqDCoCAtPiBGRVRDSEVEL1VOTE9BREVEIDwtCj4gIMKgwqDCoCAvwqDCoMKgwqDC
oMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4gIMKgwqDCoCBcwqDCoMKgwqDCoCBM
T0FESU5HwqDCoMKgwqDCoMKgwqDCoCAvCj4gIMKgwqDCoMKgIFzCoMKgwqDCoMKgIC/CoMKgwqAg
XMKgwqDCoMKgwqDCoMKgIC8KPiAgwqDCoMKgwqDCoCBcLSBSRUFEWcKgwqAgRkFJTEVEIC0vCj4g
Cj4gCgpOb3RoaW5nIGFnYWluc3QgdGhpcywgYnV0IEkgZG9uJ3QgdGhpbmsgaXQgYmVsb25ncyBp
biB0aGlzIHNlcmllcy4KCj4+IEBAIC0xMDYsOSArMTEzLDE1IEBAIHN0YXRpYyBpbmxpbmUKPj4g
wqB2b2lkIGludGVsX3VjX2Z3X2luaXRfZWFybHkoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBpbnRlbF91Y19md190eXBl
IHR5cGUpCj4+IMKgewo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIHdlIHVzZSBGSVJNV0FS
RV9VTklOSVRJQUxJWkVEIHRvIGRldGVjdCBjaGVja3MgYWdhaW5zdCAKPj4gZmV0Y2hfc3RhdHVz
Cj4+ICvCoMKgwqDCoCAqIGJlZm9yZSB3ZSdyZSBsb29rZWQgYXQgdGhlIEhXIGNhcHMgdG8gc2Vl
IGlmIHdlIGhhdmUgdWMgc3VwcG9ydAo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBCVUlMRF9C
VUdfT04oSU5URUxfVUNfRklSTVdBUkVfVU5JTklUSUFMSVpFRCk7Cj4+ICsKPj4gwqDCoMKgwqAg
dWNfZnctPnBhdGggPSBOVUxMOwo+PiAtwqDCoMKgIHVjX2Z3LT5mZXRjaF9zdGF0dXMgPSBJTlRF
TF9VQ19GSVJNV0FSRV9OT05FOwo+PiAtwqDCoMKgIHVjX2Z3LT5sb2FkX3N0YXR1cyA9IElOVEVM
X1VDX0ZJUk1XQVJFX05PTkU7Cj4+ICvCoMKgwqAgdWNfZnctPmZldGNoX3N0YXR1cyA9IElOVEVM
X1VDX0ZJUk1XQVJFX1VOSU5JVElBTElaRUQ7Cj4+ICvCoMKgwqAgdWNfZnctPmxvYWRfc3RhdHVz
ID0gSU5URUxfVUNfRklSTVdBUkVfTk9UX1NUQVJURUQ7Cj4+IMKgwqDCoMKgIHVjX2Z3LT50eXBl
ID0gdHlwZTsKPj4gwqB9Cj4+IEBAIC0xMjIsNiArMTM1LDEzIEBAIHN0YXRpYyBpbmxpbmUgYm9v
bCBpbnRlbF91Y19md19pc19sb2FkZWQoc3RydWN0IAo+PiBpbnRlbF91Y19mdyAqdWNfZncpCj4+
IMKgwqDCoMKgIHJldHVybiB1Y19mdy0+bG9hZF9zdGF0dXMgPT0gSU5URUxfVUNfRklSTVdBUkVf
U1VDQ0VTUzsKPj4gwqB9Cj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfZndfc3VwcG9y
dGVkKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCj4gCj4gcmV0dXJuaW5nICJzdXBwb3J0ZWQi
IGluIGNhc2Ugb2YgIm5vIGJsb2Ivbm8gZGVmcyIgbWlnaHQgYmUgbWlzbGVhZGluZwo+IG1heWJl
ICJkZWZpbmVkIiB3aWxsIGNsZWFyZXIgPwo+IAoKTXkgaWRlYSB3YXMgdG8gdHJhY2sgaWYgdGhl
IEhXIGhhZCBzdXBwb3J0IGZvciBGVyBsb2FkaW5nIChpLmUuIGlmIHRoZXJlIAppcyBhIGd1Yy9o
dWMgaW4gdGhlIEdUKSwgaW5kZXBlbmRlbnRseSBmcm9tIHVzIGRlZmluaW5nIG9yIGZpbmRpbmcg
YSAKZmlybXdhcmUgZm9yIGl0IG9yIG5vdC4gaHdfc3VwcG9ydGVkPwoKRGFuaWVsZQoKPj4gK3sK
Pj4gK8KgwqDCoCAvKiBzaG91bGRuJ3QgY2FsbCB0aGlzIGJlZm9yZSBjaGVja2luZyBody9ibG9i
IGF2YWlsYWJpbGl0eSAqLwo+PiArwqDCoMKgIEdFTV9CVUdfT04odWNfZnctPmZldGNoX3N0YXR1
cyA9PSBJTlRFTF9VQ19GSVJNV0FSRV9VTklOSVRJQUxJWkVEKTsKPj4gK8KgwqDCoCByZXR1cm4g
dWNfZnctPmZldGNoX3N0YXR1cyAhPSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEOwo+
PiArfQo+PiArCj4+IMKgc3RhdGljIGlubGluZSB2b2lkIGludGVsX3VjX2Z3X3Nhbml0aXplKHN0
cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCj4+IMKgewo+PiDCoMKgwqDCoCBpZiAoaW50ZWxfdWNf
ZndfaXNfbG9hZGVkKHVjX2Z3KSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
