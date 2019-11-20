Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2146B1030A6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 01:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FC86E91F;
	Wed, 20 Nov 2019 00:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC16B6E91F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 00:21:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19264734-1500050 for multiple; Wed, 20 Nov 2019 00:21:22 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
References: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
Message-ID: <157420927906.15427.11611745082531859894@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 20 Nov 2019 00:21:19 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: re-init the GT in
 live_gt_pm
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTExLTIwIDAwOjA0OjI1KQo+IFdo
ZW4gR3VDIGlzIGluIHVzZSB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSBpdCBpcyByZS1sb2FkZWQgYmVm
b3JlIHRoZSBjYWxsCj4gdG8gZ3RfcmVzdW1lLCBvdGhlcndpc2UgY29tbXVuaWNhdGlvbiBmcm9t
IHRoZSBlbmdpbmVzIHRvIHRoZSBHdUMgd2lsbAo+IG5vdCBiZSBwcm9jZXNzZWQsIHdoaWNoIGJs
b2NrcyB0aGUgZW5naW5lcyBmcm9tIGN0eCBzd2l0Y2hpbmcgYW5kIGZyb20KPiBiZWluZyByZXNl
dC4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyMjA1Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIHwgOSAr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0uYwo+IGluZGV4IGQxNzUyZjE1NzAyYS4uMGJi
MTdjODA2ZGZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2d0X3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5j
Cj4gQEAgLTExLDggKzExLDExIEBAIHN0YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9pZCAqYXJn
KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOwo+ICAgICAgICAgSUdU
X1RJTUVPVVQoZW5kX3RpbWUpOwo+ICsgICAgICAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4g
ICAgICAgICBpbnQgZXJyOwo+ICAKPiArICAgICAgIHdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3Bt
X2dldChndC0+dW5jb3JlLT5ycG0pOwoKVGhhdCBkZWZlYXRzIHRoZSBwb2ludCBvZiBndCBwbSwg
bm8/Cgo+ICsKPiAgICAgICAgIC8qIERvIHNldmVyYWwgc3VzcGVuZC9yZXN1bWUgY3ljbGVzIHRv
IGNoZWNrIHdlIGRvbid0IGV4cGxvZGUhICovCj4gICAgICAgICBkbyB7Cj4gICAgICAgICAgICAg
ICAgIGludGVsX2d0X3N1c3BlbmRfcHJlcGFyZShndCk7Cj4gQEAgLTI1LDYgKzI4LDEwIEBAIHN0
YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9pZCAqYXJnKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGJyZWFrOwo+ICAgICAgICAgICAgICAgICB9Cj4gIAo+ICsgICAgICAgICAgICAgICBlcnIg
PSBpbnRlbF9ndF9pbml0X2h3KGd0KTsKCkhtbS4gSSBoYXZlIHRoYXQgYXMgcGFydCBvZiBpbnRl
bF9ndF9yZXN1bWUuICBXaGljaCBhbHNvIHB1bGxzIGl0IGludG8KdGhlIHBtLgoKSSB0aGluayBJ
IHByZWZlciBteSBwbGFuL3BhdGNoZXMgOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
