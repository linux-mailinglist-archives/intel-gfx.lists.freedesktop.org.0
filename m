Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 704BB92264
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 13:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A013189D49;
	Mon, 19 Aug 2019 11:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E7589D49
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 11:30:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 04:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="189505987"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 19 Aug 2019 04:30:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2550E5C1F29; Mon, 19 Aug 2019 14:29:46 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190819075835.20065-5-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-5-chris@chris-wilson.co.uk>
Date: Mon, 19 Aug 2019 14:29:46 +0300
Message-ID: <87d0h15r6d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915: Only emit the 'send bug
 report' once for a GPU hang
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVXNlIGEg
bG9ja2VkIHhjaGcgdG8gZW5zdXJlIHRoYXQgdGhlIGdsb2JhbCBsb2cgbWVzc2FnZSBnaXZpbmcK
PiBpbnN0cnVjdGlvbnMgb24gaG93IHRvIHNlbmQgYSBidWcgcmVwb3J0IGlzIGVtaXR0ZWQgcHJl
Y2lzZWx5IG9uY2UuCj4KCldlbGwgeW91IG11c3QgaGF2ZSBydW4gaW50byB0aGlzIGFzIHRoaXMg
cGF0Y2ggYXBwZWFyZWQuCkFyZ3VhYmx5IGJldHRlciB0aGFuIHNvbWUgcmVhZC93cml0ZSBvbmNl
IHRyaWNrZXJ5LgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYyB8IDMgKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJv
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+IGluZGV4IGIwYWUw
NTViNmM4Mi4uZTI4NGJkNzZmYTg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9l
cnJvci5jCj4gQEAgLTE3NjUsNyArMTc2NSw3IEBAIHZvaWQgaTkxNV9jYXB0dXJlX2Vycm9yX3N0
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAJCXJldHVybjsKPiAgCX0KPiAg
Cj4gLQlpZiAoIXdhcm5lZCAmJgo+ICsJaWYgKCF4Y2hnKCZ3YXJuZWQsIHRydWUpICYmCj4gIAkg
ICAga3RpbWVfZ2V0X3JlYWxfc2Vjb25kcygpIC0gRFJJVkVSX1RJTUVTVEFNUCA8IERBWV9BU19T
RUNPTkRTKDE4MCkpIHsKPiAgCQlwcl9pbmZvKCJHUFUgaGFuZ3MgY2FuIGluZGljYXRlIGEgYnVn
IGFueXdoZXJlIGluIHRoZSBlbnRpcmUgZ2Z4IHN0YWNrLCBpbmNsdWRpbmcgdXNlcnNwYWNlLlxu
Iik7Cj4gIAkJcHJfaW5mbygiUGxlYXNlIGZpbGUgYSBfbmV3XyBidWcgcmVwb3J0IG9uIGJ1Z3Mu
ZnJlZWRlc2t0b3Aub3JnIGFnYWluc3QgRFJJIC0+IERSTS9JbnRlbFxuIik7Cj4gQEAgLTE3NzMs
NyArMTc3Myw2IEBAIHZvaWQgaTkxNV9jYXB0dXJlX2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAo+ICAJCXByX2luZm8oIlRoZSBHUFUgY3Jhc2ggZHVtcCBpcyByZXF1
aXJlZCB0byBhbmFseXplIEdQVSBoYW5ncywgc28gcGxlYXNlIGFsd2F5cyBhdHRhY2ggaXQuXG4i
KTsKPiAgCQlwcl9pbmZvKCJHUFUgY3Jhc2ggZHVtcCBzYXZlZCB0byAvc3lzL2NsYXNzL2RybS9j
YXJkJWQvZXJyb3JcbiIsCj4gIAkJCWk5MTUtPmRybS5wcmltYXJ5LT5pbmRleCk7Cj4gLQkJd2Fy
bmVkID0gdHJ1ZTsKPiAgCX0KPiAgfQo+ICAKPiAtLSAKPiAyLjIzLjAucmMxCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
