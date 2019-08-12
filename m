Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDFC89DD9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 14:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938C86E500;
	Mon, 12 Aug 2019 12:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C856E500
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 12:17:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 05:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="351169570"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 12 Aug 2019 05:17:28 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0F5905C1E5F; Mon, 12 Aug 2019 15:16:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190812091045.29587-7-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-7-chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 15:16:49 +0300
Message-ID: <87muge7f4e.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Use the local engine
 wakeref when checking RING registers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTm93IHRo
YXQgd2UgY2FuIGF0b21pY2FsbHkgYWNxdWlyZSB0aGUgZW5naW5lIHdha2VyZWYsIG1ha2UgdXNl
IG9mIGl0Cj4gd2hlbiBjaGVjayB3aGV0aGVyIHRoZSBSSU5HIHJlZ2lzdGVycyBhcmUgaWRsZS4K
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
fCAxMCArKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+
IGluZGV4IDdkMTc0YWYzMGY4Yy4uYzdiMjQxNDE3ZWUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBAQCAtMTAwOCwxNiArMTAwOCwxMiBAQCB2b2lk
IGludGVsX2VuZ2luZV9nZXRfaW5zdGRvbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LAo+ICAKPiAgc3RhdGljIGJvb2wgcmluZ19pc19pZGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKPiAgewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZW5n
aW5lLT5pOTE1Owo+IC0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIAlib29sIGlkbGUgPSB0
cnVlOwo+ICAKPiAgCWlmIChJOTE1X1NFTEZURVNUX09OTFkoIWVuZ2luZS0+bW1pb19iYXNlKSkK
PiAgCQlyZXR1cm4gdHJ1ZTsKPiAgCj4gLQkvKiBJZiB0aGUgd2hvbGUgZGV2aWNlIGlzIGFzbGVl
cCwgdGhlIGVuZ2luZSBtdXN0IGJlIGlkbGUgKi8KPiAtCXdha2VyZWYgPSBpbnRlbF9ydW50aW1l
X3BtX2dldF9pZl9pbl91c2UoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKPiAtCWlmICghd2FrZXJl
ZikKPiArCWlmICghaW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZShlbmdpbmUpKQo+ICAJCXJl
dHVybiB0cnVlOwo+ICAKPiAgCS8qIEZpcnN0IGNoZWNrIHRoYXQgbm8gY29tbWFuZHMgYXJlIGxl
ZnQgaW4gdGhlIHJpbmcgKi8KPiBAQCAtMTAyNiwxMSArMTAyMiwxMSBAQCBzdGF0aWMgYm9vbCBy
aW5nX2lzX2lkbGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJCWlkbGUgPSBm
YWxzZTsKPiAgCj4gIAkvKiBObyBiaXQgZm9yIGdlbjIsIHNvIGFzc3VtZSB0aGUgQ1MgcGFyc2Vy
IGlzIGlkbGUgKi8KPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID4gMiAmJgo+ICsJaWYgKElO
VEVMX0dFTihlbmdpbmUtPmk5MTUpID4gMiAmJgo+ICAJICAgICEoRU5HSU5FX1JFQUQoZW5naW5l
LCBSSU5HX01JX01PREUpICYgTU9ERV9JRExFKSkKPiAgCQlpZGxlID0gZmFsc2U7Cj4gIAo+IC0J
aW50ZWxfcnVudGltZV9wbV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiAr
CWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKPiAgCj4gIAlyZXR1cm4gaWRsZTsKPiAgfQo+
IC0tIAo+IDIuMjMuMC5yYzEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
