Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA2C4C0FA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DAF6E455;
	Wed, 19 Jun 2019 18:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A1B6E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:44:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16957334-1500050 for multiple; Wed, 19 Jun 2019 19:44:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619170842.20579-1-ville.syrjala@linux.intel.com>
 <20190619170842.20579-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20190619170842.20579-4-ville.syrjala@linux.intel.com>
Message-ID: <156096988267.664.152988980390708525@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 19:44:42 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke drm_driver irq vfuncs
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE5IDE4OjA4OjQxKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU3RvcCB1c2lu
ZyB0aGUgaXJxIHZmdW5jcyB1bmRlciBkcm1fZHJpdmVyLiBUaGF0J3Mgbm90IGdvaW5nIHRvIGZs
eQo+IGluIGEgbWl4ZWQgZ2VuIGVudmlyb25tZW50IHNpbmNlIHRoZSBzdHJ1Y3R1cmUgaXMgc2hh
cmVkIGJldHdlZW4gYWxsCj4gdGhlIGRldmljZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyB8IDI4MCArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDE0MCBpbnNlcnRpb25zKCspLCAxNDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggZjYyZTMzOTdkOTM2Li5lYTZiMDYxMDlkNWEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNzU0LDcgKzc1NCw3IEBAIHN0YXRpYyBp
bnQgaTkxNV9sb2FkX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ICBjbGVh
bnVwX21vZGVzZXQ6Cj4gICAgICAgICBpbnRlbF9tb2Rlc2V0X2NsZWFudXAoZGV2KTsKCkFoYWgh
IGludGVsX21vZGVzZXRfY2xlYW51cCgpIGFsc28gY2FsbHMgaW50ZWxfaXJxX3VuaW5zdGFsbCgp
Cgo+ICBjbGVhbnVwX2lycToKPiAtICAgICAgIGRybV9pcnFfdW5pbnN0YWxsKGRldik7Cj4gKyAg
ICAgICBpbnRlbF9pcnFfdW5pbnN0YWxsKGRldl9wcml2KTsKPiAgICAgICAgIGludGVsX2dtYnVz
X3RlYXJkb3duKGRldl9wcml2KTsKPiAgY2xlYW51cF9jc3I6Cj4gICAgICAgICBpbnRlbF9jc3Jf
dWNvZGVfZmluaShkZXZfcHJpdik7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
