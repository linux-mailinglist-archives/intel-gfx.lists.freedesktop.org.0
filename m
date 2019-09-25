Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56145BDE4C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD766EBA6;
	Wed, 25 Sep 2019 12:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5D46E84A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:51:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 05:51:05 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179805187"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 05:51:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-25-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <da5ea652-4ad4-4efa-efee-e5910c19d89a@linux.intel.com>
Date: Wed, 25 Sep 2019 13:51:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925100137.17956-25-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 24/27] drm/i915: Remove struct_mutex guard
 for debugfs/opregion
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

Ck9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBIYXZpbmcgYSBzdHJ1
Y3RfbXV0ZXggYXJvdW5kIHRoZSByZWFkIG9mIGEgQklPUyBibG9iIHNlcnZlcyBubyBwdXJwb3Nl
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxMiAr
LS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTEgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCA1ZTk4NGJh
MjdiZWYuLjhmNDhmMjU0M2I3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
Cj4gQEAgLTE0MTEsMjEgKzE0MTEsMTEgQEAgc3RhdGljIGludCBpOTE1X3JpbmdfZnJlcV90YWJs
ZShzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiAgIAo+ICAgc3RhdGljIGludCBp
OTE1X29wcmVnaW9uKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+ICAgewo+IC0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZh
dGUpOwo+IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+IC0Jc3Ry
dWN0IGludGVsX29wcmVnaW9uICpvcHJlZ2lvbiA9ICZkZXZfcHJpdi0+b3ByZWdpb247Cj4gLQlp
bnQgcmV0Owo+IC0KPiAtCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZGV2LT5zdHJ1
Y3RfbXV0ZXgpOwo+IC0JaWYgKHJldCkKPiAtCQlnb3RvIG91dDsKPiArCXN0cnVjdCBpbnRlbF9v
cHJlZ2lvbiAqb3ByZWdpb24gPSAmbm9kZV90b19pOTE1KG0tPnByaXZhdGUpLT5vcHJlZ2lvbjsK
PiAgIAo+ICAgCWlmIChvcHJlZ2lvbi0+aGVhZGVyKQo+ICAgCQlzZXFfd3JpdGUobSwgb3ByZWdp
b24tPmhlYWRlciwgT1BSRUdJT05fU0laRSk7Cj4gICAKPiAtCW11dGV4X3VubG9jaygmZGV2LT5z
dHJ1Y3RfbXV0ZXgpOwo+IC0KPiAtb3V0Ogo+ICAgCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
