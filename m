Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CE6CDF19
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 12:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D93F6E519;
	Mon,  7 Oct 2019 10:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C656E519
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 10:20:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18749411-1500050 for multiple; Mon, 07 Oct 2019 11:20:06 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191007091920.2176-5-abdiel.janulgue@linux.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-5-abdiel.janulgue@linux.intel.com>
Message-ID: <157044360431.2661.4206905363669575919@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 11:20:04 +0100
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Add cpu fault handler for
 mmap_offset
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMDcgMTA6MTk6MjApCj4gK3N0YXRpYyB2
bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0X2NwdShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKPiArewo+
ICsgICAgICAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICphcmVhID0gdm1mLT52bWE7Cj4gKyAgICAg
ICBzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAqcHJpdiA9IGFyZWEtPnZtX3ByaXZhdGVfZGF0YTsK
PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBwcml2LT5vYmo7Cj4g
KyAgICAgICB2bV9mYXVsdF90IHZtZl9yZXQ7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIHNpemUg
PSBhcmVhLT52bV9lbmQgLSBhcmVhLT52bV9zdGFydDsKPiArICAgICAgIGJvb2wgd3JpdGUgPSBh
cmVhLT52bV9mbGFncyAmIFZNX1dSSVRFOwo+ICsgICAgICAgaW50IGksIHJldDsKPiArCj4gKyAg
ICAgICAvKiBTYW5pdHkgY2hlY2sgdGhhdCB3ZSBhbGxvdyB3cml0aW5nIGludG8gdGhpcyBvYmpl
Y3QgKi8KPiArICAgICAgIGlmIChpOTE1X2dlbV9vYmplY3RfaXNfcmVhZG9ubHkob2JqKSAmJiB3
cml0ZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKPiArCj4gKyAg
ICAgICByZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gKyAgICAgICBpZiAo
cmV0KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gaTkxNV9lcnJvcl90b192bWZfZmF1bHQocmV0
KTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgc2l6ZSA+PiBQQUdFX1NISUZUOyBpKysp
IHsKPiArICAgICAgICAgICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBpOTE1X2dlbV9vYmplY3Rf
Z2V0X3BhZ2Uob2JqLCBpKTsKPiArCj4gKyAgICAgICAgICAgICAgIHZtZl9yZXQgPSB2bWZfaW5z
ZXJ0X3BmbihhcmVhLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KHVuc2lnbmVkIGxvbmcpYXJlYS0+dm1fc3RhcnQgKyBpICogUEFHRV9TSVpFLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGFnZV90b19wZm4ocGFnZSkpOwo+ICsg
ICAgICAgICAgICAgICBpZiAodm1mX3JldCAmIFZNX0ZBVUxUX0VSUk9SKQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGJyZWFrOwoKU28gd2h5IGFyZSB3ZSB1c2luZyB2bWZfaW5zZXJ0X3BmbiAr
IFZNX1BGTk1BUCBmb3IgdGhpcz8gSXQgZG9lcyBzZWVtIHRvCmJlIHBhZ2UgYmFja2VkLiBBbmQg
c2luY2UgeW91IGFyZSBwcmVmYXVsdGluZywgeW91IG1heSBsZWdpdGltYXRlbHkgdHJ5CnRvIGRv
dWJsZSBpbnNlcnQgdGhlIHNhbWUgcGFnZSBhbmQgaGl0IGFuIGVycm9yLiBZb3Ugc2hvdWxkIG9u
bHkgYmFpbCBpZgp5b3UgZmFpbCB0byBpbnNlcnQgdGhlIGZhdWx0IGFkZHJlc3MuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
