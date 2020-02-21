Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED16A167FF3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 15:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA9D6F456;
	Fri, 21 Feb 2020 14:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913816F456;
 Fri, 21 Feb 2020 14:18:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20303055-1500050 for multiple; Fri, 21 Feb 2020 14:18:46 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200221111701.30006-2-janusz.krzysztofik@linux.intel.com>
References: <20200221111701.30006-1-janusz.krzysztofik@linux.intel.com>
 <20200221111701.30006-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <158229472453.6499.5647755301301891180@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Feb 2020 14:18:44 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 1/2] lib/i915: Restrict mmap
 types to GTT if no MMAP_OFFSET support
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDItMjEgMTE6MTc6MDApCj4gQ29tbWl0
IGIwZGE4YmI3MDVjMCAoImxpYi9pOTE1OiBmb3JfZWFjaF9tbWFwX29mZnNldF90eXBlKCkiKQo+
IGludHJvZHVjZWQgYSBtYWNybyB0aGF0IG1ha2VzIGl0IGVhc3kgdG8gcmVwZWF0IGEgdGVzdCBi
b2R5IHdpdGhpbiBhCj4gbG9vcCBmb3IgZWFjaCBtbWFwLW9mZnNldCBtYXBwaW5nIHR5cGUgc3Vw
cG9ydGVkIGJ5IHY0IG9mIGk5MTUgTU1BUF9HVFQKPiBBUEkuIEhvd2V2ZXIsIHdoZW4gcnVuIG9u
IGFuIG9sZGVyIHZlcnNpb24gb2YgdGhlIGRyaXZlciwgdGhvc2UKPiBzdWJ0ZXN0cyBhcmUgYmVs
aWV2ZWQgdG8gYmUgc3RpbGwgcmVwZWF0ZWQgZm9yIGVhY2gga25vd24gbW1hcC1vZmZzZXQKPiBt
YXBwaW5nIHR5cGUgd2hpbGUgZWZmZWN0aXZlbHkgZXhlcmNpc2luZyBHVFQgbWFwcGluZyB0eXBl
IG9ubHkuICBBcwo+IHRoYXQgbWF5IGJlIGNvbmZ1c2luZywgZml4IGl0Lgo+IAo+IEl0IGhhcyBi
ZWVuIGFzc3VtZWQgdGhhdCB0aGUgbW9kaWZpZWQgbWFjcm8gaXMgc3RpbGwgc3VpdGFibGUgZm9y
IHVzZQo+IGluc2lkZSBnZW1fbW1hcF9vZmZzZXQgdGVzdCBpdHNlbGYuICBXb3VsZCB0aGF0IG5v
dCBiZSBjYXNlLAo+IGdlbV9tbWFwX29mZnNldCBjb3VsZCByZWRlZmluZSB0aGUgbWFjcm8gYmFj
ayB0byBpdHMgaW5pdGlhbCBmb3JtIGZvcgo+IGludGVybmFsIHVzZS4KPiAKPiB2MjogTW92ZSBl
eHRyYSBjb25kaXRpb24gdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBhbmQgY2FsbCBpdCB2aWEKPiAg
ICAgZm9yX2VhY2hfaWYoKSwgaW4gY2FzZSB3ZSBuZWVkIHRvIGZpeCBpdCBhZ2FpbiBpbiBmdXR1
cmUgKENocmlzKQo+IHYzOiBGaXggYmxpbmQgY29weS1wYXN0ZQo+IAo+IFN1Z2dlc3RlZC1ieTog
TWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CltJIHdhcyBq
dXN0IHdhaXRpbmcgZm9yIHRoZSBwcmV2aW91cyBzZW5kIHRvIGhpdCB0aGUgc2hhcmRzIGFzIEkg
d2FzIHRvbwpsYXp5IHRvIGNoZWNrIG15c2VsZl0KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
