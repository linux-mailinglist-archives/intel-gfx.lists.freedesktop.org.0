Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D82CFE83
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D846E843;
	Tue,  8 Oct 2019 16:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709246E843
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:06:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18767274-1500050 for multiple; Tue, 08 Oct 2019 17:06:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191008160116.18379-1-matthew.auld@intel.com>
 <20191008160116.18379-2-matthew.auld@intel.com>
In-Reply-To: <20191008160116.18379-2-matthew.auld@intel.com>
Message-ID: <157055076361.13327.6325776814479698031@skylake-alporthouse-com>
Date: Tue, 08 Oct 2019 17:06:03 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: introduce intel_memory_region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDggMTc6MDE6MTQpCj4gK3N0YXRpYyB2b2lk
IGNsb3NlX29iamVjdHMoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBsaXN0X2hlYWQgKm9iamVjdHMpCj4gK3sKPiArICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVtLT5pOTE1Owo+ICsgICAgICAg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgKm9uOwo+ICsKPiArICAgICAgIGxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZShvYmosIG9uLCBvYmplY3RzLCBzdF9saW5rKSB7Cj4gKyAgICAg
ICAgICAgICAgIGlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwo+
ICsgICAgICAgICAgICAgICAvKiBObyBwb2xsdXRpbmcgdGhlIG1lbW9yeSByZWdpb24gYmV0d2Vl
biB0ZXN0cyAqLwo+ICsgICAgICAgICAgICAgICBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMo
b2JqLCBJOTE1X01NX05PUk1BTCk7Cj4gKyAgICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF9w
dXQob2JqKTsKPiArICAgICAgICAgICAgICAgbGlzdF9kZWwoJm9iai0+c3RfbGluayk7CgpJIHdv
dWxkIHF1aWV0bHkgcmVvcmRlciB0aGlzIHNvIHdlIGxpc3RfZGVsIGJlZm9yZSBrcmVmX3B1dC4K
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
