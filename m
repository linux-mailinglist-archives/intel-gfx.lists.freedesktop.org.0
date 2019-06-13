Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AB43D72
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3984D89B62;
	Thu, 13 Jun 2019 15:42:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA3D89B62
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:42:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16891183-1500050 for multiple; Thu, 13 Jun 2019 16:42:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613151904.16256-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <156044053875.17012.733170391181015801@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 16:42:18 +0100
Subject: Re: [Intel-gfx] [RFC 26/28] drm/i915: Store ggtt pointer in intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNjoxOTowMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRoaXMgd2lsbCBiZWNv
bWUgdXNlZnVsIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+
IGluZGV4IDk5ZTMwZjhjZmJlMC4uYzkwOWFhZTZlNGIzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4gQEAgLTE4LDExICsxOCwxMyBAQAo+ICAjaW5jbHVk
ZSAiaW50ZWxfd2FrZXJlZi5oIgo+ICAKPiAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4gK3N0
cnVjdCBpOTE1X2dndHQ7Cj4gIHN0cnVjdCBpbnRlbF91bmNvcmU7Cj4gIAo+ICBzdHJ1Y3QgaW50
ZWxfZ3Qgewo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7Cj4gICAgICAg
ICBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmU7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9nZ3R0
ICpnZ3R0OwoKQnV0IG5vdCBtb3ZpbmcgaTkxNS0+Z2d0dCBpdHNlbGY/Cgo+ICAgICAgICAgc3Ry
dWN0IGk5MTVfZ3RfdGltZWxpbmVzIHsKPiAgICAgICAgICAgICAgICAgc3RydWN0IG11dGV4IG11
dGV4OyAvKiBwcm90ZWN0cyBsaXN0LCB0YWludGVkIGJ5IEdQVSAqLwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggZWEyNzZlZDkwMjFhLi45YWEyNTc3MDA4MWMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0zNjE4LDYgKzM2MTgsNyBAQCBz
dGF0aWMgaW50IGdndHRfaW5pdF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ICAgICAgICAg
aTkxNV9hZGRyZXNzX3NwYWNlX2luaXQodm0sIFZNX0NMQVNTX0dHVFQpOwo+ICAKPiAgICAgICAg
IHZtLT5pc19nZ3R0ID0gdHJ1ZTsKPiArICAgICAgIHZtLT5ndC0+Z2d0dCA9IGdndHQ7CgpUaGlz
IGxvb2tzIHZlcnkgbXVjaCB0byBiZSBhIGxheWVyIHZpb2xhdGlvbi4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
