Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D51798792
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDC36E3B0;
	Wed, 21 Aug 2019 22:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484676E3B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:56:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18220056-1500050 for multiple; Wed, 21 Aug 2019 23:56:35 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820230544.170010-10-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-10-stuart.summers@intel.com>
Message-ID: <156642819393.20466.11132905257582857588@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:56:33 +0100
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Refactor instdone loops on
 new subslice functions
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMSAwMDowNTo0MikKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+IGluZGV4IGE4MmNlYTk1YzJm
Mi4uOTliZWUwNmNkYmRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3R5cGVzLmgKPiBAQCAtNTc2LDIwICs1NzYsMTkgQEAgaW50ZWxfZW5naW5lX2lzX3Zp
cnR1YWwoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgICAgICAgcmV0
dXJuIGVuZ2luZS0+ZmxhZ3MgJiBJOTE1X0VOR0lORV9JU19WSVJUVUFMOwo+ICB9Cj4gIAo+IC0j
ZGVmaW5lIGluc3Rkb25lX3NsaWNlX21hc2soZGV2X3ByaXZfXykgXAo+IC0gICAgICAgKElTX0dF
TihkZXZfcHJpdl9fLCA3KSA/IFwKPiAtICAgICAgICAxIDogUlVOVElNRV9JTkZPKGRldl9wcml2
X18pLT5zc2V1LnNsaWNlX21hc2spCj4gLQo+IC0jZGVmaW5lIGluc3Rkb25lX3N1YnNsaWNlX21h
c2soZGV2X3ByaXZfXykgXAo+IC0gICAgICAgKElTX0dFTihkZXZfcHJpdl9fLCA3KSA/IFwKPiAt
ICAgICAgICAxIDogUlVOVElNRV9JTkZPKGRldl9wcml2X18pLT5zc2V1LnN1YnNsaWNlX21hc2tb
MF0pCj4gLQo+IC0jZGVmaW5lIGZvcl9lYWNoX2luc3Rkb25lX3NsaWNlX3N1YnNsaWNlKGRldl9w
cml2X18sIHNsaWNlX18sIHN1YnNsaWNlX18pIFwKPiAtICAgICAgIGZvciAoKHNsaWNlX18pID0g
MCwgKHN1YnNsaWNlX18pID0gMDsgXAo+IC0gICAgICAgICAgICAoc2xpY2VfXykgPCBJOTE1X01B
WF9TTElDRVM7IFwKPiAtICAgICAgICAgICAgKHN1YnNsaWNlX18pID0gKChzdWJzbGljZV9fKSAr
IDEpIDwgSTkxNV9NQVhfU1VCU0xJQ0VTID8gKHN1YnNsaWNlX18pICsgMSA6IDAsIFwKPiAtICAg
ICAgICAgICAgICAoc2xpY2VfXykgKz0gKChzdWJzbGljZV9fKSA9PSAwKSkgXAo+IC0gICAgICAg
ICAgICAgICBmb3JfZWFjaF9pZigoQklUKHNsaWNlX18pICYgaW5zdGRvbmVfc2xpY2VfbWFzayhk
ZXZfcHJpdl9fKSkgJiYgXAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAoQklUKHN1YnNs
aWNlX18pICYgaW5zdGRvbmVfc3Vic2xpY2VfbWFzayhkZXZfcHJpdl9fKSkpCj4gLQo+ICsjZGVm
aW5lIGluc3Rkb25lX2hhc19zbGljZShkZXZfcHJpdl9fXywgc3NldV9fXywgc2xpY2VfX18pIFwK
PiArICAgICAgICgoSVNfR0VOKGRldl9wcml2X19fLCA3KSA/IDEgOiAoKHNzZXVfX18pLT5zbGlj
ZV9tYXNrKSkgJiBcCj4gKyAgICAgICBCSVQoc2xpY2VfX18pKQoKICAgICAgICgoSVNfR0VOKGRl
dl9wcml2X19fLCA3KSA/IDEgOiBcCiAgICAgICAoKHNzZXVfX18pLT5zbGljZV9tYXNrKSkgJiBC
SVQoc2xpY2VfX18pKQoKVGhhdCBzcGxpdCBpcyBtYXJnaW5hbGx5IGVhc2llciB0byByZWFkCgpT
byBtdWNoIGZvciBob3BpbmcgdGhlIGdlbjcgc3BlY2lhbCBjYXNlIGp1c3QgZGlzYXBwZWFycy4K
Cj4gKyNkZWZpbmUgaW5zdGRvbmVfaGFzX3N1YnNsaWNlKGRldl9wcml2X18sIHNzZXVfXywgc2xp
Y2VfXywgc3Vic2xpY2VfXykgXAo+ICsgICAgICAgKElTX0dFTihkZXZfcHJpdl9fLCA3KSA/ICgx
ICYgQklUKHN1YnNsaWNlX18pKSA6IFwKPiArICAgICAgICBpbnRlbF9zc2V1X2hhc19zdWJzbGlj
ZShzc2V1X18sIDAsIHN1YnNsaWNlX18pKQo+ICsKPiArI2RlZmluZSBmb3JfZWFjaF9pbnN0ZG9u
ZV9zbGljZV9zdWJzbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8sIHN1YnNsaWNlXykgXAo+
ICsgICAgICAgZm9yICgoc2xpY2VfKSA9IDAsIChzdWJzbGljZV8pID0gMDsgKHNsaWNlXykgPCBJ
OTE1X01BWF9TTElDRVM7IFwKPiArICAgICAgICAgICAgKHN1YnNsaWNlXykgPSAoKHN1YnNsaWNl
XykgKyAxKSAlIEk5MTVfTUFYX1NVQlNMSUNFUywgXAo+ICsgICAgICAgICAgICAoc2xpY2VfKSAr
PSAoKHN1YnNsaWNlXykgPT0gMCkpIFwKPiArICAgICAgICAgICAgICAgZm9yX2VhY2hfaWYoKGlu
c3Rkb25lX2hhc19zbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8pKSAmJiBcCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIChpbnN0ZG9uZV9oYXNfc3Vic2xpY2UoZGV2X3ByaXZfLCBz
c2V1Xywgc2xpY2VfLCBcCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN1YnNsaWNlXykpKQoKVGhhdCB3YXMgbGVzcyBjb252b2x1dGVkIHRoYW4g
SSB3YXMgZXhwZWN0aW5nIGZyb20gcHJldmlvdXMgc2tpbXMuClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
