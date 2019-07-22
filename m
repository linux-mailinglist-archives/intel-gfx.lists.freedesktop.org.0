Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F707059F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0E689850;
	Mon, 22 Jul 2019 16:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C5489850
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:42:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17509944-1500050 for multiple; Mon, 22 Jul 2019 17:42:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-14-chris@chris-wilson.co.uk>
 <cdae186f-8f1f-7d1d-dd18-b129ab8053ae@linux.intel.com>
In-Reply-To: <cdae186f-8f1f-7d1d-dd18-b129ab8053ae@linux.intel.com>
Message-ID: <156381374828.31349.5885498722108116311@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 17:42:28 +0100
Subject: Re: [Intel-gfx] [PATCH 14/20] drm/i915/gt: Track timeline
 activeness in enter/exit
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxNzoxNDoyMykKPiAKPiBPbiAxOC8w
Ny8yMDE5IDA4OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ID4gaW5kZXggODg0ZGZjMWNiMDMzLi5hY2ViOTkwYWUzYjkgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0zMjUzLDYgKzMyNTMsOCBA
QCBzdGF0aWMgdm9pZCB2aXJ0dWFsX2NvbnRleHRfZW50ZXIoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlKQo+ID4gICAKPiA+ICAgICAgIGZvciAobiA9IDA7IG4gPCB2ZS0+bnVtX3NpYmxpbmdzOyBu
KyspCj4gPiAgICAgICAgICAgICAgIGludGVsX2VuZ2luZV9wbV9nZXQodmUtPnNpYmxpbmdzW25d
KTsKPiA+ICsKPiA+ICsgICAgIGludGVsX3RpbWVsaW5lX2VudGVyKGNlLT5yaW5nLT50aW1lbGlu
ZSk7Cj4gCj4gSGVyZSB3ZSBjb3VsZG4ndCBlbnRlciBhbGwgc2libGluZyBjb250ZXh0cyBpbnN0
ZWFkPyBXb3VsZCBiZSBhIGJpdCAKPiB3YXN0ZWZ1bCBJIGd1ZXNzLiBBbmQgdGhlcmUgbXVzdCBi
ZSBhIHBsYWNlIHdoZXJlIGl0IGlzIGFscmVhZHkgZG9uZS4gCj4gQnV0IGNhbid0IGJlIG9uIHBp
Y2tpbmcgdGhlIGVuZ2luZSwgd2hlcmUgaXMgaXQ/CgpUaGVyZSdzIG9ubHkgdGhlIG9uZSBjb250
ZXh0IChyaW5nLCBhbmQgdGltZWxpbmUpLgoKPiA+ICt2b2lkIGludGVsX3RpbWVsaW5lX2VudGVy
KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGludGVs
X2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxpbmVzOwo+ID4gKwo+ID4g
KyAgICAgR0VNX0JVR19PTighdGwtPnBpbl9jb3VudCk7Cj4gPiArICAgICBpZiAodGwtPmFjdGl2
ZV9jb3VudCsrKQo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiArICAgICBHRU1fQlVHX09O
KCF0bC0+YWN0aXZlX2NvdW50KTsgLyogb3ZlcmZsb3c/ICovCj4gPiArCj4gPiArICAgICBtdXRl
eF9sb2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKPiA+ICsgICAgIGxpc3RfYWRkKCZ0bC0+bGluaywg
JnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QpOwo+ID4gKyAgICAgbXV0ZXhfdW5sb2NrKCZ0aW1lbGlu
ZXMtPm11dGV4KTsKPiA+ICt9Cj4gPiArCj4gPiArdm9pZCBpbnRlbF90aW1lbGluZV9leGl0KHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGludGVsX2d0
X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxpbmVzOwo+ID4gKwo+ID4gKyAg
ICAgR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3VudCk7Cj4gPiArICAgICBpZiAoLS10bC0+YWN0
aXZlX2NvdW50KQo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiArCj4gPiArICAgICBtdXRl
eF9sb2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKPiA+ICsgICAgIGxpc3RfZGVsKCZ0bC0+bGluayk7
Cj4gPiArICAgICBtdXRleF91bmxvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOwo+IAo+IFNvIHdlIGVu
ZCB1cCB3aXRoIG9uZSBsb2NrIHByb3RlY3RpbmcgdGwtPmFjdGl2ZV9jb3VudCBhbmQgYW5vdGhl
ciBmb3IgCj4gdGhlIGxpc3Qgb2YgYWN0aXZlIHRpbWVsaW5lcz8KCnRsLT5hY3RpdmVfY291bnQg
aXMgbG9jYWwgdG8gdGhlIHRpbWVsaW5lCnRsLT5saW5rLyBndC0+dGltZWxpbmVzLmFjdGl2ZV9s
aXN0IGlzIG9uIHRoZSBHVC4KClNvIHllcywgd2UgaGF2ZSBzZXBhcmF0ZSBsb2NrcyBzbyB0aGF0
IHdlIGNhbiBzdWJtaXQgdG8gbXVsdGlwbGUKaW5kZXBlbmRlbnQgY29udGV4dHMgYW5kIGVuZ2lu
ZXMgY29uY3VycmVudGx5LgoKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF90aW1lbGluZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
dGltZWxpbmVfdHlwZXMuaAo+ID4gaW5kZXggOWE3MWFlYTdhMzM4Li5iODIwZWU3NmI3ZjUgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBl
cy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBl
cy5oCj4gPiBAQCAtNTgsNiArNTgsNyBAQCBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgewo+ID4gICAg
ICAgICovCj4gPiAgICAgICBzdHJ1Y3QgaTkxNV9zeW5jbWFwICpzeW5jOwo+ID4gICAKPiA+ICsg
ICAgIHVuc2lnbmVkIGludCBhY3RpdmVfY291bnQ7Cj4gCj4gSXMgaXQgYmVjb21pbmcgbm9uLW9i
dmlvdXMgd2hhdCBpcyBwaW5fY291bnQgYW5kIHdoYXQgaXMgYWN0aXZlX2NvdW50PyBJIAo+IHN1
Z2dlc3Qgc29tZSBjb21tZW50cyBkcm9wcGVkIGFsb25nIHRoZSBtZW1iZXJzIGhlcmUuCgpwaW5f
Y291bnQgaXMgZm9yIHRoZSBwaW5uaW5nLCBhbmQgYWN0aXZlX2NvdW50IGlzIGZvciBhY3Rpdml0
eSA6KQpUaGFua3MgdG8gdGhlIG5lZWQgZm9yIHBlcm1hLXBpbm5lZCBjb250ZXh0cywgd2UgaGF2
ZSB0aGUgdHdvIGxheWVycwp3aGVyZSB3ZSB3b3VsZCBoYXZlIGhvcGVkIGZvciBvbmUuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
