Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A7C1130BD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 18:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4C76E937;
	Wed,  4 Dec 2019 17:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59E76E937
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 17:24:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19460354-1500050 for multiple; Wed, 04 Dec 2019 17:24:33 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHNa9G=wuhx8VNZ8Q2Q61jJq_hM+d-=BNxwS5BrGNHbD3Q@mail.gmail.com>
References: <20191204162803.3841140-1-chris@chris-wilson.co.uk>
 <CAM0jSHNa9G=wuhx8VNZ8Q2Q61jJq_hM+d-=BNxwS5BrGNHbD3Q@mail.gmail.com>
Message-ID: <157548027430.19640.9653852255478125449@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 04 Dec 2019 17:24:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Hook user-extensions upto
 MMAP_OFFSET_IOCTL
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
Cc: Chris Wilson <ickle@braswell.alporthouse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTItMDQgMTY6NTI6MTIpCj4gT24gV2VkLCA0IERl
YyAyMDE5IGF0IDE2OjI5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxpY2tsZUBicmFzd2VsbC5hbHBvcnRo
b3VzZS5jb20+Cj4gPgo+ID4gQ2FsbCBpOTE1X3VzZXJfZXh0ZW5zaW9ucygpIHRvIHZhbGlkYXRl
IHRoZSBhcmctPmV4dGVuc2lvbnMgcG9pbnRlciwgYW5kCj4gPiBzbyByZXR1cm4gY29uc2lzdGVu
dCBlcnJvciBudW1iZXJzIGZvciB0aGUgZnV0dXJlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IEFiZGllbCBKYW51
bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgOCArKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gPiBpbmRleCAzN2FhYmJmYTg2OWEuLjNhM2YzMGJj
OGFjNyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9t
bWFuLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMK
PiA+IEBAIC0xNyw2ICsxNyw3IEBACj4gPiAgI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgo+
ID4gICNpbmNsdWRlICJpOTE1X2dlbV9tbWFuLmgiCj4gPiAgI2luY2x1ZGUgImk5MTVfdHJhY2Uu
aCIKPiA+ICsjaW5jbHVkZSAiaTkxNV91c2VyX2V4dGVuc2lvbnMuaCIKPiA+ICAjaW5jbHVkZSAi
aTkxNV92bWEuaCIKPiA+Cj4gPiAgc3RhdGljIGlubGluZSBib29sCj4gPiBAQCAtNjE3LDkgKzYx
OCwxMiBAQCBpOTE1X2dlbV9tbWFwX29mZnNldF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAo+ID4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IHRvX2k5MTUoZGV2KTsKPiA+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNl
dCAqYXJncyA9IGRhdGE7Cj4gPiAgICAgICAgIGVudW0gaTkxNV9tbWFwX3R5cGUgdHlwZTsKPiA+
ICsgICAgICAgaW50IGVycjsKPiA+Cj4gPiAtICAgICAgIGlmIChhcmdzLT5leHRlbnNpb25zKQo+
ID4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKyAgICAgICBlcnIgPSBpOTE1
X3VzZXJfZXh0ZW5zaW9ucyh1NjRfdG9fdXNlcl9wdHIoYXJncy0+ZXh0ZW5zaW9ucyksCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwsIDAsIE5VTEwpOwo+ID4gKyAg
ICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gCj4gRG9uJ3Qg
d2UgaGF2ZSB0byBjaGVjayBnZXRfdXNlciBmaXJzdCBvbiB0aGUgcHRyPwoKTm8sIGl0J3MgY2hl
Y2tlZCBieSBpOTE1X3VzZXJfZXh0ZW5zaW9ucygpLiBJdCdzIGEgYml0IHJlZHVuZGFudCBpbiB0
aGUKb3RoZXIgY2FsbGVycyA6KSBTaW5jZSB0aGUgZmlyc3QgdGhpbmcgd2UgZG8gaXMgd2hpbGUg
KGV4dCkuCgpJIGhhdmUgc29tZSBtZW1vcnkgb2Ygc3RhcnRpbmcgb3V0IHdpdGggTlVMTCBiZWlu
ZyBhbiBlcnJvciBmb3IKaTkxNV91c2VyX2V4dGVuc2lvbnMsIGJ1dCB3ZSBzZXR0bGVkIG9uIHdo
aWxlKGV4dCkgZm9yIGEgY29tcGFjdApub24tcmVjdXJzaXZlIGxvb3AuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
