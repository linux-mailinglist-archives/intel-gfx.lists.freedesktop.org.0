Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7336E6CB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 15:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F026E835;
	Fri, 19 Jul 2019 13:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47FC6E835
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 13:47:49 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 06:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="173505840"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Jul 2019 06:47:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Jul 2019 16:47:45 +0300
Date: Fri, 19 Jul 2019 16:47:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190719134745.GM5942@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713010940.17711-5-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/22] drm/i915/tgl: Add hpd interrupt
 handling
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

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDY6MDk6MjJQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEFkZCBob3RkcGx1ZyBkZXRlY3Rpb24gZm9yIGFsbCBwb3J0cyBvbiBUR1AuIGlj
cF9ocGRfZGV0ZWN0aW9uX3NldHVwKCkKPiBpcyByZWZhY3RvcmVkIHRvIGJlIHNoYXJlZCB3aXRo
IFRHUC4KPiAKPiBXaGlsZSB3ZSBpbmNyZWFzZSB0aGUgbnVtYmVyIG9mIHBpbnMsIGFkZCBhIEJV
SUxEX0JVR19PTigpIHRvIGF2b2lkCj4gZ29pbmcgb3ZlciB0aGUgbnVtYmVyIG9mIGJpdHMgYWxs
b3dlZC4KPiAKPiBDYzogSm9zZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAgIDYgKwo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAgNCArCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwgMTI4ICsrKysrKysrKysrKysrKysr
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgMjgg
KysrLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDE1NCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
b3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+
IGluZGV4IGVhM2RlNGFjYzg1MC4uYTc4MzNmNDVkYzRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiBAQCAtMTA0LDYgKzEwNCwxMiBAQCBl
bnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiAgCQlpZiAoSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSkKPiAgCQkJ
cmV0dXJuIEhQRF9QT1JUX0U7Cj4gIAkJcmV0dXJuIEhQRF9QT1JUX0Y7Cj4gKwljYXNlIFBPUlRf
RzoKPiArCQlyZXR1cm4gSFBEX1BPUlRfRzsKPiArCWNhc2UgUE9SVF9IOgo+ICsJCXJldHVybiBI
UERfUE9SVF9IOwo+ICsJY2FzZSBQT1JUX0k6Cj4gKwkJcmV0dXJuIEhQRF9QT1JUX0k7Cj4gIAlk
ZWZhdWx0Ogo+ICAJCU1JU1NJTkdfQ0FTRShwb3J0KTsKPiAgCQlyZXR1cm4gSFBEX05PTkU7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggY2Y3ZTkyY2E3MmU5Li4wNjkzMzdmMTE4NzIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTUzLDYgKzE1MywxMCBAQCBlbnVt
IGhwZF9waW4gewo+ICAJSFBEX1BPUlRfRCwKPiAgCUhQRF9QT1JUX0UsCj4gIAlIUERfUE9SVF9G
LAo+ICsJSFBEX1BPUlRfRywKPiArCUhQRF9QT1JUX0gsCj4gKwlIUERfUE9SVF9JLAo+ICsKPiAg
CUhQRF9OVU1fUElOUwo+ICB9Owo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiBpbmRleCA3
YzViYTVjYmVhMzQuLmE3YTkwNjc0ZGI4OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+
IEBAIC0xNDgsNiArMTQ4LDE4IEBAIHN0YXRpYyBjb25zdCB1MzIgaHBkX21jY1tIUERfTlVNX1BJ
TlNdID0gewo+ICAJW0hQRF9QT1JUX0NdID0gU0RFX1RDMV9IT1RQTFVHX0lDUAo+ICB9Owo+ICAK
PiArc3RhdGljIGNvbnN0IHUzMiBocGRfdGdwW0hQRF9OVU1fUElOU10gPSB7Cj4gKwlbSFBEX1BP
UlRfQV0gPSBTREVfRERJQV9IT1RQTFVHX0lDUCwKPiArCVtIUERfUE9SVF9CXSA9IFNERV9ERElC
X0hPVFBMVUdfSUNQLAo+ICsJW0hQRF9QT1JUX0NdID0gU0RFX0RESUNfSE9UUExVR19UR1AsCj4g
KwlbSFBEX1BPUlRfRF0gPSBTREVfVEMxX0hPVFBMVUdfSUNQLAo+ICsJW0hQRF9QT1JUX0VdID0g
U0RFX1RDMl9IT1RQTFVHX0lDUCwKPiArCVtIUERfUE9SVF9GXSA9IFNERV9UQzNfSE9UUExVR19J
Q1AsCj4gKwlbSFBEX1BPUlRfR10gPSBTREVfVEM0X0hPVFBMVUdfSUNQLAo+ICsJW0hQRF9QT1JU
X0hdID0gU0RFX1RDNV9IT1RQTFVHX1RHUCwKPiArCVtIUERfUE9SVF9JXSA9IFNERV9UQzZfSE9U
UExVR19UR1AsCj4gK307Cj4gKwo+ICBzdGF0aWMgdm9pZCBnZW4zX2lycV9yZXNldChzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgaW1yLAo+ICAJCQkgICBpOTE1X3JlZ190
IGlpciwgaTkxNV9yZWdfdCBpZXIpCj4gIHsKPiBAQCAtMTcwNiw2ICsxNzE4LDQwIEBAIHN0YXRp
YyBib29sIGljcF90Y19wb3J0X2hvdHBsdWdfbG9uZ19kZXRlY3QoZW51bSBocGRfcGluIHBpbiwg
dTMyIHZhbCkKPiAgCX0KPiAgfQo+ICAKPiArc3RhdGljIGJvb2wgdGdwX2RkaV9wb3J0X2hvdHBs
dWdfbG9uZ19kZXRlY3QoZW51bSBocGRfcGluIHBpbiwgdTMyIHZhbCkKPiArewo+ICsJc3dpdGNo
IChwaW4pIHsKPiArCWNhc2UgSFBEX1BPUlRfQToKPiArCQlyZXR1cm4gdmFsICYgSUNQX0RESUFf
SFBEX0xPTkdfREVURUNUOwo+ICsJY2FzZSBIUERfUE9SVF9COgo+ICsJCXJldHVybiB2YWwgJiBJ
Q1BfRERJQl9IUERfTE9OR19ERVRFQ1Q7Cj4gKwljYXNlIEhQRF9QT1JUX0M6Cj4gKwkJcmV0dXJu
IHZhbCAmIFRHUF9ERElDX0hQRF9MT05HX0RFVEVDVDsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJu
IGZhbHNlOwo+ICsJfQo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCB0Z3BfdGNfcG9ydF9ob3RwbHVn
X2xvbmdfZGV0ZWN0KGVudW0gaHBkX3BpbiBwaW4sIHUzMiB2YWwpCj4gK3sKPiArCXN3aXRjaCAo
cGluKSB7Cj4gKwljYXNlIEhQRF9QT1JUX0Q6Cj4gKwkJcmV0dXJuIHZhbCAmIElDUF9UQ19IUERf
TE9OR19ERVRFQ1QoUE9SVF9UQzEpOwo+ICsJY2FzZSBIUERfUE9SVF9FOgo+ICsJCXJldHVybiB2
YWwgJiBJQ1BfVENfSFBEX0xPTkdfREVURUNUKFBPUlRfVEMyKTsKPiArCWNhc2UgSFBEX1BPUlRf
RjoKPiArCQlyZXR1cm4gdmFsICYgSUNQX1RDX0hQRF9MT05HX0RFVEVDVChQT1JUX1RDMyk7Cj4g
KwljYXNlIEhQRF9QT1JUX0c6Cj4gKwkJcmV0dXJuIHZhbCAmIElDUF9UQ19IUERfTE9OR19ERVRF
Q1QoUE9SVF9UQzQpOwo+ICsJY2FzZSBIUERfUE9SVF9IOgo+ICsJCXJldHVybiB2YWwgJiBJQ1Bf
VENfSFBEX0xPTkdfREVURUNUKFBPUlRfVEM1KTsKPiArCWNhc2UgSFBEX1BPUlRfSToKPiArCQly
ZXR1cm4gdmFsICYgSUNQX1RDX0hQRF9MT05HX0RFVEVDVChQT1JUX1RDNik7Cj4gKwlkZWZhdWx0
Ogo+ICsJCXJldHVybiBmYWxzZTsKPiArCX0KPiArfQo+ICsKPiAgc3RhdGljIGJvb2wgc3B0X3Bv
cnRfaG90cGx1ZzJfbG9uZ19kZXRlY3QoZW51bSBocGRfcGluIHBpbiwgdTMyIHZhbCkKPiAgewo+
ICAJc3dpdGNoIChwaW4pIHsKPiBAQCAtMTc4NSw2ICsxODMxLDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfZ2V0X2hwZF9waW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgewo+
ICAJZW51bSBocGRfcGluIHBpbjsKPiAgCj4gKwlCVUlMRF9CVUdfT04oc2l6ZW9mKGludCkgKiA4
IDwgSFBEX05VTV9QSU5TKTsKCkJVSUxEX0JVR19PTihIUERfTlVNX1BJTlMgPiBCSVRTX1BFUl9U
WVBFKCpwaW5fbWFzaykpOwp3b3VsZCBiZSBhIGNsZWFyZXIgd2F5IHRvIGV4cHJlc3MgdGhhdC4K
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
