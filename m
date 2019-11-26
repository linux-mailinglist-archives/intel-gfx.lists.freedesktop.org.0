Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA0110A63C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A936E199;
	Tue, 26 Nov 2019 21:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F576E199
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:51:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="202855757"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 26 Nov 2019 13:50:55 -0800
Date: Tue, 26 Nov 2019 13:50:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191126215055.GC6337@mdroper-desk1.amr.corp.intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
 <20191126210732.407496-3-matthew.d.roper@intel.com>
 <9113b0172381d42bfeda71b76876dd870472cbfb.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9113b0172381d42bfeda71b76876dd870472cbfb.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Program SHPD_FILTER_CNT on
 CNP+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDE6NDE6MTVQTSAtMDgwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTExLTI2IGF0IDEzOjA3IC0wODAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gVGhlIGJzcGVjIHRlbGxzIHVzICdQcm9ncmFtIFNIUERfRklMVEVSX0NOVCB3aXRoIHRo
ZSAiNTAwCj4gPiBtaWNyb3NlY29uZHMKPiA+IGFkanVzdGVkIiB2YWx1ZSBiZWZvcmUgZW5hYmxp
bmcgaG90cGx1ZyBkZXRlY3Rpb24nIG9uIENOUCsuICBXZQo+ID4gaGF2ZW4ndAo+ID4gYmVlbiB0
b3VjaGluZyB0aGlzIHJlZ2lzdGVyIGF0IGFsbCB0aHVzIGZhciwgYnV0IHdlIHNob3VsZCBwcm9i
YWJseQo+ID4gZm9sbG93IHRoZSBic3BlYydzIGd1aWRhbmNlLgo+ID4gCj4gPiBUaGUgcmVnaXN0
ZXIgYWxzbyBleGlzdHMgb24gTFBUIGFuZCBTUFQsIGJ1dCB0aGVyZSBpc24ndCBhbnkgc3BlY2lm
aWMKPiA+IGd1aWRhbmNlIEkgY2FuIGZpbmQgb24gaG93IHdlIHNob3VsZCBiZSBwcm9ncmFtbWlu
ZyBpdCB0aGVyZSBzbyBsZXQncwo+ID4gbGVhdmUgaXQgYmUgZm9yIG5vdy4KPiA+IAo+ID4gQnNw
ZWM6IDQzNDIKPiA+IEJzcGVjOiAzMTI5Nwo+ID4gQnNwZWM6IDg0MDcKPiA+IEJzcGVjOiA0OTMw
NQo+ID4gQnNwZWM6IDUwNDczCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIHwgNSArKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggfCA0ICsrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gPiBpbmRleCBkYWUwMGY3ZGQ3ZGYuLjAyOGNi
NjIzOWMxMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiA+IEBAIC0yOTc2LDYg
KzI5NzYsOCBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QKPiA+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gIAlob3RwbHVnX2lycXMgPSBzZGVfZGRpX21hc2sg
fCBzZGVfdGNfbWFzazsKPiA+ICAJZW5hYmxlZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJsZWRfaXJx
cyhkZXZfcHJpdiwgcGlucyk7Cj4gPiAgCj4gPiArCUk5MTVfV1JJVEUoU0hQRF9GSUxURVJfQ05U
LCBTSFBEX0ZJTFRFUl9DTlRfNTAwX0FESik7Cj4gPiArCj4gPiAgCWlieF9kaXNwbGF5X2ludGVy
cnVwdF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdfaXJxcywKPiA+IGVuYWJsZWRfaXJxcyk7Cj4g
PiAgCj4gPiAgCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBkZGlfZW5hYmxlX21h
c2ssCj4gPiB0Y19lbmFibGVfbWFzayk7Cj4gPiBAQCAtMzA4MSw2ICszMDgzLDkgQEAgc3RhdGlj
IHZvaWQgc3B0X2hwZF9pcnFfc2V0dXAoc3RydWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiA+ICB7Cj4gPiAgCXUzMiBob3RwbHVnX2lycXMsIGVuYWJsZWRfaXJxczsKPiA+ICAK
PiA+ICsJaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfQ05QKQo+ID4gKwkJSTkx
NV9XUklURShTSFBEX0ZJTFRFUl9DTlQsIFNIUERfRklMVEVSX0NOVF81MDBfQURKKTsKPiA+ICsK
PiA+ICAJaG90cGx1Z19pcnFzID0gU0RFX0hPVFBMVUdfTUFTS19TUFQ7Cj4gPiAgCWVuYWJsZWRf
aXJxcyA9IGludGVsX2hwZF9lbmFibGVkX2lycXMoZGV2X3ByaXYsIGhwZF9zcHQpOwo+ID4gIAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gaW5kZXggOTRkMGY1OTNlZWI3Li43NGNm
NDVkZTE2MmUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiBAQCAtODExMCw2
ICs4MTEwLDEwIEBAIGVudW0gewo+ID4gIAo+ID4gICNkZWZpbmUgU0hPVFBMVUdfQ1RMX1RDCQkJ
CV9NTUlPKDB4YzQwMzQpCj4gPiAgI2RlZmluZSAgIElDUF9UQ19IUERfRU5BQkxFKHRjX3BvcnQp
CQkoOCA8PCAodGNfcG9ydCkgKiA0KQo+ID4gKwo+ID4gKyNkZWZpbmUgU0hQRF9GSUxURVJfQ05U
CQkJCV9NTUlPKDB4YzQwMzgpCj4gPiArI2RlZmluZSAgIFNIUERfRklMVEVSX0NOVF81MDBfQURK
CQkweDAwMUQ5Cj4gCj4gU2hvdWxkbid0IGl0IGJlIDB4MUYyPyBPciBJJ20gbWlzc2luZyBzb21l
dGhpbmc/Cj4gQWxzbyB0aGlzIGlzIHRoZSBkZWZhdWx0IHZhbHVlLgo+IAoKMHgxRjIgaXMgdGhl
ICI1MDAgbWljcm9zZWNvbmRzIiBvcHRpb24sIHdoZXJlYXMgMHgxRDkgaXMgdGhlICI1MDAKbWlj
cm9zZWNvbmRzIGFkanVzdGVkIiBvcHRpb24gYWNjb3JkaW5nIHRvIGJzcGVjIDg0MDcvNTA0NzMu
ICBUaGUKcHJvZ3JhbW1pbmcgaW5zdHJ1Y3Rpb25zIHRlbGwgdXMgdG8gdXNlIHRoZSBub24tZGVm
YXVsdCAiYWRqdXN0ZWQiCnZhcmlhbnQuCgpJJ20gbm90IHN1cmUgd2h5IHRoZXkgZG9uJ3QganVz
dCBjYWxsIGl0ICI0NzUgbWljcm9zZWNvbmRzIiBzaW5jZSB0aGF0J3MKd2hhdCB0aGlzIHZhbHVl
IHJlYWxseSB3b3JrcyBvdXQgdG8uLi4KCgpNYXR0Cgo+IAo+ID4gKwo+ID4gIC8qIEljZWxha2Ug
RFNDIFJhdGUgQ29udHJvbCBSYW5nZSBQYXJhbWV0ZXIgUmVnaXN0ZXJzICovCj4gPiAgI2RlZmlu
ZSBEU0NBX1JDX1JBTkdFX1BBUkFNRVRFUlNfMAkJX01NSU8oMHg2QjI0MCkKPiA+ICAjZGVmaW5l
IERTQ0FfUkNfUkFOR0VfUEFSQU1FVEVSU18wX1VEVwkJX01NSU8oMHg2QjI0MCArCj4gPiA0KQoK
LS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZv
cm0gRW5hYmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
