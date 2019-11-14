Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3948FBCDD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 01:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315936EEA4;
	Thu, 14 Nov 2019 00:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FE06EEA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 00:07:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 16:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="379398635"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga005.jf.intel.com with ESMTP; 13 Nov 2019 16:07:54 -0800
Date: Wed, 13 Nov 2019 16:10:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191114001053.GF28227@intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
 <20191112141503.1116-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141503.1116-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Pass intel_crtc to
 ironlake_fdi_disable()
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTQ6NThQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFN3aXRjaCB0byBpbnRlbF9jcnRjIGZyb20gZHJtX2NydGMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
ClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoK
TWFuYXNpCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDEwICsrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IGluZGV4IGU1MmVhOTY0Mzc5MC4uZmZhZGZkOTBjM2NmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtNTA0OSwx
MiArNTA0OSwxMCBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9mZGlfcGxsX2Rpc2FibGUoc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMpCj4gIAl1ZGVsYXkoMTAwKTsKPiAgfQo+ICAKPiAtc3Rh
dGljIHZvaWQgaXJvbmxha2VfZmRpX2Rpc2FibGUoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ICtz
dGF0aWMgdm9pZCBpcm9ubGFrZV9mZGlfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
PiAgewo+IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmRldjsKPiAtCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAtCXN0cnVjdCBpbnRl
bF9jcnRjICppbnRlbF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKPiAtCWVudW0gcGlwZSBw
aXBlID0gaW50ZWxfY3J0Yy0+cGlwZTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRj
LT5waXBlOwo+ICAJaTkxNV9yZWdfdCByZWc7Cj4gIAl1MzIgdGVtcDsKPiAgCj4gQEAgLTY3NDgs
NyArNjc0Niw3IEBAIHN0YXRpYyB2b2lkIGlyb25sYWtlX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gIAlpcm9ubGFrZV9wZml0X2Rpc2FibGUo
b2xkX2NydGNfc3RhdGUpOwo+ICAKPiAgCWlmIChvbGRfY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNv
ZGVyKQo+IC0JCWlyb25sYWtlX2ZkaV9kaXNhYmxlKGNydGMpOwo+ICsJCWlyb25sYWtlX2ZkaV9k
aXNhYmxlKGludGVsX2NydGMpOwo+ICAKPiAgCWludGVsX2VuY29kZXJzX3Bvc3RfZGlzYWJsZShz
dGF0ZSwgaW50ZWxfY3J0Yyk7Cj4gIAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
