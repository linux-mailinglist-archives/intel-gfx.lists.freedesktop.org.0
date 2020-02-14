Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3305515D648
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D2F6E2F8;
	Fri, 14 Feb 2020 11:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A746E2F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 11:07:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20222385-1500050 for multiple; Fri, 14 Feb 2020 11:07:29 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200211161451.6867-2-jani.nikula@intel.com>
References: <20200211161451.6867-1-jani.nikula@intel.com>
 <20200211161451.6867-2-jani.nikula@intel.com>
Message-ID: <158167844647.10420.11414553000061385342@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 11:07:26 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: split out display debugfs
 to a separate file
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAyMC0wMi0xMSAxNjoxNDo1MSkKPiBUaGUgaTkxNV9kZWJ1
Z2ZzLmMgaGFzIGdyb3duIG1vcmUgdGhhbiBhIGxpdHRsZSB1bndpZWxkeS4gU3BsaXQgb3V0IHRo
ZQo+IGRpc3BsYXkgcmVsYXRlZCBkZWJ1Z2ZzIGNvZGUgdG8gYSBmaWxlIG9mIGl0cyBvd24gdW5k
ZXIgZGlzcGxheS8sCj4gaW5pdGlhbGl6ZWQgd2l0aCBhIHNlcGFyYXRlIGNhbGwuIE5vIGZ1bmN0
aW9uYWwgY2hhbmdlcy4KPiAKPiB2MjoKPiAtIEFsc28gbW92ZWQgaTkxNV9mcm9udGJ1ZmZlcl90
cmFja2luZywgaTkxNV9nZW1fZnJhbWVidWZmZXIsCj4gICBpOTE1X3Bvd2VyX2RvbWFpbl9pbmZv
LCBpOTE1X2RtY19pbmZvLCBpOTE1X2lwY19zdGF0dXMgKFZpbGxlKQo+IAo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClRoZSBkaWZmIHVubmVydmVkIG1l
LCBidXQgSSBjb3VsZG4ndCBzcG90IGFueXRoaW5nIG90aGVyIHRoYW4gY29kZSBtb3Rpb24uClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
