Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C05721FD08
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 21:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B8C6E82A;
	Tue, 14 Jul 2020 19:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F466E82A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 19:13:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21819677-1500050 for multiple; Tue, 14 Jul 2020 20:13:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 20:13:03 +0100
Message-ID: <159475398330.3188.2132224433232566770@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Limit cfb to the first 256MiB
 of stolen on g4x+
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA3LTE0IDE5OjUxOjI4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU2luY2UgZzR4
IHRoZSBDRkIgYmFzZSBvbmx5IHRha2VzIGEgMjhiaXQgb2Zmc2V0IGludG8gc3RvbGVuLgo+IE5v
dCBzdXJlIGlmIHRoZSBDRkIgaXMgYWxsb3dlZCB0byBzdGFydCBiZWxvdyB0aGF0IGxpbWl0IGJ1
dAo+IHRoZW4gZXh0ZW5kIGJleW9uZCBpdC4gTGV0J3MgYXNzdW1lIG5vdCBhbmQganVzdCByZXN0
cmljdCB0aGUKPiBhbGxvY2F0aW9uIHRvIHRoZSBmaXJzdCAyNTZNaUIgKGluIHRoZSB1bmxpa2Vs
eSBjYXNlCj4gd2UgaGF2ZSBtb3JlIHN0b2xlbiB0aGFuIHRoYXQpLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMCArKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gaW5kZXggODU3MjNmYmE2MDAyLi40NDhlOTY2
YmFkMTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBA
QCAtNDI0LDYgKzQyNCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfZGVhY3RpdmF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAgICAgICBmYmMtPm5vX2ZiY19yZWFz
b24gPSByZWFzb247Cj4gIH0KPiAgCj4gK3N0YXRpYyB1NjQgaW50ZWxfZmJjX2NmYl9iYXNlX21h
eChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsgICAgICAgaWYgKElOVEVM
X0dFTihpOTE1KSA+PSA1IHx8IElTX0c0WChpOTE1KSkKPiArICAgICAgICAgICAgICAgcmV0dXJu
IEJJVCgyOCk7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgIHJldHVybiBCSVQoMzIp
OwoKQklUX1VMTCgzMikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
