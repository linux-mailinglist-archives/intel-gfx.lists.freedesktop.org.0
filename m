Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8EB303AA9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D7789AEE;
	Tue, 26 Jan 2021 10:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F0589AEE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 10:46:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23701710-1500050 for multiple; Tue, 26 Jan 2021 10:46:47 +0000
MIME-Version: 1.0
In-Reply-To: <7880508f-6f43-19a4-c916-30a251cc1f39@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
 <4868954d-e4a3-a72b-c114-39f8ee00404b@linux.intel.com>
 <7880508f-6f43-19a4-c916-30a251cc1f39@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 10:46:49 +0000
Message-ID: <161165800931.29150.10734121682488548641@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: setup the LMEM region
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMjEtMDEtMjYgMTA6Mzg6MDkpCj4gT24gMjYvMDEvMjAy
MSAxMDowOSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gPiAKPiA+IE9uIDI2LzAxLzIwMjEgMDk6
NDYsIE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+PiArc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24g
Kgo+ID4+ICtpOTE1X2dlbV9zZXR1cF9sbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQo+ID4+ICt7Cj4gPj4gK8KgwqDCoCByZXR1cm4gc2V0dXBfbG1lbShpOTE1KTsKPiA+PiArfQo+
ID4gCj4gPiBXYXMgaXQgZXZlciBkaXNjdXNzZWQgaWYgdGhlcmUgd2FzIGFuIGVhc3kgd2F5IChh
bmQgaWYgaXQgbWFrZXMgc2Vuc2UgCj4gPiBhY3R1YWxseSkgdG8gbW92ZSB0aGlzIGZyb20gR0VN
IHRvIEdUIChpbiBuYW1lIGFuZCBpbnB1dCBwYXJhbWV0ZXI/Cj4gCj4gWWVhaCwgbWFrZXMgc2Vu
c2UsIGVzcGVjaWFsbHkgc2luY2UgdGhpcyBpcyBub3cgaW4gZ3QvCj4gCj4gU28ganVzdDoKPiBp
bnRlbF9ndF9zZXR1cF9sbWVtKGd0KQoKVGhlIGltcGxpY2F0aW9uIGlzIHRoYXQgdGhlIG1lbW9y
eSByZWdpb24gc2hvdWxkIGJlIGFkZGVkIGR1cmluZyB0aGUgR1QKcHJvYmUsIHNvIHNvbWUgamln
Z2xpbmcgYXJvdW5kIHJlcXVpcmVkLiAoU28gYXMgZWFjaCBHVCBjb21lcyBvbmxpbmUsCndlIGFk
ZCBpdCdzIGF2YWlsYWJsZSBtZW1vcnkgdG8gdGhlIHBvb2wuKQoKU2hvdWxkbid0IGJlIHRvbyBi
YWQgYXMgY29uY2VwdHVhbGx5IGl0J3MganVzdCBtb3ZpbmcgdGhlIG1lbXByb2JlIGRvd24KYSBj
b3VwbGUgb2YgbGluZXMgaW4gaTkxNV9kcml2ZXJfaHdfcHJvYmUgOikKLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
