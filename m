Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0189CF1722
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD736ED32;
	Wed,  6 Nov 2019 13:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A6F6ED32
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:31:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 05:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="196208698"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 Nov 2019 05:31:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2019 15:31:04 +0200
Date: Wed, 6 Nov 2019 15:31:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191106133104.GS1208@intel.com>
References: <20191106064713.8201-1-lucas.demarchi@intel.com>
 <20191106071715.10613-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106071715.10613-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: switch intel_ddi_init() to intel
 types
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMTE6MTc6MTdQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFByZWZlciB1c2luZyBpbnRlbF9lbmNvZGVyIGFuZCBwYXNzIHRoZSBiYXNlIHdo
ZXJlIG5lZWRlZCByYXRoZXIgdGhhbgo+IGtlZXBpbmcgYm90aCBlbmNvZGVyIGFuZCBpbnRlbF9l
bmNvZGVyIHZhcmlhYmxlcyBhcm91bmQuCj4gCj4gdjI6IGFjdHVhbGx5IGFkZCBhbGwgY2hhbmdl
cyB0byB0aGUgcGF0Y2gKPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KCmxndG0KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNTYgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCBjOTE1MjFiY2Yw
NmEuLjM5OGM2ZjA1NGE2ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwo+IEBAIC00Njg3LDggKzQ2ODcsNyBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIAlzdHJ1Y3Qg
ZGRpX3ZidF9wb3J0X2luZm8gKnBvcnRfaW5mbyA9Cj4gIAkJJmRldl9wcml2LT52YnQuZGRpX3Bv
cnRfaW5mb1twb3J0XTsKPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0Owo+IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXI7Cj4gLQlzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXI7Cj4gKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsK
PiAgCWJvb2wgaW5pdF9oZG1pLCBpbml0X2RwLCBpbml0X2xzcGNvbiA9IGZhbHNlOwo+ICAJZW51
bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOwo+ICAKPiBAQCAt
NDcxNywzMSArNDcxNiwzMSBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIAlpZiAoIWludGVsX2RpZ19wb3J0
KQo+ICAJCXJldHVybjsKPiAgCj4gLQlpbnRlbF9lbmNvZGVyID0gJmludGVsX2RpZ19wb3J0LT5i
YXNlOwo+IC0JZW5jb2RlciA9ICZpbnRlbF9lbmNvZGVyLT5iYXNlOwo+ICsJZW5jb2RlciA9ICZp
bnRlbF9kaWdfcG9ydC0+YmFzZTsKPiAgCj4gLQlkcm1fZW5jb2Rlcl9pbml0KCZkZXZfcHJpdi0+
ZHJtLCBlbmNvZGVyLCAmaW50ZWxfZGRpX2Z1bmNzLAo+ICsJZHJtX2VuY29kZXJfaW5pdCgmZGV2
X3ByaXYtPmRybSwgJmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVuY3MsCj4gIAkJCSBEUk1f
TU9ERV9FTkNPREVSX1RNRFMsICJEREkgJWMiLCBwb3J0X25hbWUocG9ydCkpOwo+ICAKPiAtCWlu
dGVsX2VuY29kZXItPmhvdHBsdWcgPSBpbnRlbF9kZGlfaG90cGx1ZzsKPiAtCWludGVsX2VuY29k
ZXItPmNvbXB1dGVfb3V0cHV0X3R5cGUgPSBpbnRlbF9kZGlfY29tcHV0ZV9vdXRwdXRfdHlwZTsK
PiAtCWludGVsX2VuY29kZXItPmNvbXB1dGVfY29uZmlnID0gaW50ZWxfZGRpX2NvbXB1dGVfY29u
ZmlnOwo+IC0JaW50ZWxfZW5jb2Rlci0+ZW5hYmxlID0gaW50ZWxfZW5hYmxlX2RkaTsKPiAtCWlu
dGVsX2VuY29kZXItPnByZV9wbGxfZW5hYmxlID0gaW50ZWxfZGRpX3ByZV9wbGxfZW5hYmxlOwo+
IC0JaW50ZWxfZW5jb2Rlci0+cG9zdF9wbGxfZGlzYWJsZSA9IGludGVsX2RkaV9wb3N0X3BsbF9k
aXNhYmxlOwo+IC0JaW50ZWxfZW5jb2Rlci0+cHJlX2VuYWJsZSA9IGludGVsX2RkaV9wcmVfZW5h
YmxlOwo+IC0JaW50ZWxfZW5jb2Rlci0+ZGlzYWJsZSA9IGludGVsX2Rpc2FibGVfZGRpOwo+IC0J
aW50ZWxfZW5jb2Rlci0+cG9zdF9kaXNhYmxlID0gaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZTsKPiAt
CWludGVsX2VuY29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfZGRpX3VwZGF0ZV9waXBlOwo+IC0J
aW50ZWxfZW5jb2Rlci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfZGRpX2dldF9od19zdGF0ZTsKPiAt
CWludGVsX2VuY29kZXItPmdldF9jb25maWcgPSBpbnRlbF9kZGlfZ2V0X2NvbmZpZzsKPiAtCWlu
dGVsX2VuY29kZXItPnN1c3BlbmQgPSBpbnRlbF9kcF9lbmNvZGVyX3N1c3BlbmQ7Cj4gLQlpbnRl
bF9lbmNvZGVyLT5nZXRfcG93ZXJfZG9tYWlucyA9IGludGVsX2RkaV9nZXRfcG93ZXJfZG9tYWlu
czsKPiAtCWludGVsX2VuY29kZXItPnR5cGUgPSBJTlRFTF9PVVRQVVRfRERJOwo+IC0JaW50ZWxf
ZW5jb2Rlci0+cG93ZXJfZG9tYWluID0gaW50ZWxfcG9ydF90b19wb3dlcl9kb21haW4ocG9ydCk7
Cj4gLQlpbnRlbF9lbmNvZGVyLT5wb3J0ID0gcG9ydDsKPiAtCWludGVsX2VuY29kZXItPmNsb25l
YWJsZSA9IDA7Cj4gLQlpbnRlbF9lbmNvZGVyLT5waXBlX21hc2sgPSB+MDsKPiArCWVuY29kZXIt
PmhvdHBsdWcgPSBpbnRlbF9kZGlfaG90cGx1ZzsKPiArCWVuY29kZXItPmNvbXB1dGVfb3V0cHV0
X3R5cGUgPSBpbnRlbF9kZGlfY29tcHV0ZV9vdXRwdXRfdHlwZTsKPiArCWVuY29kZXItPmNvbXB1
dGVfY29uZmlnID0gaW50ZWxfZGRpX2NvbXB1dGVfY29uZmlnOwo+ICsJZW5jb2Rlci0+ZW5hYmxl
ID0gaW50ZWxfZW5hYmxlX2RkaTsKPiArCWVuY29kZXItPnByZV9wbGxfZW5hYmxlID0gaW50ZWxf
ZGRpX3ByZV9wbGxfZW5hYmxlOwo+ICsJZW5jb2Rlci0+cG9zdF9wbGxfZGlzYWJsZSA9IGludGVs
X2RkaV9wb3N0X3BsbF9kaXNhYmxlOwo+ICsJZW5jb2Rlci0+cHJlX2VuYWJsZSA9IGludGVsX2Rk
aV9wcmVfZW5hYmxlOwo+ICsJZW5jb2Rlci0+ZGlzYWJsZSA9IGludGVsX2Rpc2FibGVfZGRpOwo+
ICsJZW5jb2Rlci0+cG9zdF9kaXNhYmxlID0gaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZTsKPiArCWVu
Y29kZXItPnVwZGF0ZV9waXBlID0gaW50ZWxfZGRpX3VwZGF0ZV9waXBlOwo+ICsJZW5jb2Rlci0+
Z2V0X2h3X3N0YXRlID0gaW50ZWxfZGRpX2dldF9od19zdGF0ZTsKPiArCWVuY29kZXItPmdldF9j
b25maWcgPSBpbnRlbF9kZGlfZ2V0X2NvbmZpZzsKPiArCWVuY29kZXItPnN1c3BlbmQgPSBpbnRl
bF9kcF9lbmNvZGVyX3N1c3BlbmQ7Cj4gKwllbmNvZGVyLT5nZXRfcG93ZXJfZG9tYWlucyA9IGlu
dGVsX2RkaV9nZXRfcG93ZXJfZG9tYWluczsKPiArCj4gKwllbmNvZGVyLT50eXBlID0gSU5URUxf
T1VUUFVUX0RESTsKPiArCWVuY29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX3BvcnRfdG9fcG93
ZXJfZG9tYWluKHBvcnQpOwo+ICsJZW5jb2Rlci0+cG9ydCA9IHBvcnQ7Cj4gKwllbmNvZGVyLT5j
bG9uZWFibGUgPSAwOwo+ICsJZW5jb2Rlci0+cGlwZV9tYXNrID0gfjA7Cj4gIAo+ICAJaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gIAkJaW50ZWxfZGlnX3BvcnQtPnNhdmVkX3BvcnRf
Yml0cyA9IEk5MTVfUkVBRChERElfQlVGX0NUTChwb3J0KSkgJgo+IEBAIC00NzQ5LDYgKzQ3NDgs
NyBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwb3J0IHBvcnQpCj4gIAllbHNlCj4gIAkJaW50ZWxfZGlnX3BvcnQtPnNhdmVkX3Bv
cnRfYml0cyA9IEk5MTVfUkVBRChERElfQlVGX0NUTChwb3J0KSkgJgo+ICAJCQkoRERJX0JVRl9Q
T1JUX1JFVkVSU0FMIHwgRERJX0FfNF9MQU5FUyk7Cj4gKwo+ICAJaW50ZWxfZGlnX3BvcnQtPmRw
Lm91dHB1dF9yZWcgPSBJTlZBTElEX01NSU9fUkVHOwo+ICAJaW50ZWxfZGlnX3BvcnQtPm1heF9s
YW5lcyA9IGludGVsX2RkaV9tYXhfbGFuZXMoaW50ZWxfZGlnX3BvcnQpOwo+ICAJaW50ZWxfZGln
X3BvcnQtPmF1eF9jaCA9IGludGVsX2Jpb3NfcG9ydF9hdXhfY2goZGV2X3ByaXYsIHBvcnQpOwo+
IEBAIC00NzU5LDggKzQ3NTksOCBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIAo+ICAJCWludGVsX3RjX3Bv
cnRfaW5pdChpbnRlbF9kaWdfcG9ydCwgaXNfbGVnYWN5KTsKPiAgCj4gLQkJaW50ZWxfZW5jb2Rl
ci0+dXBkYXRlX3ByZXBhcmUgPSBpbnRlbF9kZGlfdXBkYXRlX3ByZXBhcmU7Cj4gLQkJaW50ZWxf
ZW5jb2Rlci0+dXBkYXRlX2NvbXBsZXRlID0gaW50ZWxfZGRpX3VwZGF0ZV9jb21wbGV0ZTsKPiAr
CQllbmNvZGVyLT51cGRhdGVfcHJlcGFyZSA9IGludGVsX2RkaV91cGRhdGVfcHJlcGFyZTsKPiAr
CQllbmNvZGVyLT51cGRhdGVfY29tcGxldGUgPSBpbnRlbF9kZGlfdXBkYXRlX2NvbXBsZXRlOwo+
ICAJfQo+ICAKPiAgCVdBUk5fT04ocG9ydCA+IFBPUlRfSSk7Cj4gQEAgLTQ3NzYsNyArNDc3Niw3
IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBvcnQgcG9ydCkKPiAgCj4gIAkvKiBJbiB0aGVvcnkgd2UgZG9uJ3QgbmVlZCB0aGUg
ZW5jb2Rlci0+dHlwZSBjaGVjaywgYnV0IGxlYXZlIGl0IGp1c3QgaW4KPiAgCSAqIGNhc2Ugd2Ug
aGF2ZSBzb21lIHJlYWxseSBiYWQgVkJUcy4uLiAqLwo+IC0JaWYgKGludGVsX2VuY29kZXItPnR5
cGUgIT0gSU5URUxfT1VUUFVUX0VEUCAmJiBpbml0X2hkbWkpIHsKPiArCWlmIChlbmNvZGVyLT50
eXBlICE9IElOVEVMX09VVFBVVF9FRFAgJiYgaW5pdF9oZG1pKSB7Cj4gIAkJaWYgKCFpbnRlbF9k
ZGlfaW5pdF9oZG1pX2Nvbm5lY3RvcihpbnRlbF9kaWdfcG9ydCkpCj4gIAkJCWdvdG8gZXJyOwo+
ICAJfQo+IEBAIC00ODAwLDYgKzQ4MDAsNiBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIAlyZXR1cm47Cj4g
IAo+ICBlcnI6Cj4gLQlkcm1fZW5jb2Rlcl9jbGVhbnVwKGVuY29kZXIpOwo+ICsJZHJtX2VuY29k
ZXJfY2xlYW51cCgmZW5jb2Rlci0+YmFzZSk7Cj4gIAlrZnJlZShpbnRlbF9kaWdfcG9ydCk7Cj4g
IH0KPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
