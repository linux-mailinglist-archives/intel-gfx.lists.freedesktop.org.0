Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EFB28DF91
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 13:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20826EA53;
	Wed, 14 Oct 2020 11:05:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E53F6EA53;
 Wed, 14 Oct 2020 11:05:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22711862-1500050 for multiple; Wed, 14 Oct 2020 12:05:27 +0100
MIME-Version: 1.0
In-Reply-To: <20201014104853.606351-1-tvrtko.ursulin@linux.intel.com>
References: <20201014104853.606351-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:05:26 +0100
Message-ID: <160267352653.7159.12912041121177674515@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC i-g-t] intel_gpu_top: User friendly device
 listing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0xMC0xNCAxMTo0ODo1MykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFkZGluZyBhIG5ldyBk
ZXZpY2Ugc2VsZWN0aW9uIHByaW50IHR5cGUgc3VpdGFibGUgZm9yIHVzZXItZmFjaW5nCj4gdXNl
IGNhc2VzIGxpa2UgaW50ZWxfZ3B1X3RvcCAtTCBhbmQgcG90ZW50aWFsbHkgbHNncHUuCj4gCj4g
SW5zdGVhZCBvZjoKPiAKPiBzeXM6L3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowMi4w
L2RybS9jYXJkMAo+ICAgICBzdWJzeXN0ZW0gICAgICAgOiBkcm0KPiAgICAgZHJtIGNhcmQgICAg
ICAgIDogL2Rldi9kcmkvY2FyZDAKPiAgICAgcGFyZW50ICAgICAgICAgIDogc3lzOi9zeXMvZGV2
aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMAo+IAo+IHN5czovc3lzL2RldmljZXMvcGNpMDAw
MDowMC8wMDAwOjAwOjAyLjAvZHJtL3JlbmRlckQxMjgKPiAgICAgc3Vic3lzdGVtICAgICAgIDog
ZHJtCj4gICAgIGRybSByZW5kZXIgICAgICA6IC9kZXYvZHJpL3JlbmRlckQxMjgKPiAgICAgcGFy
ZW50ICAgICAgICAgIDogc3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMAo+
IAo+IHN5czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjAKPiAgICAgc3Vic3lz
dGVtICAgICAgIDogcGNpCj4gICAgIGRybSBjYXJkICAgICAgICA6IC9kZXYvZHJpL2NhcmQwCj4g
ICAgIGRybSByZW5kZXIgICAgICA6IC9kZXYvZHJpL3JlbmRlckQxMjgKPiAgICAgdmVuZG9yICAg
ICAgICAgIDogODA4Ngo+ICAgICBkZXZpY2UgICAgICAgICAgOiAxOTNCCj4gCj4gTmV3IGZvcm1h
dCBsb29rcyBsaWtlOgo+IAo+IGNhcmQwICAgICAgICAgICAgICAgICAgIDgwODY6MTkzQiAgICBk
cm06L2Rldi9kcmkvY2FyZDAKPiDilJTilIByZW5kZXJEMTI4ICAgICAgICAgICAgICAgICAgICAg
ICAgIGRybTovZGV2L2RyaS9yZW5kZXJEMTI4Cj4gCj4gQWR2YW50YWdlcyBhcmUgbW9yZSBjb21w
YWN0LCBtb3JlIHJlYWRhYmxlLCBvbmUgZW50cnkgcGVyIEdQVSwgc2hvcnRlcgo+IHN0cmluZyB0
byBjb3B5IGFuZCBwYXN0ZSB0byBpbnRlbF9ncHVfdG9wIC1kLCBvciByZXNwZWN0aXZlIHVzYWdl
LgoKQ291bGQgeW91IHByZXNlbnQgdGhpcyBhcyB0aGUgdHlwaWNhbCBjb21tYW5kcyBhbmQgb3V0
cHV0PyBJIHRoaW5rIHlvdQptZWFuIHRoZSBmaXJzdCBhcyB0aGUgb3V0cHV0IG9mIGludGVsX2dw
dV90b3AgLUwuIFdoYXQgZXhhY3RseSBkbyB3ZSBub3cKZmVlZCB0byAtZD8KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
