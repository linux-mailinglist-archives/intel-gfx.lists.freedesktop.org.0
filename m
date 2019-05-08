Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5141793C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B545898A7;
	Wed,  8 May 2019 12:17:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FACF89804;
 Wed,  8 May 2019 12:17:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16489885-1500050 for multiple; Wed, 08 May 2019 13:17:34 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190508121058.27038-2-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <155731785242.28545.4596359087636884591@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 May 2019 13:17:32 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/21] scripts/trace.pl: Fix
 after intel_engine_notify removal
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMzoxMDozOCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFmdGVyIHRoZSByZW1v
dmFsIG9mIGVuZ2luZSBnbG9iYWwgc2Vxbm9zIGFuZCB0aGUgY29ycmVzcG9uZGluZwo+IGludGVs
X2VuZ2luZV9ub3RpZnkgdHJhY2Vwb2ludHMgdGhlIHNjcmlwdCBuZWVkcyB0byBiZSBhZGp1c3Rl
ZCB0byBjb3BlCj4gd2l0aCB0aGUgbmV3IHN0YXRlIG9mIHRoaW5ncy4KPiAKPiBUbyBrZWVwIHdv
cmtpbmcgaXQgc3dpdGNoZXMgb3ZlciB1c2luZyB0aGUgZG1hX2ZlbmNlOmRtYV9mZW5jZV9zaWdu
YWxlZDoKPiB0cmFjZXBvaW50IGFuZCBrZWVwcyBvbmUgZXh0cmEgaW50ZXJuYWwgbWFwIHRvIGNv
bm5lY3QgdGhlIGN0eC1zZXFubyBwYWlycwo+IHdpdGggZW5naW5lcy4KCklzIHRoZSBtYXAgc3Vp
dGFibGUgZm9yIHRoZSBwbGFubmVkIChieSBtZSkKCglzL2k5MTVfcmVxdWVzdF93YWl0X2JlZ2lu
L2RtYV9mZW5jZV93YWl0X2JlZ2luLwoKSSBndWVzcyBpdCBzaG91bGQgYmUuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
