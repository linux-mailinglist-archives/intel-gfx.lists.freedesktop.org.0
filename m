Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E20835F697
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C738A6E2DA;
	Thu,  4 Jul 2019 10:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423696E2DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:26:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17126416-1500050 for multiple; Thu, 04 Jul 2019 11:26:33 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87lfxe2j6u.fsf@gaia.fi.intel.com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-4-chris@chris-wilson.co.uk>
 <87lfxe2j6u.fsf@gaia.fi.intel.com>
Message-ID: <156223599157.25091.6847916886153823523@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 11:26:31 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Flush the workqueue before
 draining
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDExOjIyOjE3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUcnlpbmcgdG8gZHJh
aW4gYSB3b3JrcXVldWUgd2hpbGUgd2UgbWF5IHN0aWxsIGJlIGFkZGluZyB0byBpdCBmcm9tCj4g
PiBiYWNrZ3JvdW5kIHRhc2tzIGlzLCBhY2NvcmRpbmcgdG8ga2VybmVsL3dvcmtxdWV1ZS5jLCB2
ZXJib3Rlbi4gU28sIGFkZAo+ID4gYSBmbHVzaF93b3JrcXVldWUoKSBhdCB0aGUgc3RhcnQgb2Yg
b3VyIGNsZWFudXAgcHJvY2VkdXJlLgo+IAo+IEkgZG9uJ3QgZ2V0IGl0LiBkcmFpbl93b3JrcXVl
dWUgZG9lcyBpdCdzIG93biBmbHVzaGluZy4KCk9yZGVyaW5nIGlzIGltcG9ydGFudCBoZXJlLiBU
aGUgcHJvYmxlbSB3aXRoIGRyYWluX3dvcmtxdWV1ZSgpIGlzIHRoYXQKaXMgZm9yYmlkcyB1cyBm
cm9tIGFkZGluZyBtb3JlIHRhc2tzIGludG8gdGhlIHdvcmtxdWV1ZSBhcyBpdCBkcmFpbnMsIHNv
CmJlZm9yZSB3ZSBkcmFpbiB3ZSBtdXN0IHBsdWcuCgpJdCdzIGp1c3QgYWRkaW5nIG1vcmUgaGFt
bWVycy4gRXZlbnR1YWxseSBpdCdsbCBicmVhay4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
