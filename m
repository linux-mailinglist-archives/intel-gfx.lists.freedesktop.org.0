Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2064452
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 11:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085EE89823;
	Wed, 10 Jul 2019 09:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F0A89823
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 09:25:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 02:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="364421797"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2019 02:25:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 782555C093D; Wed, 10 Jul 2019 12:24:48 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190707210024.26192-6-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 12:24:48 +0300
Message-ID: <87zhlmz1gf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/gtt: Compute the radix for
 gen8 page table levels
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIHJh
ZGl4IGxldmVscyBvZiBlYWNoIHBhZ2UgZGlyZWN0b3J5IGFyZSBlYXNpbHkgZGV0ZXJtaW5lZCBz
byByZXBsYWNlCj4gdGhlIG51bWVyb3VzIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCBwcmVjb21w
dXRlZCBkZXJpdmVkIGNvbnN0YW50cy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYwo+IGluZGV4IDJmYzYwZThhY2Q5YS4uMjcxMzA1NzA1YzFjIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtODY4LDYgKzg2OCw0NSBAQCBzdGF0aWMgaW50IGdl
bjhfcHBndHRfbm90aWZ5X3ZndChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIGJvb2wgY3JlYXRl
KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gKy8qIEluZGV4IHNoaWZ0cyBpbnRvIHRoZSBwYWdl
dGFibGUgYXJlIG9mZnNldCBieSBHRU44X1BURV9TSElGVCBbMTJdICovCj4gKyNkZWZpbmUgZ2Vu
OF9wZF9zaGlmdChsdmwpICgobHZsKSAqIGlsb2cyKEk5MTVfUERFUykpCj4gKyNkZWZpbmUgZ2Vu
OF9wZF9pbmRleChpLCBsdmwpIGk5MTVfcGRlX2luZGV4KChpKSwgZ2VuOF9wZF9zaGlmdChsdmwp
KQo+ICsjZGVmaW5lIF9fZ2VuOF9wdGVfc2hpZnQobHZsKSAoR0VOOF9QVEVfU0hJRlQgKyBnZW44
X3BkX3NoaWZ0KGx2bCkpCj4gKyNkZWZpbmUgX19nZW44X3B0ZV9pbmRleChhLCBsdmwpIGk5MTVf
cGRlX2luZGV4KChhKSwgX19nZW44X3B0ZV9zaGlmdChsdmwpKQo+ICsKPiArc3RhdGljIGlubGlu
ZSB1bnNpZ25lZCBpbnQKPiArZ2VuOF9wZF9yYW5nZSh1NjQgYWRkciwgdTY0IGVuZCwgaW50IGx2
bCwgdW5zaWduZWQgaW50ICppZHgpCj4gK3sKPiArCWNvbnN0IGludCBzaGlmdCA9IGdlbjhfcGRf
c2hpZnQobHZsKTsKPiArCWNvbnN0IHU2NCBtYXNrID0gfjB1bGwgPDwgZ2VuOF9wZF9zaGlmdChs
dmwgKyAxKTsKPiArCj4gKwlHRU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKCkdFTV9CVUdfT04oIWx2
bCkgPwoKPiArCWVuZCArPSB+bWFzayA+PiBnZW44X3BkX3NoaWZ0KDEpOwo+ICsKPiArCSppZHgg
PSBpOTE1X3BkZV9pbmRleChhZGRyLCBzaGlmdCk7CgpBcyBJIHNlZSBubyB1c2FnZSBvZiB0aGlz
IG1hY3JvIHlldCwgdGhpcyBsb29rcwp3cm9uZyBhcyB0aGUgc2hpZnQgZG9lc24ndCBpbmNsdWRl
IHRoZSBwdGUgc2hpZnQ/CgpGb3IgZXhhbXBsZSBmb3IgYWRkcmVzcyBmb3IgZmlyc3QgcGFnZSwg
d2UgY291bGQgZ2V0IGluZGV4IG9mCjcuCgotTWlrYQoKPiArCWlmICgoYWRkciBeIGVuZCkgJiBt
YXNrKQo+ICsJCXJldHVybiBJOTE1X1BERVMgLSAqaWR4Owo+ICsJZWxzZQo+ICsJCXJldHVybiBp
OTE1X3BkZV9pbmRleChlbmQsIHNoaWZ0KSAtICppZHg7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxp
bmUgYm9vbCBnZW44X3BkX3N1YnN1bWVzKHU2NCBhZGRyLCB1NjQgZW5kLCBpbnQgbHZsKQo+ICt7
Cj4gKwljb25zdCB1NjQgbWFzayA9IH4wdWxsIDw8IGdlbjhfcGRfc2hpZnQobHZsICsgMSk7Cj4g
Kwo+ICsJR0VNX0JVR19PTihhZGRyID49IGVuZCk7Cj4gKwlyZXR1cm4gKGFkZHIgXiBlbmQpICYg
bWFzayAmJiAoYWRkciAmIH5tYXNrKSA9PSAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHVu
c2lnbmVkIGludCBnZW44X3B0X2NvdW50KHU2NCBhZGRyLCB1NjQgZW5kKQo+ICt7Cj4gKwlHRU1f
QlVHX09OKGFkZHIgPj0gZW5kKTsKPiArCWlmICgoYWRkciBeIGVuZCkgJiB+STkxNV9QREVfTUFT
SykKPiArCQlyZXR1cm4gSTkxNV9QREVTIC0gKGFkZHIgJiBJOTE1X1BERV9NQVNLKTsKPiArCWVs
c2UKPiArCQlyZXR1cm4gZW5kIC0gYWRkcjsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgZ2VuOF9m
cmVlX3BhZ2VfdGFibGVzKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAJCQkJICBz
dHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqcGQpCj4gIHsKPiAtLSAKPiAyLjIwLjEKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
