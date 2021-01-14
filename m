Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 721122F5C3F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 09:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC28D6E04E;
	Thu, 14 Jan 2021 08:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187066E04E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 08:13:28 +0000 (UTC)
IronPort-SDR: 7TlPpuLYOTi04pbeGtyTWFYLSpvr41PfzlzgeUABQs4kteEUMuqs4hfu61qGRz+G8qnaC2ehhg
 HkQ97Rv3Rcfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="239871209"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="239871209"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:13:26 -0800
IronPort-SDR: MLnL44vOCk9XE0/MkgXGY056I3yWUMMtaVjXNia8D2/rmRFlbpkeC8HBLwzMyFYJQhh6tWPUND
 djhtQTDtT+YA==
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="424870689"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:13:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <95209829c2f5259637b96f7dc3c6af75d60a8ad9.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210113141158.25513-1-jani.nikula@intel.com>
 <95209829c2f5259637b96f7dc3c6af75d60a8ad9.camel@intel.com>
Date: Thu, 14 Jan 2021 10:13:23 +0200
Message-ID: <87im80q6l8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: fix the uint*_t types
 that have crept in
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gV2VkLCAxMyBKYW4gMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOgo+IE9uIFdlZCwgMjAyMS0wMS0xMyBhdCAxNjoxMSArMDIwMCwgSmFuaSBOaWt1bGEg
d3JvdGU6Cj4+IEFsd2F5cyBwcmVmZXIgdGhlIGtlcm5lbCB0eXBlcyBvdmVyIHN0ZGludCB0eXBl
cyBpbiBpOTE1Lgo+PiAKPgo+Cj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgoKVGhhbmtzLCBwdXNoZWQuCgpCUiwKSmFuaS4KCgo+Cj4+
IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiBDYzogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgMiArLQo+PiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICAgICAgIHwgMiArLQo+PiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiAr
LQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICAgICAg
IHwgMiArLQo+PiDCoDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPj4gaW5kZXggMDE4OWQzNzlhNTVlLi5mYzMzMzc4NTQ0NjUgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IEBAIC0xOTU0LDcgKzE5
NTQsNyBAQCBpbnQgaW50ZWxfbWFpbl90b19hdXhfcGxhbmUoY29uc3Qgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIsIGludCBtYWluX3BsYW5lKQo+PiDCoAo+PiAKPj4gCj4+IAo+PiDCoGJvb2wK
Pj4gwqBpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihjb25zdCBzdHJ1Y3QgZHJt
X2Zvcm1hdF9pbmZvICppbmZvLAo+PiAtCQkJCSAgICB1aW50NjRfdCBtb2RpZmllcikKPj4gKwkJ
CQkgICAgdTY0IG1vZGlmaWVyKQo+PiDCoHsKPj4gwqAJcmV0dXJuIGluZm8tPmlzX3l1diAmJgo+
PiDCoAkgICAgICAgaW5mby0+bnVtX3BsYW5lcyA9PSAoaXNfY2NzX21vZGlmaWVyKG1vZGlmaWVy
KSA/IDQgOiAyKTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgKPj4gaW5kZXggN2RkYmMwMGEwZjQxLi5kNmMzZmE5NTQ0ZWYgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4+IEBAIC02NDMsNyAr
NjQzLDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1f
aTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsCj4+IMKgCj4+IAo+PiAKPj4gCj4+IMKgYm9vbAo+PiDC
oGludGVsX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGNvbnN0IHN0cnVjdCBkcm1fZm9y
bWF0X2luZm8gKmluZm8sCj4+IC0JCQkJICAgIHVpbnQ2NF90IG1vZGlmaWVyKTsKPj4gKwkJCQkg
ICAgdTY0IG1vZGlmaWVyKTsKPj4gwqAKPj4gCj4+IAo+PiAKPj4gwqBpbnQgaW50ZWxfcGxhbmVf
Y29tcHV0ZV9ndHQoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Cj4+IMKg
dTMyIGludGVsX3BsYW5lX2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoaW50ICp4LCBpbnQgKnksCj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oCj4+IGluZGV4IDI0NzkyMTAyYmNmNi4uNTg1YmIxZWRlYTA0IDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiBA
QCAtNTQ1LDcgKzU0NSw3IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7Cj4+IMKgCQlzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYjsKPj4gwqAKPj4gCj4+IAo+PiAKPj4gwqAJCXUxNiBhbHBo
YTsKPj4gLQkJdWludDE2X3QgcGl4ZWxfYmxlbmRfbW9kZTsKPj4gKwkJdTE2IHBpeGVsX2JsZW5k
X21vZGU7Cj4+IMKgCQl1bnNpZ25lZCBpbnQgcm90YXRpb247Cj4+IMKgCQllbnVtIGRybV9jb2xv
cl9lbmNvZGluZyBjb2xvcl9lbmNvZGluZzsKPj4gwqAJCWVudW0gZHJtX2NvbG9yX3JhbmdlIGNv
bG9yX3JhbmdlOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPj4g
aW5kZXggMzMyMDBiNWNmYWQwLi41ZmQ0ZmE0ODA1ZWYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+PiBAQCAtNjc2LDcgKzY3Niw3IEBAIHN0YXRpYyBi
b29sIGludGVsX2ZiY19od190cmFja2luZ19jb3ZlcnNfc2NyZWVuKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQo+PiDCoH0KPj4gwqAKPj4gCj4+IAo+PiAKPj4gwqBzdGF0aWMgYm9vbCB0aWxpbmdf
aXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAtCQkJICAgIHVp
bnQ2NF90IG1vZGlmaWVyKQo+PiArCQkJICAgIHU2NCBtb2RpZmllcikKPj4gwqB7Cj4+IMKgCXN3
aXRjaCAobW9kaWZpZXIpIHsKPj4gwqAJY2FzZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
