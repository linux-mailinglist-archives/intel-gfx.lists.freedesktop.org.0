Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B24717337B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 10:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7256EE87;
	Fri, 28 Feb 2020 09:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8762F6EE77
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 09:06:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:06:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232178658"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:06:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
Date: Fri, 28 Feb 2020 11:06:41 +0200
Message-ID: <87a753qdwe.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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

T24gVGh1LCAyNyBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBnbWJ1cy9hdXggbWF5IGJlIGNsb2NrZWQgYnkgY2RjbGssIHRo
dXMgd2Ugc2hvdWxkIG1ha2Ugc3VyZSBubwo+IHRyYW5zZmVycyBhcmUgb25nb2luZyB3aGlsZSB0
aGUgY2RjbGsgZnJlcXVlbmN5IGlzIGJlaW5nIGNoYW5nZWQuCj4gV2UgZG8gdGhhdCBieSBzaW1w
bHkgZ3JhYmJpbmcgYWxsIHRoZSBnbWJ1cy9hdXggbXV0ZXhlcy4gTm8gb25lCj4gZWxzZSBzaG91
bGQgYmUgaG9sZGluZyBhbnkgbW9yZSB0aGFuIG9uZSBvZiB0aG9zZSBhdCBhIHRpbWUgc28KPiB0
aGUgbG9jayBvcmRlcmluZyBoZXJlIHNob3VsZG4ndCBtYXR0ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyMyArKysrKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gaW5kZXggMDc0MWQ2
NDM0NTViLi5mNjliZjRhNGViMWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCj4gQEAgLTE4NjgsNiArMTg2OCw5IEBAIHN0YXRpYyB2b2lkIGludGVs
X3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCSAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpjZGNsa19jb25maWcsCj4gIAkJCSAgICBl
bnVtIHBpcGUgcGlwZSkKPiAgewo+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7Cj4g
Kwl1bnNpZ25lZCBpbnQgYXV4X211dGV4X2xvY2tjbGFzcyA9IDA7Cj4gKwo+ICAJaWYgKCFpbnRl
bF9jZGNsa19jaGFuZ2VkKCZkZXZfcHJpdi0+Y2RjbGsuaHcsIGNkY2xrX2NvbmZpZykpCj4gIAkJ
cmV0dXJuOwo+ICAKPiBAQCAtMTg3Niw4ICsxODc5LDI4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Nl
dF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAo+ICAJaW50ZWxf
ZHVtcF9jZGNsa19jb25maWcoY2RjbGtfY29uZmlnLCAiQ2hhbmdpbmcgQ0RDTEsgdG8iKTsKPiAg
Cj4gKwkvKgo+ICsJICogTG9jayBhdXgvZ21idXMgd2hpbGUgd2UgY2hhbmdlIGNkY2xrIGluIGNh
c2UgdGhvc2UKPiArCSAqIGZ1bmN0aW9ucyB1c2UgY2RjbGsuIE5vdCBhbGwgcGxhdGZvcm1zL3Bv
cnRzIGRvLAo+ICsJICogYnV0IHdlJ2xsIGxvY2sgdGhlbSBhbGwgZm9yIHNpbXBsaWNpdHkuCj4g
KwkgKi8KPiArCW11dGV4X2xvY2soJmRldl9wcml2LT5nbWJ1c19tdXRleCk7Cj4gKwlmb3JfZWFj
aF9pbnRlbF9kcCgmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgewo+ICsJCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7Cj4gKwo+ICsJCW11dGV4X2xv
Y2tfbmVzdGVkKCZpbnRlbF9kcC0+YXV4Lmh3X211dGV4LAo+ICsJCQkJICBhdXhfbXV0ZXhfbG9j
a2NsYXNzKyspOwo+ICsJfQo+ICsKPiAgCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayhkZXZf
cHJpdiwgY2RjbGtfY29uZmlnLCBwaXBlKTsKPiAgCj4gKwlmb3JfZWFjaF9pbnRlbF9kcCgmZGV2
X3ByaXYtPmRybSwgZW5jb2Rlcikgewo+ICsJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBl
bmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7Cj4gKwo+ICsJCW11dGV4X3VubG9jaygmaW50ZWxfZHAt
PmF1eC5od19tdXRleCk7Cj4gKwl9Cj4gKwltdXRleF91bmxvY2soJmRldl9wcml2LT5nbWJ1c19t
dXRleCk7Cj4gKwoKSSdtIGJlY29taW5nIGluY3JlYXNpbmdseSBzZW5zaXRpdmUgdG8gZGlyZWN0
bHkgdG91Y2hpbmcgdGhlIHByaXZhdGUKcGFydHMgb2Ygb3RoZXIgbW9kdWxlcy4uLiBnbWJ1c19t
dXRleCBpcyByZWFsbHkgZm9yIGludGVsX2dtYnVzLmMgYW5kCmF1eC5od19tdXRleCBmb3IgZHJt
X2RwX2hlbHBlci5jLgoKT25lIGNvdWxkIGFsc28gYXJndWUgdGhhdCB0aGUgY2RjbGsgaXMgYSBs
b3dlciBsZXZlbCBmdW5jdGlvbiB1c2VkIGJ5CmhpZ2hlciBsZXZlbCBmdW5jdGlvbnMgYXV4L2dt
YnVzLCBhbmQgaXQgc2VlbXMgbGlrZSB0aGUgaGlnaGVyIGxldmVsCmZ1bmN0aW9uIHNob3VsZCBs
b2NrIHRoZSBjZGNsayB3aGlsZSBpdCBkZXBlbmRzIG9uIGl0LCBub3QgdGhlIG90aGVyIHdheQph
cm91bmQuCgpCUiwKSmFuaS4KCgoKPiAgCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwKPiAg
CQkgICAgIGludGVsX2NkY2xrX2NoYW5nZWQoJmRldl9wcml2LT5jZGNsay5odywgY2RjbGtfY29u
ZmlnKSwKPiAgCQkgICAgICJjZGNsayBzdGF0ZSBkb2Vzbid0IG1hdGNoIVxuIikpIHsKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
