Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AC760619
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 14:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63486E49C;
	Fri,  5 Jul 2019 12:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69336E49C;
 Fri,  5 Jul 2019 12:42:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 05:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,455,1557212400"; d="scan'208";a="248182207"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2019 05:41:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2019 15:41:51 +0300
Date: Fri, 5 Jul 2019 15:41:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20190705124151.GN5942@intel.com>
References: <20190705113112.64715-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705113112.64715-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH -next] drm/i915: Remove set but not used
 variable 'encoder'
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
Cc: dri-devel@lists.freedesktop.org, airlied@linux.ie,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dhinakaran.pandiyan@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMDUsIDIwMTkgYXQgMTE6MzE6MTJBTSArMDAwMCwgWXVlSGFpYmluZyB3cm90
ZToKPiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdhcm5pbmc6Cj4gCj4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jOiBJbiBmdW5jdGlvbiAnaW50
ZWxfZHBfc2V0X2RycnNfc3RhdGUnOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYzo2NjIzOjI0OiB3YXJuaW5nOgo+ICB2YXJpYWJsZSAnZW5jb2Rlcicgc2V0IGJ1dCBu
b3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAKPiBJdCdzIG5ldmVyIHVzZWQs
IHNvIGNhbiBiZSByZW1vdmVkLkFsc28gcmVtb3ZlIHJlbGF0ZWQKPiB2YXJpYWJsZSAnZGlnX3Bv
cnQnCj4gCj4gU2lnbmVkLW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29t
PgoKQXBwbGllZCB0byBkcm0taW50ZWwtbmV4dC1xdWV1ZWQuIFRoYW5rcyBmb3IgdGhlIHBhdGNo
LgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNSAt
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggOGY3MTg4ZDcxZDA4Li4wYmRiN2VjYzVh
ODEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTY2
MjAsOCArNjYyMCw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX3NldF9kcnJzX3N0YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJCSAgICBpbnQgcmVmcmVzaF9yYXRlKQo+
ICB7Cj4gLQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKPiAtCXN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gTlVMTDsKPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAgPSBkZXZfcHJpdi0+ZHJycy5kcDsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRj
ID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ICAJZW51bSBkcnJzX3Jl
ZnJlc2hfcmF0ZV90eXBlIGluZGV4ID0gRFJSU19ISUdIX1JSOwo+IEBAIC02NjM2LDkgKzY2MzQs
NiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9zZXRfZHJyc19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJcmV0dXJuOwo+ICAJfQo+ICAKPiAtCWRpZ19wb3J0ID0g
ZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwo+IC0JZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsK
PiAtCj4gIAlpZiAoIWludGVsX2NydGMpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJEUlJTOiBpbnRl
bF9jcnRjIG5vdCBpbml0aWFsaXplZFxuIik7Cj4gIAkJcmV0dXJuOwo+IAo+IAoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
