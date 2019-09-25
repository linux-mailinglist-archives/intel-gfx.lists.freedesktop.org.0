Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B55BDD2B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 13:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 956426EB9F;
	Wed, 25 Sep 2019 11:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7BD6EB9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 11:33:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18610872-1500050 for multiple; Wed, 25 Sep 2019 12:33:16 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-13-chris@chris-wilson.co.uk>
 <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
 <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
 <156941064846.4979.4962798584225051716@skylake-alporthouse-com>
 <156941098070.4979.2383476741571584068@skylake-alporthouse-com>
In-Reply-To: <156941098070.4979.2383476741571584068@skylake-alporthouse-com>
Message-ID: <156941118978.4979.7148400316604797442@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 12:33:09 +0100
Subject: Re: [Intel-gfx] [PATCH 12/27] drm/i915: Move request runtime
 management onto gt
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjUgMTI6Mjk6NDApCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDktMjUgMTI6MjQ6MDgpCj4gPiBRdW90aW5nIENocmlzIFdpbHNvbiAo
MjAxOS0wOS0yNSAxMjoxNzoxNCkKPiA+ID4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0w
OS0yNSAxMTo1Nzo1MykKPiA+ID4gPiAKPiA+ID4gPiBJIGFtIHN0aWxsIHNsaWdodGx5IHVuZWFz
eSBhYm91dCBoYXZpbmcgcmVxdWVzdHMsIHdoaWNoIEkgc2VlIGFzIGEgR0VNIAo+ID4gPiA+IGNv
bmNlcHQsIGJlIHJldGlyZWQgZnJvbSBHVCwgYnV0IG9rYXksIGl0J3Mgbm90IHRoZSBtb3N0IGlt
cG9ydGFudCBpc3N1ZSAKPiA+ID4gPiBhdCB0aGUgbW9tZW50Lgo+ID4gPiAKPiA+ID4gcmVxdWVz
dHMgYXJlIG5vdCBhIEdFTSBjb25jZXB0LCB0aGV5IGJlbG9uZyBpbiBzY2hlZC8gOikKPiA+IAo+
ID4gT3ZlcmFsbCB0aG91Z2gsIHRoZSBjb21wYXJ0bWVudGFsaXNhdGlvbiBpcyBpbnRlbF9ndCBi
YXNlZC4gT3VyCj4gPiB0aW1lbGluZXMgYW5kIHRoZWlyIHBvd2VybWFuYWdlbWVudCBpcyBhc3Nv
Y2lhdGVkIHdpdGggdGhlIGd0LCBzbyB0aGF0J3MKPiA+IHdoZXJlIGl0IGZlZWxzIG5lY2Vzc2Fy
eSB0byBwcm92aWRlIHRoZSBiYWNrZ3JvdW5kIGNsZWFudXAuIElmIHdlIGRyb3AKPiA+IHRoZSB0
aW1lbGluZS0+Z3QsIHRoZW4gSSB0aGluayBpdCdzIHRpbWUgZm9yIGEgbmV3IGhvbWU/Cj4gCj4g
QWN0dWFsbHkgd291bGQgYSBzaW1wbGUgcy8vaW50ZWxfZ3RfcmV0aXJlX3RpbWVsaW5lcygpLyBt
YWtlIGl0IG1vcmUKPiBwYWxhdGFibGU/CgpPciBldmVuIGp1c3QgaW50ZWxfZ3RfcmV0aXJlKCkK
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
