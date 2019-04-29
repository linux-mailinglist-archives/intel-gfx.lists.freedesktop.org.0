Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264CDF6C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 11:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E830892EF;
	Mon, 29 Apr 2019 09:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0912D892EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 09:28:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 02:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="139718941"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 29 Apr 2019 02:28:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190429090735.326-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5f2b3a4b-91c4-6c41-2874-2a43ac755689@linux.intel.com>
Date: Mon, 29 Apr 2019 10:28:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429090735.326-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip unused contexts for
 context_barrier_task()
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

Ck9uIDI5LzA0LzIwMTkgMTA6MDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgY29udGV4
dCBoYXMgbm90IGJlZW4gdXNlZCB5ZXQsIGl0IG5lZWRzIG5vIGJhcnJpZXIsIGFuZCBpbiB0aGUK
PiBwcm9jZXNzIGZpeCB1cCB0aGUgc2VsZnRlc3QgaW4gbW9ja19jb250ZXh0cy4KPiAKPiBUZXN0
Y2FzZTogaWd0L2dlbV9jdHhfY2xvbmUvdm0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2NvbnRleHQuYyAgICAgICAgICAgfCA2ICsrKy0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDIgKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCA5MzljMTcwNzA3ODAuLjY1Y2VmYzUyMGU3OSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMKPiBAQCAtOTI0LDE1ICs5
MjQsMTUgQEAgc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJfdGFzayhzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4LAo+ICAgCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRl
eHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7Cj4gICAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
Owo+ICAgCj4gLQkJaWYgKCEoY2UtPmVuZ2luZS0+bWFzayAmIGVuZ2luZXMpKQo+IC0JCQljb250
aW51ZTsKPiAtCj4gICAJCWlmIChJOTE1X1NFTEZURVNUX09OTFkoY29udGV4dF9iYXJyaWVyX2lu
amVjdF9mYXVsdCAmCj4gICAJCQkJICAgICAgIGNlLT5lbmdpbmUtPm1hc2spKSB7Cj4gICAJCQll
cnIgPSAtRU5YSU87Cj4gICAJCQlicmVhazsKPiAgIAkJfQo+ICAgCj4gKwkJaWYgKCEoY2UtPmVu
Z2luZS0+bWFzayAmIGVuZ2luZXMpIHx8ICFjZS0+c3RhdGUpCj4gKwkJCWNvbnRpbnVlOwo+ICsK
PiAgIAkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKPiAgIAkJaWYgKElT
X0VSUihycSkpIHsKPiAgIAkJCWVyciA9IFBUUl9FUlIocnEpOwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4IGI2MmYwMDVl
NGQ1MC4uMzRhYzVjYzZkNTlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTE2NjUsNyArMTY2NSw3IEBAIHN0YXRp
YyBpbnQgbW9ja19jb250ZXh0X2JhcnJpZXIodm9pZCAqYXJnKQo+ICAgCQlnb3RvIG91dDsKPiAg
IAl9Cj4gICAJaWYgKGNvdW50ZXIgPT0gMCkgewo+IC0JCXByX2VycigiRGlkIG5vdCByZXRpcmUg
aW1tZWRpYXRlbHkgZm9yIGFsbCBpbmFjdGl2ZSBlbmdpbmVzXG4iKTsKPiArCQlwcl9lcnIoIkRp
ZCBub3QgcmV0aXJlIGltbWVkaWF0ZWx5IGZvciBhbGwgdW51c2VkIGVuZ2luZXNcbiIpOwo+ICAg
CQllcnIgPSAtRUlOVkFMOwo+ICAgCQlnb3RvIG91dDsKPiAgIAl9Cj4gCgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
