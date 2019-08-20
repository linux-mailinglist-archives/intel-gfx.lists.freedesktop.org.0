Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3589626E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1559C6E81D;
	Tue, 20 Aug 2019 14:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F056E81D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:28:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18203439-1500050 for multiple; Tue, 20 Aug 2019 15:28:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190820141218.14714-1-chris@chris-wilson.co.uk>
 <87ef1fvrpt.fsf@gaia.fi.intel.com>
In-Reply-To: <87ef1fvrpt.fsf@gaia.fi.intel.com>
Message-ID: <156631132166.1374.16673709005545916094@skylake-alporthouse-com>
Date: Tue, 20 Aug 2019 15:28:41 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Relax pd_used assertion
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTIwIDE1OjI1OjUwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgY3VycmVudCBh
c3NlcnRpb24gdHJpZXMgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZG8gbm90IG92ZXIgY291bnQgdGhl
Cj4gPiBudW1iZXIgb2YgdXNlZCBQREUgaW5zaWRlIGEgcGFnZSBkaXJlY3RvcnkgLS0gdGhhdCBp
cyB3aXRoIGFuIGFycmF5IG9mCj4gPiA1MTIgcGRlLCB3ZSBkbyBub3QgZXhwZWN0IG1vcmUgdGhh
biA1MTIgZWxlbWVudHMgdXNlZCEgSG93ZXZlciwgb3VyCj4gPiBhc3NlcnRpb24gaGFzIHRvIHRh
a2UgaW50byBhY2NvdW50IHRoYXQgYXMgd2UgcGluIGFuIGVsZW1lbnQgaW50byB0aGUKPiA+IHBh
Z2UgZGlyZWN0b3J5LCB0aGUgY2FsbGVyIGZpcnN0IHBpbnMgdGhlIHBhZ2UgZGlyZWN0b3J5IHNv
IHRoZSB1c2FnZQo+ID4gY291bnQgaXMgb25lIGhpZ2hlci4gSG93ZXZlciwgdGhpcyBzaG91bGQg
YmUgb25lIGV4dHJhIHBpbiBwZXIgdGhyZWFkLAo+ID4gYW5kIHRoZSB1cHBlciBib3VuZCBpcyB0
aGF0IHdlIG1heSBoYXZlIG9uZSB0aHJlYWQgZm9yIGVhY2ggZW50cnkuCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKystCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiBpbmRleCBlNDhkZjExYTE5ZmIuLjk0MzVkMTg0ZGRm
MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gQEAgLTc3MSw3
ICs3NzEsOCBAQCBfX3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNv
bnN0IHBkLAo+ID4gICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfZG1hICogY29uc3QgdG8s
Cj4gPiAgICAgICAgICAgICAgdTY0ICgqZW5jb2RlKShjb25zdCBkbWFfYWRkcl90LCBjb25zdCBl
bnVtIGk5MTVfY2FjaGVfbGV2ZWwpKQo+ID4gIHsKPiA+IC0gICAgIEdFTV9CVUdfT04oYXRvbWlj
X3JlYWQocHhfdXNlZChwZCkpID4gQVJSQVlfU0laRShwZC0+ZW50cnkpKTsKPiA+ICsgICAgIC8q
IEVhY2ggdGhyZWFkIHByZS1waW5zIHRoZSBwZCwgYW5kIHdlIG1heSBoYXZlIGEgdGhyZWFkIHBl
ciBlYWNoIHBkZSAqLwo+ID4gKyAgICAgR0VNX0JVR19PTihhdG9taWNfcmVhZChweF91c2VkKHBk
KSkgPiAyICogQVJSQVlfU0laRShwZC0+ZW50cnkpKTsKPiAKPiBXaGVuIEkgc2F3ICsxIHdydCBh
cnJheV9zaXplIHRoYXQgc2hvdWxkIGhhdmUgcmFuZyBzb21lIGJlbGxzIGJldHdlZW4KPiBteSBl
YXJzLiBJIGRpZCBpbmNyZWFzZSBpdCB0byArMSBmb3IgdGhlIHVwcGVyIHBpbm5pbmcgYnV0Cj4g
dGhlIHBhcmFsbGVsaXNtIGVzY2FwZWQgbWUgYW5kIG5vIG1vcmUgYmVsbHMgd2VyZSBydW5nLgoK
SXQgY29tcGxldGVseSBlc2NhcGVkIG1lIGFuZCBJIGhhZCB0aGUgcmVhc29uIHRvIG1ha2Ugc3Vy
ZSB0aGlzIHdvcmtlZAp3aXRoIG11bHRpcGxlIHRocmVhZHMhCgpUaGFua3MgZm9yIHRoZSByZXZp
ZXcsCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
