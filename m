Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BB7D3ADB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5B96EBDC;
	Fri, 11 Oct 2019 08:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268806E0D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:21:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 01:21:30 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197514435"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 01:21:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dcce0a71-805e-73c3-42f6-567215bc4703@linux.intel.com>
Date: Fri, 11 Oct 2019 09:21:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010134849.9078-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before
 throttling execbuf submissions
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

Ck9uIDEwLzEwLzIwMTkgMTQ6NDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDaGVjayB0aGUgdXNl
cidzIGZsYWdzIG9uIHRoZSBzdHJ1Y3QgZmlsZSBiZWZvcmUgZGVjaWRpbmcgd2hldGhlciBvciBu
b3QKPiB0byBzdGFsbCBiZWZvcmUgc3VibWl0dGluZyBhIHJlcXVlc3QuIFRoaXMgYWxsb3dzIHVz
IHRvIHJlYXNvbmFibHkKPiBjaGVhcGx5IGhvbm91ciBPX05PTkJMT0NLIHdpdGhvdXQgY2hlY2tp
bmcgYXQgbW9yZSBjcml0aWNhbCBwaGFzZXMKPiBkdXJpbmcgcmVxdWVzdCBzdWJtaXNzaW9uLgo+
IAo+IFN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXgu
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCAyMSArKysrKysrKysrKystLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCA5ODgxNmMzNWZmYzMuLmJjNmJj
YjhmNmQ3OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwo+IEBAIC0yMTg5LDE1ICsyMTg5LDIyIEBAIHN0YXRpYyBpbnQgX19lYl9waW5f
ZW5naW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCj4gICAJaW50ZWxfY29udGV4dF90aW1lbGluZV91bmxvY2sodGwpOwo+ICAgCj4gICAJaWYg
KHJxKSB7Cj4gLQkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJxLAo+IC0JCQkJICAgICAgSTkxNV9X
QUlUX0lOVEVSUlVQVElCTEUsCj4gLQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCkgPCAw
KSB7Cj4gLQkJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwo+IC0JCQllcnIgPSAtRUlOVFI7Cj4gLQkJ
CWdvdG8gZXJyX2V4aXQ7Cj4gLQkJfQo+ICsJCWJvb2wgbm9uYmxvY2sgPSBlYi0+ZmlsZS0+Zmls
cC0+Zl9mbGFncyAmIE9fTk9OQkxPQ0s7Cj4gKwkJbG9uZyB0aW1lb3V0Owo+ICsKPiArCQl0aW1l
b3V0ID0gTUFYX1NDSEVEVUxFX1RJTUVPVVQ7Cj4gKwkJaWYgKG5vbmJsb2NrKQo+ICsJCQl0aW1l
b3V0ID0gMDsKPiAgIAo+ICsJCXRpbWVvdXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChycSwKPiArCQkJ
CQkgICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCj4gKwkJCQkJICAgIHRpbWVvdXQpOwo+ICAg
CQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKPiArCj4gKwkJaWYgKHRpbWVvdXQgPCAwKSB7Cj4gKwkJ
CWVyciA9IG5vbmJsb2NrID8gLUVXT1VMREJMT0NLIDogdGltZW91dDsKPiArCQkJZ290byBlcnJf
ZXhpdDsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICAJZWItPmVuZ2luZSA9IGNlLT5lbmdpbmU7Cj4g
CgpXaHkgbm90LCBpZiB0aGVyZSBpcyB1c2Vyc3BhY2UhIDopCgpSZXZpZXdlZC1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
