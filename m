Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36864C0AFF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3AE6E1E9;
	Fri, 27 Sep 2019 18:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986626E1E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:25:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643646-1500050 for multiple; Fri, 27 Sep 2019 19:24:47 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-4-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-4-matthew.auld@intel.com>
Message-ID: <156960868356.1880.6806098914805541143@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 19:24:43 +0100
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTApCj4gK3N0YXRpYyB2b2lk
IGNsb3NlX29iamVjdHMoc3RydWN0IGxpc3RfaGVhZCAqb2JqZWN0cykKPiArewo+ICsgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBOVUxMOwo+ICsgICAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgKm9uOwo+ICsKPiArICAgICAgIGxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZShvYmosIG9uLCBvYmplY3RzLCBzdF9saW5rKSB7Cj4gKyAgICAgICAgICAgICAg
IGk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwo+ICsgICAgICAgICAgICAgICBpZiAoaTkx
NV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSkKPiArICAgICAgICAgICAgICAgICAg
ICAgICBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKPiArICAgICAgICAgICAgICAg
LyogTm8gcG9sbHV0aW5nIHRoZSBtZW1vcnkgcmVnaW9uIGJldHdlZW4gdGVzdHMgKi8KPiArICAg
ICAgICAgICAgICAgX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKG9iaiwgSTkxNV9NTV9OT1JN
QUwpOwo+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gKyAgICAg
ICAgICAgICAgIGxpc3RfZGVsKCZvYmotPnN0X2xpbmspOwo+ICsgICAgICAgfQo+ICsKPiArICAg
ICAgIGlmIChpOTE1KSB7CgpUaGF0J3Mgb24gdGhlIHVnbHkgc2lkZS4gWW91IHdpbGwgaGF2ZSBh
IG1lbSBpbiBlYWNoIHN1YnRlc3QsIHNvIHdoeSBub3QKc3VwcGx5IGl0IGhlcmUgYW5kIHVzZSB0
aGUgbWVtLT5pOTE1IGZyb20gdGhhdD8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
