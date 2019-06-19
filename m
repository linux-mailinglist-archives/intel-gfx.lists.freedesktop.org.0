Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C50DC4BCC2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 17:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB8F6E3D6;
	Wed, 19 Jun 2019 15:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513896E3D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 15:28:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 08:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181658214"
Received: from mcostacx-wtg.ger.corp.intel.com (HELO localhost)
 ([10.249.47.136])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 08:28:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190619013856.11872-1-stuart.summers@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190619013856.11872-1-stuart.summers@intel.com>
Date: Wed, 19 Jun 2019 18:30:04 +0300
Message-ID: <87a7edlhj7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] mm: Use local variable for swap address
 space
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

T24gVHVlLCAxOCBKdW4gMjAxOSwgU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4gd3JvdGU6Cj4gVGhpcyBhZGRyZXNzZXMgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvcjoK
PiBtbS9odWdlX21lbW9yeS5jOiBJbiBmdW5jdGlvbiDigJhfX3NwbGl0X2h1Z2VfcGFnZeKAmToK
PiBtbS9odWdlX21lbW9yeS5jOjI1MDY6NDE6IHdhcm5pbmc6IGRlcmVmZXJlbmNpbmcg4oCYdm9p
ZCAq4oCZIHBvaW50ZXIKPiAgICAgX194YV9zdG9yZSgmc3dhcF9hZGRyZXNzX3NwYWNlKGVudHJ5
KS0+aV9wYWdlcywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+
Cj4gbW0vaHVnZV9tZW1vcnkuYzoyNTA2OjQxOiBlcnJvcjogcmVxdWVzdCBmb3IgbWVtYmVyIOKA
mGlfcGFnZXPigJkgaW4KPiBzb21ldGhpbmcgbm90IGEgc3RydWN0dXJlIG9yIHVuaW9uCgpEaWQg
eW91IGNoZWNrIHVuZGVyIHdoYXQgY2lyY3Vtc3RhbmNlcyBpdCB3b3VsZCBiZSBhIHZvaWQgcG9p
bnRlcj8KClVuZGVyIHRob3NlIGNpcmN1bXN0YW5jZXMsIHdoYXQgZG8geW91IHRoaW5rIHdpbGwg
aGFwcGVuIHJ1bnRpbWUgYWZ0ZXIKeW91J3ZlIGJydXNoZWQgdGhlIGJ1aWxkIGVycm9yIHVuZGVy
IHRoZSBjYXJwZXQ/CgpBbnl3YXksIHRoZSBwYXRjaCBpcyBhZ2FpbnN0IGEgY29tbWl0IGluIHRv
cGljL2NvcmUtZm9yLUNJLCBub3QgdG8gYmUKbWVyZ2VkIGVsc2V3aGVyZS4KCkJSLApKYW5pLgoK
Cgo+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25l
ZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0t
Cj4gIG1tL2h1Z2VfbWVtb3J5LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL21tL2h1Z2VfbWVtb3J5LmMg
Yi9tbS9odWdlX21lbW9yeS5jCj4gaW5kZXggYWZmYjJjMzY2N2Y5Li5iY2VkNTQ4NTEzN2IgMTAw
NjQ0Cj4gLS0tIGEvbW0vaHVnZV9tZW1vcnkuYwo+ICsrKyBiL21tL2h1Z2VfbWVtb3J5LmMKPiBA
QCAtMjUwMyw3ICsyNTAzLDkgQEAgc3RhdGljIHZvaWQgX19zcGxpdF9odWdlX3BhZ2Uoc3RydWN0
IHBhZ2UgKnBhZ2UsIHN0cnVjdCBsaXN0X2hlYWQgKmxpc3QsCj4gIAkJCQkJaGVhZCArIGksIDAp
Owo+ICAJCX0gZWxzZSBpZiAoUGFnZVN3YXBDYWNoZShwYWdlKSkgewo+ICAJCQlzd3BfZW50cnlf
dCBlbnRyeSA9IHsgLnZhbCA9IHBhZ2VfcHJpdmF0ZShoZWFkICsgaSkgfTsKPiAtCQkJX194YV9z
dG9yZSgmc3dhcF9hZGRyZXNzX3NwYWNlKGVudHJ5KS0+aV9wYWdlcywKPiArCQkJc3RydWN0IGFk
ZHJlc3Nfc3BhY2UgKmFkZHJlc3Nfc3BhY2UgPQo+ICsJCQkJc3dhcF9hZGRyZXNzX3NwYWNlKGVu
dHJ5KTsKPiArCQkJX194YV9zdG9yZSgmYWRkcmVzc19zcGFjZS0+aV9wYWdlcywKPiAgCQkJCSAg
IHN3cF9vZmZzZXQoZW50cnkpLAo+ICAJCQkJICAgaGVhZCArIGksIDApOwo+ICAJCX0KCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
