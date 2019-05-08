Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506217B1F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 15:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8501C89394;
	Wed,  8 May 2019 13:57:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5937889394;
 Wed,  8 May 2019 13:57:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16491120-1500050 for multiple; Wed, 08 May 2019 14:56:57 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8d694e1c-93b8-dcab-2fd4-cd9e3cd4bb72@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-17-tvrtko.ursulin@linux.intel.com>
 <155731847301.28545.3793641581373958416@skylake-alporthouse-com>
 <8d694e1c-93b8-dcab-2fd4-cd9e3cd4bb72@linux.intel.com>
Message-ID: <155732381542.28545.8719412973977978878@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 May 2019 14:56:55 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 16/21] gem_wsim: Some more
 example workloads
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxNDo1MDo0MSkKPiAKPiBPbiAwOC8w
NS8yMDE5IDEzOjI3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTA4IDEzOjEwOjUzKQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBBIGZldyBhZGRpdGlvbmFsIHdvcmtsb2Fk
cyB1c2VmdWwgZm9yIGV4cGVyaW1lbnRpbmcgd2l0aCBzY2hlZHVsaW5nLgo+ID4+Cj4gPj4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+
IAo+ID4gQXJlIHRoZSBleHRyYSBtb2RlcyAmIC53c2ltIHN1cHBvcnRlZCBieSBzY3JpcHRzL21l
ZGlhLWJlbmNoLnBsPwo+ID4gaS5lLiBjYW4gSSBqdXN0IHJ1biBtZWRpYS1iZW5jaC5wbCBhbmQg
aGF2ZSBpdCBleGVyY2lzZSBhbGwgdGhlIG5ldwo+ID4gZmVhdHVyZXM/Cj4gCj4gTm90IHN1cmUg
d2hhdCB5b3UgbWVhbiBieSBleHRyYSBtb2Rlcz8gSWYgYWxsIG5ldyB3c2ltIGNvbW1hbmRzIHRo
ZW4gbm8uIAo+IFRoZXkgYXJlIG5vdCBpbiB0aGUgZGVmYXVsdCBtZWRpYS1iZW5jaC5wbCBzZXQu
IFRoZSB3b3JrbG9hZHMgZnJvbSB0aGlzIAo+IHBhdGNoIGFyZSBub3QgaW4gdGhhdCBzZXQgc28g
YXJlIGp1c3QgZm9yIHJlZmVyZW5jZS4KClRoYXQncyB3aGF0IEkgbWVhbnQsIGFyZSB0aGUgbmV3
IGV4YW1wbGUud3NpbSB3aXRoIGV4cGxpY2l0IGVuZ2luZSBtYXBzCmFuZCBzbyBJIHByZXN1bWUg
aW50ZXItbWl4aW5nIG9mIGxvYWQtYmFsYW5jZWQgd29ya2xvYWRzIHdpdGggb3RoZXIgd29yawpp
bmNsdWRlZCBpbiB0aGUgZGVmYXVsdCBzZXQgcnVuIGJ5IC4vc2NyaXB0cy9tZWRpYS1iZW5jaC5w
bAoKV2hhdCdzIHRoZSBtaW5pbXVtIGFtb3VudCBvZiBlZmZvcnQgSSBuZWVkIHRvIGV4ZXJjaXNl
IGFsbCB0aGUgbmV3CmZlYXR1cmVzIG9mIGdlbV93c2ltPyA6KQoKPiBWaXJ0dWFsIGVuZ2luZSAo
Z2VtX3dzaW0gLWIgaTkxNSkgaXMgc3VwcG9ydGVkIGJ5IG1lZGlhLWJlbmNoLnBsIGV2ZW4gCj4g
d2l0aCB0aGUgb2xkL2RlZmF1bHQgc2V0IG9mIHdvcmtsb2Fkcy4KPiAKPiBUaGUgY2F0Y2ggaXMg
b2xkIHdzaW0gd29ya2xvYWRzIHVzZSBWQ1MgdG8gbWVhbiBhbnkgVkNTIGFuZCBpbiB0aG9zZSAK
PiBjYXNlcyAtYiBpOTE1IHdpbGwgc2V0IHVwIHRoZSB2aXJ0dWFsIGVuZ2luZSAKPiBhdXRvbWF0
aWNhbGx5L3RyYW5zcGFyZW50bHkuIFNvIHRob3NlIG9sZCB3b3JrbG9hZHMgY2FuIGJlIHJhbiBi
b3RoIHdpdGggCj4gdXNlcnNwYWNlIG9yIGk5MTUgYmFsYW5jaW5nLgoKQW5kIHNlZW1zIHRvIHN0
aWxsIGJlIHdvcmtpbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
