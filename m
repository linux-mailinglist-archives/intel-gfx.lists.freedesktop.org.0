Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F119CFDE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35BC6E109;
	Mon, 26 Aug 2019 12:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E2916E109
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 12:53:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18266155-1500050 for multiple; Mon, 26 Aug 2019 13:53:10 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
Message-ID: <156682398787.12194.17730111951672068953@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 13:53:07 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Allow i915 to manage the vma
 offset nodes instead of drm core
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMDgtMjYgMTM6MjA6NTgpCj4gQEAgLTY0MSwx
MCArNjQyLDE4IEBAIHN0YXRpYyB2b2lkIHJldm9rZV9tbWFwcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+ICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKHZtYS0+ZmVuY2UgIT0gJmd0LT5nZ3R0LT5m
ZW5jZV9yZWdzW2ldKTsKPiAgICAgICAgICAgICAgICAgbm9kZSA9ICZ2bWEtPm9iai0+YmFzZS52
bWFfbm9kZTsKPiAgICAgICAgICAgICAgICAgdm1hX29mZnNldCA9IHZtYS0+Z2d0dF92aWV3LnBh
cnRpYWwub2Zmc2V0IDw8IFBBR0VfU0hJRlQ7Cj4gLSAgICAgICAgICAgICAgIHVubWFwX21hcHBp
bmdfcmFuZ2UoZ3QtPmk5MTUtPmRybS5hbm9uX2lub2RlLT5pX21hcHBpbmcsCj4gKwo+ICsgICAg
ICAgICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KG1tbywgJnZtYS0+b2JqLT5tbWFwX29mZnNl
dHMsIG9mZnNldCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIG5vZGUgPSAmbW1vLT52bWFf
bm9kZTsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoIWRybV9tbV9ub2RlX2FsbG9jYXRl
ZCgmbm9kZS0+dm1fbm9kZSkgfHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgbW1vLT5t
bWFwX3R5cGUgIT0gSTkxNV9NTUFQX1RZUEVfR1RUKQo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29udGludWU7CgpUaGF0IGxpc3QgbmVlZHMgbG9ja2luZyBhcyBpcyBub3QgcHJv
dGVjdGVkIGJ5IHRoZSByZXNldCBzcmN1IChhbmQgeW91CmFyZSBub3QgYWxsb3dlZCB5b3VyIG93
biBsb2NraW5nIGluIGhlcmUsIHVubGVzcyB5b3UgaGF2ZSBhIGpvbGx5IGdvb2QKcmVhc29uIGFu
ZCBjYW4gcHJvdmUgaXQgd2lsbCBuZXZlciBibG9jayBhIHJlc2V0KS4KCk9uZSB0aGluZyB0byBv
YnNlcnZlIGlzIGlzIHRoYXQgeW91IG9ubHkgZXZlciBuZWVkIHRoZSBtbW8gYXNzb2NpYXRlZAp3
aXRoIGEgZmVuY2UgZm9yIHJldm9jYXRpb24gdXBvbiByZXNldCwgYW5kIHlvdSBjb3VsZCB1c2Ug
YSBsb2NhbCBsaXN0CmZvciB0cmFja2luZyB0aGUgYWN0aXZlIG1tby4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
