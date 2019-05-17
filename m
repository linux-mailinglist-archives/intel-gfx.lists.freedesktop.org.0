Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D7221932
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92052898A3;
	Fri, 17 May 2019 13:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C99089893
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 13:30:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16589697-1500050 for multiple; Fri, 17 May 2019 14:30:18 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1b639da1-0c28-fead-19be-814e2a99a1b3@linux.intel.com>
References: <20190515130052.4475-1-chris@chris-wilson.co.uk>
 <20190515130052.4475-4-chris@chris-wilson.co.uk>
 <1b639da1-0c28-fead-19be-814e2a99a1b3@linux.intel.com>
Message-ID: <155809981690.12244.14203829964352634007@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 14:30:16 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Downgrade NEWCLIENT to
 non-preemptive
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMzo1NTo0OCkKPiAKPiBPbiAxNS8w
NS8yMDE5IDE0OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBDb21taXQgMTQxM2IyYmMwNzE3
ICgiZHJtL2k5MTU6IFRyaW0gTkVXQ0xJRU5UIGJvb3N0aW5nIikgaGFkIHRoZQo+ID4gaW50ZW5k
ZWQgY29uc2VxdWVuY2Ugb2Ygbm90IGFsbG93aW5nIGEgc2VxdWVuY2Ugb2Ygd29yayB0aGF0IG1l
cmVseQo+ID4gY3Jvc3NlZCBpbnRvIGEgbmV3IGVuZ2luZSB0aGUgcHJpdmlsZWdlIHRvIGJlIHBy
b21vdGVkIHRvIE5FV0NMSUVOVAo+IAo+IFdoYXQgZG8geW91IG1lYW4gd2l0aCBjcm9zc2VkIGlu
dG8gYSBuZXcgZW5naW5lPyBBdCBmaXJzdCBJIHRob3VnaHQgdGhlIAo+IHN0YXRlbWVudCBpbXBs
aWVzIHRoZSBlbmdpbmUgdGltZWxpbmUgd2FzIHVzZWQgdG8gcXVlcnkgZm9yIHByZXZpb3VzIAo+
IHJlcXVlc3QsIGJ1dCB0aGF0J3Mgbm90IHRydWUuCgpPdXIgcHJldmlvdXMgdGVzdCB3YXMgaWYg
YWxsIHByZXZpb3VzIHJlcXVlc3RzIGluIHRoZSByaW5nIChhbG9uZyB0aGUKZW5naW5lIHRpbWVs
aW5lKSB3ZXJlIGNvbXBsZXRlIHRoZW4gZ2l2ZSB0aGlzIG5ldyByZXF1ZXN0IGEgYm9vc3QuIFRo
YXQKYWxzbyBnYXZlIHRoZSBib29zdCB0byBhbnkgZGVwZW5kZW5jaWVzIGluIG90aGVyIGNvbnRl
eHRzIGFuZCBhY3Jvc3MKZW5naW5lcyAtLSB0aGUgY29uc2lkZXJhdGlvbiB0aGVyZSB3YXMgZm9y
IGEgZGlzcGxheSBzZXJ2ZXIgd2hvIHdhcyBvbmx5CmJsaXR0aW5nIGZyb20gY2xpZW50IGJ1ZmZl
cnMgaW50byB0aGUgZnJhbWVidWZmZXIgdG8gZ2V0IGFuIGVhcmx5IGJvb3N0CmFuZCBidW1wIGFs
bCBvZiBpdHMgY2xpZW50cyBpbiBvcmRlciB0byBiZSBhaGVhZCBvZiB0aGUgbmV4dCB2Ymxhbmsu
IFRoZQpzZWNvbmQgdGhvdWdodCB3YXMgdGhhdCB3YXMgYSBiaXQgdG9vIHdpZGUsIGJ1dCBub3cg
d2UgaGF2ZSBldmlkZW5jZQpmcm9tIHdpbGwtaXQtc2NhbGUgc3R5bGUgb3ZlcnNhdHVyYXRpb24g
b2YgdHJhbnNjb2RlIHdvcmsgdGhhdCB3ZSBzaG91bGQKdGFrZSBpbnRvIGFjY291bnQgdGhlIHdv
cmtsb2FkcyBhY3Jvc3MgZW5naW5lcyBhbmQgYWNyb3NzIGNvbnRleHRzLgoKSSB0aGluayB0aGVz
ZSB0d28gcGF0Y2hlcyBhcmUgcXVpdGUgbmljZSBpbiB0aGF0IGVmZmVjdCwgd29yayBpcwplc3Nl
bnRpYWxseSBib3R0bGVkIHVwIHVudGlsIHJlcXVpcmVkIGFuZCBzbyBzaG91bGQgYXJyaXZlIGF0
IHRoZSBHUFUgaW4KYmF0Y2hlcyBvZiByZWxhdGVkIHdvcmsgKGJ1dCB3ZSBkb24ndCBwcmV2ZW50
IHdvcmsgZnJvbSBiZWluZyBleGVjdXRlZAppZiB0aGUgR1BVIGlzIGlkbGUpLiBUaGVuIGNvbWJp
bmVkIHdpdGggdGhlIHRpbWVzbGljZSB3ZSB3aWxsCnJvdW5kLXJvYmluIGJldHdlZW4gdGhlIHdv
cmsgcmVxdWlyZWQgZm9yIHRoZSBleHRlcm5hbCBvYnNlcnZlciB0byBtYWtlCnByb2dyZXNzIGJl
Zm9yZSBkb2luZyBvdGhlciB3b3JrLgoKSXQgbWFrZXMgYSBwcmV0dHkgcGljdHVyZSBpbiBteSBo
ZWFkIGFuZCBzbyBmYXIgbG9va3MgcmVzcGVjdGFibGUgaW4gdGhlCndzaW0gY29tcGFyaXNvbnMg
KGFzIHdlbGwgYXMgdGhlIHNhbXBsZSB0cmFuc2NvZGUgcmVwcm9kdWNlcnMpLiBUaGUKY2FzdWFs
dHkgaXMgdGhlIHJlYWx0aW1lLXJlc3BvbnNlIHVuZGVyIGxvYWQgaGFzIGxvc3QgaXRzIHByZWVt
cHRpdmUKcG93ZXIsIGFuZCBpcyByZWxlZ2F0ZWQgdG8ganVzdCB0b3dhcmRzIHRoZSBoZWFkIG9m
IHRoZSBxdWV1ZSBhcyBvcHBvc2VkCnRvIHRoZSBmcm9udC4gT24gdGhlIG90aGVyIGhlYWQsIGl0
IG1ha2VzIFdBSVQgZmFyLCBmYXIgbGVzcyBzcGVjaWFsLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
