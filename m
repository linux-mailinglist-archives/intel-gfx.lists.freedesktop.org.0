Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC82D7ECB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 20:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E86A6E876;
	Tue, 15 Oct 2019 18:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F166E876
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 18:22:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 11:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="207636320"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2019 11:22:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 21:21:59 +0300
Date: Tue, 15 Oct 2019 21:21:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191015182159.GH1208@intel.com>
References: <20191015164029.18431-1-lucas.demarchi@intel.com>
 <20191015164029.18431-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015164029.18431-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 v2 2/5] drm/i915: fix port checks for MST
 support on gen >= 11
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

T24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDk6NDA6MjZBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEJvdGggSWNlIExha2UgYW5kIEVsa2hhcnQgTGFrZSAoZ2VuIDExKSBzdXBwb3J0
IE1TVCBvbiBhbGwgZXh0ZXJuYWwKPiBjb25uZWN0aW9ucyBleGNlcHQgRERJIEEuIFRpZ2VyIExh
a2UgKGdlbiAxMikgc3VwcG9ydHMgb24gYWxsIGV4dGVybmFsCj4gY29ubmVjdGlvbnMuCj4gCj4g
TW92ZSB0aGUgY2hlY2sgdG8gaGFwcGVuIGluc2lkZSBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0
KCkgYW5kIGFkZAo+IHNwZWNpZmljIHBsYXRmb3JtIGNoZWNrcy4KPiAKPiB2MjogUmVwbGFjZSAh
PSB3aXRoID09IGNoZWNrcyBmb3IgcG9ydHMgb24gZ2VuIDwgMTEgKFZpbGxlKQo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgIHwgIDcgKyst
LS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMjIg
KysrKysrKysrKysrKysrLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+IGluZGV4IDY1OTRmMmFmMTI1Ny4uNDE1ZDBmMmMyNzUxIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC03MjcxLDExICs3MjcxLDggQEAgaW50
ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGln
X3BvcnQsCj4gIAkJaW50ZWxfY29ubmVjdG9yLT5nZXRfaHdfc3RhdGUgPSBpbnRlbF9jb25uZWN0
b3JfZ2V0X2h3X3N0YXRlOwo+ICAKPiAgCS8qIGluaXQgTVNUIG9uIHBvcnRzIHRoYXQgY2FuIHN1
cHBvcnQgaXQgKi8KPiAtCWlmIChIQVNfRFBfTVNUKGRldl9wcml2KSAmJiAhaW50ZWxfZHBfaXNf
ZWRwKGludGVsX2RwKSAmJgo+IC0JICAgIChwb3J0ID09IFBPUlRfQiB8fCBwb3J0ID09IFBPUlRf
QyB8fAo+IC0JICAgICBwb3J0ID09IFBPUlRfRCB8fCBwb3J0ID09IFBPUlRfRikpCj4gLQkJaW50
ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChpbnRlbF9kaWdfcG9ydCwKPiAtCQkJCQkgIGludGVsX2Nv
bm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKPiArCWludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoaW50
ZWxfZGlnX3BvcnQsCj4gKwkJCQkgIGludGVsX2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKPiAg
Cj4gIAlpZiAoIWludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihpbnRlbF9kcCwgaW50ZWxfY29ubmVj
dG9yKSkgewo+ICAJCWludGVsX2RwX2F1eF9maW5pKGludGVsX2RwKTsKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRleCAyMjAzYmUyOGVhMDEuLmVh
MDYyZmVhOGE0NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYwo+IEBAIC02NTUsMjEgKzY1NSwzMSBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3Rp
dmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4gIGlu
dAo+ICBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmludGVsX2RpZ19wb3J0LCBpbnQgY29ubl9iYXNlX2lkKQo+ICB7Cj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYp
Owo+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7Cj4g
LQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXY7
Cj4gKwllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gIAlpbnQg
cmV0Owo+ICAKPiAtCWludGVsX2RwLT5jYW5fbXN0ID0gdHJ1ZTsKPiArCWlmICghSEFTX0RQX01T
VChpOTE1KSB8fCBpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+ICsJCXJldHVybiAwOwo+ICsK
PiArCWlmIChJTlRFTF9HRU4oaTkxNSkgPD0gMTEgJiYgcG9ydCA9PSBQT1JUX0EpCj4gKwkJcmV0
dXJuIDA7CgpnZW48MTIKCndpdGggdGhhdApSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gKwo+ICsJaWYgKElOVEVMX0dFTihpOTE1
KSA8IDExICYmIHBvcnQgPT0gUE9SVF9FKQo+ICsJCXJldHVybiAwOwo+ICsKPiAgCWludGVsX2Rw
LT5tc3RfbWdyLmNicyA9ICZtc3RfY2JzOwo+ICAKPiAgCS8qIGNyZWF0ZSBlbmNvZGVycyAqLwo+
ICAJaW50ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2VuY29kZXJzKGludGVsX2RpZ19wb3J0KTsKPiAt
CXJldCA9IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoJmludGVsX2RwLT5tc3RfbWdyLCBk
ZXYsCj4gKwlyZXQgPSBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9pbml0KCZpbnRlbF9kcC0+bXN0
X21nciwgJmk5MTUtPmRybSwKPiAgCQkJCQkgICAmaW50ZWxfZHAtPmF1eCwgMTYsIDMsIGNvbm5f
YmFzZV9pZCk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJaW50ZWxfZHAtPmNhbl9tc3QgPSBmYWxzZTsK
PiArCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAtCX0KPiArCj4gKwlpbnRlbF9kcC0+Y2Fu
X21zdCA9IHRydWU7Cj4gKwo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLS0gCj4gMi4yMy4wCgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
