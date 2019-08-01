Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B50D7DE2D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 16:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD046E6AF;
	Thu,  1 Aug 2019 14:45:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528A56E6AF
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 14:45:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17790951-1500050 for multiple; Thu, 01 Aug 2019 15:45:44 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801141732.31335-4-tvrtko.ursulin@linux.intel.com>
References: <20190801141732.31335-1-tvrtko.ursulin@linux.intel.com>
 <20190801141732.31335-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156467074206.6045.8379630893064932850@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 15:45:42 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/pmu: Make get_rc6 take intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxNToxNzozMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFJDNiBpcyBhIEdUIHN0
YXRlIHNvIG1ha2UgdGhlIGZ1bmN0aW9uIHBhcmFtZXRlciByZWZsZWN0IHRoYXQuCj4gCj4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDEyICsrKysrKystLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYwo+IGluZGV4IDVjZjlhNDdhMGM0My4uZTBlMDE4MGJjYTdjIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gQEAgLTQzMSw4ICs0MzEsOSBAQCBzdGF0aWMg
aW50IGk5MTVfcG11X2V2ZW50X2luaXQoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50KQo+ICAgICAg
ICAgcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLXN0YXRpYyB1NjQgX19nZXRfcmM2KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+ICtzdGF0aWMgdTY0IF9fZ2V0X3JjNihzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQo+ICB7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0
LT5pOTE1OwoKVGhpcyB0aWVzIG5pY2VseSBpbnRvIGEgcGF0Y2ggdGhhdCBtb3ZlZCB0aGUgcmM2
IHN0YXRlIGJlbmVhdGgKaW50ZWxfZ3QuLi4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
