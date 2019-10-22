Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57F4E01B4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422076E570;
	Tue, 22 Oct 2019 10:11:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8FC6E570
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:11:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18922786-1500050 for multiple; Tue, 22 Oct 2019 11:11:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
 <20191022094726.3001-12-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191022094726.3001-12-tvrtko.ursulin@linux.intel.com>
Message-ID: <157173906832.2684.6904885448220973236@skylake-alporthouse-com>
Date: Tue, 22 Oct 2019 11:11:08 +0100
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915/selftests: Use GT engines in
 i915_gem_mman selftest
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yMiAxMDo0NzoyNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE9uZSBtb3JlIGZvcl9l
YWNoX2VuZ2luZSBjYWxsIHNpdGUgY2hhbmdlZCB0byB3b3JrIG9uIEdUIGVuZ2luZXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFu
LmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9tbWFuLmMKPiBpbmRleCA2NWQ0ZGJmOTE5OTkuLjQ1ZmMxNTJlYmY1YyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4u
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1h
bi5jCj4gQEAgLTUxNCwxMiArNTE0LDEzIEBAIHN0YXRpYyBpbnQgaWd0X3Ntb2tlX3RpbGluZyh2
b2lkICphcmcpCj4gIHN0YXRpYyBpbnQgbWFrZV9vYmpfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0
ID0gJmk5MTUtPmd0Owo+ICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+
ICAgICAgICAgZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gICAgICAgICBzdHJ1Y3QgaTkxNV92
bWEgKnZtYTsKPiAgICAgICAgIGludCBlcnI7Cj4gIAo+IC0gICAgICAgdm1hID0gaTkxNV92bWFf
aW5zdGFuY2Uob2JqLCAmaTkxNS0+Z2d0dC52bSwgTlVMTCk7Cj4gKyAgICAgICB2bWEgPSBpOTE1
X3ZtYV9pbnN0YW5jZShvYmosICZndC0+Z2d0dC0+dm0sIE5VTEwpOwo+ICAgICAgICAgaWYgKElT
X0VSUih2bWEpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUih2bWEpOwo+ICAKPiBA
QCAtNTI3LDcgKzUyOCw3IEBAIHN0YXRpYyBpbnQgbWFrZV9vYmpfYnVzeShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQo+ICAgICAgICAgaWYgKGVycikKPiAgICAgICAgICAgICAgICAg
cmV0dXJuIGVycjsKPiAgCj4gLSAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBp
ZCkgewo+ICsgICAgICAgZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CgpJIHdhcyB0
aGlua2luZyBmb3JfZWFjaF91YWJpX2VuZ2luZSgpIC0tIGJ1dCBJIHdhcyB0cnlpbmcgdG8gYW5z
d2VyIHRvCm15c2VsZiB3aHkgZXhhY3RseS4KCk9rLCBJIGhhdmUgYW4gaWRlYSwgbGV0IG1lIGZs
b2F0IGEgcGF0Y2guCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
