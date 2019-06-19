Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB544BBD0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D026E418;
	Wed, 19 Jun 2019 14:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC566E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:38:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16954325-1500050 for multiple; Wed, 19 Jun 2019 15:38:15 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619134435.11141-1-chris@chris-wilson.co.uk>
 <93fe799e-6b4d-3b55-5aec-4fb718289366@linux.intel.com>
In-Reply-To: <93fe799e-6b4d-3b55-5aec-4fb718289366@linux.intel.com>
Message-ID: <156095509683.21217.12617340484966683263@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 15:38:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep rings pinned while the
 context is active
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNTozNTo0MSkKPiAKPiBPbiAxOS8w
Ni8yMDE5IDE0OjQ0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZW1lbWJlciB0byBrZWVwIHRo
ZSByaW5ncyBwaW5uZWQgYXMgd2VsbCBhcyB0aGUgY29udGV4dCBpbWFnZSB1bnRpbCB0aGUKPiA+
IEdQVSBpcyBubyBsb25nZXIgYWN0aXZlLgo+ID4gCj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTQ2Cj4gPiBGaXhlczogY2U0NzZj
ODBiOGJmICgiZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBu
ZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRjaCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2NvbnRleHQuYyB8IDE3ICsrKysrKysrKysrKy0tLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICB8ICA5ICstLS0tLS0tLQo+ID4gICAyIGZpbGVz
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gPiBpbmRleCAyYzQ1NGYyMjdjMmUu
LmI4NGYxMWE1MmQ4OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jCj4gPiBAQCAtMTI2LDYgKzEyNiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2NvbnRleHRf
cmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQo+ID4gICAgICAgaWYgKGNlLT5zdGF0
ZSkKPiA+ICAgICAgICAgICAgICAgX19jb250ZXh0X3VucGluX3N0YXRlKGNlLT5zdGF0ZSk7Cj4g
PiAgIAo+ID4gKyAgICAgaW50ZWxfcmluZ191bnBpbihjZS0+cmluZyk7Cj4gPiAgICAgICBpbnRl
bF9jb250ZXh0X3B1dChjZSk7Cj4gPiAgIH0KPiA+ICAgCj4gPiBAQCAtMTYwLDE1ICsxNjEsMTYg
QEAgaW50IGludGVsX2NvbnRleHRfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLCB1bnNpZ25lZCBsb25nIGZsYWdzKQo+ID4gICAKPiA+ICAgICAgIGludGVsX2NvbnRleHRf
Z2V0KGNlKTsKPiA+ICAgCj4gPiArICAgICBlcnIgPSBpbnRlbF9yaW5nX3BpbihjZS0+cmluZyk7
Cj4gPiArICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9wdXQ7Cj4gPiAr
Cj4gPiAgICAgICBpZiAoIWNlLT5zdGF0ZSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4g
PiAgIAo+ID4gICAgICAgZXJyID0gX19jb250ZXh0X3Bpbl9zdGF0ZShjZS0+c3RhdGUsIGZsYWdz
KTsKPiA+IC0gICAgIGlmIChlcnIpIHsKPiA+IC0gICAgICAgICAgICAgaTkxNV9hY3RpdmVfY2Fu
Y2VsKCZjZS0+YWN0aXZlKTsKPiA+IC0gICAgICAgICAgICAgaW50ZWxfY29udGV4dF9wdXQoY2Up
Owo+ID4gLSAgICAgICAgICAgICByZXR1cm4gZXJyOwo+ID4gLSAgICAgfQo+ID4gKyAgICAgaWYg
KGVycikKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfcHV0Owo+IAo+IGludGVsX3JpbmdfdW5w
aW4/CgpHYWggSSBkaWQuLi4gQSBtaXN0YWtlIHdoZW4gcmViYXNpbmcgOigKLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
