Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1A110C7BF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6694D6E7AC;
	Thu, 28 Nov 2019 11:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283796E7AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:08:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19373774-1500050 for multiple; Thu, 28 Nov 2019 11:08:38 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191119113710.1162-4-abdiel.janulgue@linux.intel.com>
References: <20191119113710.1162-1-abdiel.janulgue@linux.intel.com>
 <20191119113710.1162-4-abdiel.janulgue@linux.intel.com>
Message-ID: <157493931574.7216.10717442059354531790@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 28 Nov 2019 11:08:35 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Add cpu fault handler for
 mmap_offset
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTkgMTE6Mzc6MTApCj4gRmF1bHQgaGFu
ZGxlciB0byBoYW5kbGUgbWlzc2luZyBwYWdlcyBmb3Igc2htZW0tYmFja2VkIG9iamVjdHMuCj4g
Cj4gdjI6IGJhaWwgb3V0IG9mIGluc2VydGluZyBQVEVzIHdoZW4gZmFpbGluZyB0byBpbnNlcnQg
dGhlCj4gICAgIGZhdWx0IGFkZHJlc3MKPiB2MzogaGFzIHN0cnVjdCBwYWdlIGNoZWNrCj4gdjQ6
IEFkZCBzZWxmLXRlc3QgZm9yIHZhbGlkYXRpbmcgQ1BVIGZhdWx0IGhhbmRsZXIgdG8gZW5zdXJl
IFBURXMKPiAgICAgYXJlIHJldm9rZWQgd2hlbiBhbiBvYmplY3QgaXMgdW5ib3VuZC4KPiB2NTog
QWRkIGNvbW1lbnQgd2hlcmUgUFRFcyBhcmUgcmV2b2tlZCAoQ2hyaXMpCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IFJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClVoIG9o
LCB0aGUgbW1hcCgpIGRvZXMgcmVtYWluIHZhbGlkIHBhc3QgYSBnZW1fY2xvc2UoKSAtLSB0aGUK
dm1fYXJlYV9zdHJ1Y3QgaXMgbGFja2luZyBhIHJlZmVyZW5jZSB0byB0aGUgb2JqZWN0PwotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
