Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C4C1008B7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 16:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBF56E5B9;
	Mon, 18 Nov 2019 15:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB58E6E5B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 15:53:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 07:53:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="236966068"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Nov 2019 07:53:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 17:53:37 +0200
Date: Mon, 18 Nov 2019 17:53:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191118155337.GU1208@intel.com>
References: <20191112104608.24587-1-imre.deak@intel.com>
 <878sodyyjr.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sodyyjr.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix detection for a CMP-V PCH
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
Cc: Cyrus <cyrus.lien@canonical.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDU6NDk6NDRQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAxMiBOb3YgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PiB3cm90ZToKPiA+IEFjY29yZGluZyB0byBpbnRlcm5hbCBkb2N1bWVudHMgSSBmb3VuZCBmb3Ig
Q01QIFBDSHMgdGhlIFBDSSBJRCAweEEzQzEKPiAKPiBUaGlzIHNlZW1zIHRvIGJlIHB1c2hlZCBh
bHJlYWR5LCBidXQgSSdtIGp1c3QgY29uZnVzZWQgYWJvdXQgZGlmZmVyZW5jZQo+IGJldHdlZW4g
dGhlIGlkIGhlcmUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHZzLiB0aGUgb25lIGluIHRoZSBwYXRj
aC4KCiNkZWZpbmUgSU5URUxfUENIX0RFVklDRV9JRF9NQVNLICAgICAgICAgICAgICAgIDB4ZmY4
MAoKSWUuIHdlIG9ubHkgbWF0Y2ggdGhlIHRvcCA5IGJpdHMuCgo+IAo+IEJSLAo+IEphbmkuCj4g
Cj4gPiBiZWxvbmdzIHRvIGEgQ01QLVYgY2hpcHNldC4gQmFzZWQgb24gdGhlIHNhbWUgZG9jcyB0
aGUgcHJvZ3JhbW1pbmcgb2YKPiA+IHRoZSBQQ0ggaXMgY29tcGF0aWJsZSB3aXRoIHRoYXQgb2Yg
S0JQLiBGaXggdXAgbXkgcHJldmlvdXMgd3JvbmcKPiA+IGFzc3VtcHRpb24gYWNjb3JkaW5nbHkg
dXNpbmcgdGhlIFNQVCBwcm9ncmFtbWluZyB3aGljaCBpbiB0dXJuIGlzIHRoZQo+ID4gYmFzaXMg
Zm9yIEtCUC4KPiA+Cj4gPiBUaGUgb3JpZ2luYWwgYnVnIHJlcG9ydGVyIHZlcmlmaWVkIHRoYXQg
dGhpcyBpcyB0aGUgY29ycmVjdCBQQ0gKPiA+IGlkZW50aWZpY2F0aW9uICh0aGUgb25seSB3YXkg
d2UnbGwgcHJvZ3JhbSB2YWxpZCBEREMgcGluLXBhaXIgdmFsdWVzIHRvCj4gPiB0aGUgR01CVVMg
cmVnaXN0ZXIpIGFuZCB0aGUgV2luZG93cyB0ZWFtIHVzZXMgdGhlIHNhbWUgaWRlbnRpZmljYXRp
b24KPiA+ICh0aGF0IGlzIHVzaW5nIHRoZSBLQlAgcHJvZ3JhbW1pbmcgbW9kZWwgZm9yIHRoaXMg
UENIKS4KPiA+Cj4gPiBJIGZpbGVkIHRoZSBuZWNlc3NhcnkgQnNwZWMgdXBkYXRlIHJlcXVlc3Rz
IChCU3BlYy8zMzczNCkuCj4gPgo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjA1MQo+ID4gRml4ZXM6IDM3YzkyZGMzMDNkZCAoImRy
bS9pOTE1OiBBZGQgbmV3IENOTCBQQ0ggSUQgc2VlbiBvbiBhIENNTCBwbGF0Zm9ybSIpCj4gPiBS
ZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiBDeXJ1cyA8Y3lydXMubGllbkBjYW5vbmljYWwuY29tPgo+
ID4gQ2M6IEN5cnVzIDxjeXJ1cy5saWVuQGNhbm9uaWNhbC5jb20+Cj4gPiBDYzogVGltbyBBYWx0
b25lbiA8dGphYWx0b25AdWJ1bnR1LmNvbT4KPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BjaC5jIHwgNiArKysrKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8
IDIgKy0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+ID4gaW5kZXggZmQyMjM1NWI5YTk2
Li40M2I2OGI1ZmM1NjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY2guYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKPiA+IEBA
IC02Miw3ICs2Miw2IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCj4gPiAgCQkvKiBLQlAgaXMgU1BUIGNv
bXBhdGlibGUgKi8KPiA+ICAJCXJldHVybiBQQ0hfU1BUOwo+ID4gIAljYXNlIElOVEVMX1BDSF9D
TlBfREVWSUNFX0lEX1RZUEU6Cj4gPiAtCWNhc2UgSU5URUxfUENIX0NOUDJfREVWSUNFX0lEX1RZ
UEU6Cj4gPiAgCQlEUk1fREVCVUdfS01TKCJGb3VuZCBDYW5ub24gTGFrZSBQQ0ggKENOUClcbiIp
Owo+ID4gIAkJV0FSTl9PTighSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgJiYgIUlTX0NPRkZFRUxB
S0UoZGV2X3ByaXYpKTsKPiA+ICAJCXJldHVybiBQQ0hfQ05QOwo+ID4gQEAgLTc2LDYgKzc1LDEx
IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgdW5zaWduZWQgc2hvcnQgaWQpCj4gPiAgCQlXQVJOX09OKCFJU19DT0ZGRUVMQUtFKGRldl9w
cml2KSk7Cj4gPiAgCQkvKiBDb21ldFBvaW50IGlzIENOUCBDb21wYXRpYmxlICovCj4gPiAgCQly
ZXR1cm4gUENIX0NOUDsKPiA+ICsJY2FzZSBJTlRFTF9QQ0hfQ01QX1ZfREVWSUNFX0lEX1RZUEU6
Cj4gPiArCQlEUk1fREVCVUdfS01TKCJGb3VuZCBDb21ldCBMYWtlIFYgUENIIChDTVAtVilcbiIp
Owo+ID4gKwkJV0FSTl9PTighSVNfQ09GRkVFTEFLRShkZXZfcHJpdikpOwo+ID4gKwkJLyogQ29t
ZXQgTGFrZSBWIFBDSCBpcyBiYXNlZCBvbiBLQlAsIHdoaWNoIGlzIFNQVCBjb21wYXRpYmxlICov
Cj4gPiArCQlyZXR1cm4gUENIX1NQVDsKPiA+ICAJY2FzZSBJTlRFTF9QQ0hfSUNQX0RFVklDRV9J
RF9UWVBFOgo+ID4gIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgSWNlIExha2UgUENIXG4iKTsKPiA+
ICAJCVdBUk5fT04oIUlTX0lDRUxBS0UoZGV2X3ByaXYpKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BjaC5oCj4gPiBpbmRleCA1MmQxNDVkY2RiMTUuLjMwNTNkMWNlMzk4YiAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wY2guaAo+ID4gQEAgLTQwLDEwICs0MCwxMCBAQCBlbnVtIGludGVs
X3BjaCB7Cj4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfU1BUX0xQX0RFVklDRV9JRF9UWVBFCQkweDlE
MDAKPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9LQlBfREVWSUNFX0lEX1RZUEUJCTB4QTI4MAo+ID4g
ICNkZWZpbmUgSU5URUxfUENIX0NOUF9ERVZJQ0VfSURfVFlQRQkJMHhBMzAwCj4gPiAtI2RlZmlu
ZSBJTlRFTF9QQ0hfQ05QMl9ERVZJQ0VfSURfVFlQRQkJMHhBMzgwCj4gPiAgI2RlZmluZSBJTlRF
TF9QQ0hfQ05QX0xQX0RFVklDRV9JRF9UWVBFCQkweDlEODAKPiA+ICAjZGVmaW5lIElOVEVMX1BD
SF9DTVBfREVWSUNFX0lEX1RZUEUJCTB4MDI4MAo+ID4gICNkZWZpbmUgSU5URUxfUENIX0NNUDJf
REVWSUNFX0lEX1RZUEUJCTB4MDY4MAo+ID4gKyNkZWZpbmUgSU5URUxfUENIX0NNUF9WX0RFVklD
RV9JRF9UWVBFCQkweEEzODAKPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZ
UEUJCTB4MzQ4MAo+ID4gICNkZWZpbmUgSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRQkJMHg0
QjAwCj4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFCQkweEEwODAKPiAK
PiAtLSAKPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAK
VmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
