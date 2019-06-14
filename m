Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E064641E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A354C89319;
	Fri, 14 Jun 2019 16:30:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6315489319
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:30:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905163-1500050 for multiple; Fri, 14 Jun 2019 17:30:42 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-25-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-25-tvrtko.ursulin@linux.intel.com>
Message-ID: <156052984034.7796.3724777676080347884@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:30:40 +0100
Subject: Re: [Intel-gfx] [RFC 24/31] drm/i915: Compartmentalize
 i915_ggtt_cleanup_hw
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyNCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGJldHRlciBsb2dpY2FsIG9yZ2FuaXphdGlvbiBvZiBvdXIgY29kZSwgbWFr
ZQo+IHRoZSBmaXJzdCBzdGVwIHRvd2FyZHMgbWFraW5nIHRoZSBnZ3R0IGNvZGUgYmV0dGVyIGlz
b2xhdGVkIGZyb20gd2lkZXIKPiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZS4KPiAKPiB2MjoKPiAg
KiBDbGVhbnVwIG9mIG1tLndjX3N0YXNoIGRvZXMgbm90IG5lZWQgc3RydWN0X211dGV4LiAoQ2hy
aXMpCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KCiogc2hha2VzIGZpcnN0IGF0IHN0cnVjdF9tdXRleAoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
