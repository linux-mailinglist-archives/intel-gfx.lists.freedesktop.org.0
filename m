Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E06F1FF4A6
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 19:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5336E088;
	Sat, 16 Nov 2019 18:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F496E088
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 18:21:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19226574-1500050 for multiple; Sat, 16 Nov 2019 18:21:22 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157392687837.16970.18303043604887369318@skylake-alporthouse-com>
References: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
 <157392687837.16970.18303043604887369318@skylake-alporthouse-com>
Message-ID: <157392847989.16970.2251579902672837180@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 16 Nov 2019 18:21:19 +0000
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/gt: Close race between
 engine_park and intel_gt_retire_requests
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTYgMTc6NTQ6MzgpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMTEtMTYgMTc6NTE6MjkpCj4gPiBUaGUgZ2VuZXJhbCBjb25jZXB0IHdh
cyB0aGF0IGludGVsX3RpbWVsaW5lLmFjdGl2ZV9jb3VudCB3YXMgbG9ja2VkIGJ5Cj4gPiB0aGUg
aW50ZWxfdGltZWxpbmUubXV0ZXguIFRoZSBleGNlcHRpb24gd2FzIGZvciBwb3dlciBtYW5hZ2Vt
ZW50LCB3aGVyZQo+ID4gdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRleHQtPnRpbWVsaW5lIGNvdWxk
IGJlIG1hbmlwdWxhdGVkIHVuZGVyIHRoZQo+ID4gZ2xvYmFsIHdha2VyZWYubXV0ZXguCj4gPiAK
PiA+IFRoaXMgd2FzIHF1aXRlIHNvbGlkLCBhcyB3ZSBhbHdheXMgbWFuaXB1bGF0ZWQgdGhlIHRp
bWVsaW5lIG9ubHkgd2hpbGUKPiA+IHdlIGhlbGQgYW4gZW5naW5lIHdha2VyZWYuCj4gPiAKPiA+
IEFuZCB0aGVuIHdlIHN0YXJ0ZWQgcmV0aXJpbmcgcmVxdWVzdHMgb3V0c2lkZSBvZiBzdHJ1Y3Rf
bXV0ZXgsIG9ubHkKPiA+IHVzaW5nIHRoZSB0aW1lbGluZXMuYWN0aXZlX2xpc3QgYW5kIHRoZSB0
aW1lbGluZS0+bXV0ZXguIFRoZXJlIHdlCj4gPiBzdGFydGVkIG1hbmlwdWxhdGluZyBpbnRlbF90
aW1lbGluZS5hY3RpdmVfY291bnQgb3V0c2lkZSBvZiBhbiBlbmdpbmUKPiA+IHdha2VyZWYsIGFu
ZCBzbyBpbnRyb2R1Y2VkIGEgcmFjZSBiZXR3ZWVuIF9fZW5naW5lX3BhcmsoKSBhbmQKPiA+IGlu
dGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpLCBhIHJhY2UgdGhhdCBjb3VsZCByZXN1bHQgaW4gdGhl
Cj4gPiBlbmdpbmUtPmtlcm5lbF9jb250ZXh0IG5vdCBiZWluZyBhZGRlZCB0byB0aGUgYWN0aXZl
IHRpbWVsaW5lcyBhbmQgc28KPiA+IGxvc2luZyByZXF1ZXN0cywgd2hpY2ggY2F1c2VkIHVzIHRv
IGtlZXAgdGhlIHN5c3RlbSBwZXJtYW5lbnRseSBwb3dlcmVkCj4gPiB1cCBbYW5kIHVubG9hZGFi
bGVdLgo+ID4gCj4gPiBUaGUgcmFjZSB3b3VsZCBiZSBlYXN5IHRvIGNsb3NlIGlmIHdlIGNvdWxk
IHRha2UgdGhlIGVuZ2luZSB3YWtlcmVmIGZvcgo+ID4gdGhlIHRpbWVsaW5lIGJlZm9yZSB3ZSBy
ZXRpcmUgLS0gZXhjZXB0IHRpbWVsaW5lcyBhcmUgbm90IGJvdW5kIHRvIGFueQo+ID4gZW5naW5l
IGFuZCBzbyB3ZSB3b3VsZCBuZWVkIHRvIGtlZXAgYWxsIGFjdGl2ZSBlbmdpbmVzIGF3YWtlLiBU
aGUKPiA+IGFsdGVybmF0aXZlIGlzIHRvIGd1YXJkIGludGVsX3RpbWVsaW5lX2VudGVyL2ludGVs
X3RpbWVsaW5lX2V4aXQgZm9yIHVzZQo+ID4gb3V0c2lkZSBvZiB0aGUgdGltZWxpbmUtPm11dGV4
Lgo+IAo+IFNvIHRoZSBpZGVhIG9mIHRha2luZyBhIHdha2VyZWYgb24gYWxsIGFjdGl2ZSBlbmdp
bmVzIGR1cmluZyByZXRpcmUgaXMKPiBncm93aW5nIG9uIG1lLiBUaGF0J3MgdGhlIGxlc3MgZnJl
cXVlbnQgcGF0aCBhbmQgc28gYXZvaWRzIGFkZGluZwo+IGFub3RoZXIgc2V0IG9mIGF0b21pYyBt
YW5pcHVsYXRpb25zIHRvIGV2ZXJ5IHJlcXVlc3QuCgpPbiBzZWNvbmQgdGhvdWdodCwgbm8gc28g
ZWFzeSBhcyB0aGUgc2V0IG9mIGFjdGl2ZSBlbmdpbmVzIGlzCmluc3VmZmljaWVudCBhcyBuZXcg
ZW5naW5lcyBtYXkgYmVjb21lIGFjdGl2ZSBhcyB3ZSB3YWl0LiBBbmQgdGhlCnRob3VnaHQgb2Yg
anVzdCB0YWtpbmcgYWxsIGVuZ2luZXMgaXMgYSBudWlzYW5jZS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
