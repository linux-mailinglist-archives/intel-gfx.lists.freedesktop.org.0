Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1C956AFB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B58F6E438;
	Wed, 26 Jun 2019 13:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A486E437
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:44:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 06:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="155871387"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga008.jf.intel.com with ESMTP; 26 Jun 2019 06:44:08 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7B51F5C1EAC; Wed, 26 Jun 2019 16:43:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190626065303.31624-4-chris@chris-wilson.co.uk>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-4-chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 16:43:54 +0300
Message-ID: <87woh84g2t.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Add a wakeref getter for iff
 the wakeref is already active
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRm9yIHVz
ZSBpbiB0aGUgbmV4dCBwYXRjaCwgd2Ugd2FudCB0byBhY3F1aXJlIGEgd2FrZXJlZiB3aXRob3V0
IGhhdmluZwo+IHRvIHdha2UgdGhlIGRldmljZSB1cCAtLSBpLmUuIG9ubHkgYWNxdWlyZSB0aGUg
ZW5naW5lIHdha2VyZWYgaWYgdGhlCj4gZW5naW5lIGlzIGFscmVhZHkgYWN0aXZlLgo+CgpzL2lm
Zi9pZiBvbiB0aGUgc3ViamVjdC4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5oIHwgIDcgKysrKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF93YWtlcmVmLmggICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oCj4gaW5kZXggZjNmNWIwMzFiNGExLi43ZDA1N2NkY2Q5
MTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bt
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaAo+IEBA
IC0xMSw3ICsxMSw2IEBACj4gICNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCj4gIAo+ICBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKPiAtc3RydWN0IGludGVsX2VuZ2luZV9jczsKPiAgCj4gIHZv
aWQgaW50ZWxfZW5naW5lX3BtX2dldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwo+
ICB2b2lkIGludGVsX2VuZ2luZV9wbV9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KTsKPiBAQCAtMjIsNiArMjEsMTIgQEAgaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGNvbnN0IHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCXJldHVybiBpbnRlbF93YWtlcmVmX2lz
X2FjdGl2ZSgmZW5naW5lLT53YWtlcmVmKTsKPiAgfQo+ICAKPiArc3RhdGljIGlubGluZSBib29s
Cj4gK2ludGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdha2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+ICt7Cj4gKwlyZXR1cm4gaW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0aXZlKCZlbmdp
bmUtPndha2VyZWYpOwo+ICt9Cj4gKwo+ICB2b2lkIGludGVsX2VuZ2luZV9wYXJrKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4gIAo+ICB2b2lkIGludGVsX2VuZ2luZV9pbml0X19w
bShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF93YWtlcmVmLmgKPiBpbmRleCBmNzQyNzI3NzBhNWMuLjFkNmY1OTg2ZTRlNSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmgKPiBAQCAtNzEsNiArNzEsMjEgQEAgaW50ZWxf
d2FrZXJlZl9nZXQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKPiAgCXJldHVybiAwOwo+
ICB9Cj4gIAo+ICsvKioKPiArICogaW50ZWxfd2FrZXJlZl9nZXRfaWZfaW5fdXNlOiBBY3F1aXJl
IHRoZSB3YWtlcmVmCj4gKyAqIEB3ZjogdGhlIHdha2VyZWYKPiArICoKPiArICogQWNxdWlyZSBh
IGhvbGQgb24gdGhlIHdha2VyZWYsIGJ1dCBvbmx5IGlmIHRoZSB3YWtlcmVmIGlzIGFscmVhZHkK
PiArICogYWN0aXZlLgo+ICsgKgo+ICsgKiBSZXR1cm5zOiB0cnVlIGlmIHRoZSB3YWtlcmVmIHdh
cyBhY3F1aXJlZCwgZmFsc2Ugb3RoZXJ3aXNlLgo+ICsgKi8KPiArc3RhdGljIGlubGluZSBib29s
Cj4gK2ludGVsX3dha2VyZWZfZ2V0X2lmX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
Cj4gK3sKPiArCXJldHVybiBhdG9taWNfaW5jX25vdF96ZXJvKCZ3Zi0+Y291bnQpOwo+ICt9Cj4g
Kwo+ICAvKioKPiAgICogaW50ZWxfd2FrZXJlZl9wdXQ6IFJlbGVhc2UgdGhlIHdha2VyZWYKPiAg
ICogQGk5MTU6IHRoZSBkcm1faTkxNV9wcml2YXRlIGRldmljZQo+IC0tIAo+IDIuMjAuMQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
