Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3927A2B1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC0A6E43A;
	Tue, 30 Jul 2019 08:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A236E43A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:01:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17721546-1500050 for multiple; Tue, 30 Jul 2019 09:01:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
 <6d6dae02-ceef-1517-e3af-2bc6a8d5c883@linux.intel.com>
In-Reply-To: <6d6dae02-ceef-1517-e3af-2bc6a8d5c883@linux.intel.com>
Message-ID: <156447368738.6373.5868749624839885661@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 09:01:27 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: move gt_cleanup_early out of
 gem_cleanup_early
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMCAwODoxOToxOCkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDAwOjQ3LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+ID4gV2UgZG9uJ3Qg
Y2FsbCB0aGUgaW5pdF9lYXJseSBmdW5jdGlvbiBmcm9tIHdpdGhpbiB0aGUgZ2VtIGNvZGUsIHNv
IHdlCj4gPiBzaG91bGRuJ3QgZG8gaXQgZm9yIHRoZSBjbGVhbnVwIGVpdGhlci4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwu
Y29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyICsr
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAyIC0tCj4gPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPiA+IGluZGV4IGYyZDNkNzU0YWYzNy4uOTM0ZTYwNWUyNDY2IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gQEAgLTk1MSw2ICs5NTEsNyBAQCBz
dGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiA+ICAgICAgIGludGVsX3VjX2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5n
dC51Yyk7Cj4gPiAgICAgICBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPiA+ICAg
ZXJyX3dvcmtxdWV1ZXM6Cj4gPiArICAgICBpbnRlbF9ndF9jbGVhbnVwX2Vhcmx5KCZkZXZfcHJp
di0+Z3QpOwo+ID4gICAgICAgaTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3ByaXYpOwo+ID4g
ICAgICAgcmV0dXJuIHJldDsKPiA+ICAgfQo+ID4gQEAgLTk2Niw2ICs5NjcsNyBAQCBzdGF0aWMg
dm9pZCBpOTE1X2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ID4gICAgICAgaW50ZWxfcG93ZXJfZG9tYWluc19jbGVhbnVwKGRldl9wcml2KTsK
PiA+ICAgICAgIGludGVsX3VjX2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7Cj4gPiAg
ICAgICBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPiA+ICsgICAgIGludGVsX2d0
X2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndCk7CgpOb3RlIHRoZSBjaGFuZ2UgaW4gbmFtaW5n
IGNvbnZlbnRpb24sIGludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2UoKS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
