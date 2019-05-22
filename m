Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 651C526224
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 12:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F81789933;
	Wed, 22 May 2019 10:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFC289933
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 10:41:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16638752-1500050 for multiple; Wed, 22 May 2019 11:41:23 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522103505.2082-1-jani.nikula@intel.com>
References: <20190522103505.2082-1-jani.nikula@intel.com>
Message-ID: <155852168237.23981.12830309659497215118@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 11:41:22 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove duplicate typedef for
 intel_wakeref_t
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
Cc: jani.nikula@intel.com, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0yMiAxMTozNTowNSkKPiBGaXggdGhlIGR1cGxp
Y2F0ZSB0eXBlZGVmIGZvciBpbnRlbF93YWtlcmVmX3QgbGVhZGluZyB0byBDbGFuZyBidWlsZAo+
IGlzc3Vlcy4gV2hpbGUgYXQgaXQsIGFjdHVhbGx5IG1ha2UgdGhlIGludGVsX3J1bnRpbWVfcG0u
aCBoZWFkZXIKPiBzZWxmLWNvbnRhaW5lZCwgd2hpY2ggd2FzIGNsYWltZWQgaW4gdGhlIGNvbW1p
dCBiZWluZyBmaXhlZC4KPiAKPiBSZXBvcnRlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVj
aGFuY2VsbG9yQGdtYWlsLmNvbT4KPiBDYzogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2Vs
bG9yQGdtYWlsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gUmVmZXJlbmNlczogaHR0cDovL21pZC5tYWlsLWFyY2hpdmUuY29tLzIwMTkwNTIxMTgz
ODUwLkdBOTE1N0BhcmNobGludXgtZXB5Ywo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vdHJhdmlzLWNp
LmNvbS9DbGFuZ0J1aWx0TGludXgvY29udGludW91cy1pbnRlZ3JhdGlvbi9qb2JzLzIwMTc1NDQy
MCNMMjQzNQo+IEZpeGVzOiAwZDVhZGM1ZjJmMDEgKCJkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9y
dW50aW1lX3BtLmggZnJvbSBpbnRlbF9kcnYuaCIpCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cnVudGltZV9wbS5oICAgfCA4ICsrKysrLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
LmhlYWRlci10ZXN0Cj4gaW5kZXggMmNhNGE1Zi4uM2E5NjYzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiBAQCAtNTUsNiArNTUsNyBAQCBoZWFkZXJf
dGVzdCA6PSBcCj4gICAgICAgICBpbnRlbF9wbS5oIFwKPiAgICAgICAgIGludGVsX3Bzci5oIFwK
PiAgICAgICAgIGludGVsX3F1aXJrcy5oIFwKPiArICAgICAgIGludGVsX3J1bnRpbWVfcG0uaCBc
Cj4gICAgICAgICBpbnRlbF9zZHZvLmggXAo+ICAgICAgICAgaW50ZWxfc2lkZWJhbmQuaCBcCj4g
ICAgICAgICBpbnRlbF9zcHJpdGUuaCBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3J1bnRpbWVfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uaAo+IGluZGV4IGI5NjRjYS4uMGE0YzRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uaAo+IEBAIC02LDEyICs2LDE0IEBACj4gICNpZm5kZWYgX19JTlRF
TF9SVU5USU1FX1BNX0hfXwo+ICAjZGVmaW5lIF9fSU5URUxfUlVOVElNRV9QTV9IX18KPiAgCj4g
LSNpbmNsdWRlIDxsaW51eC9zdGFja2RlcG90Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+ICAKPiAtc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4gKyNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5LmgiCj4gKyNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCgpIZWgsIEkgd2FzIHRoaW5raW5n
IHRoZSBvdGhlciB3YXkgYnV0IHdoaWNoZXZlciB3b3JrcyA6KQoKUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
