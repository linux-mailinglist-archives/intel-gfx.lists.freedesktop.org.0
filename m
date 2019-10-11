Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77FFD3F24
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442CD6EC26;
	Fri, 11 Oct 2019 12:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08AA6E3FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:02:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 05:02:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="193513228"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 11 Oct 2019 05:02:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 15:02:08 +0300
Date: Fri, 11 Oct 2019 15:02:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191011120208.GK1208@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011010907.103309-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: fix port checks for MST
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

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDNQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEJvdGggSWNlIExha2UgYW5kIEVsa2hhcnQgTGFrZSAoZ2VuIDExKSBzdXBwb3J0
IE1TVCBvbiBhbGwgZXh0ZXJuYWwKPiBjb25uZWN0aW9ucyBleGNlcHQgRERJIEEuIFRpZ2VyIExh
a2UgKGdlbiAxMikgc3VwcG9ydHMgb24gYWxsIGV4dGVybmFsCj4gY29ubmVjdGlvbnMuCj4gCj4g
TW92ZSB0aGUgY2hlY2sgdG8gaGFwcGVuIGluc2lkZSBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0
KCkgYW5kIGFkZAo+IHNwZWNpZmljIHBsYXRmb3JtIGNoZWNrcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICB8ICA3ICsrLS0tLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDE1ICsrKysrKysr
KysrKystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDBl
NDVjNjFkNzMzMS4uMzQ4YTA5ODkwNjExIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwo+IEBAIC03MjY4LDExICs3MjY4LDggQEAgaW50ZWxfZHBfaW5pdF9jb25u
ZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gIAkJaW50
ZWxfY29ubmVjdG9yLT5nZXRfaHdfc3RhdGUgPSBpbnRlbF9jb25uZWN0b3JfZ2V0X2h3X3N0YXRl
Owo+ICAKPiAgCS8qIGluaXQgTVNUIG9uIHBvcnRzIHRoYXQgY2FuIHN1cHBvcnQgaXQgKi8KPiAt
CWlmIChIQVNfRFBfTVNUKGRldl9wcml2KSAmJiAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAm
Jgo+IC0JICAgIChwb3J0ID09IFBPUlRfQiB8fCBwb3J0ID09IFBPUlRfQyB8fAo+IC0JICAgICBw
b3J0ID09IFBPUlRfRCB8fCBwb3J0ID09IFBPUlRfRikpCj4gLQkJaW50ZWxfZHBfbXN0X2VuY29k
ZXJfaW5pdChpbnRlbF9kaWdfcG9ydCwKPiAtCQkJCQkgIGludGVsX2Nvbm5lY3Rvci0+YmFzZS5i
YXNlLmlkKTsKPiArCWludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoaW50ZWxfZGlnX3BvcnQsCj4g
KwkJCQkgIGludGVsX2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKPiAgCj4gIAlpZiAoIWludGVs
X2VkcF9pbml0X2Nvbm5lY3RvcihpbnRlbF9kcCwgaW50ZWxfY29ubmVjdG9yKSkgewo+ICAJCWlu
dGVsX2RwX2F1eF9maW5pKGludGVsX2RwKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRleCBjMmJiYmExZWZmYzEuLjhkY2I1NzhlNmQwMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC02
NTQsMTUgKzY1NCwyNiBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3RpdmVfbGlua3Moc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4gIHZvaWQKPiAgaW50ZWxfZHBf
bXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCwgaW50IGNvbm5fYmFzZV9pZCkKPiAgewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiAgCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSAmaW50ZWxfZGlnX3BvcnQtPmRwOwo+IC0Jc3RydWN0IGRybV9k
ZXZpY2UgKmRldiA9IGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2Owo+ICsJZW51bSBwb3J0
IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0Owo+ICAJaW50IHJldDsKPiAgCj4gKwlp
ZiAoIUhBU19EUF9NU1QoaTkxNSkgfHwgaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKPiArCQly
ZXR1cm47Cj4gKwo+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA9PSAxMSAmJiBwb3J0ID09IFBPUlRf
QSkKPiArCQlyZXR1cm47Cj4gKwo+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA8IDExICYmCj4gKwkg
ICAgcG9ydCAhPSBQT1JUX0IgJiYgcG9ydCAhPSBQT1JUX0MgJiYgcG9ydCAhPSBQT1JUX0QgJiYg
cG9ydCAhPSBQT1JUX0YpCj4gKwkJcmV0dXJuOwoKVGhpcyA9PSB2cy4gIT0gaXMgcmF0aGVyIGhh
cmQgb24gdGhlIHBvb3Igb2xkIGJyYWluLgoKSWYgd2UgcmVwbGFjZSB0aGUgbGF0dGVyIHdpdGgg
Jz09UE9SVF9BIHx8ID09UE9SVF9FJwpJIHRoaW5rIGl0J2xsIGJlIGVhc2llciB0byBncmFzcCB3
aGF0J3MgZ29pbmcgb24uCgo+ICsKPiAgCWludGVsX2RwLT5tc3RfbWdyLmNicyA9ICZtc3RfY2Jz
Owo+ICAKPiAgCS8qIGNyZWF0ZSBlbmNvZGVycyAqLwo+ICAJaW50ZWxfZHBfY3JlYXRlX2Zha2Vf
bXN0X2VuY29kZXJzKGludGVsX2RpZ19wb3J0KTsKPiAtCXJldCA9IGRybV9kcF9tc3RfdG9wb2xv
Z3lfbWdyX2luaXQoJmludGVsX2RwLT5tc3RfbWdyLCBkZXYsCj4gKwlyZXQgPSBkcm1fZHBfbXN0
X3RvcG9sb2d5X21ncl9pbml0KCZpbnRlbF9kcC0+bXN0X21nciwgJmk5MTUtPmRybSwKPiAgCQkJ
CQkgICAmaW50ZWxfZHAtPmF1eCwgMTYsIDMsIGNvbm5fYmFzZV9pZCk7Cj4gIAlpZiAocmV0KSB7
Cj4gIAkJaW50ZWxfZHAtPmNhbl9tc3QgPSBmYWxzZTsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxs
ZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
