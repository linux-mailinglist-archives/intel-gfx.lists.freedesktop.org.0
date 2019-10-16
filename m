Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57908D9245
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0F06E979;
	Wed, 16 Oct 2019 13:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7296E979
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:20:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18857386-1500050 for multiple; Wed, 16 Oct 2019 14:19:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191016113240.6468-1-chris@chris-wilson.co.uk>
 <20191016120249.22714-1-chris@chris-wilson.co.uk>
 <0d271f51-ff02-d097-d91d-9376f26df95f@linux.intel.com>
In-Reply-To: <0d271f51-ff02-d097-d91d-9376f26df95f@linux.intel.com>
Message-ID: <157123199641.22469.15910835850680886941@skylake-alporthouse-com>
Date: Wed, 16 Oct 2019 14:19:56 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Teach execlists to
 take intel_gt as its argument
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNiAxMzo1MDoyMikKPiAKPiBPbiAxNi8x
MC8yMDE5IDEzOjAyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gTm90IHN1cmUgaWYgbXkgbWFya2Vy
cyBhcmUgYXQgYWxsIHVzZWZ1bCwgYnV0IHNhbWUgY29uZGl0aW9uIGFzIHByZXZpb3VzIAo+IHBh
dGNoZXM6CgpJIGhhdmUgYmVlbiBsZWF2aW5nIGd0LT5pOTE1IGFzIG1hcmtlcnMgZm9yIHdoYXQg
QVBJcyBuZWVkIHRvIGJlCmNsZWFuZWQgdXAuIGZvcl9lYWNoX2VuZ2luZSgpIGlzIG9uZSB3aGVy
ZSBJIHRob3VnaHQgYSBzd2VlcCB0aHJvdWdoCmNoYW5naW5nIGFsbCBpbiBvbmUgZ28gd291bGQg
YmUgYSByZWFsbHkgbmljZSBncmFuZCBmaW5hbGUsIHRha2luZyBhCmNvdXBsZSBvZiBwYXNzZXMg
dGhyb3VnaCB0aGUgcmVtYWluaW5nIGZvcl9lYWNoX2VuZ2luZShpOTE1KSB0byB3b3JrIG91dApp
ZiBpdCB3YXMgbWVhbnQgdG8gYmUgZ3QtY2VudHJpYywgdWFiaSwgb3IgY29udGV4dC4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
