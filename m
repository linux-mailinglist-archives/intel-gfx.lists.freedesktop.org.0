Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE4520A415
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 19:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F34B6E2CA;
	Thu, 25 Jun 2020 17:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5326C6E2CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 17:32:02 +0000 (UTC)
IronPort-SDR: ZFw5tznkm4CDlI1+agYl6LHj3Oua6QMgmuBFHpaso+Rw42kmpeDWUwjUX0tO1K0RTPbGrPPoLn
 h7e8suWWcQzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="124648179"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="124648179"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 10:32:00 -0700
IronPort-SDR: FnRECqiEkQyf5WaUE4cK17D//Bd3Jw+MRweOYybuflBmpE0mSY6HXAposleJ6HLM2/xBbM7FSI
 n2uYXu3v7vHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="354534266"
Received: from jmorey-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.209.172.245])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2020 10:32:00 -0700
Date: Thu, 25 Jun 2020 10:32:00 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>;, intel-gfx@lists.freedesktop.org
Message-ID: <20200625173200.GA22095@msatwood-mobl>
References: <20200602014910.13019-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602014910.13019-1-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1409371443
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

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDY6NDk6MTBQTSAtMDcwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBTZXQgR01CVVMwIFBpbiBQYWlyIFNlbGVjdCB0byAxIGF0IGJvb3QgYW5kIGVhY2gg
RkxSIGV4aXQuCj4gUmV0dXJuIEdNQlVTMCBQaW4gUGFpciBTZWxlY3QgdG8gMSBhZnRlciBHTUJV
UyB0cmFuc2FjdGlvbnMgYXJlIGRvbmUuCj4gCj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBQaW90ciBQacOzcmtvd3NraSA8cGlvdHIucGlv
cmtvd3NraUBpbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Cj4gQ2M6IEpvc2UgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMgfCAxNiArKysrKysrKysr
KysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8ICAy
ICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMKPiBpbmRleCBhOGQxMTliNmI0NWMuLjhk
ZDVhYTAyNWMzZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2dtYnVzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dt
YnVzLmMKPiBAQCAtMTM5LDExICsxMzksMTkgQEAgdG9faW50ZWxfZ21idXMoc3RydWN0IGkyY19h
ZGFwdGVyICppMmMpCj4gIAlyZXR1cm4gY29udGFpbmVyX29mKGkyYywgc3RydWN0IGludGVsX2dt
YnVzLCBhZGFwdGVyKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgZ21idXMwX3dhX3Jlc2V0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiArewo+ICsJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIEdNQlVTMCwgMCB8IEdNQlVTX1BJTl9QQUlSXzEpOwpvcidpbmcgd2l0aCAwIGRv
ZXNudCBtYWtlIHNlbnNlIGhlcmUsIGRpZCB5b3UgbWVhbiBzb21ldGhpbmcgZWxzZT8KPiArfQo+
ICsKPiAgdm9pZAo+ICBpbnRlbF9nbWJ1c19yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gIHsKPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBHTUJVUzAsIDApOwo+
ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEdNQlVTNCwgMCk7Cj4gKwkvKiBXYV8xNDA5Mzcx
NDQzOiB0Z2xbYTBdICovCj4gKwlpZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURf
QTAsIFRHTF9SRVZJRF9BMCkpCj4gKwkJZ21idXMwX3dhX3Jlc2V0KGRldl9wcml2KTsKPiAgfQo+
ICAKPiAgc3RhdGljIHZvaWQgcG52X2dtYnVzX2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gQEAgLTI5OSw2ICszMDcsMTAgQEAgaW50ZWxfZ3Bpb19wb3N0
X3hmZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwdGVyKQo+ICAKPiAgCWlmIChJU19QSU5FVklF
VyhkZXZfcHJpdikpCj4gIAkJcG52X2dtYnVzX2Nsb2NrX2dhdGluZyhkZXZfcHJpdiwgdHJ1ZSk7
Cj4gKwo+ICsJLyogV2FfMTQwOTM3MTQ0MzogdGdsW2EwXSAqLwo+ICsJaWYgKElTX1RHTF9SRVZJ
RChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQo+ICsJCWdtYnVzMF93YV9y
ZXNldChkZXZfcHJpdik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkCj4gQEAgLTk1NSw0ICs5Njcs
OCBAQCB2b2lkIGludGVsX2dtYnVzX3RlYXJkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgCQlidXMgPSAmZGV2X3ByaXYtPmdtYnVzW3Bpbl07Cj4gIAkJaTJjX2RlbF9h
ZGFwdGVyKCZidXMtPmFkYXB0ZXIpOwo+ICAJfQo+ICsKPiArCS8qIFdhXzE0MDkzNzE0NDM6IHRn
bFthMF0gKi8KPiArCWlmIChJU19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdM
X1JFVklEX0EwKSkKPiArCQlnbWJ1czBfd2FfcmVzZXQoZGV2X3ByaXYpOwo+ICB9Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggNTc4Y2ZlMTFjYmI5Li5hMTY0MDQ3NmNlZmIgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMzMzNyw2ICszMzM3LDggQEAgc3RhdGljIGlu
bGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gICNkZWZpbmUg
ICBHTUJVU19SQVRFXzFNSFoJKDMgPDwgOCkgLyogcmVzZXJ2ZWQgb24gUGluZXZpZXcgKi8KPiAg
I2RlZmluZSAgIEdNQlVTX0hPTERfRVhUCSgxIDw8IDcpIC8qIDMwMG5zIGhvbGQgdGltZSwgcnN2
ZCBvbiBQaW5ldmlldyAqLwo+ICAjZGVmaW5lICAgR01CVVNfQllURV9DTlRfT1ZFUlJJREUgKDEg
PDwgNikKPiArI2RlZmluZSAgIEdNQlVTX1BJTl9QQUlSX01BU0sJUkVHX0dFTk1BU0soNCwgMCkK
PiArI2RlZmluZSAgIEdNQlVTX1BJTl9QQUlSXzEJUkVHX0ZJRUxEX1BSRVAoR01CVVNfUElOX1BB
SVJfTUFTSywgMSkKPiAgCj4gICNkZWZpbmUgR01CVVMxCQkJX01NSU8oZGV2X3ByaXYtPmdwaW9f
bW1pb19iYXNlICsgMHg1MTA0KSAvKiBjb21tYW5kL3N0YXR1cyAqLwo+ICAjZGVmaW5lICAgR01C
VVNfU1dfQ0xSX0lOVAkoMSA8PCAzMSkKPiAtLSAKPiAyLjI2LjIKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
