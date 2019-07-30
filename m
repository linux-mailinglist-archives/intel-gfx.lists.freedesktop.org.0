Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1BC7A2F6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12F36E43C;
	Tue, 30 Jul 2019 08:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF00C6E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:16:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17721925-1500050 for multiple; Tue, 30 Jul 2019 09:14:40 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190729222800.1010-1-daniele.ceraolospurio@intel.com>
References: <20190729222800.1010-1-daniele.ceraolospurio@intel.com>
Message-ID: <156447447895.6373.14946537998785508903@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 09:14:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: don't enable communication
 twice on resume
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI5IDIzOjI4OjAwKQo+IFdo
ZW4gY29taW5nIG91dCBvZiBTMy9TNCB3ZSBzYW5pdGl6ZSBhbmQgcmUtaW5pdCB0aGUgSFcsIHdo
aWNoIGluY2x1ZGVzCj4gZW5hYmxpbmcgY29tbXVuaWNhdGlvbiBkdXJpbmcgdWNfaW5pdF9ody4g
V2UgdGhlcmVmb3JlIGRvbid0IHdhbnQgdG8gZG8KPiB0aGF0IGFnYWluIGluIHVjX3Jlc3VtZSBh
bmQgY2FuIGp1c3QgdGVsbCBHdUMgdG8gcmVsb2FkIGl0cyBzdGF0ZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgfCAxNiArKysrKysrKysrKysrKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gaW5kZXggZmFmYTliZTFlMTJhLi4z
NDcwNmE3NTM3OTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBA
QCAtMjMzLDExICsyMzMsMTggQEAgc3RhdGljIHZvaWQgZ3VjX2Rpc2FibGVfaW50ZXJydXB0cyhz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gICAgICAgICBndWMtPmludGVycnVwdHMuZGlzYWJsZShn
dWMpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgYm9vbCBndWNfY29tbXVuaWNhdGlvbl9lbmFibGVkKHN0
cnVjdCBpbnRlbF9ndWMgKmd1YykKPiArewo+ICsgICAgICAgcmV0dXJuIGd1Yy0+c2VuZCAhPSBp
bnRlbF9ndWNfc2VuZF9ub3A7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgZ3VjX2VuYWJsZV9jb21t
dW5pY2F0aW9uKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgewo+ICAgICAgICAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsKPiAgICAgICAgIGlu
dCByZXQ7Cj4gIAo+ICsgICAgICAgR0VNX0JVR19PTihndWNfY29tbXVuaWNhdGlvbl9lbmFibGVk
KGd1YykpOwo+ICsKPiAgICAgICAgIHJldCA9IGludGVsX2d1Y19jdF9lbmFibGUoJmd1Yy0+Y3Qp
Owo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiBAQCAt
NTU4LDcgKzU2NSwxNCBAQCBpbnQgaW50ZWxfdWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMp
Cj4gICAgICAgICBpZiAoIWludGVsX2d1Y19pc19ydW5uaW5nKGd1YykpCj4gICAgICAgICAgICAg
ICAgIHJldHVybiAwOwo+ICAKPiAtICAgICAgIGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihndWMp
Owo+ICsgICAgICAgLyoKPiArICAgICAgICAqIFdoZW4gY29taW5nIG91dCBvZiBTMy9TNCB3ZSBz
YW5pdGl6ZSBhbmQgcmUtaW5pdCB0aGUgSFcsIHNvCj4gKyAgICAgICAgKiBjb21tdW5pY2F0aW9u
IGlzIGFscmVhZHkgcmUtZW5hYmxlZCBhdCB0aGlzIHBvaW50IGFuZCB3ZSBqdXN0IG5lZWQKPiAr
ICAgICAgICAqIHRvIHRlbGwgR3VDIHRvIHJlbG9hZCBpdHMgaW50ZXJuYWwgc3RhdGUuIER1cmlu
ZyBydW50aW1lIHJlc3VtZSB3ZQo+ICsgICAgICAgICogaW5zdGVhZCB3YW50IHRvIHJlLWluaXQg
ZXZlcnl0aGluZy4KPiArICAgICAgICAqLwo+ICsgICAgICAgaWYgKCFndWNfY29tbXVuaWNhdGlv
bl9lbmFibGVkKGd1YykpCj4gKyAgICAgICAgICAgICAgIGd1Y19lbmFibGVfY29tbXVuaWNhdGlv
bihndWMpOwoKV2UgZGlzdGluZ3Vpc2ggcnVudGltZV9zdXNwZW5kIGZyb20gc3VzcGVuZCwgYnV0
IG5vdCBydW50aW1lX3Jlc3VtZSBmcm9tCnJlc3VtZS4gSXMgdGhhdCBkaXN0aW5jdGlvbiB3b3J0
aHdoaWxlLCBjb3VsZCB3ZSB1c2UgaXQgYmUgbW9yZSBzdHJpY3QKb3ZlciB0aGUgZXhwZWN0ZWQg
c3RhdGU/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
