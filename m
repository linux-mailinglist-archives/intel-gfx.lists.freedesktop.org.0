Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F57DB17
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 14:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40706E574;
	Thu,  1 Aug 2019 12:14:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B35BC6E574
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 12:14:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 05:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="184224829"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 05:13:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
 <20190801101825.2784-4-tvrtko.ursulin@linux.intel.com>
 <156465537158.2512.2246353492025994893@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <490ab087-1e09-76ea-d52b-effe8f2c6d82@linux.intel.com>
Date: Thu, 1 Aug 2019 13:13:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156465537158.2512.2246353492025994893@skylake-alporthouse-com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAxLzA4LzIwMTkgMTE6MjksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA4LTAxIDExOjE4OjI0KQo+PiAgIHN0YXRpYyB2b2lkCj4+IC1mcmVx
dWVuY3lfc2FtcGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQg
aW50IHBlcmlvZF9ucykKPj4gK2ZyZXF1ZW5jeV9zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwg
dW5zaWduZWQgaW50IHBlcmlvZF9ucykKPj4gICB7Cj4+IC0gICAgICAgaWYgKGRldl9wcml2LT5w
bXUuZW5hYmxlICYKPj4gLSAgICAgICAgICAgY29uZmlnX2VuYWJsZWRfbWFzayhJOTE1X1BNVV9B
Q1RVQUxfRlJFUVVFTkNZKSkgewo+PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gZ3QtPmk5MTU7Cj4+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0g
Z3QtPnVuY29yZTsKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9wbXUgKnBtdSA9ICZpOTE1LT5wbXU7
Cj4+ICsKPj4gKyAgICAgICBpZiAocG11LT5lbmFibGUgJiBjb25maWdfZW5hYmxlZF9tYXNrKEk5
MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1kpKSB7Cj4+ICAgICAgICAgICAgICAgICAgdTMyIHZhbDsK
Pj4gICAKPj4gLSAgICAgICAgICAgICAgIHZhbCA9IGRldl9wcml2LT5ndF9wbS5ycHMuY3VyX2Zy
ZXE7Cj4+IC0gICAgICAgICAgICAgICBpZiAoZGV2X3ByaXYtPmd0LmF3YWtlKSB7Cj4+ICsgICAg
ICAgICAgICAgICB2YWwgPSBpOTE1LT5ndF9wbS5ycHMuY3VyX2ZyZXE7Cj4+ICsgICAgICAgICAg
ICAgICBpZiAoZ3QtPmF3YWtlKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKPj4gICAKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgd2l0aF9p
bnRlbF9ydW50aW1lX3BtX2lmX2luX3VzZSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0sCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHdpdGhfaW50ZWxfcnVudGltZV9wbV9pZl9pbl91c2UoJmk5MTUt
PnJ1bnRpbWVfcG0sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHdha2VyZWYpIHsKPiAKPiBXZSBjYW4gcmVwbGFjZSB0aGlzIHdha2Vy
ZWYgd2l0aAo+IAlpZiAoaW50ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKCkpIHsKPiBpbnN0ZWFkIG9m
IGlmIChndC0+YXdha2UpOwoKRG9uJ3Qgc2VlIGl0IGluIG15IHRyZWU/Cgo+IFdoaWNoIHJlbWlu
ZHMgbWUgSSBoYWQgc29tZSBwYXRjaGVzIHRvIGNoYW5nZSB0aGUgcmM2IHNhbXBsaW5nIG92ZXIK
PiBydW50aW1lIHN1c3BlbmQgLS0gZnJvbSB5b3VyIGxhc3QgdmFjYXRpb24hIE15IHRpbWluZyBp
cyBwZXJmZWN0LgoKT2theSwgbWF5YmUgZG9hYmxlLiBDYW4gcHV0IG9uIHRvcCBvZiB0aGlzIHNl
cmllcyBpZiBJIGNhbiBtZXJnZSB0aGUgCnRyaXZpYWwgcmVmYWN0b3JzIHF1aWNrbHkgdG9kYXk/
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
