Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E55BDE3C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F84E6E847;
	Wed, 25 Sep 2019 12:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F07C6E847
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:45:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 05:45:18 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179804054"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 05:45:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-24-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ace5cfe1-fa45-8728-436b-55510ed2184b@linux.intel.com>
Date: Wed, 25 Sep 2019 13:45:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925100137.17956-24-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 23/27] drm/i915: Drop struct_mutex guard
 from debugfs/framebuffer_info
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

Ck9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJdCBwcm90ZWN0cyBu
b3RoaW5nIGJlaW5nIGFjY2Vzc2VkIGZvciB0aGUgaW50ZWxfZnJhbWVidWZmZXIsIHNvIGl0J3MK
PiBvd24gbG9ja2luZyBoYWQgYmV0dGVyIGJlIHN1ZmZpY2llbnQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDYgLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+
IGluZGV4IGQ0YTdjZGE2MDY3OS4uNWU5ODRiYTI3YmVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMTQ0NSwxMSArMTQ0NSw2IEBAIHN0YXRpYyBpbnQgaTkxNV9n
ZW1fZnJhbWVidWZmZXJfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCj4gICAJ
c3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+ICAgCXN0cnVjdCBpbnRl
bF9mcmFtZWJ1ZmZlciAqZmJkZXZfZmIgPSBOVUxMOwo+ICAgCXN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmRybV9mYjsKPiAtCWludCByZXQ7Cj4gLQo+IC0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1
cHRpYmxlKCZkZXYtPnN0cnVjdF9tdXRleCk7Cj4gLQlpZiAocmV0KQo+IC0JCXJldHVybiByZXQ7
Cj4gICAKPiAgICNpZmRlZiBDT05GSUdfRFJNX0ZCREVWX0VNVUxBVElPTgo+ICAgCWlmIChkZXZf
cHJpdi0+ZmJkZXYgJiYgZGV2X3ByaXYtPmZiZGV2LT5oZWxwZXIuZmIpIHsKPiBAQCAtMTQ4NCw3
ICsxNDc5LDYgQEAgc3RhdGljIGludCBpOTE1X2dlbV9mcmFtZWJ1ZmZlcl9pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiAgIAkJc2VxX3B1dGMobSwgJ1xuJyk7Cj4gICAJfQo+
ICAgCW11dGV4X3VubG9jaygmZGV2LT5tb2RlX2NvbmZpZy5mYl9sb2NrKTsKPiAtCW11dGV4X3Vu
bG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwo+ICAgCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
