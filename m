Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0223474F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 14:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B010B8980C;
	Tue,  4 Jun 2019 12:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEA98980C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 12:52:02 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 05:52:01 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 04 Jun 2019 05:51:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 15:51:58 +0300
Date: Tue, 4 Jun 2019 15:51:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: matthew.s.atwood@intel.com
Message-ID: <20190604125158.GC5942@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603214940.11996-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: intel-gfx@lists.freedesktop.org, dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDI6NDk6NDBQTSAtMDcwMCwgbWF0dGhldy5zLmF0d29v
ZEBpbnRlbC5jb20gd3JvdGU6Cj4gRnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RA
aW50ZWwuY29tPgo+IAo+IGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSBjYWxscyBpbnRlbF9k
cF9pc19lZHAoKSwgd2hpY2ggaXMgdW5zYWZlIHRvCj4gdXNlIGJlZm9yZSBlbmNvZGVyX3R5cGUg
aXMgc2V0LiBUaGlzIGNhdXNlZCBHRU4xMSsgdG8gaW5jb3JyZWN0bHkgc3RyaXAKPiBIQlIzIGZy
b20gc291cmNlIHJhdGVzLiBNb3ZlIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSB0byBhZnRl
cgo+IGVuY29kZXJfdHlwZSBpcyBzZXQuIEFkZCBjb21tZW50IHRvIGludGVsX2RwX2lzX2VkcCgp
IGRlc2NyaWJpbmcgdW5zYWZlCj4gdXNhZ2VzLgo+IAo+IEZpeGVzOiBiMjY1YTJhNjI1NWY1ICgi
ZHJtL2k5MTUvaWNsOiBjb21ibyBwb3J0IHZzd2luZyBwcm9ncmFtbWluZwo+IGNoYW5nZXMgcGVy
IEJTUEVDIikKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA2ICsr
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+IGluZGV4IDI0YjU2YjJhNzZjOC4uYTQ0OTBiY2Fk
Njg0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gQEAgLTE0MSw2ICsxNDEsOCBAQCBz
dGF0aWMgY29uc3QgdTggdmFsaWRfZHNjX3NsaWNlY291bnRbXSA9IHsxLCAyLCA0fTsKPiAgICoK
PiAgICogSWYgYSBDUFUgb3IgUENIIERQIG91dHB1dCBpcyBhdHRhY2hlZCB0byBhbiBlRFAgcGFu
ZWwsIHRoaXMgZnVuY3Rpb24KPiAgICogd2lsbCByZXR1cm4gdHJ1ZSwgYW5kIGZhbHNlIG90aGVy
d2lzZS4KPiArICoKPiArICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2UgcHJpb3Ig
dG8gZW5jb2RlciB0eXBlIGJlaW5nIHNldC4KPiAgICovCj4gIGJvb2wgaW50ZWxfZHBfaXNfZWRw
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsKPiBAQCAtNzM0Miw4ICs3MzQ0LDYgQEAg
aW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQsCj4gIAkJIGludGVsX2RpZ19wb3J0LT5tYXhfbGFuZXMsIHBvcnRfbmFtZShwb3J0
KSkpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAtCWludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMo
aW50ZWxfZHApOwo+IC0KPiAgCWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7Cj4g
IAlpbnRlbF9kcC0+cHBzX3BpcGUgPSBJTlZBTElEX1BJUEU7Cj4gIAlpbnRlbF9kcC0+YWN0aXZl
X3BpcGUgPSBJTlZBTElEX1BJUEU7Cj4gQEAgLTczODgsNiArNzM4OCw4IEBAIGludGVsX2RwX2lu
aXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+
ICAJCQl0eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgPyAiZURQIiA6ICJEUCIsCj4gIAkJ
CXBvcnRfbmFtZShwb3J0KSk7Cj4gIAo+ICsJaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRl
bF9kcCk7Cj4gKwoKSSB3b3VsZCBzdWdnZXN0IG1vdmluZyB0aGUgZW5jb2Rlci0+dHlwZSBzZXR1
cCBlYXJsaWVyIHNvIHRoYXQgd2UgbWlnaHQKYXZvaWQgaGl0dGluZyB0aGlzIHNhbWUgcHJvYmxl
bSBpbiB0aGUgZnV0dXJlLgoKPiAgCWRybV9jb25uZWN0b3JfaW5pdChkZXYsIGNvbm5lY3Rvciwg
JmludGVsX2RwX2Nvbm5lY3Rvcl9mdW5jcywgdHlwZSk7Cj4gIAlkcm1fY29ubmVjdG9yX2hlbHBl
cl9hZGQoY29ubmVjdG9yLCAmaW50ZWxfZHBfY29ubmVjdG9yX2hlbHBlcl9mdW5jcyk7Cj4gIAo+
IC0tIAo+IDIuMTcuMgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
