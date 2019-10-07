Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEABCDED1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 12:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818AF89E14;
	Mon,  7 Oct 2019 10:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2939989E14
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 10:10:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18749255-1500050 for multiple; Mon, 07 Oct 2019 11:10:25 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191007091920.2176-5-abdiel.janulgue@linux.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-5-abdiel.janulgue@linux.intel.com>
Message-ID: <157044302265.2661.2564391373171079161@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 11:10:22 +0100
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
IHsKCmludCBpIQoKTm8sIG5vLCBuby4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
