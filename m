Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C13CC0AE7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79E96E1B9;
	Fri, 27 Sep 2019 18:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74A16E1B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:18:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 11:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="180590568"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Sep 2019 11:18:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 21:18:50 +0300
Date: Fri, 27 Sep 2019 21:18:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190927181850.GY1208@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
 <20190925203352.9827-3-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925203352.9827-3-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Read SAGV block time from
 PCODE
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
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDE6MzM6NTFQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IFN0YXJ0aW5nIGZyb20gVEdMLCB3ZSBub3cgbmVlZCB0byByZWFkIHRoZSBTQUdWIGJs
b2NrIHRpbWUgdmlhIGEgUENPREUKPiBtYWlsYm94LCByYXRoZXIgdGhhbiBoYXZpbmcgYSBzdGF0
aWMgdmFsdWUuCj4gCj4gQlNwZWM6IDQ5MzI2Cj4gCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBpbnRlbC5jb20+CgpXcm9uZyBhZGRyZXNzLiBJIGlnbm9yZSBhbGwgcGF0Y2hl
cyBnb2luZyB0aGVyZSwgc28gaXQncyBub3QgZG9pbmcgeW91CmFueSBnb29kLgoKPiBDYzogU3Rh
bmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4gQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyB8IDIwICsrKysrKysrKysrKysrKy0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiBpbmRleCBlNzUyZGU5NDcwYmQuLjg0YWU2NTUzNDg1YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+IEBAIC04ODY1LDYgKzg4NjUsNyBAQCBlbnVtIHsKPiAgI2RlZmluZSAgICAgR0VO
OV9TQUdWX0RJU0FCTEUJCQkweDAKPiAgI2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJU0FCTEVE
CQkweDEKPiAgI2RlZmluZSAgICAgR0VOOV9TQUdWX0VOQUJMRQkJCTB4Mwo+ICsjZGVmaW5lIEdF
TjEyX1BDT0RFX1JFQURfU0FHVl9CTE9DS19USU1FX1VTCTB4MjMKPiAgI2RlZmluZSBHRU42X1BD
T0RFX0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpCj4gICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFf
SUFfUkFUSU9fU0hJRlQJOAo+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX1JJTkdfUkFUSU9f
U0hJRlQJMTYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBpbmRleCA1YWQ3MmRjYjBmYWEuLmNh
MmJlYzA5ZWRiNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+IEBAIC0zNjY1LDE2ICsz
NjY1LDI2IEBAIGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiAgc3RhdGljIGludAo+ICBpbnRlbF9nZXRfc2Fndl9ibG9ja190aW1lX3VzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+IC0JaW50IHNhZ3ZfYmxvY2tfdGltZV91
cyA9IDEwMDA7IC8qIERlZmF1bHQgdG8gdW51c2FibGUgYmxvY2sgdGltZSAqLwo+ICsJdWludCB2
YWwgPSAwOwo+ICsJaW50IHJldCwgc2Fndl9ibG9ja190aW1lX3VzID0gMTAwMDsgLyogRGVmYXVs
dCB0byB1bnVzYWJsZSBibG9jayB0aW1lICovCj4gIAo+IC0JaWYgKElTX0dFTihkZXZfcHJpdiwg
MTEpKQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiArCQlyZXQgPSBzYW5k
eWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LAo+ICsJCQkJCSAgICAgR0VOMTJfUENPREVfUkVB
RF9TQUdWX0JMT0NLX1RJTUVfVVMsCj4gKwkJCQkJICAgICAmdmFsLCBOVUxMKTsKPiArCQlpZiAo
IXJldCkKPiArCQkJc2Fndl9ibG9ja190aW1lX3VzID0gdmFsOwo+ICsJCWVsc2UKPiArCQkJRFJN
X0RFQlVHX0RSSVZFUigiQ291bGRuJ3QgcmVhZCBTQUdWIGJsb2NrIHRpbWUhXG4iKTsKPiArCX0g
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKPiAgCQlzYWd2X2Jsb2NrX3RpbWVfdXMg
PSAxMDsKPiAtCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTApKQo+ICsJfSBlbHNlIGlmIChJ
U19HRU4oZGV2X3ByaXYsIDEwKSkgewo+ICAJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDIwOwo+IC0J
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkKPiArCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9w
cml2LCA5KSkgewo+ICAJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDMwOwo+IC0JZWxzZQo+ICsJfSBl
bHNlIHsKPiAgCQlNSVNTSU5HX0NBU0UoSU5URUxfR0VOKGRldl9wcml2KSk7Cj4gKwl9Cj4gIAo+
ICAJcmV0dXJuIHNhZ3ZfYmxvY2tfdGltZV91czsKPiAgfQo+IC0tIAo+IDIuMjIuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZp
bGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
