Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3858714D3AF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3666E45F;
	Wed, 29 Jan 2020 23:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9A06E45F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:34:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20053479-1500050 for multiple; Wed, 29 Jan 2020 23:33:35 +0000
MIME-Version: 1.0
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200129232345.84512-1-jose.souza@intel.com>
References: <20200129232345.84512-1-jose.souza@intel.com>
Message-ID: <158034081430.14720.1142522476870394698@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 Jan 2020 23:33:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list
 append
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDIwLTAxLTI5IDIzOjIzOjQ1KQo+IE9u
bHkgdGhlIGZpcnN0IGFuZCB0aGUgbGFzdCBub2RlcyB3ZXJlIGJlaW5nIGFkZGVkIHRvCj4gcmVm
LT5wcmVhbGxvY2F0ZWRfYmFycmllcnMuCj4gCj4gSSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoaXMg
cGFydCBvZiB0aGUgY29kZSBidXQgaWYgdGhhdCBpcyB0aGUKPiBleHBlY3RlZCBiZWhhdmlvciBp
dCBpcyBsZWFraW5nIHRoZSBub2RlcyBpbiBiZXR3ZWVuLgo+IAo+IFJlbmFtaW5nIHZhcmlhYmxl
cyB0byBtYWtlIGl0IG1vcmUgZWFzeSB0byByZWFkLgo+IAo+IEZpeGVzOiA4NDEzNTAyMjM4MTYg
KCJkcm0vaTkxNS9ndDogRHJvcCBtdXRleCBzZXJpYWxpc2F0aW9uIGJldHdlZW4gY29udGV4dCBw
aW4vdW5waW4iKQo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyB8IDE5
ICsrKysrKysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4gaW5kZXgg
OWQ2ODMwODg1ZDJlLi4zZDJlN2NmNTVlNTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlLmMKPiBAQCAtNjA3LDcgKzYwNyw3IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFs
bG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gIHsKPiAgICAgICAgIGludGVsX2VuZ2luZV9tYXNrX3QgdG1wLCBtYXNrID0gZW5naW5l
LT5tYXNrOwo+IC0gICAgICAgc3RydWN0IGxsaXN0X25vZGUgKnBvcyA9IE5VTEwsICpuZXh0Owo+
ICsgICAgICAgc3RydWN0IGxsaXN0X25vZGUgKmZpcnN0ID0gTlVMTCwgKmxhc3QgPSBOVUxMOwoK
bGFzdCBjYW5ub3QgYmUgTlVMTCBhdCB0aGUgZW5kLgoKPiAgICAgICAgIHN0cnVjdCBpbnRlbF9n
dCAqZ3QgPSBlbmdpbmUtPmd0Owo+ICAgICAgICAgaW50IGVycjsKPiAgCj4gQEAgLTYyNiw2ICs2
MjYsNyBAQCBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVj
dCBpOTE1X2FjdGl2ZSAqcmVmLAo+ICAgICAgICAgR0VNX0JVR19PTighbWFzayk7Cj4gICAgICAg
ICBmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgZ3QsIG1hc2ssIHRtcCkgewo+ICAgICAg
ICAgICAgICAgICB1NjQgaWR4ID0gZW5naW5lLT5rZXJuZWxfY29udGV4dC0+dGltZWxpbmUtPmZl
bmNlX2NvbnRleHQ7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBsbGlzdF9ub2RlICpwcmV2ID0g
Zmlyc3Q7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZTsKPiAgCj4g
ICAgICAgICAgICAgICAgIG5vZGUgPSByZXVzZV9pZGxlX2JhcnJpZXIocmVmLCBpZHgpOwo+IEBA
IC02NTksMjMgKzY2MCwyMyBAQCBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9i
YXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAo+ICAgICAgICAgICAgICAgICBHRU1fQlVH
X09OKHJjdV9hY2Nlc3NfcG9pbnRlcihub2RlLT5iYXNlLmZlbmNlKSAhPSBFUlJfUFRSKC1FQUdB
SU4pKTsKPiAgCj4gICAgICAgICAgICAgICAgIEdFTV9CVUdfT04oYmFycmllcl90b19lbmdpbmUo
bm9kZSkgIT0gZW5naW5lKTsKPiAtICAgICAgICAgICAgICAgbmV4dCA9IGJhcnJpZXJfdG9fbGwo
bm9kZSk7Cj4gLSAgICAgICAgICAgICAgIG5leHQtPm5leHQgPSBwb3M7Cj4gLSAgICAgICAgICAg
ICAgIGlmICghcG9zKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBvcyA9IG5leHQ7CgpZZWFo
LCB0aGF0IHdhcyBhIGJpdCBvZiBub25zZW5zZS4KCk1pbnVzIHRoZSBzcHVyaW91cyBOVUxMLApS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
