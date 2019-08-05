Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE3814D7
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 11:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B952B6E3A4;
	Mon,  5 Aug 2019 09:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4306E3A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 09:12:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 02:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="192373974"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Aug 2019 02:12:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Imre Deak <imre.deak@intel.com>
In-Reply-To: <20190708151353.haudzu2na2iyhp54@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <20190704135641.GD25657@ideak-desk.fi.intel.com>
 <20190708151353.haudzu2na2iyhp54@ldmartin-desk1>
Date: Mon, 05 Aug 2019 12:16:34 +0300
Message-ID: <871ry0km4t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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

T24gTW9uLCAwOCBKdWwgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIFRodSwgSnVsIDA0LCAyMDE5IGF0IDA0OjU2OjQxUE0gKzAzMDAs
IEltcmUgRGVhayB3cm90ZToKPj5PbiBXZWQsIEp1bCAwMywgMjAxOSBhdCAwNTowNjo0N1BNIC0w
NzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+PiBNYWtlIGludGVsX3RjLmggdGhlIGZpcnN0
IGluY2x1ZGUgc28gd2UgZ3VhcmFudGVlIGl0J3Mgc2VsZi1jb250YWluZWQuCj4+PiBTb3J0IHRo
ZSByZXN0LiBTYW1lIHByaW5jaXBsZSBhcHBsaWVzIGZvciBpbmNsdWRlcyBpbiB0aGUgaGVhZGVy
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jIHwgNSArKystLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuaCB8IDUgKysrLS0KPj4+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
Cj4+PiBpbmRleCAxYTlkZDMyZmIwYTUuLmU2ZTYxNjNjMTIzMiAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4+PiBAQCAtMywxMCArMywxMSBAQAo+Pj4g
ICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4+PiAgICovCj4+Pgo+Pj4g
KyNpbmNsdWRlICJpbnRlbF90Yy5oIgo+Pgo+PkkgZ2V0IHlvdXIgcG9pbnQgdG8ga2VlcCB0aGUg
c2VsZi1jb250YWluZWQgY2hlY2sgd29yayBldmVuIHdpdGhvdXQgdGhlCj4+aGVhZGVyIHRlc3Qg
ZmlsZXMsIGJ1dCBJJ20gbm90IHN1cmUgaWYgd2UgbmVlZCB0aGF0LCBzaW5jZSB0aGVyZSBpcyB0
aGUKPj5oZWFkZXIgdGVzdCBmaWxlIGFwcHJvYWNoIGluIHBsYWNlLiBJIGhhdmVuJ3Qgc2VlbiB0
aGlzIGRvbmUgYW55d2hlcmUKPj5lbHNlLCBzbyB3ZSBzaG91bGRuJ3QgbWFrZSBhbiBleGNlcHRp
b24gaGVyZSBlaXRoZXIgaW1vLgo+Pgo+PitKYW5pIGZvciB0aGF0Lgo+Pgo+PkZpeGluZyB0aGUg
cmVzdCBvZiBteSBBQkMgc2NyZXctdXAgbG9va3Mgb2suCj4KPiBJIGNhbiBjaGFuZ2UgdGhpcyBh
bmQgbGVhdmUgaXQgZm9yIGxhdGVyIHRvIG1haW50YWluCj4gY29uc2lzdGVuY3kgYWNyb3NzIHRo
ZSBjb2RlYmFzZS4KClRoaXMgaXMgd2hhdCB3ZSd2ZSBlbmRlZCB1cCB3aXRoLCBlYWNoIGJsb2Nr
IHNvcnRlZDoKCiNpbmNsdWRlIDxsaW51eC8uLi4+CgojaW5jbHVkZSA8ZHJtLy4uLj4KCiNpbmNs
dWRlICIuLi4iCgoKQlIsCkphbmkuCgoKPgo+IEx1Y2FzIERlIE1hcmNoaQo+Cj4+Cj4+PiArCj4+
PiArI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+PiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIK
Pj4+ICAjaW5jbHVkZSAiaW50ZWxfZHBfbXN0LmgiCj4+PiAtI2luY2x1ZGUgImk5MTVfZHJ2Lmgi
Cj4+PiAtI2luY2x1ZGUgImludGVsX3RjLmgiCj4+Pgo+Pj4gIHN0YXRpYyBjb25zdCBjaGFyICp0
Y19wb3J0X21vZGVfbmFtZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQo+Pj4gIHsKPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKPj4+IGluZGV4IDBkODQxMWQ0YTkxZC4u
NDVhZTMwNTM3Yjc4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmgKPj4+IEBAIC02LDEwICs2LDExIEBACj4+PiAgI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwo+
Pj4gICNkZWZpbmUgX19JTlRFTF9UQ19IX18KPj4+Cj4+PiAtI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+Cj4+PiAtI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4+PiAgI2luY2x1ZGUgImludGVsX2Ry
di5oIgo+Pj4KPj4+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPj4+ICsjaW5jbHVkZSA8bGlu
dXgvdHlwZXMuaD4KPj4+ICsKPj4+ICBib29sIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPj4+ICB1MzIgaW50ZWxfdGNfcG9ydF9n
ZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPj4+ICBp
bnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQpOwo+Pj4gLS0KPj4+IDIuMjEuMAo+Pj4KCi0tIApKYW5pIE5pa3VsYSwg
SW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
