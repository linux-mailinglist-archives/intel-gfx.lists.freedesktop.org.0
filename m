Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C845E427
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616B6898B7;
	Wed,  3 Jul 2019 12:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC8D898B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:43:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 05:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184737211"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 05:43:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703121204.30754-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ee12a6b8-5916-15e7-40c7-f2833698afd8@linux.intel.com>
Date: Wed, 3 Jul 2019 13:43:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703121204.30754-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check caller held wakerefs in
 assert_forcewakes_active
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

Ck9uIDAzLzA3LzIwMTkgMTM6MTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgaW50ZW50IG9m
IHRoZSBhc3NlcnQgaXMgdG8gZG9jdW1lbnQgdGhhdCB0aGUgY2FsbGVyIHRvb2sgdGhlCj4gYXBw
cm9wcmlhdGUgd2FrZXJlZnMgZm9yIHRoZSBmdW5jdGlvbi4gSG93ZXZlciwgYXMgVHZydGtvIHBv
aW50ZWQgb3V0LAo+IHdlIHNpbXBseSBjaGVjayB3aGV0aGVyIHRoZSBmd19kb21haW5zIGFyZSBh
Y3RpdmUgYW5kIG1heSBiZSBjb25mdXNlZCBieQo+IHRoZSBhdXRvIHdha2VyZWYgd2hpY2ggbWF5
IGJlIGRyb3BwZWQgYmV0d2VlbiB0aGUgY2hlY2sgYW5kIHVzZS4gTGV0J3MKPiBiZSBtb3JlIGNh
cmVmdWwgaW4gdGhlIGFzc2VydCBhbmQgY2hlY2sgdGhhdCBlYWNoIGZ3X2RvbWFpbiBoYXMgYW4K
PiBleHBsaWNpdCBjYWxsZXIgd2FrZXJlZiBhYm92ZSBhbmQgYmV5b25kIHRoZSBhdXRvbWF0aWMg
d2FrZXJlZi4KCkFsdGhvdWdoIHdlIHN0aWxsIGRvbid0IGtub3cgaWYgaXQgaXMgb3VyIGNhbGxl
ciB3aG8gdG9vayB0aGUgZncgb3Igc29tZSAKdW5yZWxhdGVkIHRocmVhZC4gU3RpbGwsIGEgbW9y
ZSB0aG9yb3VnaCBjaGVjayBpcyBiZXR0ZXIgZXZlbiBpZiBub3QgCnBlcmZlY3QuCgo+IAo+IFJl
cG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VuY29yZS5jCj4gaW5kZXggNjhkNTRlMTI2ZDc5Li5iYzI1YTZlNTE0NjMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwo+IEBAIC03MzgsNiArNzM4LDEyIEBAIHZv
aWQgYXNzZXJ0X2ZvcmNld2FrZXNfaW5hY3RpdmUoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
KQo+ICAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUoc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlLAo+ICAgCQkJICAgICAgZW51bSBmb3JjZXdha2VfZG9tYWlucyBmd19kb21haW5zKQo+
ICAgewo+ICsJc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWluICpkb21haW47Cj4g
Kwl1bnNpZ25lZCBpbnQgdG1wOwo+ICsKPiArCWlmICghSVNfRU5BQkxFRChDT05GSUdfRFJNX2k5
MTVfUlVOVElNRV9QTSkpCj4gKwkJcmV0dXJuOwo+ICsKCklmIHVuY29yZS0+ZnVuY3MuZm9yY2Vf
d2FrZV9nZXQgaXMgc2V0IHdoeSB3b3VsZG4ndCB3ZSBzdGlsbCB3YW50IHRvIHJ1biAKdGhlIGFz
c2VydHM/Cgo+ICAgCWlmICghdW5jb3JlLT5mdW5jcy5mb3JjZV93YWtlX2dldCkKPiAgIAkJcmV0
dXJuOwo+ICAgCj4gQEAgLTc0Nyw2ICs3NTMsMjQgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19h
Y3RpdmUoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAo+ICAgCVdBUk4oZndfZG9tYWlucyAm
IH51bmNvcmUtPmZ3X2RvbWFpbnNfYWN0aXZlLAo+ICAgCSAgICAgIkV4cGVjdGVkICUwOHggZndf
ZG9tYWlucyB0byBiZSBhY3RpdmUsIGJ1dCAlMDh4IGFyZSBvZmZcbiIsCj4gICAJICAgICBmd19k
b21haW5zLCBmd19kb21haW5zICYgfnVuY29yZS0+ZndfZG9tYWluc19hY3RpdmUpOwo+ICsKPiAr
CS8qCj4gKwkgKiBDaGVjayB0aGF0IHRoZSBjYWxsZXIgaGFzIGFuIGV4cGxpY2l0IHdha2VyZWYg
YW5kIHdlIGRvbid0IG1pc3Rha2UKPiArCSAqIGl0IGZvciB0aGUgYXV0byB3YWtlcmVmLgo+ICsJ
ICovCj4gKwlsb2NhbF9pcnFfZGlzYWJsZSgpOwo+ICsJZm9yX2VhY2hfZndfZG9tYWluX21hc2tl
ZChkb21haW4sIGZ3X2RvbWFpbnMsIHVuY29yZSwgdG1wKSB7Cj4gKwkJdW5zaWduZWQgaW50IGV4
cGVjdCA9IDE7Cj4gKwo+ICsJCWlmIChocnRpbWVyX2FjdGl2ZSgmZG9tYWluLT50aW1lcikpCj4g
KwkJCWV4cGVjdCsrOwo+ICsKPiArCQlpZiAoV0FSTihkb21haW4tPndha2VfY291bnQgPCBleHBl
Y3QsCj4gKwkJCSAiRXhwZWN0ZWQgZG9tYWluICVkIHRvIGJlIGhlbGQgYXdha2UgYnkgY2FsbGVy
XG4iLAo+ICsJCQkgZG9tYWluLT5pZCkpCj4gKwkJCWJyZWFrOwo+ICsJfQo+ICsJbG9jYWxfaXJx
X2VuYWJsZSgpOwoKVGhpcyBwYXJ0IGxvb2tzIGdvb2QuIExldCB3YWl0IGFuZCBzZWUgaWYgQ0kg
Y2FsbHMgbWUgYSBmb29sLgoKUmVnYXJkcywKClR2cnRrbwoKPiAgIH0KPiAgIAo+ICAgLyogV2Ug
Z2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5IGNvb2wgcmVnaXN0ZXJzICovCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
