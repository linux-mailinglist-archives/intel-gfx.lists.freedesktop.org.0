Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED42979C56
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 00:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402376E0AC;
	Mon, 29 Jul 2019 22:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C5C6E0AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 22:16:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 15:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="162371128"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2019 15:16:45 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190729211937.19731-1-lucas.demarchi@intel.com>
 <20190729211937.19731-3-lucas.demarchi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e2ff57ab-8725-dc4a-fb85-b782451ffed2@intel.com>
Date: Mon, 29 Jul 2019 15:16:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729211937.19731-3-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/tgl: stop using ERROR_GEN6
 and DONE_REG
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

CgpPbiA3LzI5LzE5IDI6MTkgUE0sIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBUaGVzZSByZWdp
c3RlcnMgaGF2ZSBiZWVuIHJlbW92ZWQgb24gZ2VuMTIuCj4gCj4gQ2M6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMTYgKysrKysrKysrLS0tLS0t
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiBpbmRleCA2NzNjNWRjOTNkMjgu
Ljk3NGJlMzUxNjFkNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+
IEBAIC03NDUsMTUgKzc0NSwxNSBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90b19zZ2woc3Ry
dWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKPiAgIAlmb3IgKGkgPSAwOyBpIDwgZXJy
b3ItPm5mZW5jZTsgaSsrKQo+ICAgCQllcnJfcHJpbnRmKG0sICIgIGZlbmNlWyVkXSA9ICUwOGxs
eFxuIiwgaSwgZXJyb3ItPmZlbmNlW2ldKTsKPiAgIAo+IC0JaWYgKElOVEVMX0dFTihtLT5pOTE1
KSA+PSA2KSB7Cj4gKwlpZiAoSVNfR0VOX1JBTkdFKG0tPmk5MTUsIDYsIDExKSkKPiAgIAkJZXJy
X3ByaW50ZihtLCAiRVJST1I6IDB4JTA4eFxuIiwgZXJyb3ItPmVycm9yKTsKPiAgIAo+IC0JCWlm
IChJTlRFTF9HRU4obS0+aTkxNSkgPj0gOCkKPiAtCQkJZXJyX3ByaW50ZihtLCAiRkFVTFRfVExC
X0RBVEE6IDB4JTA4eCAweCUwOHhcbiIsCj4gLQkJCQkgICBlcnJvci0+ZmF1bHRfZGF0YTEsIGVy
cm9yLT5mYXVsdF9kYXRhMCk7Cj4gKwlpZiAoSU5URUxfR0VOKG0tPmk5MTUpID49IDgpCj4gKwkJ
ZXJyX3ByaW50ZihtLCAiRkFVTFRfVExCX0RBVEE6IDB4JTA4eCAweCUwOHhcbiIsCj4gKwkJCSAg
IGVycm9yLT5mYXVsdF9kYXRhMSwgZXJyb3ItPmZhdWx0X2RhdGEwKTsKPiAgIAo+ICsJaWYgKElT
X0dFTl9SQU5HRShtLT5pOTE1LCA2LCAxMSkpCj4gICAJCWVycl9wcmludGYobSwgIkRPTkVfUkVH
OiAweCUwOHhcbiIsIGVycm9yLT5kb25lX3JlZyk7CgpDb3VsZCBtb3ZlIHRoaXMgaW4gdGhlIGlm
IGFib3ZlIHdoZXJlIHdlIHByaW50IEVSUk9SLCBidXQgYW55d2F5OgoKUmV2aWV3ZWQtYnk6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpE
YW5pZWxlCgo+IC0JfQo+ICAgCj4gICAJaWYgKElTX0dFTihtLT5pOTE1LCA3KSkKPiAgIAkJZXJy
X3ByaW50ZihtLCAiRVJSX0lOVDogMHglMDh4XG4iLCBlcnJvci0+ZXJyX2ludCk7Cj4gQEAgLTE1
NjksOCArMTU2OSwxMCBAQCBzdGF0aWMgdm9pZCBjYXB0dXJlX3JlZ19zdGF0ZShzdHJ1Y3QgaTkx
NV9ncHVfc3RhdGUgKmVycm9yKQo+ICAgCj4gICAJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA2KSB7
Cj4gICAJCWVycm9yLT5kZXJybXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERFUlJNUik7
Cj4gLQkJZXJyb3ItPmVycm9yID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBFUlJPUl9HRU42
KTsKPiAtCQllcnJvci0+ZG9uZV9yZWcgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERPTkVf
UkVHKTsKPiArCQlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTIpIHsKPiArCQkJZXJyb3ItPmVycm9y
ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBFUlJPUl9HRU42KTsKPiArCQkJZXJyb3ItPmRv
bmVfcmVnID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBET05FX1JFRyk7Cj4gKwkJfQo+ICAg
CX0KPiAgIAo+ICAgCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNSkKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
