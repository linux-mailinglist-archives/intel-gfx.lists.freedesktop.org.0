Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B67267BB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 18:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6DD89BD2;
	Wed, 22 May 2019 16:10:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3925489BB3;
 Wed, 22 May 2019 16:10:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16643555-1500050 for multiple; Wed, 22 May 2019 17:10:17 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522160658.28998-1-tvrtko.ursulin@linux.intel.com>
References: <20190522160658.28998-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155854141659.28319.5893164631966795715@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 17:10:16 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: End warning message with a
 newline
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxNzowNjo1OCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE90aGVyd2lzZSBkZWJ1
ZyBvdXRwdXQgbG9va3MgbWVzc3kgd2hlbiB3ZSB0cmlnZ2VyIHRoaXMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogQW5k
aSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gLS0tCj4gIGxpYi9pOTE1L2dlbV9lbmdp
bmVfdG9wb2xvZ3kuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwo+IGluZGV4IDdjYTM2MTY2ODdi
OS4uZDBjOGJkNWFhZWFjIDEwMDY0NAo+IC0tLSBhL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYwo+ICsrKyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwo+IEBAIC0xMjMsNyAr
MTIzLDcgQEAgc3RhdGljIHZvaWQgaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2V4ZWN1dGlvbl9l
bmdpbmUyICplMiwKPiAgICAgICAgIGlmIChfX2UyLT5uYW1lKSB7Cj4gICAgICAgICAgICAgICAg
IGUyLT5uYW1lID0gX19lMi0+bmFtZTsKPiAgICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgICAg
ICAgIGlndF93YXJuKCJmb3VuZCB1bmtub3duIGVuZ2luZSAoJWQsICVkKSIsIGNsYXNzLCBpbnN0
YW5jZSk7Cj4gKyAgICAgICAgICAgICAgIGlndF93YXJuKCJmb3VuZCB1bmtub3duIGVuZ2luZSAo
JWQsICVkKVxuIiwgY2xhc3MsIGluc3RhbmNlKTsKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
