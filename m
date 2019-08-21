Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A9E97D96
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDFD6E44C;
	Wed, 21 Aug 2019 14:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE9B6E44C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:50:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 07:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="196009997"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 21 Aug 2019 07:50:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Aug 2019 17:50:51 +0300
Date: Wed, 21 Aug 2019 17:50:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190821145051.GJ5942@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817093902.2171-7-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 06/40] drm/i915: Add transcoder
 restriction to PSR2
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTcsIDIwMTkgYXQgMDI6Mzg6MjhBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IEFjY29yZGluZyB0byBQU1IyX0NUTCBkZWZpbml0aW9uIGluIEJTcGVjIHRoZXJl
IGlzIG9ubHkgb25lIGluc3RhbmNlIG9mCj4gUFNSMl9DVEwuIFBsYXRmb3JtcyBnZW4gPCAxMiB3
aXRoIEVEUCB0cmFuc2NvZGVyIG9ubHkgc3VwcG9ydCBQU1IyIG9uCj4gVFJBTlNDT0RFUl9FRFAg
d2hpbGUgb24gVEdMIFBTUjIgaXMgb25seSBzdXBwb3J0ZWQgYnkgVFJBTlNDT0RFUl9BLgo+IAo+
IFNpbmNlIEJEVyBQU1IgaXMgYWxsb3dlZCBvbiBhbnkgcG9ydCwgYnV0IHdlIG5lZWQgdG8gcmVz
dHJpY3QgYnkgdHJhbnNjb2Rlci4KPiAKPiBCU3BlYzogNzcxMwo+IEJTcGVjOiAyMDU4NAo+IENj
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiBD
YzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTYgKysrKysrKysr
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDc3MjMyZjZiY2ExNy4uNDM1
MzI3MGJkNjVjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gQEAgLTUzNCw2ICs1MzQsMTYgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkKPiAgCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RMKGRldl9w
cml2LT5wc3IudHJhbnNjb2RlciksIHZhbCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sCj4gK19w
c3IyX3N1cHBvcnRlZF9pbl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gKwkJCSBlbnVtIHRyYW5zY29kZXIgdHJhbnMpCgpJIHRoaW5rIGEgbW9yZSBjdXN0b21hcnkg
bmFtZSB3b3VsZCBiZSBzb21ldGhpbmcgbGlrZQp0cmFuc2NvZGVyX2hhc19wc3IyKCkgb3IgdHJh
bnNjb2Rlcl9zdXBwb3J0c19wc3IyKCkuCgo+ICt7Cj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikKPiArCQlyZXR1cm4gdHJhbnMgPT0gVFJBTlNDT0RFUl9BOwo+ICsJZWxzZQo+ICsJ
CXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0VEUDsKPiArfQo+ICsKPiAgc3RhdGljIGJvb2wg
aW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCQkJ
CSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+IEBAIC01NDUs
NiArNTU1LDEyIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCj4gIAlpZiAoIWRldl9wcml2LT5wc3Iuc2lua19wc3IyX3N1cHBv
cnQpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiArCWlmICghX3BzcjJfc3VwcG9ydGVkX2luX3Ry
YW5zKGRldl9wcml2LCBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpIHsKPiArCQlEUk1fREVC
VUdfS01TKCJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwKPiArCQkJICAg
ICAgdHJhbnNjb2Rlcl9uYW1lKGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Cj4gKwkJcmV0
dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiAgCS8qCj4gIAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJl
IGVuYWJsZWQgc2ltdWx0YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCj4gIAkgKiByZXNvbHV0aW9u
IHJlcXVpcmVzIERTQyB0byBiZSBlbmFibGVkLCBwcmlvcml0eSBpcyBnaXZlbiB0byBEU0MKPiAt
LSAKPiAyLjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
