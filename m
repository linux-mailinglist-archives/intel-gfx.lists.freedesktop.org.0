Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E887910C165
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471116E46D;
	Thu, 28 Nov 2019 01:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA0A6E46D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:30:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:30:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="234287264"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga004.fm.intel.com with ESMTP; 27 Nov 2019 17:30:55 -0800
Date: Wed, 27 Nov 2019 17:30:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191128013055.GT6337@mdroper-desk1.amr.corp.intel.com>
References: <20191126231717.76703-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126231717.76703-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Do not program
 clockgating
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDM6MTc6MTdQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUYWxrZWQgd2l0aCBIVyB0ZWFtIGFuZCB0aGlzIGlzIGEgbGVmdCBv
dmVyLCBkcml2ZXIgc2hvdWxkIG5vdAo+IHByb2dyYW0gY2xvY2tnYXRpbmcsIGRla2VsIGZpcm13
YXJlIHdpbGwgYmUgcmVwb25zaWJsZSBmb3IgYW55Cj4gY2xvY2tnYXRpbmcgcHJvZ3JhbWluZy4K
PiAKPiBCU3BlYyBpc3N1ZTogMjA4ODUKPiBCU3BlYzogNDkyOTIKPiAKPiBDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgfCA1NSArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDM5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IGE5NzY2MDZkMjFjNy4uNzQ4
OGRjYmI2MzdmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
Cj4gQEAgLTMxNjcsNiArMzE2NywxMSBAQCBpY2xfcGh5X3NldF9jbG9ja19nYXRpbmcoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgZW5hYmxlKQo+ICAJdTMyIHZhbCwg
Yml0czsKPiAgCWludCBsbjsKPiAgCj4gKwkvKgo+ICsJICogU2hvdWxkIG5vdCBiZSBjYWxsZWQg
Zm9yIEdFTjEyKywgc2VlICJQSFkgQ2xvY2tnYXRpbmcgcHJvZ3JhbW1pbmciCj4gKwkgKiBub3Rl
Cj4gKwkgKi8KPiArCj4gIAlpZiAodGNfcG9ydCA9PSBQT1JUX1RDX05PTkUpCj4gIAkJcmV0dXJu
Owo+ICAKPiBAQCAtMzE3NSwzOSArMzE4MCwyNiBAQCBpY2xfcGh5X3NldF9jbG9ja19nYXRpbmco
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgZW5hYmxlKQo+ICAJICAg
ICAgIE1HX0RQX01PREVfQ0ZHX0dBT05QV1JfR0FUSU5HOwo+ICAKPiAgCWZvciAobG4gPSAwOyBs
biA8IDI7IGxuKyspIHsKPiAtCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+IC0J
CQlJOTE1X1dSSVRFKEhJUF9JTkRFWF9SRUcodGNfcG9ydCksIEhJUF9JTkRFWF9WQUwodGNfcG9y
dCwgbG4pKTsKPiAtCQkJdmFsID0gSTkxNV9SRUFEKERLTF9EUF9NT0RFKHRjX3BvcnQpKTsKPiAt
CQl9IGVsc2Ugewo+IC0JCQl2YWwgPSBJOTE1X1JFQUQoTUdfRFBfTU9ERShsbiwgdGNfcG9ydCkp
Owo+IC0JCX0KPiArCQl2YWwgPSBJOTE1X1JFQUQoTUdfRFBfTU9ERShsbiwgdGNfcG9ydCkpOwo+
ICAKPiAgCQlpZiAoZW5hYmxlKQo+ICAJCQl2YWwgfD0gYml0czsKPiAgCQllbHNlCj4gIAkJCXZh
bCAmPSB+Yml0czsKPiAgCj4gLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gLQkJ
CUk5MTVfV1JJVEUoREtMX0RQX01PREUodGNfcG9ydCksIHZhbCk7Cj4gLQkJZWxzZQo+IC0JCQlJ
OTE1X1dSSVRFKE1HX0RQX01PREUobG4sIHRjX3BvcnQpLCB2YWwpOwo+ICsJCUk5MTVfV1JJVEUo
TUdfRFBfTU9ERShsbiwgdGNfcG9ydCksIHZhbCk7Cj4gIAl9Cj4gIAo+IC0JaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPT0gMTEpIHsKPiAtCQliaXRzID0gTUdfTUlTQ19TVVMwX0NGR19UUjJQV1Jf
R0FUSU5HIHwKPiAtCQkgICAgICAgTUdfTUlTQ19TVVMwX0NGR19DTDJQV1JfR0FUSU5HIHwKPiAt
CQkgICAgICAgTUdfTUlTQ19TVVMwX0NGR19HQU9OUFdSX0dBVElORyB8Cj4gLQkJICAgICAgIE1H
X01JU0NfU1VTMF9DRkdfVFJQV1JfR0FUSU5HIHwKPiAtCQkgICAgICAgTUdfTUlTQ19TVVMwX0NG
R19DTDFQV1JfR0FUSU5HIHwKPiAtCQkgICAgICAgTUdfTUlTQ19TVVMwX0NGR19ER1BXUl9HQVRJ
Tkc7Cj4gKwliaXRzID0gTUdfTUlTQ19TVVMwX0NGR19UUjJQV1JfR0FUSU5HIHwgTUdfTUlTQ19T
VVMwX0NGR19DTDJQV1JfR0FUSU5HIHwKPiArCSAgICAgICBNR19NSVNDX1NVUzBfQ0ZHX0dBT05Q
V1JfR0FUSU5HIHwgTUdfTUlTQ19TVVMwX0NGR19UUlBXUl9HQVRJTkcgfAo+ICsJICAgICAgIE1H
X01JU0NfU1VTMF9DRkdfQ0wxUFdSX0dBVElORyB8IE1HX01JU0NfU1VTMF9DRkdfREdQV1JfR0FU
SU5HOwo+ICAKPiAtCQl2YWwgPSBJOTE1X1JFQUQoTUdfTUlTQ19TVVMwKHRjX3BvcnQpKTsKPiAt
CQlpZiAoZW5hYmxlKQo+IC0JCQl2YWwgfD0gKGJpdHMgfCBNR19NSVNDX1NVUzBfU1VTQ0xLX0RZ
TkNMS0dBVEVfTU9ERSgzKSk7Cj4gLQkJZWxzZQo+IC0JCQl2YWwgJj0gfihiaXRzIHwgTUdfTUlT
Q19TVVMwX1NVU0NMS19EWU5DTEtHQVRFX01PREVfTUFTSyk7Cj4gLQkJSTkxNV9XUklURShNR19N
SVNDX1NVUzAodGNfcG9ydCksIHZhbCk7Cj4gLQl9Cj4gKwl2YWwgPSBJOTE1X1JFQUQoTUdfTUlT
Q19TVVMwKHRjX3BvcnQpKTsKPiArCWlmIChlbmFibGUpCj4gKwkJdmFsIHw9IChiaXRzIHwgTUdf
TUlTQ19TVVMwX1NVU0NMS19EWU5DTEtHQVRFX01PREUoMykpOwo+ICsJZWxzZQo+ICsJCXZhbCAm
PSB+KGJpdHMgfCBNR19NSVNDX1NVUzBfU1VTQ0xLX0RZTkNMS0dBVEVfTU9ERV9NQVNLKTsKPiAr
CUk5MTVfV1JJVEUoTUdfTUlTQ19TVVMwKHRjX3BvcnQpLCB2YWwpOwo+ICB9Cj4gIAo+ICBzdGF0
aWMgdm9pZAo+IEBAIC0zNTA4LDEyICszNTAwLDYgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVf
ZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJICogZG93biB0aGlz
IGZ1bmN0aW9uLgo+ICAJICovCj4gIAo+IC0JLyoKPiAtCSAqIDcuZCBUeXBlIEMgd2l0aCBEUCBh
bHRlcm5hdGUgb3IgZml4ZWQvbGVnYWN5L3N0YXRpYyBjb25uZWN0aW9uIC0KPiAtCSAqIERpc2Fi
bGUgUEhZIGNsb2NrIGdhdGluZyBwZXIgVHlwZS1DIERESSBCdWZmZXIgcGFnZQo+IC0JICovCj4g
LQlpY2xfcGh5X3NldF9jbG9ja19nYXRpbmcoZGlnX3BvcnQsIGZhbHNlKTsKPiAtCj4gIAkvKiA3
LmUgQ29uZmlndXJlIHZvbHRhZ2Ugc3dpbmcgYW5kIHJlbGF0ZWQgSU8gc2V0dGluZ3MgKi8KPiAg
CXRnbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ss
IGxldmVsLAo+ICAJCQkJZW5jb2Rlci0+dHlwZSk7Cj4gQEAgLTM1NjUsMTUgKzM1NTEsNiBAQCBz
dGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4gIAlpZiAoIWlzX3RyYW5zX3BvcnRfc3luY19tb2RlKGNydGNfc3RhdGUpKQo+ICAJ
CWludGVsX2RwX3N0b3BfbGlua190cmFpbihpbnRlbF9kcCk7Cj4gIAo+IC0JLyoKPiAtCSAqIFRP
RE86IGVuYWJsZSBjbG9jayBnYXRpbmcKPiAtCSAqCj4gLQkgKiBJdCBpcyBub3Qgd3JpdHRlbiBp
biBEUCBlbmFibGluZyBzZXF1ZW5jZSBidXQgIlBIWSBDbG9ja2dhdGluZwo+IC0JICogcHJvZ3Jh
bW1pbmciIHN0YXRlcyB0aGF0IGNsb2NrIGdhdGluZyBzaG91bGQgYmUgZW5hYmxlZCBhZnRlciB0
aGUKPiAtCSAqIGxpbmsgdHJhaW5pbmcgYnV0IGRvaW5nIHNvIGNhdXNlcyBhbGwgdGhlIGZvbGxv
d2luZyB0cmFpbmluZ3MgdG8gZmFpbAo+IC0JICogc28gbm90IGVuYWJsaW5nIGl0IGZvciBub3cu
Cj4gLQkgKi8KPiAtCj4gIAkvKiA3LmwgQ29uZmlndXJlIGFuZCBlbmFibGUgRkVDIGlmIG5lZWRl
ZCAqLwo+ICAJaW50ZWxfZGRpX2VuYWJsZV9mZWMoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gIAlp
bnRlbF9kc2NfZW5hYmxlKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+IC0tIAo+IDIuMjQuMAo+IAoK
LS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZv
cm0gRW5hYmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
