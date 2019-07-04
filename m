Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2E35F81A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 14:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA3F6E339;
	Thu,  4 Jul 2019 12:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 679FA6E33A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 12:29:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17128125-1500050 for multiple; Thu, 04 Jul 2019 13:29:46 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHO7-Hn1J0W8r-VD1KK4=W=Xc1zqBRyr3456kGbz9dzxog@mail.gmail.com>
References: <20190704104345.6603-1-chris@chris-wilson.co.uk>
 <CAM0jSHO7-Hn1J0W8r-VD1KK4=W=Xc1zqBRyr3456kGbz9dzxog@mail.gmail.com>
Message-ID: <156224338488.25091.4126759005972601101@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 13:29:44 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Handle double alloc failures
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDctMDQgMTM6Mjc6MDcpCj4gT24gVGh1LCA0IEp1
bCAyMDE5IGF0IDExOjQzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gTWF0dGhldyBwb2ludGVkIG91dCB0aGF0IHdlIGNvdWxkIGZhY2UgYSBk
b3VibGUgZmFpbHVyZSB3aXRoIGNvbmN1cnJlbnQKPiA+IGFsbG9jYXRpb25zL2ZyZWVzLCBhbmQg
c28gdGhlIGFzc3VtcHRpb24gdGhhdCB0aGUgbG9jYWwgdmFyIGFsbG9jIHdhcwo+ID4gTlVMTCB3
YXMgZnJhdWdodCB3aXRoIGRhbmdlci4gUmF0aGVyIHRoYW4gY29tcGxpY2F0ZSB0aGUgZXJyb3Ig
cGF0aHMgdG9vCj4gPiBtdWNoIHRvIGFkZCBhIHNlY29uZCBsb2NhbCBmb3IgYSBzZWNvbmQgZnJl
ZSwganVzdCBkbyB0aGUgc2Vjb25kIGZyZWUKPiA+IGVhcmxpZXIgb24gdGhlIHVud2luZCBwYXRo
Lgo+ID4KPiA+IFJlcG9ydGVkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxk
QGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRA
Z21haWwuY29tPgo+IAo+IEkgcXVpdGUgbGlrZWQgeW91ciBwcmV2aW91cyBwYXR0ZXJuOgo+IAo+
IEBAIC0xNDQyLDYgKzE0NDIsNyBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0
cnVjdAo+IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpOTE1
X3BhZ2VfZGlyZWN0b3J5ICpwZCwgKmFsbG9jID0gTlVMTDsKPiAgICAgICAgIHU2NCBmcm9tID0g
c3RhcnQ7Cj4gKyAgICAgICBib29sIGZyZWUgPSBmYWxzZTsKPiAgICAgICAgIHVuc2lnbmVkIGlu
dCBwZHBlOwo+ICAgICAgICAgaW50IHJldCA9IDA7Cj4gCj4gQEAgLTE0ODksMTAgKzE0OTAsMTEg
QEAgc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkcChzdHJ1Y3QKPiBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLAo+ICAgICAgICAgICAgICAgICBnZW44X3BwZ3R0X3NldF9wZHBlKHBkcCwgdm0t
PnNjcmF0Y2hfcGQsIHBkcGUpOwo+ICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKCFhdG9taWNf
cmVhZCgmcGRwLT51c2VkKSk7Cj4gICAgICAgICAgICAgICAgIGF0b21pY19kZWMoJnBkcC0+dXNl
ZCk7Cj4gLSAgICAgICAgICAgICAgIEdFTV9CVUdfT04oYWxsb2MpOwo+IC0gICAgICAgICAgICAg
ICBhbGxvYyA9IHBkOyAvKiBkZWZlciB0aGUgZnJlZSB0byBhZnRlciB0aGUgbG9jayAqLwo+ICsg
ICAgICAgICAgICAgICBmcmVlID0gdHJ1ZTsKPiAgICAgICAgIH0KPiAgICAgICAgIHNwaW5fdW5s
b2NrKCZwZHAtPmxvY2spOwo+ICsgICAgICAgaWYgKGZyZWUpCj4gKyAgICAgICAgICAgICAgIGZy
ZWVfcGQodm0sIHBkKTsKPiAgdW53aW5kOgo+ICAgICAgICAgZ2VuOF9wcGd0dF9jbGVhcl9wZHAo
dm0sIHBkcCwgZnJvbSwgc3RhcnQgLSBmcm9tKTsKPiAgb3V0Ogo+IAo+IEFueXdheSwKPiBSZXZp
ZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+CgpJ
J20gc3VyZSBNaWthIGlzIGR5aW5nIHRvIHJld3JpdGUgdGhlc2UgYW55d2F5LCB3ZSBjYW4gc2Vl
IHdoYXQKc29sdXRpb24gaGUgY29tZXMgdXAgd2l0aC4gOikKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
