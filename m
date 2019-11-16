Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73E6FF484
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 18:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0478789DFF;
	Sat, 16 Nov 2019 17:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C933A89DFF
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 17:54:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19226453-1500050 for multiple; Sat, 16 Nov 2019 17:54:40 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
References: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
Message-ID: <157392687837.16970.18303043604887369318@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 16 Nov 2019 17:54:38 +0000
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTYgMTc6NTE6MjkpCj4gVGhlIGdlbmVyYWwg
Y29uY2VwdCB3YXMgdGhhdCBpbnRlbF90aW1lbGluZS5hY3RpdmVfY291bnQgd2FzIGxvY2tlZCBi
eQo+IHRoZSBpbnRlbF90aW1lbGluZS5tdXRleC4gVGhlIGV4Y2VwdGlvbiB3YXMgZm9yIHBvd2Vy
IG1hbmFnZW1lbnQsIHdoZXJlCj4gdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRleHQtPnRpbWVsaW5l
IGNvdWxkIGJlIG1hbmlwdWxhdGVkIHVuZGVyIHRoZQo+IGdsb2JhbCB3YWtlcmVmLm11dGV4Lgo+
IAo+IFRoaXMgd2FzIHF1aXRlIHNvbGlkLCBhcyB3ZSBhbHdheXMgbWFuaXB1bGF0ZWQgdGhlIHRp
bWVsaW5lIG9ubHkgd2hpbGUKPiB3ZSBoZWxkIGFuIGVuZ2luZSB3YWtlcmVmLgo+IAo+IEFuZCB0
aGVuIHdlIHN0YXJ0ZWQgcmV0aXJpbmcgcmVxdWVzdHMgb3V0c2lkZSBvZiBzdHJ1Y3RfbXV0ZXgs
IG9ubHkKPiB1c2luZyB0aGUgdGltZWxpbmVzLmFjdGl2ZV9saXN0IGFuZCB0aGUgdGltZWxpbmUt
Pm11dGV4LiBUaGVyZSB3ZQo+IHN0YXJ0ZWQgbWFuaXB1bGF0aW5nIGludGVsX3RpbWVsaW5lLmFj
dGl2ZV9jb3VudCBvdXRzaWRlIG9mIGFuIGVuZ2luZQo+IHdha2VyZWYsIGFuZCBzbyBpbnRyb2R1
Y2VkIGEgcmFjZSBiZXR3ZWVuIF9fZW5naW5lX3BhcmsoKSBhbmQKPiBpbnRlbF9ndF9yZXRpcmVf
cmVxdWVzdHMoKSwgYSByYWNlIHRoYXQgY291bGQgcmVzdWx0IGluIHRoZQo+IGVuZ2luZS0+a2Vy
bmVsX2NvbnRleHQgbm90IGJlaW5nIGFkZGVkIHRvIHRoZSBhY3RpdmUgdGltZWxpbmVzIGFuZCBz
bwo+IGxvc2luZyByZXF1ZXN0cywgd2hpY2ggY2F1c2VkIHVzIHRvIGtlZXAgdGhlIHN5c3RlbSBw
ZXJtYW5lbnRseSBwb3dlcmVkCj4gdXAgW2FuZCB1bmxvYWRhYmxlXS4KPiAKPiBUaGUgcmFjZSB3
b3VsZCBiZSBlYXN5IHRvIGNsb3NlIGlmIHdlIGNvdWxkIHRha2UgdGhlIGVuZ2luZSB3YWtlcmVm
IGZvcgo+IHRoZSB0aW1lbGluZSBiZWZvcmUgd2UgcmV0aXJlIC0tIGV4Y2VwdCB0aW1lbGluZXMg
YXJlIG5vdCBib3VuZCB0byBhbnkKPiBlbmdpbmUgYW5kIHNvIHdlIHdvdWxkIG5lZWQgdG8ga2Vl
cCBhbGwgYWN0aXZlIGVuZ2luZXMgYXdha2UuIFRoZQo+IGFsdGVybmF0aXZlIGlzIHRvIGd1YXJk
IGludGVsX3RpbWVsaW5lX2VudGVyL2ludGVsX3RpbWVsaW5lX2V4aXQgZm9yIHVzZQo+IG91dHNp
ZGUgb2YgdGhlIHRpbWVsaW5lLT5tdXRleC4KClNvIHRoZSBpZGVhIG9mIHRha2luZyBhIHdha2Vy
ZWYgb24gYWxsIGFjdGl2ZSBlbmdpbmVzIGR1cmluZyByZXRpcmUgaXMKZ3Jvd2luZyBvbiBtZS4g
VGhhdCdzIHRoZSBsZXNzIGZyZXF1ZW50IHBhdGggYW5kIHNvIGF2b2lkcyBhZGRpbmcKYW5vdGhl
ciBzZXQgb2YgYXRvbWljIG1hbmlwdWxhdGlvbnMgdG8gZXZlcnkgcmVxdWVzdC4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
