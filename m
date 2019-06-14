Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A31D4637E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C38E89A62;
	Fri, 14 Jun 2019 15:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBA389A62
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:58:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16904712-1500050 for multiple; Fri, 14 Jun 2019 16:58:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
 <20190612093111.11684-4-chris@chris-wilson.co.uk>
 <878su488ty.fsf@gaia.fi.intel.com>
In-Reply-To: <878su488ty.fsf@gaia.fi.intel.com>
Message-ID: <156052789225.7796.5111655254369629818@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 16:58:12 +0100
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Replace engine->timeline with
 a plain list
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE2OjUwOjMzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBAQCAtMjU0LDYgKzI1NCw3
IEBAIHN0YXRpYyBib29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCj4gPiAgICAgICBpbnRlbF9jb250ZXh0X3VucGluKHJxLT5od19jb250ZXh0KTsKPiA+ICAK
PiA+ICAgICAgIGk5MTVfcmVxdWVzdF9yZW1vdmVfZnJvbV9jbGllbnQocnEpOwo+ID4gKyAgICAg
bGlzdF9kZWwoJnJxLT5saW5rKTsKPiAKPiBUaGlzIGlzIG5vdyB1bmd1YXJkZWQuIGFuZCB0aGUg
dGltZWxpbmUgbXV0ZXggaXMgbm90IGhlcmUKPiB0byBoZWxwIGVpdGhlci4KCkl0IGlzIGd1YXJk
ZWQgYnkgdGhlIGNhbGxlciB0byBpOTE1X3JlcXVlc3RfcmV0aXJlLCB3ZSBjYW4gb25seSByZXRp
cmUKdW5kZXIgdGhlIHNhbWUgbG9jayBhcyB3ZSBjb25zdHJ1Y3QgcmVxdWVzdHMuIEN1cnJlbnRs
eSB0aGF0IGlzCnN0cnVjdF9tdXRleCB3aXRoIHRoZSBiaWcgc3dpdGNoZXJvbyBjb21pbmcgYXQg
dGhlIGVuZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
