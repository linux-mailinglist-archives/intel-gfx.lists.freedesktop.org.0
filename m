Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0043B388
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCA0890D8;
	Mon, 10 Jun 2019 10:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32112890D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 10:54:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16851145-1500050 for multiple; Mon, 10 Jun 2019 11:54:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
 <20190610072126.6355-2-chris@chris-wilson.co.uk>
 <87k1dtai2k.fsf@gaia.fi.intel.com>
In-Reply-To: <87k1dtai2k.fsf@gaia.fi.intel.com>
Message-ID: <156016407948.2149.4614829501752768729@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 11:54:39 +0100
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Move fence register
 tracking from i915->mm to ggtt
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTEwIDEwOjQ2OjQzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiAgc3RhdGljIGludCBpOTE1
X2dlbV9mZW5jZV9yZWdzX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ID4g
IHsKPiA+IC0gICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9f
aTkxNShtLT5wcml2YXRlKTsKPiA+IC0gICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmZGV2
X3ByaXYtPmRybTsKPiA+IC0gICAgIGludCBpLCByZXQ7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPiA+ICsgICAgIHVu
c2lnbmVkIGludCBpOwo+ID4gIAo+ID4gLSAgICAgcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRp
YmxlKCZkZXYtPnN0cnVjdF9tdXRleCk7Cj4gPiAtICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+ID4gKyAgICAgc2VxX3ByaW50ZihtLCAiVG90YWwgZmVuY2VzID0g
JWRcbiIsIGk5MTUtPmdndHQubnVtX2ZlbmNlcyk7Cj4gPiAgCj4gPiAtICAgICBzZXFfcHJpbnRm
KG0sICJUb3RhbCBmZW5jZXMgPSAlZFxuIiwgZGV2X3ByaXYtPm51bV9mZW5jZV9yZWdzKTsKPiA+
IC0gICAgIGZvciAoaSA9IDA7IGkgPCBkZXZfcHJpdi0+bnVtX2ZlbmNlX3JlZ3M7IGkrKykgewo+
ID4gLSAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGRldl9wcml2LT5mZW5jZV9y
ZWdzW2ldLnZtYTsKPiA+ICsgICAgIHJjdV9yZWFkX2xvY2soKTsKPiAKPiBUaGlzIGRvZXMgbm90
IHNlZW0gdG8gYmUgZm9yIHJlc2V0LiBTbyBpdCBtdXN0IGJlIGZvciBrZWVwaW5nCj4gdGhlIG9i
amVjdCBhbGl2ZS4KCkNvcnJlY3QuCiAKPiBXaGF0IGd1YXJhbnRlZXMgdGhhdCB0aGUgb2JqIGlz
IGtlcHQgYWxpdmUgb3ZlciB0aGlzIHJjdQo+IGxvY2s/CgpUaGF0IHRoZSBvYmplY3QgaXMgUkNV
IHByb3RlY3RlZC4gOi1wCgpJdCBpcyBhIHJlbGF0aXZlbHkgc2ltcGxlIG9uZSAoaXQgdXNlZCB0
byBiZSBtYW51YWwgUkNVIGJhcnJpZXJzKSwKaTkxNV9nZW1fZnJlZV9vYmplY3QoKSB1c2VzIGNh
bGxfcmN1KCkgdG8gb25seSBxdWV1ZSB0aGUgb2JqZWN0IGZvcgpmcmVlaW5nIGFmdGVyIGFuIFJD
VSBncmFjZSBwZXJpb2QgaGFzIGVsYXBzZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
