Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA00CC40A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 22:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09436E31A;
	Fri,  4 Oct 2019 20:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001BD6E31A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 20:14:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 13:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="222264716"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2019 13:14:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 23:14:32 +0300
Date: Fri, 4 Oct 2019 23:14:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20191004201432.GL1208@intel.com>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
 <20191004082610.24664-3-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004082610.24664-3-swati2.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/color: move check of
 gamma_enable to specific func/platform
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDE6NTY6MDhQTSArMDUzMCwgU3dhdGkgU2hhcm1hIHdy
b3RlOgo+IE1vdmVkIGNvbW1vbiBjb2RlIHRvIGNoZWNrIGdhbW1hX2VuYWJsZSB0byBzcGVjaWZp
YyBmdW5jcyBwZXIgcGxhdGZvcm0KPiBpbiBiaXRfcHJlY2lzaW9uIGZ1bmMuIGljbCBkb2Vzbid0
IHN1cHBvcnQgdGhhdCBhbmQgY2h2IGhhcyBzZXBhcmF0ZQo+IGVuYWJsZSBrbm9iIGZvciBDR00g
TFVULgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YyB8IDIzICsrKysrKysrKysrKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYwo+IGluZGV4IDhmMDIzMTNhN2ZlZi4uNDRjZTc1ZjA1MWFkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+IEBAIC0xNDIw
LDYgKzE0MjAsOSBAQCBzdGF0aWMgaW50IGljbF9jb2xvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCj4gIHN0YXRpYyBpbnQgaTl4eF9nYW1tYV9wcmVjaXNp
b24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIHsKPiArCWlm
ICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICsJCXJldHVybiAwOwo+ICsKPiAgCXN3aXRj
aCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgewo+ICAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJ
VDoKPiAgCQlyZXR1cm4gODsKPiBAQCAtMTQzMyw2ICsxNDM2LDkgQEAgc3RhdGljIGludCBpOXh4
X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKPiAgCj4gIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1t
YV9lbmFibGUpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJaWYgKChjcnRjX3N0YXRlLT5jc2NfbW9k
ZSAmIENTQ19QT1NJVElPTl9CRUZPUkVfR0FNTUEpID09IDApCj4gIAkJcmV0dXJuIDA7Cj4gIAo+
IEBAIC0xNDQ5LDE0ICsxNDU1LDI0IEBAIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCj4gIHN0YXRpYyBp
bnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKPiAgewo+IC0JaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9E
RV9HQU1NQSkKPiAtCQlyZXR1cm4gMTA7Cj4gKwlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUpIHsK
PiArCQlpZiAoKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkgPT0g
MCkKPiArCQkJcmV0dXJuIDA7Cj4gKwkJZWxzZQo+ICsJCQlyZXR1cm4gMTA7Cj4gKwl9Cj4gKwo+
ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCj4gKwkJcmV0dXJuIDA7Cj4gIAllbHNl
Cj4gIAkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwoKQWdhaW4gY291
bGQgc2ltcGxpZnkgdG8ganVzdDoKCmlmIChjcnRjX3N0YXRlLT5jZ21fbW9kZSAmIENHTV9QSVBF
X01PREVfR0FNTUEpCglyZXR1cm4gMTA7CmVsc2UKCXJldHVybiBpOXh4X2dhbW1hX3ByZWNpc2lv
bihjcnRjX3N0YXRlKTsKCgo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNp
b24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIHsKPiArCWlm
ICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICsJCXJldHVybiAwOwo+ICsKPiAgCXN3aXRj
aCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgewo+ICAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJ
VDoKPiAgCQlyZXR1cm4gODsKPiBAQCAtMTQ3Myw5ICsxNDg5LDYgQEAgaW50IGludGVsX2NvbG9y
X2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXQKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRj
X3N0YXRlLT5iYXNlLmNydGMpOwo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gIAo+IC0JaWYgKCFjcnRjX3N0YXRlLT5nYW1t
YV9lbmFibGUpCj4gLQkJcmV0dXJuIDA7Cj4gLQo+ICAJaWYgKEhBU19HTUNIKGRldl9wcml2KSkg
ewo+ICAJCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiAgCQkJcmV0dXJuIGNodl9nYW1t
YV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gLS0gCj4gMi4yMy4wCgotLSAKVmlsbGUgU3lyasOk
bMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
