Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA124644E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA84F89A0F;
	Fri, 14 Jun 2019 16:36:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6367B89A0F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:36:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905247-1500050 for multiple; Fri, 14 Jun 2019 17:36:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-29-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-29-tvrtko.ursulin@linux.intel.com>
Message-ID: <156053016649.7796.11759186473286693691@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:36:06 +0100
Subject: Re: [Intel-gfx] [RFC 28/31] drm/i915: Save trip via top-level i915
 in a few more places
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyOCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEZvciBndCByZWxhdGVk
IG9wZXJhdGlvbnMgaXQgbWFrZXMgbW9yZSBsb2dpY2FsIHNlbnNlIHRvIHN0YXkgaW4gdGhlIHJl
YWxtCj4gb2YgZ3QgaW5zdGVhZCBvZiBkZXJlZmVyZW5jaW5nIHZpYSBkcml2ZXIgaTkxNS4KCkFu
ZCBxdWl0ZSBhIGZldyBvZiB0aG9zZSBjb21lIHVuZGVyIHRoZSBzY29wZSBvZiB0cmFja2luZyB2
bSBpbgppbnRlbF9jb250ZXh0IGFuZCBzaG91bGQgc2ltcGx5IGRpc2FwcGVhci4KCj4gVGhpcyBw
YXRjaCBoYW5kbGVzIGEgZmV3IG9mIHRoZSBlYXN5IG9uZXMgd2l0aCB3b3JrIHJlcXVpcmluZyBt
b3JlCj4gcmVmYWN0b3Jpbmcgc3RpbGwgb3V0c3RhbmRpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
