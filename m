Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A31EC44B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 15:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46F16F808;
	Fri,  1 Nov 2019 14:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 657DE6F808
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 14:10:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 07:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="194671425"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 01 Nov 2019 07:10:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Nov 2019 16:10:32 +0200
Date: Fri, 1 Nov 2019 16:10:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191101141032.GH1208@intel.com>
References: <20191101134333.11612-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101134333.11612-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add for_each_port() and use it
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

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDM6NDM6MzNQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQWRkIGFub3RoZXIgZm9yX2VhY2ggc3R5bGUgbWFjcm8gdG8gdGhlIHBpbGUgb2YgY3Vz
dG9tIGxvb3BpbmcgbWFjcm9zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jICAgIHwgOCArKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDcgKysrKystLQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IGluZGV4IDYzYzFiZDRjMjk1NC4uYTAzZjU2YjdiNGVm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBAQCAt
MTI0Niw3ICsxMjQ2LDcgQEAgc3RhdGljIGVudW0gcG9ydCBnZXRfcG9ydF9ieV9kZGNfcGluKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCBkZGNfcGluKQo+ICAJY29uc3Qgc3RydWN0
IGRkaV92YnRfcG9ydF9pbmZvICppbmZvOwo+ICAJZW51bSBwb3J0IHBvcnQ7Cj4gIAo+IC0JZm9y
IChwb3J0ID0gUE9SVF9BOyBwb3J0IDwgSTkxNV9NQVhfUE9SVFM7IHBvcnQrKykgewo+ICsJZm9y
X2VhY2hfcG9ydChwb3J0KSB7Cj4gIAkJaW5mbyA9ICZpOTE1LT52YnQuZGRpX3BvcnRfaW5mb1tw
b3J0XTsKPiAgCj4gIAkJaWYgKGluZm8tPmNoaWxkICYmIGRkY19waW4gPT0gaW5mby0+YWx0ZXJu
YXRlX2RkY19waW4pCj4gQEAgLTEyOTcsNyArMTI5Nyw3IEBAIHN0YXRpYyBlbnVtIHBvcnQgZ2V0
X3BvcnRfYnlfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCBhdXhfY2gp
Cj4gIAljb25zdCBzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm87Cj4gIAllbnVtIHBvcnQg
cG9ydDsKPiAgCj4gLQlmb3IgKHBvcnQgPSBQT1JUX0E7IHBvcnQgPCBJOTE1X01BWF9QT1JUUzsg
cG9ydCsrKSB7Cj4gKwlmb3JfZWFjaF9wb3J0KHBvcnQpIHsKPiAgCQlpbmZvID0gJmk5MTUtPnZi
dC5kZGlfcG9ydF9pbmZvW3BvcnRdOwo+ICAKPiAgCQlpZiAoaW5mby0+Y2hpbGQgJiYgYXV4X2No
ID09IGluZm8tPmFsdGVybmF0ZV9hdXhfY2hhbm5lbCkKPiBAQCAtMTcyMiw3ICsxNzIyLDcgQEAg
aW5pdF92YnRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJ
CQkhSEFTX1BDSF9TUExJVChkZXZfcHJpdikpOwo+ICAJRFJNX0RFQlVHX0tNUygiU2V0IGRlZmF1
bHQgdG8gU1NDIGF0ICVkIGtIelxuIiwgZGV2X3ByaXYtPnZidC5sdmRzX3NzY19mcmVxKTsKPiAg
Cj4gLQlmb3IgKHBvcnQgPSBQT1JUX0E7IHBvcnQgPCBJOTE1X01BWF9QT1JUUzsgcG9ydCsrKSB7
Cj4gKwlmb3JfZWFjaF9wb3J0KHBvcnQpIHsKPiAgCQlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8g
KmluZm8gPQo+ICAJCQkmZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdOwo+ICAKPiBA
QCAtMTczNiw3ICsxNzM2LDcgQEAgaW5pdF92YnRfbWlzc2luZ19kZWZhdWx0cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIHsKPiAgCWVudW0gcG9ydCBwb3J0Owo+ICAKPiAt
CWZvciAocG9ydCA9IFBPUlRfQTsgcG9ydCA8IEk5MTVfTUFYX1BPUlRTOyBwb3J0KyspIHsKPiAr
CWZvcl9lYWNoX3BvcnQocG9ydCkgewo+ICAJCXN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqaW5m
byA9Cj4gIAkJCSZkZXZfcHJpdi0+dmJ0LmRkaV9wb3J0X2luZm9bcG9ydF07Cj4gIAkJZW51bSBw
aHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggMzU1YzUwMDg4NTg5
Li40NTIyZWYxNjdhOTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaAo+IEBAIC0zMzMsOCArMzMzLDExIEBAIGVudW0gcGh5X2ZpYSB7Cj4gIAkg
ICAgIChfX3MpIDwgUlVOVElNRV9JTkZPKF9fZGV2X3ByaXYpLT5udW1fc3ByaXRlc1soX19wKV07
CVwKPiAgCSAgICAgKF9fcykrKykKPiAgCj4gLSNkZWZpbmUgZm9yX2VhY2hfcG9ydF9tYXNrZWQo
X19wb3J0LCBfX3BvcnRzX21hc2spIFwKPiAtCWZvciAoKF9fcG9ydCkgPSBQT1JUX0E7IChfX3Bv
cnQpIDwgSTkxNV9NQVhfUE9SVFM7IChfX3BvcnQpKyspCVwKPiArI2RlZmluZSBmb3JfZWFjaF9w
b3J0KF9fcG9ydCkgXAo+ICsJZm9yICgoX19wb3J0KSA9IFBPUlRfQTsgKF9fcG9ydCkgPCBJOTE1
X01BWF9QT1JUUzsgKF9fcG9ydCkrKykKPiArCj4gKyNkZWZpbmUgZm9yX2VhY2hfcG9ydF9tYXNr
ZWQoX19wb3J0LCBfX3BvcnRzX21hc2spCQkJXAo+ICsJZm9yX2VhY2hfcG9ydChfX3BvcnQpCQkJ
CQkJXAo+ICAJCWZvcl9lYWNoX2lmKChfX3BvcnRzX21hc2spICYgQklUKF9fcG9ydCkpCj4gIAo+
ICAjZGVmaW5lIGZvcl9lYWNoX3BoeV9tYXNrZWQoX19waHksIF9fcGh5c19tYXNrKSBcCj4gLS0g
Cj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
