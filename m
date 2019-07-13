Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6417D679A7
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB596E3CB;
	Sat, 13 Jul 2019 10:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BE46E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:23:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17265942-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 11:23:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-5-chris@chris-wilson.co.uk>
Message-ID: <156301337749.9436.8076903980733198359@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 11:22:57 +0100
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/guc: unify guc irq handling
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MTApCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBU
aGUgMTYtYml0IGd1YyBpcnEgdmVjdG9yIGlzIHVuY2hhbmdlZCBhY3Jvc3MgZ2VucywgdGhlIG9u
bHkgdGhpbmcgdGhhdAo+IG1vdmVkIGlzIGl0cyBwb3NpdGlvbiAoZnJvbSB0aGUgdXBwZXIgMTYg
Yml0cyBvZiB0aGUgUE0gcmVncyB0byBpdHMgb3duCj4gcmVnaXN0ZXIpLiBJbnN0ZWFkIG9mIGR1
cGxpY2F0aW5nIGFsbCBkZWZpbmVzIGFuZCBmdW5jdGlvbnMgdG8gaGFuZGxlCj4gdGhlIDIgZGlm
ZmVyZW50IHBvc2l0aW9ucywgd2UgY2FuIHdvcmsgb24gdGhlIHZlY3RvciBhbmQgc2hpZnQgaXQg
YXMKPiBhcHByb3ByaWF0ZS4gV2hpbGUgYXQgaXQsIHVwZGF0ZSB0aGUgaGFuZGxlciB0byB3b3Jr
IG9uIGludGVsX2d1Yy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgICAgICB8IDI0ICsrKysrKysrLS0tLS0tLS0tLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgfCAxMCAtLS0tLS0tLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oIHwgMzIgKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDQxIGRlbGV0aW9u
cygtKQoKQWx3YXlzIG5pY2UuClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
