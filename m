Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1133890113
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 14:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EC76E32C;
	Fri, 16 Aug 2019 12:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D01D6E32C
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 12:06:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18162411-1500050 for multiple; Fri, 16 Aug 2019 13:06:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190816092424.31386-1-chris@chris-wilson.co.uk>
 <20190816092424.31386-3-chris@chris-wilson.co.uk>
 <87lfvt5nea.fsf@gaia.fi.intel.com>
In-Reply-To: <87lfvt5nea.fsf@gaia.fi.intel.com>
Message-ID: <156595716034.11610.2731422977702685044@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 13:06:00 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Markup expected timeline
 locks for i915_active
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE2IDEzOjAyOjIxKQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCj4gPiBpbmRleCBhZTNlZTQ0MWMxMTQuLmQ4
NTdiZDEyYWE3ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlX3R5cGVzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5
cGVzLmgKPiA+IEBAIC0yNCw2ICsyNCw5IEBAIHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0IHsK
PiA+ICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgX19yY3UgKnJlcXVlc3Q7Cj4gPiAgICAgICBz
dHJ1Y3QgbGlzdF9oZWFkIGxpbms7Cj4gPiAgICAgICBpOTE1X2FjdGl2ZV9yZXRpcmVfZm4gcmV0
aXJlOwo+ID4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19HRU0pCj4gPiAr
ICAgICBzdHJ1Y3QgbXV0ZXggKmxvY2s7Cj4gCj4gQ2hlY2twYXRjaCB0aGlua3MgdGhlIHVzYWdl
IHNob3VsZCBiZSBzb21laG93IHN0YXRlZCB3aXRoIGNvbW1lbnQuCj4gCj4gU28gcHV0IHNvbWV0
aGluZyBsaWtlCj4gLyogSW5jb3Jwb3JlYWwuIFJlZiBwaWdneXBhY2tpbmcgdGltZWxpbmUgZm9y
IGxvY2tkZXAgKi8KCkknbSB1c2luZyBpbmNvcnBvcmVhbC4gOikKLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
