Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FEE10F9BA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 09:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7863E6E422;
	Tue,  3 Dec 2019 08:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11D96E422
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 08:20:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 00:20:50 -0800
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="204887324"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 00:20:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191202213646.258752-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191202213646.258752-1-jose.souza@intel.com>
Date: Tue, 03 Dec 2019 10:20:45 +0200
Message-ID: <87fti1keg2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI] drm/i915/display/tgl: Do not program
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMiBEZWMgMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IFRhbGtlZCB3aXRoIEhXIHRlYW0gYW5kIHRoaXMgaXMgYSBsZWZ0
IG92ZXIsIGRyaXZlciBzaG91bGQgbm90Cj4gcHJvZ3JhbSBjbG9ja2dhdGluZywgZGVrZWwgZmly
bXdhcmUgd2lsbCBiZSByZXBvbnNpYmxlIGZvciBhbnkKPiBjbG9ja2dhdGluZyBwcm9ncmFtaW5n
Lgo+Cj4gdjI6Cj4gQWRkZWQgV0FSTl9PTgo+Cj4gQlNwZWMgaXNzdWU6IDIwODg1Cj4gQlNwZWM6
IDQ5MjkyCj4KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA1NCArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDM5IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggYTk3NjYwNmQy
MWM3Li42NjA1MmE5ZjE0NzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKPiBAQCAtMzE2Nyw2ICszMTY3LDEwIEBAIGljbF9waHlfc2V0X2Nsb2NrX2dhdGlu
ZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCBlbmFibGUpCj4gIAl1
MzIgdmFsLCBiaXRzOwo+ICAJaW50IGxuOwo+ICAKPiArCS8qIFNlZSAiUEhZIENsb2NrZ2F0aW5n
IHByb2dyYW1taW5nIiBub3RlICovCgpXaGVyZT8KCj4gKwlpZiAoV0FSTl9PTihJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSkKPiArCQlyZXR1cm47Cj4gKwo+ICAJaWYgKHRjX3BvcnQgPT0gUE9S
VF9UQ19OT05FKQo+ICAJCXJldHVybjsKPiAgCj4gQEAgLTMxNzUsMzkgKzMxNzksMjYgQEAgaWNs
X3BoeV9zZXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
LCBib29sIGVuYWJsZSkKPiAgCSAgICAgICBNR19EUF9NT0RFX0NGR19HQU9OUFdSX0dBVElORzsK
PiAgCj4gIAlmb3IgKGxuID0gMDsgbG4gPCAyOyBsbisrKSB7Cj4gLQkJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpIHsKPiAtCQkJSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQp
LCBISVBfSU5ERVhfVkFMKHRjX3BvcnQsIGxuKSk7Cj4gLQkJCXZhbCA9IEk5MTVfUkVBRChES0xf
RFBfTU9ERSh0Y19wb3J0KSk7Cj4gLQkJfSBlbHNlIHsKPiAtCQkJdmFsID0gSTkxNV9SRUFEKE1H
X0RQX01PREUobG4sIHRjX3BvcnQpKTsKPiAtCQl9Cj4gKwkJdmFsID0gSTkxNV9SRUFEKE1HX0RQ
X01PREUobG4sIHRjX3BvcnQpKTsKPiAgCj4gIAkJaWYgKGVuYWJsZSkKPiAgCQkJdmFsIHw9IGJp
dHM7Cj4gIAkJZWxzZQo+ICAJCQl2YWwgJj0gfmJpdHM7Cj4gIAo+IC0JCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKQo+IC0JCQlJOTE1X1dSSVRFKERLTF9EUF9NT0RFKHRjX3BvcnQpLCB2
YWwpOwo+IC0JCWVsc2UKPiAtCQkJSTkxNV9XUklURShNR19EUF9NT0RFKGxuLCB0Y19wb3J0KSwg
dmFsKTsKPiArCQlJOTE1X1dSSVRFKE1HX0RQX01PREUobG4sIHRjX3BvcnQpLCB2YWwpOwo+ICAJ
fQo+ICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExKSB7Cj4gLQkJYml0cyA9IE1H
X01JU0NfU1VTMF9DRkdfVFIyUFdSX0dBVElORyB8Cj4gLQkJICAgICAgIE1HX01JU0NfU1VTMF9D
RkdfQ0wyUFdSX0dBVElORyB8Cj4gLQkJICAgICAgIE1HX01JU0NfU1VTMF9DRkdfR0FPTlBXUl9H
QVRJTkcgfAo+IC0JCSAgICAgICBNR19NSVNDX1NVUzBfQ0ZHX1RSUFdSX0dBVElORyB8Cj4gLQkJ
ICAgICAgIE1HX01JU0NfU1VTMF9DRkdfQ0wxUFdSX0dBVElORyB8Cj4gLQkJICAgICAgIE1HX01J
U0NfU1VTMF9DRkdfREdQV1JfR0FUSU5HOwo+ICsJYml0cyA9IE1HX01JU0NfU1VTMF9DRkdfVFIy
UFdSX0dBVElORyB8IE1HX01JU0NfU1VTMF9DRkdfQ0wyUFdSX0dBVElORyB8Cj4gKwkgICAgICAg
TUdfTUlTQ19TVVMwX0NGR19HQU9OUFdSX0dBVElORyB8IE1HX01JU0NfU1VTMF9DRkdfVFJQV1Jf
R0FUSU5HIHwKPiArCSAgICAgICBNR19NSVNDX1NVUzBfQ0ZHX0NMMVBXUl9HQVRJTkcgfCBNR19N
SVNDX1NVUzBfQ0ZHX0RHUFdSX0dBVElORzsKPiAgCj4gLQkJdmFsID0gSTkxNV9SRUFEKE1HX01J
U0NfU1VTMCh0Y19wb3J0KSk7Cj4gLQkJaWYgKGVuYWJsZSkKPiAtCQkJdmFsIHw9IChiaXRzIHwg
TUdfTUlTQ19TVVMwX1NVU0NMS19EWU5DTEtHQVRFX01PREUoMykpOwo+IC0JCWVsc2UKPiAtCQkJ
dmFsICY9IH4oYml0cyB8IE1HX01JU0NfU1VTMF9TVVNDTEtfRFlOQ0xLR0FURV9NT0RFX01BU0sp
Owo+IC0JCUk5MTVfV1JJVEUoTUdfTUlTQ19TVVMwKHRjX3BvcnQpLCB2YWwpOwo+IC0JfQo+ICsJ
dmFsID0gSTkxNV9SRUFEKE1HX01JU0NfU1VTMCh0Y19wb3J0KSk7Cj4gKwlpZiAoZW5hYmxlKQo+
ICsJCXZhbCB8PSAoYml0cyB8IE1HX01JU0NfU1VTMF9TVVNDTEtfRFlOQ0xLR0FURV9NT0RFKDMp
KTsKPiArCWVsc2UKPiArCQl2YWwgJj0gfihiaXRzIHwgTUdfTUlTQ19TVVMwX1NVU0NMS19EWU5D
TEtHQVRFX01PREVfTUFTSyk7Cj4gKwlJOTE1X1dSSVRFKE1HX01JU0NfU1VTMCh0Y19wb3J0KSwg
dmFsKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQKPiBAQCAtMzUwOCwxMiArMzQ5OSw2IEBAIHN0
YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPiAgCSAqIGRvd24gdGhpcyBmdW5jdGlvbi4KPiAgCSAqLwo+ICAKPiAtCS8qCj4gLQkg
KiA3LmQgVHlwZSBDIHdpdGggRFAgYWx0ZXJuYXRlIG9yIGZpeGVkL2xlZ2FjeS9zdGF0aWMgY29u
bmVjdGlvbiAtCj4gLQkgKiBEaXNhYmxlIFBIWSBjbG9jayBnYXRpbmcgcGVyIFR5cGUtQyBEREkg
QnVmZmVyIHBhZ2UKPiAtCSAqLwo+IC0JaWNsX3BoeV9zZXRfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0
LCBmYWxzZSk7Cj4gLQo+ICAJLyogNy5lIENvbmZpZ3VyZSB2b2x0YWdlIHN3aW5nIGFuZCByZWxh
dGVkIElPIHNldHRpbmdzICovCj4gIAl0Z2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBj
cnRjX3N0YXRlLT5wb3J0X2Nsb2NrLCBsZXZlbCwKPiAgCQkJCWVuY29kZXItPnR5cGUpOwo+IEBA
IC0zNTY1LDE1ICszNTUwLDYgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJaWYgKCFpc190cmFuc19wb3J0X3N5bmNf
bW9kZShjcnRjX3N0YXRlKSkKPiAgCQlpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oaW50ZWxfZHAp
Owo+ICAKPiAtCS8qCj4gLQkgKiBUT0RPOiBlbmFibGUgY2xvY2sgZ2F0aW5nCj4gLQkgKgo+IC0J
ICogSXQgaXMgbm90IHdyaXR0ZW4gaW4gRFAgZW5hYmxpbmcgc2VxdWVuY2UgYnV0ICJQSFkgQ2xv
Y2tnYXRpbmcKPiAtCSAqIHByb2dyYW1taW5nIiBzdGF0ZXMgdGhhdCBjbG9jayBnYXRpbmcgc2hv
dWxkIGJlIGVuYWJsZWQgYWZ0ZXIgdGhlCj4gLQkgKiBsaW5rIHRyYWluaW5nIGJ1dCBkb2luZyBz
byBjYXVzZXMgYWxsIHRoZSBmb2xsb3dpbmcgdHJhaW5pbmdzIHRvIGZhaWwKPiAtCSAqIHNvIG5v
dCBlbmFibGluZyBpdCBmb3Igbm93Lgo+IC0JICovCj4gLQo+ICAJLyogNy5sIENvbmZpZ3VyZSBh
bmQgZW5hYmxlIEZFQyBpZiBuZWVkZWQgKi8KPiAgCWludGVsX2RkaV9lbmFibGVfZmVjKGVuY29k
ZXIsIGNydGNfc3RhdGUpOwo+ICAJaW50ZWxfZHNjX2VuYWJsZShlbmNvZGVyLCBjcnRjX3N0YXRl
KTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
