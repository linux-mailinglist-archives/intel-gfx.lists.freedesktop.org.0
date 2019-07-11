Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01894660FE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 23:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABE06E28A;
	Thu, 11 Jul 2019 21:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61EE6E28A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 21:09:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 14:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="193536341"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2019 14:09:01 -0700
Date: Thu, 11 Jul 2019 14:09:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190711210901.GL9024@mdroper-desk.amr.corp.intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
 <20190711173115.28296-19-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711173115.28296-19-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v3 18/21] drm/i915/tgl: port to ddc pin
 mapping
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMTA6MzE6MTJBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE1ha2UgdGhlIGljbCBmdW5jdGlvbiBnZW5lcmljIHNvIGl0IGlzIGJhc2VkIG9u
IHBoeSB0eXBlIGFuZCBjYW4gYmUKPiBhcHBsaWVkIHRvIHRnbCBhcyB3ZWxsLgo+IAo+IEkgY2hl
Y2tlZCBpZiB0aGlzIGNvdWxkIG5vdCBhcHBseSB0byBFSEwgYXMgd2VsbCwgYnV0IHVuZm9ydHVu
YXRlbHkKPiB0aGVyZSB0aGUgSFBEIGFuZCBEREMvR01CVVMgcGlucyBmb3IgRERJIEMgYXJlIG1h
cHBlZCB0byBUeXBlQyBQb3J0IDEKPiBldmVuIHRob3VnaCBpdCBkb2Vzbid0IGhhdmUgVEMgcGh5
Lgo+IAo+IHYyOiBkb24ndCBhZGQgYSBzZXBhcmF0ZSBmdW5jdGlvbiBmb3IgVEdMLCBidXQgcmF0
aGVyIHJldXNlIHRoZSBJQ0wgb25lCj4gICAgIChzdWdnZXN0ZWQgYnkgUm9kcmlnbykKPiB2Mzog
cmViYXNlIGFmdGVyIHRoZSBpbnRyb2R1Y3Rpb24gb2YgZW51bSBwaHkgYW5kIHVzZSBpdCBmb3Ig
dGhlCj4gICAgIGNvbnZlcnNpb25zCj4gCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8
IDM2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDI3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jCj4gaW5kZXggMGViZWM2OWJiYmZjLi43N2FmMGRmZDkzY2UgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IEBAIC0yOTMwLDMzICsy
OTMwLDE1IEBAIHN0YXRpYyB1OCBjbnBfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAgCj4gIHN0YXRpYyB1OCBpY2xfcG9ydF90b19kZGNfcGluKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIHsKPiAt
CXU4IGRkY19waW47Cj4gKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJp
diwgcG9ydCk7Cj4gIAo+IC0Jc3dpdGNoIChwb3J0KSB7Cj4gLQljYXNlIFBPUlRfQToKPiAtCQlk
ZGNfcGluID0gR01CVVNfUElOXzFfQlhUOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBQT1JUX0I6Cj4g
LQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8yX0JYVDsKPiAtCQlicmVhazsKPiAtCWNhc2UgUE9SVF9D
Ogo+IC0JCWRkY19waW4gPSBHTUJVU19QSU5fOV9UQzFfSUNQOwo+IC0JCWJyZWFrOwo+IC0JY2Fz
ZSBQT1JUX0Q6Cj4gLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMF9UQzJfSUNQOwo+IC0JCWJyZWFr
Owo+IC0JY2FzZSBQT1JUX0U6Cj4gLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMV9UQzNfSUNQOwo+
IC0JCWJyZWFrOwo+IC0JY2FzZSBQT1JUX0Y6Cj4gLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xMl9U
QzRfSUNQOwo+IC0JCWJyZWFrOwo+IC0JZGVmYXVsdDoKPiAtCQlNSVNTSU5HX0NBU0UocG9ydCk7
Cj4gLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl8yX0JYVDsKPiAtCQlicmVhazsKPiAtCX0KPiAtCXJl
dHVybiBkZGNfcGluOwo+ICsJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkK
PiArCQlyZXR1cm4gR01CVVNfUElOXzFfQlhUICsgcG9ydDsKPiArCWVsc2UgaWYgKGludGVsX3Bo
eV9pc190YyhkZXZfcHJpdiwgcGh5KSkKPiArCQlyZXR1cm4gR01CVVNfUElOXzlfVEMxX0lDUCAr
IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIHBvcnQpOwo+ICsKPiArCVdBUk4oMSwgIlVua25v
d24gcG9ydDolY1xuIiwgcG9ydF9uYW1lKHBvcnQpKTsKPiArCXJldHVybiBHTUJVU19QSU5fMl9C
WFQ7Cj4gIH0KPiAgCj4gIHN0YXRpYyB1OCBtY2NfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gQEAgLTMwMTksNyArMzAw
MSw3IEBAIHN0YXRpYyB1OCBpbnRlbF9oZG1pX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAo+ICAKPiAgCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpCj4gIAkJZGRj
X3BpbiA9IG1jY19wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+IC0JZWxzZSBpZiAo
SEFTX1BDSF9JQ1AoZGV2X3ByaXYpKQo+ICsJZWxzZSBpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYp
IHx8IEhBU19QQ0hfSUNQKGRldl9wcml2KSkKPiAgCQlkZGNfcGluID0gaWNsX3BvcnRfdG9fZGRj
X3BpbihkZXZfcHJpdiwgcG9ydCk7Cj4gIAllbHNlIGlmIChIQVNfUENIX0NOUChkZXZfcHJpdikp
Cj4gIAkJZGRjX3BpbiA9IGNucF9wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+IC0t
IAo+IDIuMjEuMAo+IAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIK
SW9URyBQbGF0Zm9ybSBFbmFibGluZyAmIERldmVsb3BtZW50CkludGVsIENvcnBvcmF0aW9uCig5
MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
