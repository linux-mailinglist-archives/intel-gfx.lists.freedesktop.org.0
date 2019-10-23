Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC47E19AD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648DD6EA67;
	Wed, 23 Oct 2019 12:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CAE6EA67
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:12:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18936796-1500050 for multiple; Wed, 23 Oct 2019 13:11:06 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023095000.3782-1-andi.shyti@intel.com>
References: <20191023093821.3350-1-andi.shyti@intel.com>
 <20191023095000.3782-1-andi.shyti@intel.com>
Message-ID: <157183266196.15766.14782680783428472038@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 23 Oct 2019 13:11:01 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Extract GT render power
 state management
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

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTIzIDEwOjUwOjAwKQo+IEBAIC0xNDk3Niw3ICsx
NDk3OCw3IEBAIGludGVsX3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUs
Cj4gICAgICAgICAgKiBtYXhpbXVtIGNsb2NrcyBmb2xsb3dpbmcgYSB2YmxhbmsgbWlzcyAoc2Vl
IGRvX3Jwc19ib29zdCgpKS4KPiAgICAgICAgICAqLwo+ICAgICAgICAgaWYgKCFpbnRlbF9zdGF0
ZS0+cnBzX2ludGVyYWN0aXZlKSB7Cj4gLSAgICAgICAgICAgICAgIGludGVsX3Jwc19tYXJrX2lu
dGVyYWN0aXZlKGRldl9wcml2LCB0cnVlKTsKPiArICAgICAgICAgICAgICAgaW50ZWxfcnBzX21h
cmtfaW50ZXJhY3RpdmUoJmRldl9wcml2LT5ndC5ycHMsIHRydWUpOwoKSSB3b25kZXIgaWYgd2Ug
Y2FuIGRvICZwbGFuZS0+dm1hLT52bS0+Z3QtPnJwcwoKTXdhaGFoYS4KCj4gICAgICAgICAgICAg
ICAgIGludGVsX3N0YXRlLT5ycHNfaW50ZXJhY3RpdmUgPSB0cnVlOwo+ICAgICAgICAgfQo+ICAK
PiBAQCAtMTUwMDEsNyArMTUwMDMsNyBAQCBpbnRlbF9jbGVhbnVwX3BsYW5lX2ZiKHN0cnVjdCBk
cm1fcGxhbmUgKnBsYW5lLAo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShwbGFuZS0+ZGV2KTsKPiAgCj4gICAgICAgICBpZiAoaW50ZWxfc3RhdGUt
PnJwc19pbnRlcmFjdGl2ZSkgewo+IC0gICAgICAgICAgICAgICBpbnRlbF9ycHNfbWFya19pbnRl
cmFjdGl2ZShkZXZfcHJpdiwgZmFsc2UpOwo+ICsgICAgICAgICAgICAgICBpbnRlbF9ycHNfbWFy
a19pbnRlcmFjdGl2ZSgmZGV2X3ByaXYtPmd0LnJwcywgZmFsc2UpOwo+ICAgICAgICAgICAgICAg
ICBpbnRlbF9zdGF0ZS0+cnBzX2ludGVyYWN0aXZlID0gZmFsc2U7Cj4gICAgICAgICB9Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
