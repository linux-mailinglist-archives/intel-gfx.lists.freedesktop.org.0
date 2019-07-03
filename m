Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A69B5E315
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 13:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B48F6E120;
	Wed,  3 Jul 2019 11:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958F86E120
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 11:47:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17113218-1500050 for multiple; Wed, 03 Jul 2019 12:47:10 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <629db077-98c1-d547-e665-2ec3cdac542d@linux.intel.com>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-3-chris@chris-wilson.co.uk>
 <629db077-98c1-d547-e665-2ec3cdac542d@linux.intel.com>
Message-ID: <156215442563.20783.9266174576167797969@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 12:47:05 +0100
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915/gt: Use caller provided
 forcewake for intel_mocs_init_engine
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wMyAxMjoyMzo1MikKPiAKPiBPbiAwMy8w
Ny8yMDE5IDEwOjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBEdXJpbmcgcG9zdC1yZXNldCBy
ZXN1bWUsIHdlIGNhbGwgaW50ZWxfbW9jc19pbml0X2VuZ2luZSB0byByZWluaXRpYWxpc2UKPiA+
IHRoZSBNT0NTIHJlZ2lzdGVycy4gU3VwcmlzaW5nbHksIGVzcGVjaWFsbHkgd2hlbiBlbmhhbmNl
ZCBieSBsb2NrZGVwLAo+ID4gdGhlIGFjcXVpc2l0aW9uIG9mIHRoZSBmb3JjZXdha2UgbG9jayBh
cm91bmQgZWFjaCByZWdpc3RlciB3cml0ZSB0YWtlcyBhCj4gPiBzdWJzdGFudGlhbCBwb3J0aW9u
IG9mIHRoZSByZXNldCB0aW1lLiBXZSBkb24ndCBuZWVkIHRvIHVzZSB0aGUKPiA+IGluZGl2aWR1
YWwgZm9yY2V3YWtlIGhlcmUgYXMgd2UgY2FuIGFzc3VtZSB0aGF0IHRoZSBjYWxsZXIgaXMgaG9s
ZGluZyBhCj4gPiBibGFua2V0IGZvcmNld2FrZSBmb3IgdGhlIHJlc2V0JnJlc3VtZSBhbmQgdGhl
IHJlc3VtZSBpcyBzZXJpYWxpc2VkLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCAxNSArKysrKysrKystLS0tLS0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ID4gaW5kZXggYWU2Y2JmMGQ1MTdjLi4yOTBhNWU5
YjkwYjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ID4gQEAg
LTM0Niw2ICszNDYsOSBAQCB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAgICAgdW5zaWduZWQgaW50IGluZGV4Owo+ID4gICAg
ICAgdTMyIHVudXNlZF92YWx1ZTsKPiA+ICAgCj4gPiArICAgICAvKiBDYWxsZWQgdW5kZXIgYSBi
bGFua2V0IGZvcmNld2FrZSAqLwo+ID4gKyAgICAgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHVu
Y29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gPiArCj4gCj4gQXNzZXJ0IGlzIHN0cmljdGx5IHNwZWFr
aW5nIGEgYml0IHdlYWsgc2luY2UgZm9yY2V3YWtlIHN0YXR1cyBjYW4gCj4gdGhlb3JldGljYWxs
eSBjaGFuZ2UgdW50aWwgdGhlIGFjdHVhbCBhY2Nlc3MgYmVsb3cuIEJ1dCBpbiBvdXIgY3VycmVu
dCAKPiBjb2RlIHdlIGluZGVlZCBob2xkIGl0IGZvciB0aGUgd2hvbGUgcmVzZXQuCgpZb3Ugd2Fu
dCB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIGFuIGV4cGxpY2l0IGhvbGQgYnkgdGhlIGNhbGxlciBh
bmQgdGhlCmF1dG8uCiAKPiBJIGRvbid0IGhhdmUgYW55IGFjdHVhbCBpZGVhcyBvbiBob3cgdG8g
ZnVuZGFtZW50YWxseSBpbXByb3ZlIHRoZSAKPiBhc3NlcnQuIFRob3VnaHQgdG8gaGF2ZSBpdCBh
ZnRlciB0aGUgd3JpdGVzIGlzIHRoZSBvbmx5IHRoaW5nIHdoaWNoIGNhbWUgCj4gdG8gbWluZC4g
VGhvdWdodHM/CgpJIGRlZmluaXRlbHkgcHJlZmVyIGhhdmluZyBpdCB1cGZyb250IHRvIGRvY3Vt
ZW50IHRoZSBmdW5jdGlvbgpwcmVjb25kaXRpb25zLCBhbmQgc28gd291bGQgcHJlZmVyIGlmIHRo
ZSBhc3NlcnQgYWN0dWFsbHkgZGlkIGFzc2VydCBhbgpleHBsaWNpdCBmb3JjZXdha2UgYXMgaXQg
aXMgbWVhbnQgdG8gZG8gOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
