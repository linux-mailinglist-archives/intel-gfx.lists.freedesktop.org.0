Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A5B49E95
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 12:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74C589857;
	Tue, 18 Jun 2019 10:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B99289857
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 10:49:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16938648-1500050 for multiple; Tue, 18 Jun 2019 11:49:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-7-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190617180935.505-7-daniele.ceraolospurio@intel.com>
Message-ID: <156085499049.31375.5145473546887909625@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 11:49:50 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gvt: decouple check_vgpu()
 from uncore_init()
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTE3IDE5OjA5OjM1KQo+IFdp
dGggbXVsdGlwbGUgdW5jb3JlIHRvIGluaXRpYWxpemUgKEdUIHZzIERpc3BsYXkpLCBpdCBtYWtl
cyBsaXR0bGUKPiBzZW5zZSB0byBoYXZlIHRoZSB2Z3B1X2NoZWNrIGluc2lkZSB1bmNvcmVfaW5p
dCgpLiBXZSBhbHNvIGhhdmUKPiBhIGNhdGNoLTIyIHNjZW5hcmlvIHdoZXJlIHRoZSB1bmNvcmUg
aXMgcmVxdWlyZWQgdG8gcmVhZCB0aGUgdmdwdQo+IGNhcGFiaWxpdGllcyB3aGlsZSB0aGUgdmdw
dSBjYXBhYmlsaXRpZXMgYXJlIHJlcXVpcmVkIHRvIGRlY2lkZSBpZgo+IHdlIG5lZWQgdG8gaW5p
dGlhbGl6ZSBmb3JjZXdha2Ugc3VwcG9ydC4gVG8gcmVtb3ZlIHRoaXMgY2lyY3VsYXIKPiBkZXBl
bmRlbmN5LCB3ZSBjYW4gcGVyZm9ybSB0aGUgcmVxdWlyZWQgTU1JTyBhY2Nlc3MgYnkgbW1hcHBp
bmcganVzdAo+IHRoZSB2Z3RpZiBzaGFyZWQgcGFnZSBpbiBtbWlvIHNwYWNlIGFuZCB1c2UgcmF3
IGFjY2Vzc29ycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBaaGVueXUgV2FuZyA8emhlbnl1
d0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgIHwgIDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaCAgfCAg
NSArKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyAgICB8IDMxICsrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vu
Y29yZS5jIHwgIDIgLS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCA5NWIzNmZlMTdm
OTkuLmMzZDlkMWEzNjZiMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBAIC0xODkz
LDYgKzE4OTMsOCBAQCBpbnQgaTkxNV9kcml2ZXJfbG9hZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKPiAgCj4gICAgICAgICBkaXNhYmxlX3Jw
bV93YWtlcmVmX2Fzc2VydHMoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKPiAgCj4gKyAgICAgICBp
OTE1X2NoZWNrX3ZncHUoZGV2X3ByaXYpOwoKQm9udXMgcG9pbnRzIGZvciBzL2k5MTVfY2hlY2tf
dmdwdS9pOTE1X2RldGVjdF92Z3B1LyA/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
