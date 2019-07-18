Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD06D3E4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 20:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0087C6E450;
	Thu, 18 Jul 2019 18:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6896E450
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 18:28:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 11:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="173266114"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 18 Jul 2019 11:28:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 21:28:43 +0300
Date: Thu, 18 Jul 2019 21:28:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190718182843.GG5942@intel.com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718145407.21352-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use maximum write flush for
 pwrite_gtt
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDM6NTQ6MDVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEFzIHJlY2VudGx5IGRpc292ZXJlZCBieSBmb3JjaW5nIGJpZy1jb3JlICghbGxjKSBt
YWNoaW5lcyB0byB1c2UgdGhlIEdUVAo+IHBhdGhzLCB3ZSBuZWVkIG91ciBmdWxsIEdUVCB3cml0
ZSBmbHVzaCBiZWZvcmUgbWFuaXB1bGF0aW5nIHRoZSBHVFQgUFRFCj4gb3IgZWxzZSB0aGUgd3Jp
dGVzIG1heSBiZSBkaXJlY3RlZCB0byB0aGUgd3JvbmcgcGFnZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgNSArKystLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IGZlZDBiYzQyMWE1NS4uYzZiYTM1MGU2ZTRmIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTYxMCw3ICs2MTAsOCBAQCBpOTE1X2dl
bV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCQl1
bnNpZ25lZCBpbnQgcGFnZV9sZW5ndGggPSBQQUdFX1NJWkUgLSBwYWdlX29mZnNldDsKPiAgCQlw
YWdlX2xlbmd0aCA9IHJlbWFpbiA8IHBhZ2VfbGVuZ3RoID8gcmVtYWluIDogcGFnZV9sZW5ndGg7
Cj4gIAkJaWYgKG5vZGUuYWxsb2NhdGVkKSB7Cj4gLQkJCXdtYigpOyAvKiBmbHVzaCB0aGUgd3Jp
dGUgYmVmb3JlIHdlIG1vZGlmeSB0aGUgR0dUVCAqLwo+ICsJCQkvKiBmbHVzaCB0aGUgd3JpdGUg
YmVmb3JlIHdlIG1vZGlmeSB0aGUgR0dUVCAqLwo+ICsJCQlpbnRlbF9ndF9mbHVzaF9nZ3R0X3dy
aXRlcyhnZ3R0LT52bS5ndCk7CgpNYXRjaGVzIHRoZSBzdG9yeSB0b2xkIGJ5IGludGVsX2d0X2Zs
dXNoX2dndHRfd3JpdGVzKCkuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAkJCWdndHQtPnZtLmluc2VydF9wYWdlKCZnZ3R0
LT52bSwKPiAgCQkJCQkgICAgIGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBv
ZmZzZXQgPj4gUEFHRV9TSElGVCksCj4gIAkJCQkJICAgICBub2RlLnN0YXJ0LCBJOTE1X0NBQ0hF
X05PTkUsIDApOwo+IEBAIC02MzksOCArNjQwLDggQEAgaTkxNV9nZW1fZ3R0X3B3cml0ZV9mYXN0
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAlpOTE1X2dlbV9vYmplY3RfdW5s
b2NrX2ZlbmNlKG9iaiwgZmVuY2UpOwo+ICBvdXRfdW5waW46Cj4gIAltdXRleF9sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKPiArCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQt
PnZtLmd0KTsKPiAgCWlmIChub2RlLmFsbG9jYXRlZCkgewo+IC0JCXdtYigpOwo+ICAJCWdndHQt
PnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgbm9kZS5zdGFydCwgbm9kZS5zaXplKTsKPiAgCQly
ZW1vdmVfbWFwcGFibGVfbm9kZSgmbm9kZSk7Cj4gIAl9IGVsc2Ugewo+IC0tIAo+IDIuMjIuMAoK
LS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
