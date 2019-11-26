Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149EF10A2F0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B746E440;
	Tue, 26 Nov 2019 17:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9303A6E440
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:04:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:04:46 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202779327"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 09:04:45 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
Date: Tue, 26 Nov 2019 17:04:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Double check vma placement upon
 gaining the vm lock
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

Ck9uIDI2LzExLzIwMTkgMTU6MjYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgY3VycmVudCB1
bmJpbmQgKyByZXRyeSBvZiBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oKSBhbGxvd3MgZm9yCj4g
c29tZW9uZSBlbHNlIHRvIHNuZWFrIGFuZCBjbGFpbSB0aGUgdm1hIHVuZGVyIGEgZGlmZmVyZW50
IHBsYWNlbWVudAo+IGJlZm9yZSB0aGUgZmlyc3QgR0dUVCBiaW5kIGlzIGNvbXBsZXRlLiBMZWFk
aW5nIHRvIGNvbmZ1c2lvbiBhbmQKPiBjb21wbGFpbnRzIGFsbCBvdmVyLgo+IAo+IElkZWFsbHkg
d2Ugd291bGQgcHVsbCB0aGUgZXZpY3QgKyByZWJpbmQgdW5kZXIgdGhlIHNhbWUgbG9jaywgYnV0
IGZvcgo+IG5vdywgc2ltcGx5IHRyeSBhZ2Fpbi4KPiAKPiBGaXhlczogMjg1MDc0OGVmODc2ICgi
ZHJtL2k5MTU6IFB1bGwgaTkxNV92bWFfcGluIHVuZGVyIHRoZSB2bS0+bXV0ZXgiKQo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDM5ICsrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8ICA2ICsrKysrCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IDYxMzk1YjAzNDQzZS4uYjA4NzhkMzVlZDFk
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTkzOCwzMyArOTM4LDM4IEBAIGk5
MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+
ICAgCWlmIChJU19FUlIodm1hKSkKPiAgIAkJcmV0dXJuIHZtYTsKPiAgIAo+IC0JaWYgKGk5MTVf
dm1hX21pc3BsYWNlZCh2bWEsIHNpemUsIGFsaWdubWVudCwgZmxhZ3MpKSB7Cj4gLQkJaWYgKGZs
YWdzICYgUElOX05PTkJMT0NLKSB7Cj4gLQkJCWlmIChpOTE1X3ZtYV9pc19waW5uZWQodm1hKSB8
fCBpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSkKPiAtCQkJCXJldHVybiBFUlJfUFRSKC1FTk9TUEMp
Owo+IC0KPiAtCQkJaWYgKGZsYWdzICYgUElOX01BUFBBQkxFICYmCj4gLQkJCSAgICB2bWEtPmZl
bmNlX3NpemUgPiBnZ3R0LT5tYXBwYWJsZV9lbmQgLyAyKQo+IC0JCQkJcmV0dXJuIEVSUl9QVFIo
LUVOT1NQQyk7Cj4gKwlkbyB7Cj4gKwkJaWYgKGk5MTVfdm1hX21pc3BsYWNlZCh2bWEsIHNpemUs
IGFsaWdubWVudCwgZmxhZ3MpKSB7Cj4gKwkJCWlmIChmbGFncyAmIFBJTl9OT05CTE9DSykgewo+
ICsJCQkJaWYgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpIHx8Cj4gKwkJCQkgICAgaTkxNV92bWFf
aXNfYWN0aXZlKHZtYSkpCj4gKwkJCQkJcmV0dXJuIEVSUl9QVFIoLUVOT1NQQyk7Cj4gKwo+ICsJ
CQkJaWYgKGZsYWdzICYgUElOX01BUFBBQkxFICYmCj4gKwkJCQkgICAgdm1hLT5mZW5jZV9zaXpl
ID4gZ2d0dC0+bWFwcGFibGVfZW5kIC8gMikKPiArCQkJCQlyZXR1cm4gRVJSX1BUUigtRU5PU1BD
KTsKPiArCQkJfQo+ICsKPiArCQkJcmV0ID0gaTkxNV92bWFfdW5iaW5kKHZtYSk7Cj4gKwkJCWlm
IChyZXQpCj4gKwkJCQlyZXR1cm4gRVJSX1BUUihyZXQpOwo+ICAgCQl9Cj4gICAKPiAtCQlyZXQg
PSBpOTE1X3ZtYV91bmJpbmQodm1hKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gRVJSX1BU
UihyZXQpOwo+IC0JfQo+ICsJCXJldCA9IGk5MTVfdm1hX3Bpbih2bWEsIHNpemUsIGFsaWdubWVu
dCwgZmxhZ3MgfCBQSU5fR0xPQkFMKTsKPiArCX0gd2hpbGUgKHJldCA9PSAtRUFHQUlOKTsgLyog
cmV0cnkgaWYgd2UgbG9zdCBvdXIgcGxhY2VtZW50ICovCj4gKwlpZiAocmV0KQo+ICsJCXJldHVy
biBFUlJfUFRSKHJldCk7Cj4gICAKPiAgIAlpZiAodm1hLT5mZW5jZSAmJiAhaTkxNV9nZW1fb2Jq
ZWN0X2lzX3RpbGVkKG9iaikpIHsKPiAgIAkJbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwo+
ICAgCQlyZXQgPSBpOTE1X3ZtYV9yZXZva2VfZmVuY2Uodm1hKTsKPiAgIAkJbXV0ZXhfdW5sb2Nr
KCZnZ3R0LT52bS5tdXRleCk7Cj4gLQkJaWYgKHJldCkKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWk5
MTVfdm1hX3VucGluKHZtYSk7Cj4gICAJCQlyZXR1cm4gRVJSX1BUUihyZXQpOwo+ICsJCX0KPiAg
IAl9Cj4gICAKPiAtCXJldCA9IGk5MTVfdm1hX3Bpbih2bWEsIHNpemUsIGFsaWdubWVudCwgZmxh
Z3MgfCBQSU5fR0xPQkFMKTsKPiAtCWlmIChyZXQpCj4gLQkJcmV0dXJuIEVSUl9QVFIocmV0KTsK
PiAtCj4gICAJcmV0dXJuIHZtYTsKPiAgIH0KPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwo+
IGluZGV4IGU1NTEyZjI2ZTIwYS4uZjZlNjYxNDI4YjAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3ZtYS5jCj4gQEAgLTkwNSw2ICs5MDUsMTIgQEAgaW50IGk5MTVfdm1hX3BpbihzdHJ1Y3QgaTkx
NV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBhbGlnbm1lbnQsIHU2NCBmbGFncykKPiAgIAkJCV9f
aTkxNV92bWFfc2V0X21hcF9hbmRfZmVuY2VhYmxlKHZtYSk7Cj4gICAJfQo+ICAgCj4gKwkvKiBT
b21lYm9keSBlbHNlIG1hbmFnZWQgdG8gZ2F6dW1wIG91ciBwbGFjZW1lbnQ/ICovCj4gKwlpZiAo
aTkxNV92bWFfbWlzcGxhY2VkKHZtYSwgc2l6ZSwgYWxpZ25tZW50LCBmbGFncykpIHsKPiArCQll
cnIgPSAtRUFHQUlOOwo+ICsJCWdvdG8gZXJyX2FjdGl2ZTsKPiArCX0KPiArCgpXaGF0IGFib3V0
IG90aGVyIGNhbGxlcnM/IFRoZXkgd2lsbCBub3QgYmUgZXhwZWN0aW5nIHRoaXMuCgo+ICAgCUdF
TV9CVUdfT04oIXZtYS0+cGFnZXMpOwo+ICAgCWVyciA9IGk5MTVfdm1hX2JpbmQodm1hLAo+ICAg
CQkJICAgIHZtYS0+b2JqID8gdm1hLT5vYmotPmNhY2hlX2xldmVsIDogMCwKPiAKClJlZ2FyZHMs
CgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
