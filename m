Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BA378E27
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 16:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE62E89DB4;
	Mon, 29 Jul 2019 14:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BF7089DB4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 14:37:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17702218-1500050 for multiple; Mon, 29 Jul 2019 15:37:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729110449.23053-1-chris@chris-wilson.co.uk>
 <op.z5o1boi5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z5o1boi5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156441106994.6373.12454699301308104421@skylake-alporthouse-com>
Date: Mon, 29 Jul 2019 15:37:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_i915_private directly
 from drv_get_drvdata()
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI5IDE1OjMyOjAyKQo+IE9uIE1vbiwg
MjkgSnVsIDIwMTkgMTM6MDQ6NDkgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBBcyB3ZSBzdG9yZSBhIHBvaW50ZXIgdG8gaTkx
NSBpbiB0aGUgZHJ2ZGF0YSBmaWVsZCAoYXMgdGhlIHBvaW50ZXIgaXMgIAo+ID4gYm90aAo+ID4g
YW4gYWxpYXMgdG8gdGhlIGRybV9kZXZpY2UgYW5kIGRybV9pOTE1X3ByaXZhdGUpLCB3ZSBjYW4g
dXNlIHRoZSBzdG9yZWQKPiA+IHBvaW50ZXIgZGlyZWN0bHkgYXMgdGhlIGk5MTUgZGV2aWNlLgo+
ID4KPiAKPiBhcyB3ZSBzdG9yZSBkcm1fZGV2aWNlKiB0aGVyZSwgbGV0J3MgYWx3YXlzIHRyZWF0
IGl0IGFzIGRybV9kZXZpY2UqCj4gd2UgYWxyZWFkeSBoYXZlIHByb3BlciBtYWdpYyB0aGF0IGRv
ZXMgcnVudGltZSBjb252ZXJzaW9uIGF0IG5vIGNvc3QKCk9yIHdlIGp1c3Qgcy8maTkxNS0+ZHJt
L2k5MTUvLCBhcyB3ZSBvd24gdGhlIGludGVyZmFjZSBiZXR3ZWVuIHBjaSBkZXZpY2UKYW5kIHRo
ZSByZXN0IG9mIHRoZSB3b3JsZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
