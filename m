Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D284CD2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 15:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BDE6E6DC;
	Wed,  7 Aug 2019 13:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3056E6DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 13:22:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17918711-1500050 for multiple; Wed, 07 Aug 2019 14:22:34 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190806134725.25321-5-chris@chris-wilson.co.uk>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
Message-ID: <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 14:22:32 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDYgMTQ6NDc6MjUpCj4gQEAgLTQzMyw2ICs0
ODIsOCBAQCBfX2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICAKPiAgICAgICAgIGk5MTVfZ2VtX2NvbnRleHRfc2V0X2Jhbm5hYmxlKGN0eCk7Cj4gICAgICAg
ICBpOTE1X2dlbV9jb250ZXh0X3NldF9yZWNvdmVyYWJsZShjdHgpOwo+ICsgICAgICAgaWYgKGk5
MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spCj4gKyAgICAgICAgICAgICAgIGk5MTVfZ2Vt
X2NvbnRleHRfc2V0X3BlcnNpc3RlbmNlKGN0eCk7CgpJIGFtIG5vdCBmb25kIG9mIHRoaXMsIGJ1
dCBmcm9tIGEgcHJhZ21hdGljIHBvaW50IG9mIHZpZXcsIHRoaXMgZG9lcwpwcmV2ZW50IHRoZSBp
c3N1ZSBKb24gcmFpc2VkOiBIVyByZXNvdXJjZXMgYmVpbmcgcGlubmVkIGluZGVmaW5pdGVseQpw
YXN0IHByb2Nlc3MgdGVybWluYXRpb24uCgpJIGRvbid0IGxpa2UgaXQgYmVjYXVzZSB3ZSBjYW5u
b3QgcGVyZm9ybSB0aGUgb3BlcmF0aW9uIGNsZWFubHkKZXZlcnl3aGVyZSwgaXQgcmVxdWlyZXMg
cHJlZW1wdGlvbiBmaXJzdCBhbmQgZm9yZW1vc3QgKHdpdGggYSBjb29wZXJhdGluZwpzdWJtaXNz
aW9uIGJhY2tlbmQpIGFuZCBwZXItZW5naW5lIHJlc2V0LiBUaGUgYWx0ZXJuYXRpdmUgaXMgdG8g
dHJ5IGFuZApkbyBhIGZ1bGwgR1BVIHJlc2V0IGlmIHRoZSBjb250ZXh0IGlzIHN0aWxsIGFjdGl2
ZS4gRm9yIHRoZSBzYWtlIG9mIHRoZQppc3N1ZSByYWlzZWQsIEkgdGhpbmsgdGhhdCAoZnVsbCBy
ZXNldCBvbiBvbGRlciBIVykgaXMgcmVxdWlyZWQuCgpUaGF0IHdlIGFyZSBiYWtpbmcgaW4gYSBj
aGFuZ2Ugb2YgQUJJIGR1ZSB0byBhbiB1bnNhZmUgbW9kcGFyYW0gaXMgbWVoLgpUaGVyZSBhcmUg
YSBmZXcgbW9yZSBjb3JuZXIgY2FzZXMgdG8gZGVhbCB3aXRoIGJlZm9yZSBlbmRsZXNzIGp1c3QK
d29ya3MuIEJ1dCBzaW5jZSBpdCBpcyBiZWluZyB1c2VkIGluIHRoZSB3aWxkLCBJJ20gbm90IHN1
cmUgd2UgY2FuIHdhaXQKZm9yIHVzZXJzcGFjZSB0byBvcHQtaW4sIG9yIHdhaXQgZm9yIGNncm91
cHMuIEhvd2V2ZXIsIHNpbmNlIHVzZXJzIGFyZQpiZWluZyBlbmNvdXJhZ2VkIHRvIGRpc2FibGUg
aGFuZ2NoZWNrLCBzaG91bGQgd2UgZXh0ZW5kIHRoZSBjb25jZXB0IG9mCnBlcnNpc3RlbmNlIHRv
IGFsc28gbWVhbiAic3Vydml2ZXMgaGFuZ2NoZWNrIj8gLS0gdGhvdWdoIGl0IHNob3VsZCBiZSBh
CnNlcGFyYXRlIHBhcmFtZXRlciwgYW5kIEknbSBub3Qgc3VyZSBob3cgZXhhY3RseSB0byBwcm90
ZWN0IGl0IGZyb20gdGhlCmhlYXJ0YmVhdCByZXNldCB3aXRob3V0IGdpdmluZyBncm9zcyBwcml2
aWxlZ2VzIHRvIHRoZSBjb250ZXh0LiAoQ1BVCmlzb2xhdGlvbiBpcyBuaWNlciBmcm9tIHRoZSBw
b3Ygd2hlcmUgd2UgY2FuIGp1c3QgZ2l2ZSB1cCBhbmQgbm90IGV2ZW4Kd29ycnkgYWJvdXQgdGhl
IGVuZ2luZS4gSWYgdXNlcnNwYWNlIGNhbiByZXF1ZXN0IGlzb2xhdGlvbiwgaXQgaGFzIHRoZQpw
cml2aWxlZ2UgdG8gc2NyZXcgdXAuKQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
