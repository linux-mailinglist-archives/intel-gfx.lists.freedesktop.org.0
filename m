Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A30B46D3C8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 20:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8366E6E450;
	Thu, 18 Jul 2019 18:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B016E450
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 18:23:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 11:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="251894282"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Jul 2019 11:23:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 21:23:32 +0300
Date: Thu, 18 Jul 2019 21:23:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190718182332.GF5942@intel.com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718145407.21352-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Drop wmb() inside pread_gtt
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDM6NTQ6MDRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEluc2lkZSBwcmVhZCwgd2Ugb25seSBldmVyIHJlYWQgZnJvbSB0aGUgR1RUIHNvIHRo
ZSBzZXJpYWxpc2luZyB3bWIoKQo+IGluc3RydWN0aW9ucyBhcm91bmQgdGhlIEdHVFQgUFRFIHVw
ZGF0ZXMgYXJlIHBvaW50bGVzcy4KCkhhcmQgdG8gYXJndWUgd2l0aCB0aGF0LgoKUmV2aWV3ZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMyAtLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gaW5k
ZXggYTIwN2I5MDkyNGU0Li5mZWQwYmM0MjFhNTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKPiBAQCAtMzk1LDExICszOTUsOSBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCQl1bnNpZ25lZCBwYWdlX2xlbmd0aCA9IFBBR0VfU0la
RSAtIHBhZ2Vfb2Zmc2V0Owo+ICAJCXBhZ2VfbGVuZ3RoID0gcmVtYWluIDwgcGFnZV9sZW5ndGgg
PyByZW1haW4gOiBwYWdlX2xlbmd0aDsKPiAgCQlpZiAobm9kZS5hbGxvY2F0ZWQpIHsKPiAtCQkJ
d21iKCk7Cj4gIAkJCWdndHQtPnZtLmluc2VydF9wYWdlKCZnZ3R0LT52bSwKPiAgCQkJCQkgICAg
IGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBvZmZzZXQgPj4gUEFHRV9TSElG
VCksCj4gIAkJCQkJICAgICBub2RlLnN0YXJ0LCBJOTE1X0NBQ0hFX05PTkUsIDApOwo+IC0JCQl3
bWIoKTsKPiAgCQl9IGVsc2Ugewo+ICAJCQlwYWdlX2Jhc2UgKz0gb2Zmc2V0ICYgUEFHRV9NQVNL
Owo+ICAJCX0KPiBAQCAtNDE5LDcgKzQxNyw2IEBAIGk5MTVfZ2VtX2d0dF9wcmVhZChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICBvdXRfdW5waW46Cj4gIAltdXRleF9sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgCWlmIChub2RlLmFsbG9jYXRlZCkgewo+IC0JCXdt
YigpOwo+ICAJCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgbm9kZS5zdGFydCwgbm9k
ZS5zaXplKTsKPiAgCQlyZW1vdmVfbWFwcGFibGVfbm9kZSgmbm9kZSk7Cj4gIAl9IGVsc2Ugewo+
IC0tIAo+IDIuMjIuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
