Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0574B8FB1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 14:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330AB6E837;
	Fri, 20 Sep 2019 12:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47BB06E837
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:23:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18558906-1500050 for multiple; Fri, 20 Sep 2019 13:22:15 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190920121821.7223-1-chris@chris-wilson.co.uk>
References: <20190920121821.7223-1-chris@chris-wilson.co.uk>
Message-ID: <156898213374.1196.4409741985922996220@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Sep 2019 13:22:13 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark contents as dirty on a write
 fault
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjAgMTM6MTg6MjEpCj4gU2luY2UgZHJvcHBp
bmcgdGhlIHNldC10by1ndHQtZG9tYWluIGluIGNvbW1pdCBhNjc5ZjU4ZDA1MTAgKCJkcm0vaTkx
NToKPiBGbHVzaCBwYWdlcyBvbiBhY3F1aXNpdGlvbiIpLCB3ZSBubyBsb25nZXIgbWFyayB0aGUg
Y29udGVudHMgYXMgZGlydHkgb24KPiBhIHdyaXRlIGZhdWx0LiBUaGlzIGhhcyB0aGUgaXNzdWUg
b2YgdXMgdGhlbiBub3QgbWFya2luZyB0aGUgcGFnZXMgYXMKPiBkaXJ0eSBvbiByZWxlYXNpbmcg
dGhlIGJ1ZmZlciwgd2hpY2ggbWVhbnMgdGhlIGNvbnRlbnRzIGFyZSBub3Qgd3JpdHRlbgo+IG91
dCB0byB0aGUgc3dhcCBkZXZpY2UgKHNob3VsZCB3ZSBldmVyIHBpY2sgdGhhdCBidWZmZXIgYXMg
YSB2aWN0aW0pLgo+IE5vdGFibHksIHRoaXMgaXMgdmlzaWJsZSBpbiB0aGUgZHVtYiBidWZmZXIg
aW50ZXJmYWNlIHVzZWQgZm9yIGN1cnNvcnMuCj4gSGF2aW5nIHVwZGF0ZWQgdGhlIGN1cnNvciBj
b250ZW50cyB2aWEgbW1hcCwgYW5kIHN3YXBwZWQgYXdheSwgaWYgdGhlCj4gc2hyaW5rZXIgc2hv
dWxkIGV2aWN0IHRoZSBvbGQgY3Vyc29yLCB1cG9uIG5leHQgcmV1c2UsIHRoZSBjdXJzb3Igd291
bGQKPiBiZSBpbnZpc2libGUuCgpIbW0sIEkgdGhpbmsgdGhlIGR1bWIgaW50ZXJmYWNlIG1heSBi
ZSBtaXNzaW5nIGEgZmV3IHN0ZXBzIGFyb3VuZCB0aGUKcGxhY2UgdG8gZW5zdXJlIHRoZSBjb250
ZW50cyBhcmUgZmx1c2hlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
