Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1A5DF3C9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 19:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55966E199;
	Mon, 21 Oct 2019 17:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C926E199
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 17:06:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 10:06:45 -0700
X-IronPort-AV: E=Sophos;i="5.67,324,1566889200"; d="scan'208";a="191171904"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Oct 2019 10:06:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191021162146.1686-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7ac50613-703a-42cd-eb30-83597a6902c8@linux.intel.com>
Date: Mon, 21 Oct 2019 18:06:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191021162146.1686-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Use all physical
 engines for i915_active
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

Ck9uIDIxLzEwLzIwMTkgMTc6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBpOTE1X2FjdGl2ZSBt
dXN0IHRyYWNrIG92ZXIgYW55IGVuZ2luZSwgc28gZXhwYW5kIHRoZSBzZWxmdGVzdCB0bwo+IGl0
ZXJhdGUgb3ZlciBhbGwgdWFiaSBlbmdpbmVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfYWN0aXZlLmMgfCAzICstLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2FjdGl2ZS5jCj4gaW5kZXggMjY4MTkyYjU2MTNiLi45NjUxM2E3ZDQ3MzkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYwo+IEBA
IC03OSw3ICs3OSw2IEBAIF9fbGl2ZV9hY3RpdmVfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+ICAgCXN0cnVj
dCBpOTE1X3N3X2ZlbmNlICpzdWJtaXQ7Cj4gICAJc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmU7
Cj4gLQllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKPiAgIAl1bnNpZ25lZCBpbnQgY291bnQgPSAw
Owo+ICAgCWludCBlcnIgPSAwOwo+ICAgCj4gQEAgLTk3LDcgKzk2LDcgQEAgX19saXZlX2FjdGl2
ZV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgIAlpZiAoZXJyKQo+ICAg
CQlnb3RvIG91dDsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsK
PiArCWZvcl9lYWNoX3VhYmlfZW5naW5lKGVuZ2luZSwgaTkxNSkgewo+ICAgCQlzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycTsKPiAgIAo+ICAgCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZW5naW5l
LT5rZXJuZWxfY29udGV4dCk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
