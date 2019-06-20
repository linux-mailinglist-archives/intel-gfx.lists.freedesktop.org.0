Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906914CC00
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 12:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39CD6E3FE;
	Thu, 20 Jun 2019 10:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2FF6E3FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 10:35:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16964415-1500050 for multiple; Thu, 20 Jun 2019 11:35:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619170842.20579-4-ville.syrjala@linux.intel.com>
 <20190620103334.15651-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190620103334.15651-1-ville.syrjala@linux.intel.com>
Message-ID: <156102692727.664.17026702375569739941@skylake-alporthouse-com>
Date: Thu, 20 Jun 2019 11:35:27 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Nuke drm_driver irq vfuncs
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTIwIDExOjMzOjM0KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU3RvcCB1c2lu
ZyB0aGUgaXJxIHZmdW5jcyB1bmRlciBkcm1fZHJpdmVyLiBUaGF0J3Mgbm90IGdvaW5nIHRvIGZs
eQo+IGluIGEgbWl4ZWQgZ2VuIGVudmlyb25tZW50IHNpbmNlIHRoZSBzdHJ1Y3R1cmUgaXMgc2hh
cmVkIGJldHdlZW4gYWxsCj4gdGhlIGRldmljZXMuCj4gCj4gdjI6IEFsbG93IGludGVsX2lycV91
bmluc3RhbGwoKSB0byBiZSBjYWxsZWQgdHdpY2UgZHVlIHRvCj4gICAgIGludGVsX21vZGVzZXRf
Y2xlYW51cCgpIGNhbGxpbmcgaXQgYXMgd2VsbC4gVG9zcyBpbiBhCj4gICAgIEZJWE1FIHRvIHJl
bWluZCB1cyB0aGF0IHRoaXMgaXMgbm90IGdyZWF0LgoKRmFpciBlbm91Z2guCiAKPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gI3Yx
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
