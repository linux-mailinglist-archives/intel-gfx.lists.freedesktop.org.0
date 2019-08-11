Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C609789399
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 22:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8972D89FF6;
	Sun, 11 Aug 2019 20:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9402C89FF6
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 20:22:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17962606-1500050 for multiple; Sun, 11 Aug 2019 21:22:32 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190811195132.9660-2-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
 <20190811195132.9660-2-michal.wajdeczko@intel.com>
Message-ID: <156555494944.11756.7400728557233211466@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 11 Aug 2019 21:22:29 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/uc: Fail early if there is no
 GuC fw available
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTExIDIwOjUxOjI5KQo+IFdlIGRvbid0
IHdhbnQgdG8gcmVseSBvbiBtaXNsZWFkaW5nIFdPUENNIHBhcnRpdGlvbmluZyBlcnJvci4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAgfCAgNSAr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIHwgMjEgKysr
KysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+IGluZGV4IDMyYWE0NTA5YmEx
ZC4uYWE5NzAxY2ZjNzU0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
Cj4gQEAgLTQzNiw2ICs0MzYsMTEgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVs
X3VjICp1YykKPiAgICAgICAgIGlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gIAo+ICsgICAgICAgaWYgKCFpbnRlbF91Y19md19pc19h
dmFpbGFibGUoJmd1Yy0+ZncpKSB7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IGludGVsX3VjX2Z3
X3N0YXR1c190b19lcnJvcihndWMtPmZ3LnN0YXR1cyk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8g
ZXJyX291dDsKPiArICAgICAgIH0KPiArCj4gICAgICAgICByZXQgPSB1Y19pbml0X3dvcGNtKHVj
KTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX291dDsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKPiBpbmRleCAwZDIyZTczZGZm
MTUuLmFkN2U3MjMxNmRjYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuaAo+IEBAIC0xMDcsNiArMTA3LDI3IEBAIGNvbnN0IGNoYXIgKmludGVsX3VjX2Z3X3N0
YXR1c19yZXByKGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1cykKPiAgICAgICAgIHJldHVy
biAiPGludmFsaWQ+IjsKPiAgfQo+ICAKPiArc3RhdGljIGlubGluZSBpbnQgaW50ZWxfdWNfZndf
c3RhdHVzX3RvX2Vycm9yKGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1cykKPiArewo+ICsg
ICAgICAgc3dpdGNoIChzdGF0dXMpIHsKPiArICAgICAgIGNhc2UgSU5URUxfVUNfRklSTVdBUkVf
Tk9UX1NVUFBPUlRFRDoKPiArICAgICAgIGNhc2UgSU5URUxfVUNfRklSTVdBUkVfVU5JTklUSUFM
SVpFRDoKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKPiArICAgICAgIGNhc2UgSU5U
RUxfVUNfRklSTVdBUkVfTUlTU0lORzoKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7
Cj4gKyAgICAgICBjYXNlIElOVEVMX1VDX0ZJUk1XQVJFX0VSUk9SOgo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gLUVOT0VYRUM7Cj4gKyAgICAgICBjYXNlIElOVEVMX1VDX0ZJUk1XQVJFX0ZBSUw6
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlPOwoKV29ydGggZGlzdGluZ3Vpc2hpbmcgd2l0
aCAtRU5YSU8gb3IgaXMgdGhlIHNpbWlsYXJpdHkgdG8gLUVJTyBpbXBvcnRhbnQ/ClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
