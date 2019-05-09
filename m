Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C275618683
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 10:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39477892A1;
	Thu,  9 May 2019 08:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BC2892A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 08:05:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16498661-1500050 for multiple; Thu, 09 May 2019 09:05:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190509061954.10379-1-imre.deak@intel.com>
 <20190509061954.10379-4-imre.deak@intel.com>
In-Reply-To: <20190509061954.10379-4-imre.deak@intel.com>
Message-ID: <155738914179.28545.6892281774217075503@skylake-alporthouse-com>
Date: Thu, 09 May 2019 09:05:41 +0100
Subject: Re: [Intel-gfx] [PATCH v2 03/11] drm/i915: Verify power domains
 state during suspend in all cases
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDUtMDkgMDc6MTk6NDYpCj4gVGhlcmUgaXMgbm8gcmVh
c29uIHdoeSB3ZSBjb3VsZG4ndCB2ZXJpZnkgdGhlIHBvd2VyIGRvbWFpbnMgc3RhdGUgZHVyaW5n
Cj4gc3VzcGVuZCBpbiBhbGwgY2FzZXMsIHNvIGRvIHRoYXQuIEkgb3Zlcmxvb2tlZCB0aGlzIHdo
ZW4gb3JpZ2luYWxseQo+IGFkZGluZyB0aGUgY2hlY2suCj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KClByb29mIG9mIHRoZSBwdWRkaW5nIGlzIGluIHRoZSBlYXRpbmcs
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
