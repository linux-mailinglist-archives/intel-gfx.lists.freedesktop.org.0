Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 012935CD98
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1480E89471;
	Tue,  2 Jul 2019 10:34:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A08889471
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 10:34:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17097149-1500050 for multiple; Tue, 02 Jul 2019 11:34:15 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702102313.9333-2-tvrtko.ursulin@linux.intel.com>
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
 <20190702102313.9333-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <156206365237.2466.8976003981692121208@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 11:34:12 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Rework some interrupt
 handling functions to take intel_gt
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wMiAxMToyMzoxMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFNvbWUgaW50ZXJydXB0
IGhhbmRsaW5nIGZ1bmN0aW9ucyBhbHJlYWR5IGhhdmUgZ3QgaW4gdGhlaXIgbmFtZXMKPiBzdWdn
ZXN0aW5nIHRoZW0gYXMgb2J2aW91cyBjYW5kaWRhdGVzIHRvIG1ha2UgdGhlbSB0YWtlIHN0cnVj
dCBpbnRlbF9ndAo+IGluc3RlYWQgb2YgaTkxNS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYXVsbyBa
YW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KPiBDby1hdXRob3JlZC1ieTogUGF1bG8g
WmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCj4gIHN0YXRpYyB2b2lk
Cj4gLWdlbjExX290aGVyX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29u
c3QgaTkxNSwKPiAtICAgICAgICAgICAgICAgICAgICAgICBjb25zdCB1OCBpbnN0YW5jZSwgY29u
c3QgdTE2IGlpcikKPiArZ2VuMTFfb3RoZXJfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2d0ICpn
dCwgY29uc3QgdTggaW5zdGFuY2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgdTE2
IGlpcikKPiAgewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+
aTkxNTsKPiArCj4gICAgICAgICBpZiAoaW5zdGFuY2UgPT0gT1RIRVJfR1VDX0lOU1RBTkNFKQo+
ICAgICAgICAgICAgICAgICByZXR1cm4gZ2VuMTFfZ3VjX2lycV9oYW5kbGVyKGk5MTUsIGlpcik7
CgpUaGF0IGxvb2tzIGxpa2UgYSBjYW5kaWRhdGUgZm9yIGd0IGFzIHdlbGwuIEV2ZW4gZm9yIHRo
ZSBndWMsIHRoZQppbnRlcnJ1cHQgdmVjdG9yIGlzIEdUIGNlbnRyaWMuIEkgd2FzIGhvcGluZyB3
ZSBjb3VsZCBwbGFjZSBndWMvIHBhcmFsbGVsCnRvIGd0LywgYnV0IGl0IGxvb2tzIGxpa2UgaXQg
d2lsbCBpbmRlZWQgYmUgYSBjaGlsZCBvZiBpbnRlbF9ndC4KClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
