Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85260F7659
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 15:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5CD6E207;
	Mon, 11 Nov 2019 14:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3B96E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 14:27:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19160739-1500050 for multiple; Mon, 11 Nov 2019 14:27:20 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <57389ded-7186-9d5c-3d46-b8aa0a7e025c@linux.intel.com>
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
 <20191111133205.11590-2-chris@chris-wilson.co.uk>
 <57389ded-7186-9d5c-3d46-b8aa0a7e025c@linux.intel.com>
Message-ID: <157348243641.28106.6605301745084118769@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 14:27:16 +0000
Subject: Re: [Intel-gfx] [FIXES 2/3] drm/i915/userptr: Handle unlocked gup
 retries
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMSAxNDoxOTozMSkKPiAKPiBPbiAxMS8x
MS8yMDE5IDEzOjMyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBFbmFibGUgZ3VwIHRvIHJldHJ5
IGFuZCBmYXVsdCB0aGUgcGFnZXMgb3V0c2lkZSBvZiB0aGUgbW1hcF9zZW0gbG9jayBpbgo+ID4g
b3VyIHdvcmtlci4gQXMgd2UgYXJlIGluc2lkZSBvdXIgd29ya2VyLCBvdXRzaWRlIG9mIGFueSBj
cml0aWNhbCBwYXRoLAo+ID4gd2UgY2FuIGFsbG93IHRoZSBtbWFwX3NlbSBsb2NrIHRvIGJlIGRy
b3BwZWQgaW4gb3JkZXIgdG8gc2VydmljZSBhIHBhZ2UKPiA+IGZhdWx0OyB0aGlzIGluIHR1cm4g
YWxsb3dzIHRoZSBtbSB0byBwb3B1bGF0ZSB0aGUgcGFnZSB1c2luZyBhIHNsb3cKPiA+IGZhdWx0
IGhhbmRsZXIuCj4gPiAKPiA+IFRlc3RjYXNlOiBpZ3QvZ2VtX3VzZXJwdHIvdXNlcmZhdWx0Cj4g
Cj4gVGhlcmUgYXJlIG5vIHJlZmVyZW5jZXMgb3IgZXhwbGFuYXRpb24gb24gd2hhdCBkb2VzIHRo
aXMgZml4PwoKZ3VwIHNpbXBseSBmYWlscyBpZiBpdCBpcyBub3QgYWxsb3dlZCB0byBkcm9wIHRo
ZSBsb2NrIGZvciBzb21lIGZhdWx0cywKCl9fZ2V0X3VzZXJfcGFnZXNfbG9ja2VkOgogICAgICAg
ICAgICAgICAgcmV0ID0gX19nZXRfdXNlcl9wYWdlcyh0c2ssIG1tLCBzdGFydCwgbnJfcGFnZXMs
IGZsYWdzLCBwYWdlcywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1h
cywgbG9ja2VkKTsKICAgICAgICAgICAgICAgIGlmICghbG9ja2VkKQogICAgICAgICAgICAgICAg
ICAgICAgICAvKiBWTV9GQVVMVF9SRVRSWSBjb3VsZG4ndCB0cmlnZ2VyLCBieXBhc3MgKi8KICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKCnVzZXJmYXVsdCBiZWluZyB0aGUgZmly
c3QgdGltZSBJIGRpc2NvdmVyZWQgdGhpcyBldmVuIGV4aXN0ZWQuIFNpbmNlIHdlCmFyZSBvbmx5
IGhvbGRpbmcgdGhlIG1tYXBfc2VtIGZvciB0aGUgZ3VwIChhbmQgbm90IHByb3RlY3RpbmcgYW55
dGhpbmcKZWxzZSkgd2UgY2FuIHNpbXBseSBhbGxvdyBndXAgdG8gZHJvcCB0aGUgbG9jayBpZiBp
dCBuZWVkcyB0by4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
