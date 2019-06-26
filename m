Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F0D56ADC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064A56E437;
	Wed, 26 Jun 2019 13:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9540D6E437
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:39:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17031724-1500050 for multiple; Wed, 26 Jun 2019 14:39:31 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8736jw5v22.fsf@gaia.fi.intel.com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-3-chris@chris-wilson.co.uk>
 <8736jw5v22.fsf@gaia.fi.intel.com>
Message-ID: <156155636812.26855.17162523955007818580@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 14:39:28 +0100
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/selftests: Fixup atomic reset
 checking
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE0OjM1OjAxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXZSByZXF1aXJlIHRo
YXQgdGhlIGludGVsX2dwdV9yZXNldCgpIHdhcyBhdG9taWMsIG5vdCB0aGUgd2hvbGUgb2YKPiA+
IGk5MTVfcmVzZXQoKSB3aGljaCBpcyBndWFyZGVkIGJ5IGEgbXV0ZXguIEhvd2V2ZXIsIHdlIGRv
IHJlcXVpcmUgdGhhdAo+ID4gaTkxNV9yZXNldF9lbmdpbmUoKSBpcyBhdG9taWMgZm9yIHVzZSBm
cm9tIHdpdGhpbiB0aGUgc3VibWlzc2lvbiB0YXNrbGV0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYyB8IDY1ICsrKysrKysrKysrKysr
KysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYwo+
ID4gaW5kZXggNjRjMmM4YWI2NGVjLi42NDFjZjNhZWU4ZDUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCj4gPiBAQCAtNzMsMTEgKzczLDEzIEBAIHN0
YXRpYyBpbnQgaWd0X2F0b21pY19yZXNldCh2b2lkICphcmcpCj4gPiAgICAgICBmb3IgKHAgPSBp
Z3RfYXRvbWljX3BoYXNlczsgcC0+bmFtZTsgcCsrKSB7Cj4gPiAgICAgICAgICAgICAgIEdFTV9U
UkFDRSgiaW50ZWxfZ3B1X3Jlc2V0IHVuZGVyICVzXG4iLCBwLT5uYW1lKTsKPiA+ICAKPiA+IC0g
ICAgICAgICAgICAgcC0+Y3JpdGljYWxfc2VjdGlvbl9iZWdpbigpOwo+ID4gICAgICAgICAgICAg
ICByZXNldF9wcmVwYXJlKGk5MTUpOwo+ID4gKyAgICAgICAgICAgICBwLT5jcml0aWNhbF9zZWN0
aW9uX2JlZ2luKCk7Cj4gPiArCj4gPiAgICAgICAgICAgICAgIGVyciA9IGludGVsX2dwdV9yZXNl
dChpOTE1LCBBTExfRU5HSU5FUyk7Cj4gPiAtICAgICAgICAgICAgIHJlc2V0X2ZpbmlzaChpOTE1
KTsKPiA+ICsKPiA+ICAgICAgICAgICAgICAgcC0+Y3JpdGljYWxfc2VjdGlvbl9lbmQoKTsKPiA+
ICsgICAgICAgICAgICAgcmVzZXRfZmluaXNoKGk5MTUpOwo+ID4gIAo+ID4gICAgICAgICAgICAg
ICBpZiAoZXJyKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgcHJfZXJyKCJpbnRlbF9ncHVf
cmVzZXQgZmFpbGVkIHVuZGVyICVzXG4iLCBwLT5uYW1lKTsKPiA+IEBAIC05NSwxMiArOTcsNzEg
QEAgc3RhdGljIGludCBpZ3RfYXRvbWljX3Jlc2V0KHZvaWQgKmFyZykKPiA+ICAgICAgIHJldHVy
biBlcnI7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbnQgaWd0X2F0b21pY19lbmdpbmVfcmVz
ZXQodm9pZCAqYXJnKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gYXJnOwo+ID4gKyAgICAgY29uc3QgdHlwZW9mKCppZ3RfYXRvbWljX3BoYXNlcykgKnA7
Cj4gCj4gSSBkaWQgYWRtaXJlIHRoZSBuYXN0eW5lc3Mgb2YgdGhpcyBhcnJheS4KPiAKPiA+ICsg
ICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiA+ICsgICAgIGVudW0gaW50ZWxf
ZW5naW5lX2lkIGlkOwo+ID4gKyAgICAgaW50IGVyciA9IDA7Cj4gPiArCj4gPiArICAgICAvKiBD
aGVjayB0aGF0IHRoZSByZXNldHMgYXJlIHVzYWJsZSBmcm9tIGF0b21pYyBjb250ZXh0ICovCj4g
PiArCj4gPiArICAgICBpZiAoIWludGVsX2hhc19yZXNldF9lbmdpbmUoaTkxNSkpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gKyAgICAgaWYgKFVTRVNfR1VDX1NVQk1JU1NJ
T04oaTkxNSkpCj4gPiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gKyAgICAgaW50
ZWxfZ3RfcG1fZ2V0KCZpOTE1LT5ndCk7Cj4gPiArICAgICBpZ3RfZ2xvYmFsX3Jlc2V0X2xvY2so
aTkxNSk7Cj4gPiArCj4gPiArICAgICAvKiBGbHVzaCBhbnkgcmVxdWVzdHMgYmVmb3JlIHdlIGdl
dCBzdGFydGVkIGFuZCBjaGVjayBiYXNpY3MgKi8KPiA+ICsgICAgIGlmICghaWd0X2ZvcmNlX3Jl
c2V0KGk5MTUpKQo+ID4gKyAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4gCj4gSSB3b3Vs
ZCBzdGlsbCBnbyBvdXQgd2l0aCBlcnJvciBpZiB0aGUgcHJlcmVxdWlzaXRlcwo+IGFyZSBub3Qg
bWV0PwoKSXQncyBqdXN0IHNvIHRoYXQgdGhlIHNlbGZ0ZXN0cyByZXBvcnQgZ3JlZW4gZXhjZXB0
IGZvciB0aGUgMSBvciAyIHRoYXQKZXhwbGljaXRseSByZXBvcnQgYXMgcmVkIGlmIHRoZSBtYWNo
aW5lIGlzIHRlcm1pbmFsbHkgd2VkZ2VkIGF0IGJvb3QuCgpJdCdzIGp1c3QgZGFtYWdlIGNvbnRy
b2wuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
