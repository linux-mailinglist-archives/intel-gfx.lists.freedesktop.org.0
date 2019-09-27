Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 000CEC0B06
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E505D6E1ED;
	Fri, 27 Sep 2019 18:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1CE6E1ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:27:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643657-1500050 for multiple; Fri, 27 Sep 2019 19:25:58 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156960868356.1880.6806098914805541143@skylake-alporthouse-com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-4-matthew.auld@intel.com>
 <156960868356.1880.6806098914805541143@skylake-alporthouse-com>
Message-ID: <156960875390.1880.12046179484890226851@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 19:25:53 +0100
Subject: Re: [Intel-gfx] [PATCH 03/22] drm/i915: introduce
 intel_memory_region
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjcgMTk6MjQ6NDMpCj4gUXVvdGluZyBNYXR0
aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTApCj4gPiArc3RhdGljIHZvaWQgY2xvc2Vfb2Jq
ZWN0cyhzdHJ1Y3QgbGlzdF9oZWFkICpvYmplY3RzKQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBOVUxMOwo+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCAqb247Cj4gPiArCj4gPiArICAgICAgIGxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZShvYmosIG9uLCBvYmplY3RzLCBzdF9saW5rKSB7Cj4gPiArICAgICAgICAgICAg
ICAgaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Cj4gPiArICAgICAgICAgICAgICAgaWYg
KGk5MTVfZ2VtX29iamVjdF9oYXNfcGlubmVkX3BhZ2VzKG9iaikpCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKPiA+ICsgICAgICAg
ICAgICAgICAvKiBObyBwb2xsdXRpbmcgdGhlIG1lbW9yeSByZWdpb24gYmV0d2VlbiB0ZXN0cyAq
Lwo+ID4gKyAgICAgICAgICAgICAgIF9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5
MTVfTU1fTk9STUFMKTsKPiA+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7Cj4gPiArICAgICAgICAgICAgICAgbGlzdF9kZWwoJm9iai0+c3RfbGluayk7Cj4gPiArICAg
ICAgIH0KPiA+ICsKPiA+ICsgICAgICAgaWYgKGk5MTUpIHsKPiAKPiBUaGF0J3Mgb24gdGhlIHVn
bHkgc2lkZS4gWW91IHdpbGwgaGF2ZSBhIG1lbSBpbiBlYWNoIHN1YnRlc3QsIHNvIHdoeSBub3QK
PiBzdXBwbHkgaXQgaGVyZSBhbmQgdXNlIHRoZSBtZW0tPmk5MTUgZnJvbSB0aGF0PwoKVGhlIGZ1
cnRoZXIgdGhvdWdodCwgd2FzIHRvIGhhdmUgYW4gbWVtIHRlc3QgcnVubmVyIHRoYXQgZHJhaW5l
ZCB0aGUKcGFnZXMgYmV0d2VlbiBlYWNoIHN1YnRlc3QuIFRoYXQncyBhbiBhcmVhIHRoYXQgd2Ug
bmVlZCB0byBpbXByb3ZlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
