Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C84268A3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 18:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818A289C29;
	Wed, 22 May 2019 16:51:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B6889C1F;
 Wed, 22 May 2019 16:51:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16644006-1500050 for multiple; Wed, 22 May 2019 17:51:25 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522155720.28723-15-tvrtko.ursulin@linux.intel.com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
 <20190522155720.28723-15-tvrtko.ursulin@linux.intel.com>
Message-ID: <155854388435.28319.18327951367568035837@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 17:51:24 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 14/15] gem_wsim: Fix prng
 usage
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxNjo1NzoxOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEJhY2sgd2hlbiBnZW1f
d3NpbSB1c2VkIGZvcmtpbmcgaXQgd2FzIHNhZmUgdG8gdXNlIHRoZSBjb21tb24gc3RvcmFnZQo+
IHBybmcsIGJ1dCBhZnRlciBjb252ZXJ0aW5nIHRvIHRocmVhZHMgaXQgbm8gbG9uZ2VyIGlzLgo+
IAo+IEZpeCBieSBzdG9yaW5nIGFuZCB1c2luZyBhIG5ldyBwZXIgd29ya2xvYWQgc2VlZCBmb3Ig
YmF0Y2ggYnVmZmVyCj4gZHVyYXRpb24gcmFuZG9tbmVzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpCdXQgSSBzdWdnZXN0IHNxdWFz
aGluZyB0aGlzIHdpdGggdGhlIGZvbGxvd2luZyBwYXRjaCBhcyB0aGlzIGludHJvZHVjZXMKYSB2
YXJpYWJsZSByYW5kb20gc2VlZDsgYW5kIHRoZSBuZXh0IHBhdGNoIGFsbG93cyBpdCB0byBiZQpw
cmUtZGV0ZXJtaW5lZCBhZ2Fpbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
