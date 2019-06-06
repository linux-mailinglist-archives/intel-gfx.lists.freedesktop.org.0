Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A525837422
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 14:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB96E896AF;
	Thu,  6 Jun 2019 12:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD31E896AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 12:30:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16813351-1500050 for multiple; Thu, 06 Jun 2019 13:30:23 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190606122203.13416-4-jani.nikula@intel.com>
References: <20190606122203.13416-1-jani.nikula@intel.com>
 <20190606122203.13416-4-jani.nikula@intel.com>
Message-ID: <155982422051.19464.11796312343477798112@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Jun 2019 13:30:20 +0100
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/frontbuffer: remove
 obsolete comment about mark busy/idle
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0wNiAxMzoyMjowMykKPiBUaGlzIG5vIGxvbmdl
ciBleGlzdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZnJvbnRidWZmZXIu
YyB8IDYgLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mcm9udGJ1ZmZlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZnJvbnRidWZmZXIuYwo+IGluZGV4IGFhMzRlMzNiNjA4Ny4u
ZDYwMzZiOWFkMTZhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Zy
b250YnVmZmVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mcm9udGJ1ZmZl
ci5jCj4gQEAgLTUzLDE0ICs1Myw4IEBACj4gICAqIGJ1c3luZXNzLiBUaGVyZSBpcyBubyBkaXJl
Y3Qgd2F5IHRvIGRldGVjdCBpZGxlbmVzcy4gSW5zdGVhZCBhbiBpZGxlIHRpbWVyCj4gICAqIHdv
cmsgZGVsYXllZCB3b3JrIHNob3VsZCBiZSBzdGFydGVkIGZyb20gdGhlIGZsdXNoIGFuZCBmbGlw
IGZ1bmN0aW9ucyBhbmQKPiAgICogY2FuY2VsbGVkIGFzIHNvb24gYXMgYnVzeW5lc3MgaXMgZGV0
ZWN0ZWQuCj4gLSAqCj4gLSAqIE5vdGUgdGhhdCB0aGVyZSdzIGFsc28gYW4gb2xkZXIgZnJvbnRi
dWZmZXIgYWN0aXZpdHkgdHJhY2tpbmcgc2NoZW1lIHdoaWNoCj4gLSAqIGp1c3QgdHJhY2tzIGdl
bmVyYWwgYWN0aXZpdHkuIFRoaXMgaXMgZG9uZSBieSB0aGUgdmFyaW91cyBtYXJrX2J1c3kgYW5k
Cj4gLSAqIG1hcmtfaWRsZSBmdW5jdGlvbnMuIEZvciBkaXNwbGF5IHBvd2VyIG1hbmFnZW1lbnQg
ZmVhdHVyZXMgdXNpbmcgdGhlc2UKPiAtICogZnVuY3Rpb25zIGlzIGRlcHJlY2F0ZWQgYW5kIHNo
b3VsZCBiZSBhdm9pZGVkLgo+ICAgKi8KCkZpbmFsbHkgXG8vCgpUaGF0IGhhcyBhbm5veWVkIG1l
IGZvciBhIGxvbmcgdGltZSwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
