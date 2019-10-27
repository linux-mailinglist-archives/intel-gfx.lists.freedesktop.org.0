Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB72E6504
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 20:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131EA6E046;
	Sun, 27 Oct 2019 19:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133CE6E046
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 19:11:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18986320-1500050 for multiple; Sun, 27 Oct 2019 19:11:24 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191027190133.GC12997@intel.intel>
References: <20191026200917.1780-1-chris@chris-wilson.co.uk>
 <20191027190133.GC12997@intel.intel>
Message-ID: <157220348306.26808.9563251817783938156@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 27 Oct 2019 19:11:23 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Flip interpretation of ips
 fmin/fmax to max rps
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTI3IDE5OjAxOjMzKQo+IEhpIENocmlzLAo+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMKPiA+IGluZGV4IDMwZjU2Yzc4NjQ2OC4u
MDMyYTBjNjM4OWY5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcnBzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCj4g
PiBAQCAtMTgwLDggKzE4MCw4IEBAIHN0YXRpYyB2b2lkIGdlbjVfcnBzX2luaXQoc3RydWN0IGlu
dGVsX3JwcyAqcnBzKQo+ID4gICAgICAgRFJNX0RFQlVHX0RSSVZFUigiZm1heDogJWQsIGZtaW46
ICVkLCBmc3RhcnQ6ICVkXG4iLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICBmbWF4LCBmbWlu
LCBmc3RhcnQpOwo+ID4gIAo+ID4gLSAgICAgcnBzLT5taW5fZnJlcSA9IC1mc3RhcnQ7Cj4gCj4g
YW5kIHdlIGRvbid0IG5lZWQgZnN0YXJ0IGFueW1vcmUuLi4gY2FuIHdlIHJlbW92ZSBpdD8KCkkn
dmUgbm90IHdvcmtlZCBvdXQgaG93IHRvIGJlc3QgdG8gdXNlIGl0LCBvdGhlciB0aGFuIGxvZyBp
dC4gVGhlIGNob2ljZQppcyB3aGV0aGVyIHRvIHJlc3RvcmUgdG8gZnN0YXJ0IG9uIHJldHVybmlu
ZyBjb250cm9sIHRvIHRoZSBCSU9TIChpLmUuCm1vZHVsZSB1bmxvYWQgLyBpbnRlbF9ycHNfZGlz
YWJsZSkgd2hpY2ggaXMgd2hhdCB3ZSd2ZSBwcmV2aW91c2x5IHRyaWVkLgpCdXQgd2hhdCdzIHRo
ZSBwb2ludCAtLSB3ZSB1c2UgaWRsZSBmcmVxdWVuY3kgY3VycmVudGx5LCBhbmQgc28gaXMKZnN0
YXJ0IGEgYmV0dGVyIGNob2ljZSBmb3IgaWRsZSBmcmVxdWVuY3kgKGFuZCB3b3VsZCB0aGF0IGJl
PykgSSBoYXZlCm1vcmUgcXVlc3Rpb25zIHRoYW4gYW5zd2Vycywgc28gbGVmdCBpdCBhbG9uZS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
