Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A1BF402
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7685B89E33;
	Thu, 26 Sep 2019 13:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE9C989E33
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 13:26:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18627477-1500050 for multiple; Thu, 26 Sep 2019 14:25:57 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-4-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-4-michal.winiarski@intel.com>
Message-ID: <156950435470.26462.10306780238666571124@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 14:25:54 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Add definitions for MI_MATH
 command
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozMykKPiBXZSBjYW4g
dXNlIGl0IGluIGk5MTUgZm9yIHVwZGF0aW5nIHBhcnRzIG9mIHVubWFza2VkIHJlZ2lzdGVycyBm
cm9tCj4gd2l0aGluIGEgYmF0Y2guIFdlJ3JlIGFsc28gYWRkaW5nIEdlbjgrIHZlcnNpb25zIG9m
IENTX0dQUiByZWdpc3RlcnMKPiAoYWthIE1JX01BVEhfUkVHIGluIHRoZSBjb3Byb2Nlc3Nvciku
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lA
aW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
CkNoZWNrZWQgYWdhaW5zdCBtZXNhJ3MgeG1sIGZvciBjb252ZW5pZW5jZSwKUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAyNCArKysrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8
ICA0ICsrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKPiBpbmRleCA5MjExYjFh
ZDQwMWIuLjI2YzI4NmJjOTYyNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dwdV9jb21tYW5kcy5oCj4gQEAgLTI0MSw2ICsyNDEsMzAgQEAKPiAgI2RlZmluZSAgIFBJ
UEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCAgICAgICAgICAgICAgICgxPDwwKQo+ICAjZGVm
aW5lICAgUElQRV9DT05UUk9MX0dMT0JBTF9HVFQgKDE8PDIpIC8qIGluIGFkZHIgZHdvcmQgKi8K
PiAgCj4gKyNkZWZpbmUgTUlfTUFUSCh4KSAgICAgICAgICAgICAgICAgICAgIE1JX0lOU1RSKDB4
MUEsICh4KS0xKQo+ICsjZGVmaW5lIE1JX01BVEhfSU5TVFIob3Bjb2RlLCBvcDEsIG9wMikgKCgo
b3Bjb2RlKSA8PCAyMCkgfCBcCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAoKG9wMSkgPDwgMTApIHwgKG9wMikpCgpQZXJoYXBzIHRoaXMgd291bGQgYmVuZWZpdCBm
cm9tIGEgdG91Y2ggb2YgUkVHX0ZJRUxEIGZvciB2YWx1ZSBjaGVja2luZy4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
