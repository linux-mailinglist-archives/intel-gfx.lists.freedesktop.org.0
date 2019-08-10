Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627E088A66
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 11:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE356E27F;
	Sat, 10 Aug 2019 09:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C28B6E27F
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 09:43:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17951806-1500050 for multiple; Sat, 10 Aug 2019 10:43:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190809202926.14545-1-matthew.auld@intel.com>
 <20190809202926.14545-2-matthew.auld@intel.com>
In-Reply-To: <20190809202926.14545-2-matthew.auld@intel.com>
Message-ID: <156543020057.2301.12968530045667318254@skylake-alporthouse-com>
Date: Sat, 10 Aug 2019 10:43:20 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: buddy allocator
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjE6Mjk6MjQpCj4gU2ltcGxlIGJ1ZGR5
IGFsbG9jYXRvci4gV2Ugd2FudCB0byBhbGxvY2F0ZSBwcm9wZXJseSBhbGlnbmVkCj4gcG93ZXIt
b2YtdHdvIGJsb2NrcyB0byBwcm9tb3RlIHVzYWdlIG9mIGh1Z2UtcGFnZXMgZm9yIHRoZSBHVFQs
IHNvIDY0SywKPiAyTSBhbmQgcG9zc2libHkgZXZlbiAxRy4gV2hpbGUgd2UgZG8gc3VwcG9ydCBh
bGxvY2F0aW5nIHN0dWZmIGF0IGEKPiBzcGVjaWZpYyBvZmZzZXQsIGl0IGlzIG1vcmUgaW50ZW5k
ZWQgZm9yIHByZWFsbG9jYXRpbmcgcG9ydGlvbnMgb2YgdGhlCj4gYWRkcmVzcyBzcGFjZSwgc2F5
IGZvciBhbiBpbml0aWFsIGZyYW1lYnVmZmVyLCBmb3Igb3RoZXIgdXNlcyBkcm1fbW0gaXMKPiBw
cm9iYWJseSBhIG11Y2ggYmV0dGVyIGZpdC4gQW55d2F5LCBob3BlZnVsbHkgdGhpcyBjYW4gYWxs
IGJlIHRocm93bgo+IGF3YXkgaWYgd2UgZXZlbnR1YWxseSBtb3ZlIHRvIGhhdmluZyB0aGUgY29y
ZSBNTSBtYW5hZ2UgZGV2aWNlIG1lbW9yeS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgoKSXQgZG9lcyB3aGF0IGl0IHNheXMgb24gdGhlIHRpbi4gU29tZSBk
ZWJhdGUgb3ZlciB0aGUgb3ZlcmFsbCBtb3RpdmF0aW9uCm9mIHRoZSBwYXRjaCwgYnV0IGluIHJl
Z2FyZHMgdG8gaW1wbGVtZW50aW5nIGEgdmVyeSBzaW1wbGUgYnVkZHkKYWxsb2NhdG9yIHRoYXQg
Y2FuIHN0YW5kIGFtb25nc3QgdGhlIG1hbnkgb3RoZXIgYWxsb2NhdGlvbnMgKHRoYXQKdW5mb3J0
dW5hdGVseSBhcmUgdGllZCB0byB0aGVpciB1c2VycywgZGVzcGl0ZSB0aGUga2VybmVsIGhhdmlu
ZyBtYW55CmFkdmFuY2VkIGFsbG9jYXRvcnMgZS5nLiBzbHViLCBub25lIGFyZSBhdmFpbGFibGUg
Zm9yIG1hbmFnaW5nIGEgZHJpdmVyCmFkZHJlc3MgYmxvY2sgLS0gcXVpdGUgYSBudW1iZXIgb2Yg
ZHJpdmVycyBoYXZlIHRoZWlyIG93biBkcm1fbW0KZXF1aXZhbGVudHMsIGluY2x1ZGluZyB2bWFs
bG9jISkgaXQgbG9va3MgdXNlZnVsLiBJIHJlZ2FyZCB0aGlzIGFzIGJlaW5nCm1vcmUgbGliLyBt
YXRlcmlhbCB0aGFuIGFueXRoaW5nIGVsc2UuIE1heWJlIG9uY2Ugd2UgaGF2ZSB0aGUgZXZpY3Rp
b24Kc2NoZW1lcyBmbGVzaGVkIG91dCwgd2UgY2FuIGxpZnQgaXQgdG8gbGliLwoKSSB3b3VsZCBs
aWtlZCB0byBoYXZlIGEgYml0IG1vcmUgb24gdGhlIHRoZW9yeSBvZiBvcGVyYXRpb24gKGhvdykg
aW5zaWRlCnRoZSBidWRkeS5jIGFuZCBzb21lIG1vcmUgb2YgdGhlIHdoeSBpbnNpZGUgdGhlIGJ1
ZGR5LmgsIGVzcGVjaWFsbHkgZm9yCmxpYmlmaWNhdGlvbiB3aGVyZSBwb3RlbnRpYWwgdXNlcnMg
bmVlZCB0byBzZWUgaWYgaXQgZml0cywgYW5kIEkgd291bGQKbGlrZSBhIHN1aXRlIG9mIHBlcmYg
bWV0cmljcyAoYnVpbHRpbiBwZXJmb3JtYW5jZSB0ZXN0cywgc3VwcGxlbWVudGFsCmZyYWdtZW50
YXRpb24gc3RhdGlzdGljcykuLi4gU28gSSB0aGluayB0aGVyZSBpcyBhIGJpdCBtb3JlIHdvcmsg
dG8gYmUKZG9uZSB0byBtYWtlIGl0IHN1aXRhYmxlIGZvciBsaWIvLCBpLmUuIHNvbWV0aGluZyB0
aGF0IG90aGVyIHBlb3BsZSB3aWxsCndhbnQgdG8gdXNlIQoKUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
