Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA9B266505
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 18:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6421E6EAB3;
	Fri, 11 Sep 2020 16:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0916EAB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 16:50:32 +0000 (UTC)
IronPort-SDR: y6aDRUrwOUFY30Lm2m4Mw0K//Pu7nlMOSZ2jZhiff3HYocz6HW164CgXw5hYsWbt91Dc5aPmI+
 n7a2QAgLzIxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="243623769"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="243623769"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:50:32 -0700
IronPort-SDR: NJL5XC/DpSXO0NVxARoXT3q1TeOwrT39siptP2DRG8d9bgfGi+Yr8ABrlfLqTzdzsQMDSjNIpp
 W+zgOt3dK4PA==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="450045893"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:50:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908140210.31048-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
 <20200908140210.31048-4-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 19:50:33 +0300
Message-ID: <87imckz292.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Nuke CACHE_MODE_0 save/restore
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwOCBTZXAgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgQ0FDSEVfTU9ERV8wIHNhdmUvcmVzdG9yZSB3YXMgYWRk
ZWQgd2l0aG91dCBleHBsYW5hdGlvbiBpbgo+IGNvbW1pdCAxZjg0ZTU1MGE4NzAgKCJkcm0vaTkx
NSBtb3JlIHJlZ2lzdGVycyBmb3IgUzMgKERTUENMS19HQVRFX0QsCj4gQ0FDSEVfTU9ERV8wLCBN
SV9BUkJfU1RBVEUpIikuIElmIHRoZXJlIGFyZSBhbnkgYml0cyB3ZSBjYXJlIGFib3V0Cj4gdGhv
c2Ugc2hvdWxkIGJlIHNldCBleHBsaWNpdGx5IGR1cmluZyBzb21lIGFwcHJvcHJpYXRlIGluaXQg
ZnVuY3Rpb24uCj4gTGV0J3MgYXNzdW1lIGl0J3MgYWxsIGdvb2QgYW5kIGp1c3QgbnVrZSB0aGlz
IG1hZ2ljIHNhdmUvcmVzdG9yZS4KPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KClNvbWUgb2YgdGhlc2Ugd2lsbCBwcm9iYWJseSBjb25mbGlj
dCB3aXRoIHRoZSBwYXRjaGVzIEkgbWVyZ2VkCnRvZGF5LiBUaGUgcmVzb2x1dGlvbiBpcyB0cml2
aWFsLCBhbmQgdGhlIHBhdGNoZXMgcHJvYmFibHkgYXBwbHkgd2l0aApsZXNzIGNvbnRleHQuIEkg
dGhpbmsgaXQncyBmaW5lIHRvIGFwcGx5IHdpdGhvdXQgcmUtdGVzdGluZy4KCkJSLApKYW5pLgoK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgIHwgMSAtCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgOSAtLS0tLS0tLS0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGlu
ZGV4IGNmNTEyNDZiNTQwMi4uNTM3Yzc4MGFmODU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gQEAgLTUzNyw3ICs1MzcsNiBAQCBzdHJ1Y3QgaW50ZWxfZ21idXMgewo+ICAKPiAgc3Ry
dWN0IGk5MTVfc3VzcGVuZF9zYXZlZF9yZWdpc3RlcnMgewo+ICAJdTMyIHNhdmVEU1BBUkI7Cj4g
LQl1MzIgc2F2ZUNBQ0hFX01PREVfMDsKPiAgCXUzMiBzYXZlU1dGMFsxNl07Cj4gIAl1MzIgc2F2
ZVNXRjFbMTZdOwo+ICAJdTMyIHNhdmVTV0YzWzNdOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3Vz
cGVuZC5jCj4gaW5kZXggMzRjN2Q3YmNjZWM1Li45MzJjN2RmNjRkZDMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3N1c3BlbmQuYwo+IEBAIC02MiwxMCArNjIsNiBAQCBpbnQgaTkxNV9zYXZl
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlwY2lfcmVhZF9j
b25maWdfd29yZChwZGV2LCBHQ0RHTUJVUywKPiAgCQkJCSAgICAgJmRldl9wcml2LT5yZWdmaWxl
LnNhdmVHQ0RHTUJVUyk7Cj4gIAo+IC0JLyogQ2FjaGUgbW9kZSBzdGF0ZSAqLwo+IC0JaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPCA3KQo+IC0JCWRldl9wcml2LT5yZWdmaWxlLnNhdmVDQUNIRV9N
T0RFXzAgPSBJOTE1X1JFQUQoQ0FDSEVfTU9ERV8wKTsKPiAtCj4gIAkvKiBTY3JhdGNoIHNwYWNl
ICovCj4gIAlpZiAoSVNfR0VOKGRldl9wcml2LCAyKSAmJiBJU19NT0JJTEUoZGV2X3ByaXYpKSB7
Cj4gIAkJZm9yIChpID0gMDsgaSA8IDc7IGkrKykgewo+IEBAIC05OSwxMSArOTUsNiBAQCBpbnQg
aTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAg
CQkJCSAgICAgIGRldl9wcml2LT5yZWdmaWxlLnNhdmVHQ0RHTUJVUyk7Cj4gIAlpOTE1X3Jlc3Rv
cmVfZGlzcGxheShkZXZfcHJpdik7Cj4gIAo+IC0JLyogQ2FjaGUgbW9kZSBzdGF0ZSAqLwo+IC0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA3KQo+IC0JCUk5MTVfV1JJVEUoQ0FDSEVfTU9ERV8w
LCBkZXZfcHJpdi0+cmVnZmlsZS5zYXZlQ0FDSEVfTU9ERV8wIHwKPiAtCQkJICAgMHhmZmZmMDAw
MCk7Cj4gLQo+ICAJLyogU2NyYXRjaCBzcGFjZSAqLwo+ICAJaWYgKElTX0dFTihkZXZfcHJpdiwg
MikgJiYgSVNfTU9CSUxFKGRldl9wcml2KSkgewo+ICAJCWZvciAoaSA9IDA7IGkgPCA3OyBpKysp
IHsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
