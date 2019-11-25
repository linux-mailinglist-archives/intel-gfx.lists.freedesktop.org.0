Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5828A108C53
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 11:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9928889906;
	Mon, 25 Nov 2019 10:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8CC089906
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 10:54:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19327909-1500050 for multiple; Mon, 25 Nov 2019 10:54:12 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191124170524.1436498-1-chris@chris-wilson.co.uk>
 <20191124170524.1436498-2-chris@chris-wilson.co.uk>
 <b865f5af-b97c-477e-d38b-e01cdecd7ccd@linux.intel.com>
In-Reply-To: <b865f5af-b97c-477e-d38b-e01cdecd7ccd@linux.intel.com>
Message-ID: <157467924706.7880.7942918097265746311@skylake-alporthouse-com>
Date: Mon, 25 Nov 2019 10:54:07 +0000
Subject: Re: [Intel-gfx] [CI 2/4] drm/i915: Serialise with engine-pm around
 requests on the kernel_context
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNSAxMDo0NDoxNSkKPiAKPiBPbiAyNC8x
MS8yMDE5IDE3OjA1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIGlubGluZSBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICoKPiA+ICtpbnRlbF9lbmdpbmVfY3JlYXRlX2tlcm5lbF9yZXF1ZXN0
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycTsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBUaGUgZW5n
aW5lLT5rZXJuZWxfY29udGV4dCBpcyBzcGVjaWFsIGFzIGl0IGlzIHVzZWQgaW5zaWRlCj4gPiAr
ICAgICAgKiB0aGUgZW5naW5lLXBtIGJhcnJpZXIgKHNlZSBfX2VuZ2luZV9wYXJrKCkpLCBjaXJj
dW12ZW50aW5nCj4gPiArICAgICAgKiB0aGUgdXN1YWwgbXV0ZXhlcyBhbmQgcmVseWluZyBvbiB0
aGUgZW5naW5lLXBtIGJhcnJpZXIKPiA+ICsgICAgICAqIGluc3RlYWQuIFNvIHdoZW5ldmVyIHdl
IHVzZSB0aGUgZW5naW5lLT5rZXJuZWxfY29udGV4dAo+ID4gKyAgICAgICogb3V0c2lkZSBvZiB0
aGUgYmFycmllciwgd2UgbXVzdCBtYW51YWxseSBoYW5kbGUgdGhlCj4gPiArICAgICAgKiBlbmdp
bmUgd2FrZXJlZiB0byBzZXJpYWxpc2Ugd2l0aCB0aGUgdXNlIGluc2lkZS4KPiA+ICsgICAgICAq
Lwo+ID4gKyAgICAgaW50ZWxfZW5naW5lX3BtX2dldChlbmdpbmUpOwo+ID4gKyAgICAgcnEgPSBp
OTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwo+ID4gKyAgICAgaW50
ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOwo+IAo+IGk5MTVfcmVxdWVzdF9hZGQgZG9lcyBub3Qg
aGF2ZSB0byBiZSBjb3ZlcmVkIGJ5IHRoZSBwbSByZWY/CgpObywgdGhlIG5vcm1hbCBjb3Vyc2Ug
b2YgYWN0aW9uIGlzOgppOTE1X3JlcXVlc3RfY3JlYXRlOgoJbXV0ZXhfbG9jayh0aW1lbGluZS0+
bXV0ZXgpCglpbnRlbF9jb250ZXh0X2VudGVyOgoJCWlmICghY2UtPmFjdGl2ZV9jb3VudCsrKSB7
CgkJCWludGVsX2VuZ2luZV9wbV9nZXQoKTsKCQkJaW50ZWxfdGltZWxpbmVfZW50ZXIoKTsKCQl9
CgpXaXRoIHRoZSBwcmltYXJ5IHB1cnBvc2Ugb2YgcmVkdWNpbmcgYXRvbWljcyBiZWhpbmQgYSBz
aW1wbGUgdXNhZ2UKY291bnRlciBjb3ZlcmVkIGJ5IHRoZSB0aW1lbGluZS0+bXV0ZXguCgpPZiBj
b3Vyc2UsIGVuZ2luZS1wbSB0cmllcyB0byBiZSBjbGV2ZXIgYmVjYXVzZSBpdCBoYXMgdG8gYmUg
Y2FsbGVkCnVuZGVyIGFueSB0aW1lbGluZS0+bXV0ZXggZnJvbSByZXRpcmUsIGFuZCBzbyB0cmll
cyB0byBmYWtlCnRpbWVsaW5lLT5tdXRleCBpdHNlbGYuCgo+IEkgYW0gc2xpZ2h0bHkgY29uZnVz
ZWQgYnkgaG93IHBhdGNoIGNvbnZlcnRzIHNvbWUgdG8gdGhpcyBoZWxwZXIgYW5kIGF0IAo+IHNv
bWUgcGxhY2VzIGl0IG9wZW4gY29kZXMgaXQuCgpUaGVyZSB3ZXJlIGEgZmV3IHBlcmYgYmVuY2ht
YXJrcywgdGhhdCBJIHRob3VnaHQgYmV0dGVyIHRvIG5vdCBhZGQgdGhlCmV4dHJhIHBhaXIgb2Yg
YXRvbWljcywgYW5kIGludGVsX2VuZ2luZV9oZWFydGJlYXQuYyBpcyBzdXBwb3NlZCB0bwpjb2du
aXNhbnQgb2YgdGhlIHJ1bGVzIGFuZCBvbmx5IG9wZXJhdGVzIG9uIGFuIGFjdGl2ZSBlbmdpbmUt
cG0uCgpUaGUgaW50ZW50IG9mIGludGVsX2VuZ2luZV9jcmVhdGVfa2VybmVsX3JlcXVlc3QoKSB3
YXMgdG8gYXBwbHkgYSBzaW1wbGUKZml4dXAgd2l0aCBhIGNvbW1lbnQgYXMgdG8gd2hhdCBpcyBn
b2luZyBvbiB3aXRoIHRoZSBrZXJuZWxfY29udGV4dC4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
