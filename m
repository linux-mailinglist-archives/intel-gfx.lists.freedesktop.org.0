Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 808338AA63
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 00:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67FC7893EA;
	Mon, 12 Aug 2019 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD18893EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 22:28:21 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 15:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="194058807"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2019 15:28:20 -0700
Date: Mon, 12 Aug 2019 15:29:49 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190812222949.GB16513@InViCtUs>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726000226.26914-2-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Introduce initial
 Tigerlake Workarounds
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDU6MDI6MjRQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+
Cj4gCj4gSW5oZXJpdCB3b3JrYXJvdW5kcyBmcm9tIHByZXZpb3VzIHBsYXRmb3JtcyB0aGF0IGFy
ZSBzdGlsbCB2YWxpZCBmb3IKPiBUaWdlcmxha2UuCj4gCj4gICBXYVBpcGVsaW5lRmx1c2hDb2hl
cmVudExpbmVzOnRnbCAoY2hhbmdlZCByZWdpc3RlciBidXQgaGFzIHNhbWUgbmFtZSkKPiAgIFdh
U2VuZFB1c2hDb25zdGFudHNGcm9tTU1JTzp0Z2wKPiAgIFdhQWxsb3dVTURUb01vZGlmeVNhbXBs
ZXJNb2RlOnRnbAo+ICAgV2FSc0ZvcmNld2FrZUFkZERlbGF5Rm9yQWNrOnRnbAo+IAo+IENjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyAgICAgICAgIHwgIDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyB8IDQwICsrKysrKysrKysrKysrKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgIDMgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyAgICAgICAgICAgICB8ICA0ICsrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91bmNvcmUuYyAgICAgICAgIHwgIDIgKy0KPiAgNSBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gaW5kZXggODg0ZGZjMWNiMDMzLi44OTNjNThkZjhiZTAgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0yMDY5LDYgKzIwNjksOCBAQCBzdGF0aWMgaW50IGlu
dGVsX2luaXRfd29ya2Fyb3VuZF9iYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4g
IAkJcmV0dXJuIDA7Cj4gIAo+ICAJc3dpdGNoIChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSkgewo+
ICsJY2FzZSAxMjoKPiArCQlyZXR1cm4gMDsKPiAgCWNhc2UgMTE6Cj4gIAkJcmV0dXJuIDA7Cj4g
IAljYXNlIDEwOgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+IGluZGV4IDcwNGFjZTAxZTdmNS4uYTZlYjljNmU4N2VjIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTU2OSw2ICs1NjksMTEgQEAg
c3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKPiAgCQkJICBHRU4xMV9TQU1QTEVSX0VOQUJMRV9IRUFETEVTU19NU0cpOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICsJCQkJICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwpCj4gK3sKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAgX19pbnRlbF9lbmdpbmVfaW5pdF9j
dHhfd2Eoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAJCQkgICBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwsCj4gQEAgLTU4MSw3ICs1ODYsOSBAQCBfX2ludGVsX2VuZ2luZV9pbml0
X2N0eF93YShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gIAo+ICAJd2FfaW5pdF9z
dGFydCh3YWwsIG5hbWUsIGVuZ2luZS0+bmFtZSk7Cj4gIAo+IC0JaWYgKElTX0dFTihpOTE1LCAx
MSkpCj4gKwlpZiAoSVNfR0VOKGk5MTUsIDEyKSkKPiArCQl0Z2xfY3R4X3dvcmthcm91bmRzX2lu
aXQoZW5naW5lLCB3YWwpOwo+ICsJZWxzZSBpZiAoSVNfR0VOKGk5MTUsIDExKSkKPiAgCQlpY2xf
Y3R4X3dvcmthcm91bmRzX2luaXQoZW5naW5lLCB3YWwpOwo+ICAJZWxzZSBpZiAoSVNfQ0FOTk9O
TEFLRShpOTE1KSkKPiAgCQljbmxfY3R4X3dvcmthcm91bmRzX2luaXQoZW5naW5lLCB3YWwpOwo+
IEBAIC04OTAsMTAgKzg5NywxNyBAQCBpY2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAJCSAgICBH
QU1UX0NIS05fRElTQUJMRV9MM19DT0hfUElQRSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkCj4g
K3RnbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gK3sKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAg
Z3RfaW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICB7Cj4gLQlpZiAoSVNfR0VOKGk5MTUsIDExKSkKPiArCWlm
IChJU19HRU4oaTkxNSwgMTIpKQo+ICsJCXRnbF9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdh
bCk7Cj4gKwllbHNlIGlmIChJU19HRU4oaTkxNSwgMTEpKQo+ICAJCWljbF9ndF93b3JrYXJvdW5k
c19pbml0KGk5MTUsIHdhbCk7Cj4gIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKQo+ICAJ
CWNubF9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7Cj4gQEAgLTExODMsNiArMTE5Nywx
NyBAQCBzdGF0aWMgdm9pZCBpY2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKPiAgCX0KPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgdGdsX3doaXRlbGlzdF9i
dWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gK3sKPiArCXN0cnVjdCBpOTE1
X3dhX2xpc3QgKncgPSAmZW5naW5lLT53aGl0ZWxpc3Q7Cj4gKwo+ICsJLyogV2FTZW5kUHVzaENv
bnN0YW50c0Zyb21NTUlPOnRnbCAqLwo+ICsJd2hpdGVsaXN0X3JlZyh3LCBDT01NT05fU0xJQ0Vf
Q0hJQ0tFTjIpOwo+ICsKPiArCS8qIFdhQWxsb3dVTURUb01vZGlmeVNhbXBsZXJNb2RlOnRnbCAq
Lwo+ICsJd2hpdGVsaXN0X3JlZyh3LCBHRU4xMF9TQU1QTEVSX01PREUpOwo+ICt9Cj4gKwo+ICB2
b2lkIGludGVsX2VuZ2luZV9pbml0X3doaXRlbGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5p
OTE1Owo+IEBAIC0xMTkwLDcgKzEyMTUsOSBAQCB2b2lkIGludGVsX2VuZ2luZV9pbml0X3doaXRl
bGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIAo+ICAJd2FfaW5pdF9zdGFy
dCh3LCAid2hpdGVsaXN0IiwgZW5naW5lLT5uYW1lKTsKPiAgCj4gLQlpZiAoSVNfR0VOKGk5MTUs
IDExKSkKPiArCWlmIChJU19HRU4oaTkxNSwgMTIpKQo+ICsJCXRnbF93aGl0ZWxpc3RfYnVpbGQo
ZW5naW5lKTsKPiArCWVsc2UgaWYgKElTX0dFTihpOTE1LCAxMSkpCj4gIAkJaWNsX3doaXRlbGlz
dF9idWlsZChlbmdpbmUpOwo+ICAJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkKPiAgCQlj
bmxfd2hpdGVsaXN0X2J1aWxkKGVuZ2luZSk7Cj4gQEAgLTEyNDAsNiArMTI2NywxMyBAQCByY3Nf
ZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
ZW5naW5lLT5pOTE1Owo+ICAKPiArCWlmIChJU19HRU4oaTkxNSwgMTIpKSB7Cj4gKwkJLyogV2FQ
aXBlbGluZUZsdXNoQ29oZXJlbnRMaW5lczp0Z2wgKi8KPiArCQl3YV93cml0ZV9vcih3YWwsCj4g
KwkJCSAgICBHRU4xMl9MM1NRQ1JFRzIsCj4gKwkJCSAgICBHRU4xMl9MUVNDX0ZMVVNIX0NPSEVS
RU5UX0xJTkVTKTsKPiArCX0KPiArCj4gIAlpZiAoSVNfR0VOKGk5MTUsIDExKSkgewo+ICAJCS8q
IFRoaXMgaXMgbm90IGFuIFdhLiBFbmFibGUgZm9yIGJldHRlciBpbWFnZSBxdWFsaXR5ICovCj4g
IAkJd2FfbWFza2VkX2VuKHdhbCwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCAyNGYy
YTUyYTJiNDIuLjU0ZWEyNTAwMDBiZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBA
IC03NzI5LDYgKzc3MjksOSBAQCBlbnVtIHsKPiAgI2RlZmluZSAgR0VOOF9MUVNDX1JPX1BFUkZf
RElTCQkJKDEgPDwgMjcpCj4gICNkZWZpbmUgIEdFTjhfTFFTQ19GTFVTSF9DT0hFUkVOVF9MSU5F
UwkJKDEgPDwgMjEpCj4gIAo+ICsjZGVmaW5lIEdFTjEyX0wzU1FDUkVHMgkJCQlfTU1JTygweGIx
MDQpCj4gKyNkZWZpbmUgIEdFTjEyX0xRU0NfRkxVU0hfQ09IRVJFTlRfTElORVMJKDEgPDwgMjQp
Cj4gKwo+ICAvKiBHRU44IGNoaWNrZW4gKi8KPiAgI2RlZmluZSBIRENfQ0hJQ0tFTjAJCQkJX01N
SU8oMHg3MzAwKQo+ICAjZGVmaW5lIENOTF9IRENfQ0hJQ0tFTjAJCQlfTU1JTygweEU1RjApCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gaW5kZXggMzAzOTliMjQ1ZjA3Li42M2FlY2ZmMTk1Y2Ug
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBAQCAtOTYwOCw3ICs5NjA4LDkgQEAgc3Rh
dGljIHZvaWQgbm9wX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgICovCj4gIHZvaWQgaW50ZWxfaW5pdF9jbG9ja19nYXRpbmdfaG9va3Moc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gLQlpZiAoSVNfR0VOKGRldl9w
cml2LCAxMSkpCj4gKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMikpCj4gKwkJZGV2X3ByaXYtPmRp
c3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSBub3BfaW5pdF9jbG9ja19nYXRpbmc7Cj4gKwllbHNl
IGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Ns
b2NrX2dhdGluZyA9IGljbF9pbml0X2Nsb2NrX2dhdGluZzsKPiAgCWVsc2UgaWYgKElTX0NBTk5P
TkxBS0UoZGV2X3ByaXYpKQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tfZ2F0aW5n
ID0gY25sX2luaXRfY2xvY2tfZ2F0aW5nOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5j
Cj4gaW5kZXggNDc1YWIzZDRkOTFkLi5jY2EwNDZmZjJlMTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuYwo+IEBAIC0xNDQsNyArMTQ0LDcgQEAgZndfZG9tYWluX3dhaXRfYWNr
X3dpdGhfZmFsbGJhY2soY29uc3Qgc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWlu
ICpkLAo+ICAJICogdGhlIGZhbGxiYWNrIGFjay4KPiAgCSAqCj4gIAkgKiBUaGlzIHdvcmthcm91
bmQgaXMgZGVzY3JpYmVkIGluIEhTREVTICMxNjA0MjU0NTI0IGFuZCBpdCdzIGtub3duIGFzOgo+
IC0JICogV2FSc0ZvcmNld2FrZUFkZERlbGF5Rm9yQWNrOnNrbCxieHQsa2JsLGdsayxjZmwsY25s
LGljbAo+ICsJICogV2FSc0ZvcmNld2FrZUFkZERlbGF5Rm9yQWNrOnNrbCxieHQsa2JsLGdsayxj
ZmwsY25sLGljbCx0Z2wKPiAgCSAqIGFsdGhvdWdoIHRoZSBuYW1lIGlzIGEgYml0IG1pc2xlYWRp
bmcuCj4gIAkgKi8KPiAgCj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
