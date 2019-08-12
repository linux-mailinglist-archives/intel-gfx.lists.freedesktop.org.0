Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E828F899F5
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D0289A08;
	Mon, 12 Aug 2019 09:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE0989A08
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:39:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 02:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="177427759"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 12 Aug 2019 02:39:41 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F330B5C1E5F; Mon, 12 Aug 2019 12:39:01 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190812091045.29587-2-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-2-chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 12:39:01 +0300
Message-ID: <87y2zy7mfe.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Prevent the
 timeslice expiring during suppression tests
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hlbiB0
ZXN0aW5nIHdoZXRoZXIgd2UgcHJldmVudCBzdXBwcmVzc2luZyBwcmVlbXB0aW9uLCBpdCBoZWxw
cyB0bwo+IGF2b2lkIGEgdGltZSBzbGljZSBleHBpcmluZyBwcmVtYXR1cmVseS4KPgoKSSBkaWQg
bG9vayB0aGUgdGVzdCBhbmQgaXQgZG9lcyBjYWxsIHNjaGVkdWxlIG9uIGl0J3Mgb3duLgoKU28g
d2hhdCB3ZSB3YW50IHRvIGRvIGlzIHRvIHBvc3Rwb25lIHRoZSBkZWZhY3RvIHNjaGVkdWxlIHRp
Y2sKcHJvdmlkZWQgYnkgZHJpdmVyIG5vdCB0byBtZXNzIG91ciBvd24gc2NoZWR1bGU/ICh3aGlj
aCB3ZQp1c2UgdG8gY2hlY2sgdGhhdCBubyBwcmVlbXB0aW9uIGRvZXMgb2NjdXIgd2l0aCBlcXVh
bApwcmlvcml0aWVzPykKCkp1c3QgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgaWYgSSBnb3QgdGhlIHRl
c3QgZnJhbWV3b3JrIHJpZ2h0IDpPCi1NaWthCgoKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTA4Cj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9scmMuYwo+IGluZGV4IDkxZjFjOTAxMjQ4OS4uYjc5N2JlMTYyN2U5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKPiBAQCAtOTEzLDYgKzkxMyw4IEBA
IHN0YXRpYyBpbnQgbGl2ZV9zdXBwcmVzc19zZWxmX3ByZWVtcHQodm9pZCAqYXJnKQo+ICAJCQln
b3RvIGVycl93ZWRnZWQ7Cj4gIAkJfQo+ICAKPiArCQkvKiBLZWVwIHBvc3Rwb25pbmcgdGhlIHRp
bWVyIHRvIGF2b2lkIHByZW1hdHVyZSBzbGljaW5nICovCj4gKwkJbW9kX3RpbWVyKCZlbmdpbmUt
PmV4ZWNsaXN0cy50aW1lciwgamlmZmllcyArIEhaKTsKPiAgCQlmb3IgKGRlcHRoID0gMDsgZGVw
dGggPCA4OyBkZXB0aCsrKSB7Cj4gIAkJCXJxX2IgPSBzcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZi
LnNwaW4sCj4gIAkJCQkJCSAgICAgIGIuY3R4LCBlbmdpbmUsCj4gQEAgLTkzOCw3ICs5NDAsOCBA
QCBzdGF0aWMgaW50IGxpdmVfc3VwcHJlc3Nfc2VsZl9wcmVlbXB0KHZvaWQgKmFyZykKPiAgCQlp
Z3Rfc3Bpbm5lcl9lbmQoJmEuc3Bpbik7Cj4gIAo+ICAJCWlmIChlbmdpbmUtPmV4ZWNsaXN0cy5w
cmVlbXB0X2hhbmcuY291bnQpIHsKPiAtCQkJcHJfZXJyKCJQcmVlbXB0aW9uIHJlY29yZGVkIHgl
ZCwgZGVwdGggJWQ7IHNob3VsZCBoYXZlIGJlZW4gc3VwcHJlc3NlZCFcbiIsCj4gKwkJCXByX2Vy
cigiUHJlZW1wdGlvbiBvbiAlcyByZWNvcmRlZCB4JWQsIGRlcHRoICVkOyBzaG91bGQgaGF2ZSBi
ZWVuIHN1cHByZXNzZWQhXG4iLAo+ICsJCQkgICAgICAgZW5naW5lLT5uYW1lLAo+ICAJCQkgICAg
ICAgZW5naW5lLT5leGVjbGlzdHMucHJlZW1wdF9oYW5nLmNvdW50LAo+ICAJCQkgICAgICAgZGVw
dGgpOwo+ICAJCQllcnIgPSAtRUlOVkFMOwo+IC0tIAo+IDIuMjMuMC5yYzEKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
