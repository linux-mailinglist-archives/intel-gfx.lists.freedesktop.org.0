Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F98DD91ED
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46466E974;
	Wed, 16 Oct 2019 13:03:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B896E974
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:03:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18857148-1500050 for multiple; Wed, 16 Oct 2019 14:03:36 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191016122843.9429-2-tvrtko.ursulin@linux.intel.com>
References: <20191016122843.9429-1-tvrtko.ursulin@linux.intel.com>
 <20191016122843.9429-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157123101407.22469.10360475997002619905@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 16 Oct 2019 14:03:34 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Store engine mask in intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNiAxMzoyODo0MikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1lZGl1bSB0ZXJtIGdv
YWwgaXMgdG8gZWxpbWluYXRlIHRoZSBpOTE1LT5lbmdpbmVbXSBhcnJheSBhbmQgdG8gZ2V0IHRo
ZXJlCj4gd2UgaGF2ZSByZWNlbnRseSBpbnRyb2R1Y2VkIGVxdWl2YWxlbnQgYXJyYXkgaW4gaW50
ZWxfZ3QuIE5vdyB3ZSBuZWVkIHRvCj4gbWlncmF0ZSB0aGUgY29kZSBmdXJ0aGVyIHRvd2FyZHMg
dGhpcyBzdGF0ZS4KPiAKPiBUbyBhbGxvdyBmb3JfZWFjaF9lbmdpbmVfbWFza2VkIGNhbGwgc2l0
ZXMgdG8gcGFzcyBpbiBndCBpbnN0ZWFkIG9mIGk5MTUKPiB3ZSBuZWVkIHRvIGhhdmUgYSBjb3B5
IG9mIElOVEVMX0lORk8oKS0+ZW5naW5lX21hc2sgaW4gaW50ZWxfZ3QuCj4gCj4gRm9yIHRoaXMg
dG8gd29yayB3ZSBhbHNvIG5lZWQgdG8gdXNlIGVuZ2luZS0+aWQgYXMgaW5kZXggd2hlbiBwb3B1
bGF0aW5nCj4gdGhlIGd0LT5lbmdpbmVbXSBhcnJheS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3VzZXIuYyB8IDQgKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jICAgICAgICAgIHwgNSArKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5oICAgICAgICAgIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmggICAgfCA0ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyAgICAgICAgICAgICB8IDIgKysKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3VzZXIuYwo+IGluZGV4IDc3Y2Q1ZGU4MzkzMC4uMDk5YWJhZTg2MGVjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCj4gQEAgLTE4Myw4
ICsxODMsOCBAQCBzdGF0aWMgdm9pZCBhZGRfbGVnYWN5X3Jpbmcoc3RydWN0IGxlZ2FjeV9yaW5n
ICpyaW5nLAo+ICAgICAgICAgaWYgKHVubGlrZWx5KGlkeCA9PSAtMSkpCj4gICAgICAgICAgICAg
ICAgIHJldHVybjsKPiAgCj4gLSAgICAgICBHRU1fQlVHX09OKGlkeCA+PSBBUlJBWV9TSVpFKHJp
bmctPmd0LT5lbmdpbmUpKTsKPiAtICAgICAgIHJpbmctPmd0LT5lbmdpbmVbaWR4XSA9IGVuZ2lu
ZTsKClRoaXMgaXMgdXNlZCBmb3IgdGhlIGxlZ2FjeSB1YXBpIG1hcHBpbmcuIFNvIHdlIG5lZWQg
dG8gYWRqdXN0IHRoZSBsb29wCmluIGk5MTVfZ2VtX2NvbnRleHQuYzo6ZGVmYXVsdF9lbmdpbmVz
KCkgdG8gdXNlIGVuZ2luZS0+bGVnYWN5X2lkeAppbnN0ZWFkIG9mIGlkLiBBbmQgYWxsIG90aGVy
IHVzZXJzIG9mIGVuZ2luZS0+bGVnYWN5X2lkeCBhcmUgbm93CmJhY2t3YXJkcy4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
