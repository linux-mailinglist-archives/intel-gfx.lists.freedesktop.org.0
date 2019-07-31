Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB557C350
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 15:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3786489D61;
	Wed, 31 Jul 2019 13:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0902489D61
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 13:22:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17760088-1500050 for multiple; Wed, 31 Jul 2019 14:22:44 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z5sm94ooxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
 <20190730181903.17820-2-michal.wajdeczko@intel.com>
 <156451364846.6373.11504509841314194285@skylake-alporthouse-com>
 <op.z5sm94ooxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156457936296.15787.8326935385731551205@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 14:22:42 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Consider enable_guc
 modparam during fw selection
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDE0OjE5OjA2KQo+IE9uIFR1ZSwg
MzAgSnVsIDIwMTkgMjE6MDc6MjggKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPj4gK3N0YXRpYyBjb25zdCBjaGFyKiBfX292ZXJy
aWRlX2h1Y19maXJtd2FyZV9wYXRoKHZvaWQpCj4gPj4gK3sKPiA+PiArICAgICAgIGlmICgoaTkx
NV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA8IDApIHx8Cj4gPj4gKyAgICAgICAgICAgKGk5MTVfbW9k
cGFyYW1zLmVuYWJsZV9ndWMgJiBFTkFCTEVfR1VDX0xPQURfSFVDKSkKPiA+PiArICAgICAgICAg
ICAgICAgcmV0dXJuIGk5MTVfbW9kcGFyYW1zLmh1Y19maXJtd2FyZV9wYXRoOwo+ID4KPiA+IFdl
IGNhbiBldmVuIGxvc2UgdGhlIDwwLiBObyBuZWdhdGl2ZSB2YWx1ZSBvdGhlciB0aGFuIC0xIGlz
IGRvY3VtZW50ZWQuCj4gCj4gSSB1c2VkIDwwIHRvIG1hdGNoIGV4aXN0aW5nIGltcGxlbWVudGF0
aW9uIGluIHNhbml0aXplX29wdGlvbnNfZWFybHkoKQo+IAo+ICAgICAgICAgLyogQSBuZWdhdGl2
ZSB2YWx1ZSBtZWFucyAidXNlIHBsYXRmb3JtIGRlZmF1bHQiICovCj4gICAgICAgICBpZiAoaTkx
NV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA8IDApCj4gICAgICAgICAgICAgICAgIGk5MTVfbW9kcGFy
YW1zLmVuYWJsZV9ndWMgPSBfX2dldF9wbGF0Zm9ybV9lbmFibGVfZ3VjKHVjKTsKPiAKPiBpZiB3
ZSBsb3NlIDwwIGNvbmRpdGlvbiB0aGVyZSBhcmUgcXVlc3Rpb25zIGhvdyB0byB0cmVhdCB1bmRv
Y3VtZW50ZWQgIAo+IHZhbHVlczoKPiAtMiBpcyBkaXNhYmxlZCgwKSBvciBhdXRvIGJ1dCB3aXRo
b3V0IHN1Ym1pc3Npb24gYWthIGh1Yy1vbmx5KDIpCj4gLTMgaXMgZGlzYWJsZWQoMCkgb3IgYXV0
byBidXQgd2l0aG91dCBodWMgYWthIHN1Ym1pc3Npb25fb25seSgxKQo+IC4uLgoKSSdtIHdpbGxp
bmcgdG8gbGV0IHVzZXJzIHNob290IHRoZW1zZWx2ZXMgaW4gdGhlIGZvb3QgZm9yIHVuZG9jdW1l
bnRlZAp2YWx1ZXMgZm9yIGFuIHVuc2FmZSBwYXJhbWV0ZXIuIFRoZXkgYWxyZWFkeSBzbmF0Y2hl
ZCBob2xkIG9mIHRoZQpzaG90Z3VuIGZvciB1c2luZyBhbiB1bnNhZmUgcGFyYW1ldGVyIGluIHRo
ZSBmaXJzdCBwbGFjZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
