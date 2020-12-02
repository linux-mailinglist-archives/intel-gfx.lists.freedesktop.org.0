Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1442CC963
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 23:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7CA86EB1A;
	Wed,  2 Dec 2020 22:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FA56EB1A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 22:12:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23195830-1500050 for multiple; Wed, 02 Dec 2020 22:12:44 +0000
MIME-Version: 1.0
In-Reply-To: <20201202212814.26320-1-chris@chris-wilson.co.uk>
References: <20201202212814.26320-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Dec 2020 22:12:42 +0000
Message-ID: <160694716274.26639.17366834597602784251@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Record the plane
 update times for debugging
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMTItMDIgMjE6Mjg6MTQpCj4gU2luY2Ugd2UgdHJ5
IGFuZCBlc3RpbWF0ZSBob3cgbG9uZyB3ZSByZXF1aXJlIHRvIHVwZGF0ZSB0aGUgcmVnaXN0ZXJz
IHRvCj4gcGVyZm9ybSBhIHBsYW5lIHVwZGF0ZSwgaXQgaXMgb2Ygdml0YWwgaW1wb3J0YW5jZSB0
aGF0IHdlIG1lYXN1cmUgdGhlCj4gZGlzdHJpYnV0aW9uIG9mIHBsYW5lIHVwZGF0ZXMgdG8gYmV0
dGVyIGd1aWRlIG91ciBlc3RpbWF0ZS4gSWYgd2UKPiB1bmRlcmVzdGltYXRlIGhvdyBsb25nIGl0
IHRha2VzIHRvIHBlcmZvcm0gdGhlIHBsYW5lIHVwZGF0ZSwgd2UgbWF5Cj4gc2xpcCBpbnRvIHRo
ZSBuZXh0IHNjYW5vdXQgZnJhbWUgY2F1c2luZyBhIHRlYXIuIElmIHdlIG92ZXJlc3RpbWF0ZSwg
d2UKPiBtYXkgdW5uZWNlc3NhcmlseSBkZWxheSB0aGUgdXBkYXRlIHRvIHRoZSBuZXh0IGZyYW1l
LCBjYXVzaW5nIHZpc2libGUKPiBqaXR0ZXIuCj4gCj4gUmVwbGFjZSB0aGUgd2FybmluZyB0aGF0
IHdlIGV4Y2VlZCBzb21lIGFyYml0cmFyeSB0aHJlc2hvbGQgZm9yIHRoZQo+IHZibGFuayB1cGRh
dGUgd2l0aCBhIGhpc3RvZ3JhbSBmb3IgZGVidWdmcy4KPiAKPiB2MjogQWRkIGEgcGVyLWNydGMg
ZGVidWdmcyBlbnRyeSBzbyB0aGF0IHRoZSBpbmZvcm1hdGlvbiBpcyBlYXNpZXIgdG8KPiBleHRy
YWN0IHdoZW4gdGVzdGluZyBpbmRpdmlkdWFsIENSVEMsIGFuZCBzbyB0aGF0IGl0IGNhbiBiZSBy
ZXNldCBiZWZvcmUKPiBhIHRlc3QuCj4gCj4gdjM6IEZsaXAgdGhlIGdyYXBoIG9uIGl0cyBzaWRl
OyBjcmVhdGVzIHNwYWNlIHRvIGxhYmVsIHRoZSB0aW1lIGF4aXMuCj4gCj4gVXBkYXRlczogNDY4
NAo+ICAgICAgICB8Cj4gICAgMXVzIHwKPiAgICAgICAgfAo+ICAgIDR1cyB8KioqKioqKioKPiAg
ICAgICAgfCoqKioqKioqKioKPiAgIDE2dXMgfCoqKioqKioqKioqCj4gICAgICAgIHwqKioqKgo+
ICAgNjZ1cyB8Cj4gICAgICAgIHwKPiAgMjYydXMgfAo+ICAgICAgICB8Cj4gICAgMW1zIHwKPiAg
ICAgICAgfAo+ICAgIDRtcyB8Cj4gICAgICAgIHwKPiAgIDE3bXMgfAo+ICAgICAgICB8Cj4gTWlu
IHVwZGF0ZTogNTkxOG5zCj4gTWF4IHVwZGF0ZTogNTQ3ODFucwo+IEF2ZXJhZ2UgdXBkYXRlOiAx
NjYyOG5zCj4gT3ZlcnJ1bnMgPiAyNTB1czogMAo+IAo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8xOTgyCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiAjdjIKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
