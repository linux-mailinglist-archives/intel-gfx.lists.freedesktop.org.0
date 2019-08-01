Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA0E7D960
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A0F6E47E;
	Thu,  1 Aug 2019 10:29:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBBA6E47E
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17784127-1500050 for multiple; Thu, 01 Aug 2019 11:29:34 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801101825.2784-4-tvrtko.ursulin@linux.intel.com>
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
 <20190801101825.2784-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156465537158.2512.2246353492025994893@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 11:29:31 +0100
Subject: Re: [Intel-gfx] [RFC 3/4] drm/i915/pmu: Convert sampling to gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxMToxODoyNCkKPiAgc3RhdGljIHZv
aWQKPiAtZnJlcXVlbmN5X3NhbXBsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCj4gK2ZyZXF1ZW5jeV9zYW1wbGUoc3RydWN0IGludGVs
X2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKPiAgewo+IC0gICAgICAgaWYgKGRldl9w
cml2LT5wbXUuZW5hYmxlICYKPiAtICAgICAgICAgICBjb25maWdfZW5hYmxlZF9tYXNrKEk5MTVf
UE1VX0FDVFVBTF9GUkVRVUVOQ1kpKSB7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGd0LT5pOTE1Owo+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
ID0gZ3QtPnVuY29yZTsKPiArICAgICAgIHN0cnVjdCBpOTE1X3BtdSAqcG11ID0gJmk5MTUtPnBt
dTsKPiArCj4gKyAgICAgICBpZiAocG11LT5lbmFibGUgJiBjb25maWdfZW5hYmxlZF9tYXNrKEk5
MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1kpKSB7Cj4gICAgICAgICAgICAgICAgIHUzMiB2YWw7Cj4g
IAo+IC0gICAgICAgICAgICAgICB2YWwgPSBkZXZfcHJpdi0+Z3RfcG0ucnBzLmN1cl9mcmVxOwo+
IC0gICAgICAgICAgICAgICBpZiAoZGV2X3ByaXYtPmd0LmF3YWtlKSB7Cj4gKyAgICAgICAgICAg
ICAgIHZhbCA9IGk5MTUtPmd0X3BtLnJwcy5jdXJfZnJlcTsKPiArICAgICAgICAgICAgICAgaWYg
KGd0LT5hd2FrZSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX3dha2VyZWZfdCB3
YWtlcmVmOwo+ICAKPiAtICAgICAgICAgICAgICAgICAgICAgICB3aXRoX2ludGVsX3J1bnRpbWVf
cG1faWZfaW5fdXNlKCZkZXZfcHJpdi0+cnVudGltZV9wbSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICB3aXRoX2ludGVsX3J1bnRpbWVfcG1faWZfaW5fdXNlKCZpOTE1LT5ydW50aW1lX3BtLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
d2FrZXJlZikgewoKV2UgY2FuIHJlcGxhY2UgdGhpcyB3YWtlcmVmIHdpdGgKCWlmIChpbnRlbF9n
dF9wbV9nZXRfaWZfYXdha2UoKSkgewppbnN0ZWFkIG9mIGlmIChndC0+YXdha2UpOwoKV2hpY2gg
cmVtaW5kcyBtZSBJIGhhZCBzb21lIHBhdGNoZXMgdG8gY2hhbmdlIHRoZSByYzYgc2FtcGxpbmcg
b3ZlcgpydW50aW1lIHN1c3BlbmQgLS0gZnJvbSB5b3VyIGxhc3QgdmFjYXRpb24hIE15IHRpbWlu
ZyBpcyBwZXJmZWN0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
