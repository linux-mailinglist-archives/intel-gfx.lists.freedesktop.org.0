Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF44EAD994
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 15:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6515899B5;
	Mon,  9 Sep 2019 13:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11469899B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:04:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18426644-1500050 for multiple; Mon, 09 Sep 2019 14:04:06 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190909124052.22900-3-matthew.auld@intel.com>
References: <20190909124052.22900-1-matthew.auld@intel.com>
 <20190909124052.22900-3-matthew.auld@intel.com>
Message-ID: <156803424398.21072.5300625609472800176@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Sep 2019 14:04:04 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: cleanup cache-coloring
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMDkgMTM6NDA6NTIpCj4gVHJ5IHRvIHRpZHkg
dXAgdGhlIGNhY2hlLWNvbG9yaW5nIHN1Y2ggdGhhdCB3ZSByaWQgdGhlIGNvZGUgb2YgYW55Cj4g
bW0uY29sb3JfYWRqdXN0IGFzc3VtcHRpb25zLCB0aGlzIHNob3VsZCBob3BlZnVsbHkgbWFrZSBp
dCBtb3JlIG9idmlvdXMKPiBpbiB0aGUgY29kZSB3aGVuIHdlIG5lZWQgdG8gYWN0dWFsbHkgdXNl
IHRoZSBjYWNoZS1sZXZlbCBhcyB0aGUgY29sb3IsCj4gYW5kIGFzIGEgYm9udXMgc2hvdWxkIG1h
a2UgYWRkaW5nIGEgZGlmZmVyZW50IGNvbG9yLXNjaGVtZSBzaW1wbGVyLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgoKU2VyaWVzIGlzClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
