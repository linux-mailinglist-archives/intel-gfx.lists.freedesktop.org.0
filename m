Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A3E85213
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D14588310;
	Wed,  7 Aug 2019 17:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B7C6E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:29:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17921991-1500050 for multiple; Wed, 07 Aug 2019 18:29:20 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190807170034.8440-4-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
 <20190807170034.8440-4-michal.wajdeczko@intel.com>
Message-ID: <156519895760.6198.7823118934079194637@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 18:29:17 +0100
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/uc: Don't fetch HuC fw if GuC
 fw fetch already failed
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTA3IDE4OjAwOjMwKQo+IFdoZW4gd2Ug
ZmFpbGVkIHRvIGZldGNoIEd1QyBmaXJtd2FyZSB0aGVyZSBpcyBubyBwb2ludCBpbiBmZXRjaGlu
Zwo+IEh1QyBmaXJtd2FyZSBhcyB3ZSB3aWxsIG5vdCBiZSBhYmxlIHRvIHVzZSBpdCB3aXRob3V0
IHdvcmtpbmcgR3VDLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYyAgICB8IDUgKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYyB8IDggKysrKystLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuaCB8IDMgKy0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBpbmRl
eCAzYzAwN2UwZTFhMjAuLmM0MGVhYjI5MDM0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwo+IEBAIC0yODMsMTEgKzI4MywxNCBAQCBzdGF0aWMgdm9pZCBndWNfZGlz
YWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgdm9pZCBpbnRlbF91
Y19mZXRjaF9maXJtd2FyZXMoc3RydWN0IGludGVsX3VjICp1YykKPiAgewo+ICAgICAgICAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB1Y190b19ndCh1YyktPmk5MTU7Cj4gKyAgICAg
ICBpbnQgZXJyOwo+ICAKPiAgICAgICAgIGlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkK
PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAKPiAtICAgICAgIGludGVsX3VjX2Z3X2ZldGNo
KCZ1Yy0+Z3VjLmZ3LCBpOTE1KTsKPiArICAgICAgIGVyciA9IGludGVsX3VjX2Z3X2ZldGNoKCZ1
Yy0+Z3VjLmZ3LCBpOTE1KTsKPiArICAgICAgIGlmIChlcnIpCj4gKyAgICAgICAgICAgICAgIHJl
dHVybjsKCldlIHN0aWxsIGRvbid0IGNhcmUgYWJvdXQgdGhlIGVyciwganVzdCB0aGF0IGl0IGV4
aXN0cy4KCmlmIChpbnRlbF91Y19md19mZXRjaCgpIHJldHVybjsgPwoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
