Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804548CCB5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 09:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773896E281;
	Wed, 14 Aug 2019 07:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3C36E281
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 07:27:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 00:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="170651515"
Received: from umakulka-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.30.104])
 by orsmga008.jf.intel.com with ESMTP; 14 Aug 2019 00:27:27 -0700
MIME-Version: 1.0
To: Dong Yang <dong.yang@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190814004448.1504-1-dong.yang@intel.com>
References: <20190814004448.1504-1-dong.yang@intel.com>
Message-ID: <156576764656.5083.1522227245734045603@fzharino-mobl1.ccr.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 14 Aug 2019 10:27:26 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E0
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
Cc: Yang@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEb25nIFlhbmcgKDIwMTktMDgtMTQgMDM6NDQ6NDgpCj4gRnJvbTogIllhbmcsIERv
bmciIDxkb25nLnlhbmdAaW50ZWwuY29tPgo+IAo+IEJyb3h0b24gc3RlcHBpbmdzIHN0YXJ0aW5n
IGZyb20gR1QgRTAgaGF2ZSBmaXhlZCB0aGUgYnVnLCByZW1vdmUKPiBXQSBzaW5jZSBzdGVwcGlu
ZyBHVCBFMC4KCkluIGk5MTUgcGF0Y2hlcywgd2Uga2VlcCBhIGNoYW5nZWxvZyBvZiB3aGF0IHdh
cyBjaGFuZ2VkIGNvbXBhcmVkIHRvIHRoZQpwcmV2aW91cyBpdGVyYXRpb24gKHNlZSBnaXQgbG9n
IGRyaXZlcnMvZ3B1L2RybS9pOTE1IGZvciBleGFtcGxlKSBhbmQgdGhlbgp1c2UgIi12IiBvcHRp
b24gaW4gZ2l0IHNlbmQtZW1haWwvZm9ybWF0LXBhdGNoIHRvIGluZGljYXRlIHRoZSBwYXRjaApz
ZXJpZXMgaXRlcmF0aW9uLgoKWW91IGFsc28gd2FudCB0byBDYzogdGhlIGZvbGtzIHdobyBkaWQg
cmV2aWV3IG9uIHRoZSBwcmV2aW91cywgZm9yCmVhc2llciB0cmFja2luZy4KClJlZ2FyZHMsIEpv
b25hcwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBZYW5nLCBEb25nIDxkb25nLnlhbmdAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgNCArKystCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPiBpbmRleCA1ZjNlNWMxM2ZiYWEuLjk1NTE5YmFjODk0OCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0yMTQxLDYgKzIxNDEsOCBAQCBJU19TVUJQTEFU
Rk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgI2RlZmluZSBCWFRf
UkVWSURfQjAgICAgICAgICAgIDB4Mwo+ICAjZGVmaW5lIEJYVF9SRVZJRF9CX0xBU1QgICAgICAg
MHg4Cj4gICNkZWZpbmUgQlhUX1JFVklEX0MwICAgICAgICAgICAweDkKPiArI2RlZmluZSBCWFRf
UkVWSURfRDAgICAgICAgICAgIDB4Qwo+ICsjZGVmaW5lIEJYVF9SRVZJRF9FMCAgICAgICAgICAg
MHhECj4gIAo+ICAjZGVmaW5lIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSBc
Cj4gICAgICAgICAoSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgSVNfUkVWSUQoZGV2X3ByaXYsIHNp
bmNlLCB1bnRpbCkpCj4gQEAgLTIzNTcsNyArMjM1OSw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBp
bnRlbF9zY2Fub3V0X25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gIHN0YXRpYyBpbmxpbmUgYm9vbAo+ICBpbnRlbF9nZ3R0X3VwZGF0ZV9uZWVkc192dGRf
d2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gLSAgICAgICByZXR1
cm4gSVNfQlJPWFRPTihkZXZfcHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOwo+ICsgICAgICAg
cmV0dXJuIElTX0JYVF9SRVZJRChkZXZfcHJpdiwgMCwgQlhUX1JFVklEX0QwKSAmJiBpbnRlbF92
dGRfYWN0aXZlKCk7Cj4gIH0KPiAgCj4gIC8qIGk5MTVfZHJ2LmMgKi8KPiAtLSAKPiAyLjIyLjAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
