Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BFBC8C4E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BBE89B95;
	Wed,  2 Oct 2019 15:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CE989B95
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:07:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:07:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="190969470"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 Oct 2019 08:07:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 18:07:08 +0300
Date: Wed, 2 Oct 2019 18:07:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191002150708.GZ1208@intel.com>
References: <20191002131800.21054-1-jani.nikula@intel.com>
 <20191002131800.21054-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002131800.21054-4-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: move gmbus setup down to
 intel_modeset_init()
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

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDQ6MTg6MDBQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gUGFpciB0aGUgZ21idXMgc2V0dXAgYW5kIHRlYXJkb3duIGluIHRoZSBzYW1lIGxheWVy
LiBUaGlzIGFsc28gZml4ZXMgdGhlCj4gZG91YmxlIGdtYnVzIHRlYXJkb3duIG9uIHRoZSBpOTE1
X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkgZXJyb3IgcGF0aC4KPiAKPiBNb3ZlIHRoZSBnbWJ1cyBz
ZXR1cCBhIGJpdCBsYXRlciBpbiB0aGUgc2VxdWVuY2UgdG8gbWFrZSB0aGUgZm9sbG93LXVwCj4g
cmVmYWN0b3JpbmcgZWFzaWVyLCBhbmQgdG8gcGlucG9pbnQgYW55IHVuZXhwZWN0ZWQgY29uc2Vx
dWVuY2VzIG9mIHRoaXMKPiBjaGFuZ2UgcmlnaHQgaGVyZSwgaW5zdGVhZCBvZiB0aGUgbGF0ZXIg
cmVmYWN0b3JpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KClNlZW1zIHNhZmUuClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgICAgICAgIHwgNCAtLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZDk5YzU5ZTk3NTY4Li4yYTc1NTRlM2I5
NmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IEBAIC0xNjIzMyw2ICsxNjIzMyw4IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJaW50ZWxfcGFuZWxfc2FuaXRpemVfc3Nj
KGk5MTUpOwo+ICAKPiArCWludGVsX2dtYnVzX3NldHVwKGk5MTUpOwo+ICsKPiAgCURSTV9ERUJV
R19LTVMoIiVkIGRpc3BsYXkgcGlwZSVzIGF2YWlsYWJsZS5cbiIsCj4gIAkJICAgICAgSU5URUxf
TlVNX1BJUEVTKGk5MTUpLAo+ICAJCSAgICAgIElOVEVMX05VTV9QSVBFUyhpOTE1KSA+IDEgPyAi
cyIgOiAiIik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggNzUwM2UxNmFhZGVmLi45
MTM2MjY4MmY0ODkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNTMsNyArNTMs
NiBAQAo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gICNpbmNs
dWRlICJkaXNwbGF5L2ludGVsX2RwLmgiCj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2ZiZGV2
LmgiCj4gLSNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2dtYnVzLmgiCj4gICNpbmNsdWRlICJkaXNw
bGF5L2ludGVsX2hvdHBsdWcuaCIKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfb3ZlcmxheS5o
Igo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9waXBlX2NyYy5oIgo+IEBAIC0zMDEsOCArMzAw
LDYgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGNsZWFudXBfY3NyOwo+ICAK
PiAtCWludGVsX2dtYnVzX3NldHVwKGk5MTUpOwo+IC0KPiAgCS8qIEltcG9ydGFudDogVGhlIG91
dHB1dCBzZXR1cCBmdW5jdGlvbnMgY2FsbGVkIGJ5IG1vZGVzZXRfaW5pdCBuZWVkCj4gIAkgKiB3
b3JraW5nIGlycXMgZm9yIGUuZy4gZ21idXMgYW5kIGRwIGF1eCB0cmFuc2ZlcnMuICovCj4gIAly
ZXQgPSBpbnRlbF9tb2Rlc2V0X2luaXQoaTkxNSk7Cj4gQEAgLTMzNyw3ICszMzQsNiBAQCBzdGF0
aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gIAlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gIGNsZWFudXBf
aXJxOgo+ICAJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKPiAtCWludGVsX2dtYnVzX3RlYXJk
b3duKGk5MTUpOwo+ICBjbGVhbnVwX2NzcjoKPiAgCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUp
Owo+ICAJaW50ZWxfcG93ZXJfZG9tYWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+IC0tIAo+IDIu
MjAuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
