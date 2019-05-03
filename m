Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02CD12FD8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 16:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C971B8909C;
	Fri,  3 May 2019 14:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCF88909C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 14:12:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16442474-1500050 for multiple; Fri, 03 May 2019 15:12:03 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190503140457.GO24299@intel.com>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
 <20190429180020.27274-4-chris@chris-wilson.co.uk>
 <20190503140457.GO24299@intel.com>
Message-ID: <155689272156.3139.14895194831669934715@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 03 May 2019 15:12:01 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Disable semaphore busywaits
 on saturated systems
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
Cc: intel-gfx@lists.freedesktop.org, Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDUtMDMgMTU6MDQ6NTcpCj4gT24gTW9uLCBB
cHIgMjksIDIwMTkgYXQgMDc6MDA6MTlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
QXNraW5nIHRoZSBHUFUgdG8gYnVzeXdhaXQgb24gYSBtZW1vcnkgYWRkcmVzcywgcGVyaGFwcyBu
b3QgdW5leHBlY3RlZGx5Cj4gPiBpbiBoaW5kc2lnaHQgZm9yIGEgc2hhcmVkIHN5c3RlbSwgbGVh
ZHMgdG8gYnVzIGNvbnRlbnRpb24gdGhhdCBhZmZlY3RzCj4gPiBDUFUgcHJvZ3JhbXMgdHJ5aW5n
IHRvIGNvbmN1cnJlbnRseSBhY2Nlc3MgbWVtb3J5LiBUaGlzIGNhbiBtYW5pZmVzdCBhcwo+ID4g
YSBkcm9wIGluIHRyYW5zY29kZSB0aHJvdWdocHV0IG9uIGhpZ2hseSBvdmVyLXNhdHVyYXRlZCB3
b3JrbG9hZHMuCj4gCj4gV2UgY2FuJ3QgdXNlIHRoZSBzaW5nYWxsaW5nIHNlbWFwaG9yZSB2YXJp
YW50PwoKVGhhdCByZXF1aXJlcyB1cyB0byBicm9hZGNhc3QgYSBzaWduYWwgdG8gZWFjaCBlbmdp
bmUgKGZvciB3aGljaCBJIGNhbgpoZWFyIHRoZSBjcmllcyBvZiBjcm9zcy1wb3dlcndlbGwgd2Fr
ZXMpLCBhbmQgY3VycmVudGx5IGRvZXMgbm90IHdvcmsKd2l0aCBleGVjbGlzdHMgKyBjb250ZXh0
LWlkPT0wLiBPciBhdCBsZWFzdCBpdCBmYWlsZWQgaW4gbXkgdGVzdGluZy4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
