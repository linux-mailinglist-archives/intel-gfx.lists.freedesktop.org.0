Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51751E0192
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC816E52A;
	Tue, 22 Oct 2019 10:06:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE5AC6E52A
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:06:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18922694-1500050 for multiple; Tue, 22 Oct 2019 11:06:04 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
 <20191022094726.3001-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191022094726.3001-9-tvrtko.ursulin@linux.intel.com>
Message-ID: <157173876105.2684.1405560307687788908@skylake-alporthouse-com>
Date: Tue, 22 Oct 2019 11:06:01 +0100
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915/selftests: Convert eviction
 selftests to gt/ggtt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yMiAxMDo0NzoyMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnZlcnQgdGhlIHRl
c3QgY29kZSB0byB3b3JrIGRpcmVjdGx5IG9uIHdoYXQgaXQgbmVlZHMgcmF0aGVyIHRoYW4KPiBn
b2luZyB0aHJvdWdoIHRoZSB0b3AtbGV2ZWwgaTkxNS4KPiAKPiBUaGlzIGVuYWJsZXMgYW5vdGhl
ciBuYXR1cmFsIHVzYWdlIGZvciBmb3JfZWFjaF9lbmdpbmUoLi4sIGd0LCAuLikuCj4gCj4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFs
c28gaTkxNV9nZW1fZ3R0L2V2aWN0IHRoZW1zZWx2ZXMgbmVlZCB0byBiZSBjb21wYXJ0bWVudGFs
aXNlZCBiZXR0ZXIsCnNvIHRoaXMgaXMgZXZlbiBtb3JlIG5hdHVyYWwgdGhhbiBpdCBsb29rcyA6
KQoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
