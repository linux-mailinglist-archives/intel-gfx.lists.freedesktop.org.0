Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E176E91607
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB58A6E059;
	Sun, 18 Aug 2019 09:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBFE6E059
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18178837-1500050 for multiple; Sun, 18 Aug 2019 10:58:50 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190818095204.31568-3-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
 <20190818095204.31568-3-michal.wajdeczko@intel.com>
Message-ID: <156612232859.25088.15129287656574810290@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 18 Aug 2019 10:58:48 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Don't always fail on
 unavailable GuC firmware
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE4IDEwOjUyOjAzKQo+IElmIHdlIGZh
aWxlZCB0byBmZXRjaCBkZWZhdWx0IEd1QyBmaXJtd2FyZSBhbmQgd2UgZGlkbid0IHBsYW4KPiB0
byB1c2UgaXQgZm9yIHRoZSBzdWJtaXNzaW9uIGFuZCB3ZSBuZXZlciBoYXZlIHVzZWQgR3VDIGJl
Zm9yZQo+IHRoZW4gd2UgbWF5IGNvbnRpbnVlIG5vcm1hbCBkcml2ZXIgbG9hZCwgbm8gbmVlZCB0
byBkZWNsYXJlCj4gR1BVIHdlZGdlZCAod2UgY2FuIHVzZSBleGVjbGlzdCBmb3Igc3VibWlzc2lv
bikgYW5kIGl0IGlzIHNhZmUKPiB0byBydW4gd2l0aG91dCB0aGUgSHVDICh1c2VycyB3aWxsIGNo
ZWNrIEh1QyBzdGF0dXMgYW55d2F5KS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gaW5kZXggNmYwYjllMDVhNWY2Li4xMDk3OGU3
ZmYwNmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBAQCAtNDAw
LDYgKzQwMCwxNSBAQCBzdGF0aWMgaW50IHVjX2luaXRfd29wY20oc3RydWN0IGludGVsX3VjICp1
YykKPiAgICAgICAgIHJldHVybiBlcnI7Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIHVjX2lzX3dv
cGNtX2xvY2tlZChzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gdWNfdG9fZ3QodWMpOwo+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gZ3QtPnVuY29yZTsKPiArCj4gKyAgICAgICByZXR1cm4gKGludGVsX3VuY29yZV9y
ZWFkKHVuY29yZSwgR1VDX1dPUENNX1NJWkUpICYgR1VDX1dPUENNX1NJWkVfTE9DS0VEKSB8fAo+
ICsgICAgICAgICAgICAgIChpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERNQV9HVUNfV09QQ01f
T0ZGU0VUKSAmIEdVQ19XT1BDTV9PRkZTRVRfVkFMSUQpOwo+ICt9Cj4gKwo+ICBpbnQgaW50ZWxf
dWNfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHVjX3RvX2d0KHVjKS0+aTkxNTsKPiBAQCAtNDEwLDExICs0
MTksMTkgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKPiAgICAg
ICAgIGlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKPiAgICAgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4gIAo+IC0gICAgICAgaWYgKCFpbnRlbF91Y191c2VzX2d1Yyh1YykpCj4gKyAgICAg
ICAvKgo+ICsgICAgICAgICogV2UgY2FuIHNpbGVudGx5IGNvbnRpbnVlIHdpdGhvdXQgR3VDIG9u
bHkgaWYgaXQgd2FzIG5ldmVyIGVuYWJsZWQKPiArICAgICAgICAqIGJlZm9yZSBvbiB0aGlzIHN5
c3RlbSBhZnRlciByZWJvb3QsIG90aGVyd2lzZSB3ZSByaXNrIEdQVSBoYW5ncy4KPiArICAgICAg
ICAqIFRvIGNoZWNrIGlmIEd1QyB3YXMgbG9hZGVkIGJlZm9yZSB3ZSBsb29rIGF0IFdPUENNIHJl
Z2lzdGVycy4KPiArICAgICAgICAqLwo+ICsgICAgICAgaWYgKCFpbnRlbF91Y191c2VzX2d1Yyh1
YykgJiYgIXVjX2lzX3dvcGNtX2xvY2tlZCh1YykpCj4gICAgICAgICAgICAgICAgIHJldHVybiAw
Owo+ICAKPiAgICAgICAgIGlmICghaW50ZWxfdWNfZndfaXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkg
ewo+IC0gICAgICAgICAgICAgICByZXQgPSBpbnRlbF91Y19md19zdGF0dXNfdG9fZXJyb3IoZ3Vj
LT5mdy5zdGF0dXMpOwo+ICsgICAgICAgICAgICAgICByZXQgPSB1Y19pc193b3BjbV9sb2NrZWQo
dWMpIHx8Cj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVsX3VjX2Z3X2lzX292ZXJyaWRkZW4o
Jmd1Yy0+ZncpIHx8Cj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVsX3VjX3N1cHBvcnRzX2d1
Y19zdWJtaXNzaW9uKHVjKSA/Cj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVsX3VjX2Z3X3N0
YXR1c190b19lcnJvcihndWMtPmZ3LnN0YXR1cykgOiAwOwoKSSdtIGp1c3QgZ29pbmcgdG8gbGVh
dmUgaXQgb3V0IGhlcmUgdGhhdCB0aGlzIGlzIGEgYml0IG9mIGEgbW91dGhmdWwsCmFuZCB3b3Vs
ZCBzdWdnZXN0IGEgc21hbGwgZnVuY3Rpb24gdG8gY2xhcmlmeSAtLSBidXQgbmFtaW5nIGlzIGhh
cmQuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
