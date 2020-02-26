Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C8617018D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 15:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3CC6E2E5;
	Wed, 26 Feb 2020 14:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAAE6E2E5;
 Wed, 26 Feb 2020 14:49:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20358529-1500050 for multiple; Wed, 26 Feb 2020 14:49:01 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200226125746.12249-1-janusz.krzysztofik@linux.intel.com>
References: <20200226125746.12249-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158272854017.4613.11552037429170445400@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Feb 2020 14:49:00 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] tests/gem_userptr_blits: Refresh
 map-fixed-invalidate* subtests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDItMjYgMTI6NTc6NDYpCj4gbWFwLWZp
eGVkLWludmFsaWRhdGUqIHN1YnRlc3RzIHV0aWxpemUgZ2VtX3NldF90aWxpbmcoKSB3aGljaCBt
YXkgZmFpbCwKPiBlLmcuIG9uIGhhcmR3YXJlIHdpdGggbm8gbWFwcGFibGUgYXBlcnR1cmUsIGR1
ZSB0byBtaXNzaW5nIGZlbmNlcy4KPiBTa2lwIHRob3NlIHN1YnRlc3RzIGlmIGZlbmNlcyBhcmUg
bm90IGF2YWlsYWJsZS4KPiAKPiBNb3Jlb3ZlciwgdGhvc2Ugc3VidGVzdHMgdXNlIEdFTV9NTUFQ
X0dUVCBJT0NUTCB3aGljaCBoYXMgYmVlbiByZXBsYWNlZAo+IGJ5IEdFTV9NTUFQX09GRlNFVCB0
aGF0IHN1cHBvcnRzIG90aGVyIG1hcHBpbmcgdHlwZXMsIG5vdCBvbmx5IEdUVC4KPiBVc2UgdGhl
IG5ldyBJT0NUTCBhbmQgZHluYW1pY2FsbHkgZXhhbWluZSBhbGwgTU1BUF9PRkZTRVQgdHlwZXMK
PiBzdXBwb3J0ZWQgYnkgaGFyZHdhcmUuCj4gCj4gdjI6IEV4YW1pbmUgYWxsIHN1cHBvcnRlZCBN
TUFQX09GRlNFVCB0eXBlcywgbm90IG9ubHkgdGhlIGZpcnN0IG9uZQo+ICAgICB0aGF0IHdvcmtz
LAo+ICAgLSBhZGQgc3VidGVzdCBkZXNjcmlwdGlvbi4KPiB2MzogUmVmcmVzaCBvbiB0b3Agb2Yg
Y29tbWl0IDM4NGU3ZWNiNzQ2NCAoImxpYi9pOTE1OiBSZXN0cmljdCBtbWFwCj4gICAgIHR5cGVz
IHRvIEdUVCBpZiBubyBNTUFQX09GRlNFVCBzdXBwb3J0IikuCj4gCj4gU2lnbmVkLW9mZi1ieTog
SmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+
IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+CkxndG0s
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
