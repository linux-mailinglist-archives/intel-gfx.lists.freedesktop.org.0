Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97069150EA2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 18:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D306ECA7;
	Mon,  3 Feb 2020 17:33:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471066ECA7
 for <Intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 17:33:06 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 09:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="338051855"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2020 09:33:04 -0800
Date: Mon, 3 Feb 2020 09:33:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200203173304.GF232048@mdroper-desk1.amr.corp.intel.com>
References: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915/tgl:
 WaEnablePreemptionGranularityControlByUMD
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: piotr.zdunowski@intel.com, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTE6MzE6MDdBTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBFbmFibGUgRnRyUGVyQ3R4dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2wgYml0IGFu
ZCB3aGl0ZWxpc3QKPiBHRU44X0NTX0NISUNLRU4xIHNvIFdhRW5hYmxlUHJlZW1wdGlvbkdyYW51
bGFyaXR5Q29udHJvbEJ5VU1EIGlzCj4gaW1wbGVtZW50ZWQuCgpJIG1heSBiZSBtaXNyZW1lbWJl
cmluZywgYnV0IHdhc24ndCB0aGlzIGEgImZha2UiIHdvcmthcm91bmQgd2UgYWRkZWQgb24KcGFz
dCBwbGF0Zm9ybXMgdG8gYXZvaWQgYnJlYWtpbmcgY29tcGF0aWJpbGl0eSB3aXRoIG9sZCBwcmUt
cHJlZW1wdGlvbgp1c2Vyc3BhY2U/ICBJLmUuLCBzb21lIHVzZXJzcGFjZSB3YXNuJ3QgZXhwZWN0
aW5nIGZpbmUtZ3JhaW5lZApwcmVlbXB0aW9uLCBzbyB0dXJuaW5nIGl0IG9uIGJ5IGRlZmF1bHQg
aW4gdGhlIGtlcm5lbCB3b3VsZCBjYXVzZQpicmVha2FnZTsgd2UgaGFkIHRvIHNldCB0aGUgZGVm
YXVsdCB0byAnZGlzYWJsZWQnIGFuZCB0aGVuIG1ha2UKcHJlZW1wdGlvbi1hd2FyZSB1c2Vyc3Bh
Y2Ugb3B0IGJhY2sgaW4uCgpEbyB3ZSBzdGlsbCBuZWVkIHRoYXQgZm9yIFRHTD8gIFdvdWxkbid0
IGFsbCB1c2Vyc3BhY2UgdGhhdCBleGlzdHMgZm9yCnRoaXMgcGxhdGZvcm0gYmUgYXdhcmUgb2Yg
ZmluZS1ncmFpbmVkIHByZWVtcHRpb24gbm93IChtZWFuaW5nIHdlCndvdWxkbid0IG5lZWQgdG8g
d29yayBhcm91bmQgb2xkLCBkdW1iIHVzZXJzcGFjZSBvbiB0aGlzIHBsYXRmb3JtIGFuZApjb3Vs
ZCBqdXN0IGVuYWJsZSBmaW5lLWdyYWluZWQgcHJlZW1wdGlvbiBieSBkZWZhdWx0IGluIHRoZSBr
ZXJuZWwpPyAgT3IKZG8gd2UgbmVlZCB0aGlzIGJlY2F1c2UgdGhlcmUgYXJlIHRoZXJlIG90aGVy
IHdvcmthcm91bmRzIHRoYXQgcmVxdWlyZQp1c2Vyc3BhY2UgdG8gZXhwbGljaXRseSBkaXNhYmxl
IGZpbmUtZ3JhaW5lZCBwcmVlbXB0aW9uIGFyb3VuZCBzcGVjaWZpYwpvcGVyYXRpb25zPwoKCk1h
dHQKCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwu
Y29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IHBpb3RyLnpkdW5vd3NraUBpbnRlbC5jb20KPiBDYzogbWljaGFsLm1yb3pla0Bp
bnRlbC5jb20KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyB8IDcgKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+IGluZGV4IDVhN2RiMjc5ZjcwMi4uNWQyYThjYjcwZTE2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTEyNTQsNiArMTI1NCw5
IEBAIHN0YXRpYyB2b2lkIHRnbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQo+ICAJCXdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQs
Cj4gIAkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQgfAo+ICAJCQkJICBSSU5H
X0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7Cj4gKwo+ICsJCS8qIFdhRW5hYmxlUHJlZW1wdGlv
bkdyYW51bGFyaXR5Q29udHJvbEJ5VU1EOnRnbCAqLwo+ICsJCXdoaXRlbGlzdF9yZWcodywgR0VO
OF9DU19DSElDS0VOMSk7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+ICAJCWJyZWFrOwo+IEBA
IC0xNDEyLDggKzE0MTUsOCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gIAkJCQkgICAwKTsKPiAg
CX0KPiAgCj4gLQlpZiAoSVNfR0VOX1JBTkdFKGk5MTUsIDksIDExKSkgewo+IC0JCS8qIEZ0clBl
ckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxjbmwsaWNs
ICovCj4gKwlpZiAoSVNfR0VOX1JBTkdFKGk5MTUsIDksIDEyKSkgewo+ICsJCS8qIEZ0clBlckN0
eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxjbmwsaWNsLHRn
bCAqLwo+ICAJCXdhX21hc2tlZF9lbih3YWwsCj4gIAkJCSAgICAgR0VON19GRl9TTElDRV9DU19D
SElDS0VOMSwKPiAgCQkJICAgICBHRU45X0ZGU0NfUEVSQ1RYX1BSRUVNUFRfQ1RSTCk7Cj4gLS0g
Cj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4CgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQt
T1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
