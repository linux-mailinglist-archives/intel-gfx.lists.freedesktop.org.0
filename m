Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A581146EE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 19:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652A56F8E8;
	Thu,  5 Dec 2019 18:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D853F6F8E8
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 18:33:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19475108-1500050 for multiple; Thu, 05 Dec 2019 18:33:24 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191205164422.727968-1-chris@chris-wilson.co.uk>
References: <20191205162428.1503-1-andi.shyti@intel.com>
 <20191205164422.727968-1-chris@chris-wilson.co.uk>
Message-ID: <157557080171.31224.8899233149005119983@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 05 Dec 2019 18:33:21 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Replace I915_READ with
 intel_uncore_read
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDUgMTY6NDQ6MjIpCj4gRnJvbTogQW5kaSBT
aHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gCj4gR2V0IHJpZCBvZiB0aGUgbGFzdCByZW1h
aW5pbmcgSTkxNV9SRUFEIGluIGd0LyBhbmQgbWFrZSBndC1sYW5kCj4gdGhlIGZpcnN0IEk5MTVf
UkVBRC1mcmVlIGhhcHB5IGlzbGFuZC4KPiAKPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAaW50ZWwuY29tPgo+IC0tLQo+IFBhc3MgaW4gaW50ZWxfZ3QgZm9yIHRoZSBsb2Nh
bCBndC0+dW5jb3JlIGxpbmsuCgpMb29rcyBnb29kLCBpZiBJIGRvIHNheSBzbyBteXNlbGYhClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
