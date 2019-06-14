Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D796B45A5B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 12:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E8E892B4;
	Fri, 14 Jun 2019 10:26:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39222892B4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 10:26:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16900386-1500050 for multiple; Fri, 14 Jun 2019 11:26:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-21-tvrtko.ursulin@linux.intel.com>
 <156043491632.17012.905658932195637345@skylake-alporthouse-com>
 <94cae18d-cc2c-a109-ce8d-08631b160c0a@linux.intel.com>
In-Reply-To: <94cae18d-cc2c-a109-ce8d-08631b160c0a@linux.intel.com>
Message-ID: <156050796376.12536.6062902818706512025@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 11:26:03 +0100
Subject: Re: [Intel-gfx] [RFC 20/28] drm/i915: Compartmentalize
 i915_gem_suspend/restore_gtt_mappings
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxMDo1MTo1OSkKPiAKPiBPbiAxMy8w
Ni8yMDE5IDE1OjA4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEzIDE0OjM1OjMxKQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0
ZXIgY29kZSBjb21wYXJ0bWVudGFsaXphdGlvbiBieSBpbnRyb2R1Y2luZwo+ID4+IHN0cnVjdCBp
bnRlbF9ndCwgY29udGludWUgdGhlIHRoZW1lIGVsc2V3aGVyZSBpbiBjb2RlIGJ5IG1ha2luZyBm
dW5jdGlvbnMKPiA+PiB0YWtlIHBhcmFtZXRlcnMgdGFrZSB3aGF0IGxvZ2ljYWxseSBtYWtlcyBt
b3N0IHNlbnNlIGZvciB0aGVtIGluc3RlYWQgb2YKPiA+PiB0aGUgZ2xvYmFsIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlLgo+ID4gCj4gPiBTbyBJIGFtIGRlYmF0aW5nIHdoZXRoZXIgdGhpcyBpcyBi
ZXR0ZXIgb2ZmIGFzIHBhcnQgb2YgaTkxNV9nZ3R0IGFuZCBub3QKPiA+IGk5MTVfYWRkcmVzc19z
cGFjZS4KPiAKPiBJbiB0ZXJtcyBvZiB3aGF0IG9iamVjdCBpcyBwYXNzZWQgaW4/CgpObywgSSB3
YXMgdGhpbmtpbmcgcGxhY2VtZW50IG9mIHRoZSBpbnRlbF9ndCBiYWNrcG9pbnRlci4gSnVzdCB0
cnlpbmcgdG8KYXNzZXNzIHdoZXRoZXIgaTkxNV9hZGRyZXNzX3NwYWNlIGlzIGFuIGFic3RyYWN0
IGNvbmNlcHQuLi4gQnV0IGl0IG5lZWRzCnRvIGJlIHRpZWQgdG8gYSBzdHJ1Y3QgZGV2aWNlIGZv
ciBkbWFfbWFwcGluZywgc28gSSB0aGluayBJIGFtIHRhbGtpbmcKcnViYmlzaC4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
