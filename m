Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8B57BBCE
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 10:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A981789C9D;
	Wed, 31 Jul 2019 08:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C445E89C9D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 08:37:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17752853-1500050 for multiple; Wed, 31 Jul 2019 09:37:03 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156456032572.6373.13078860351376372466@skylake-alporthouse-com>
References: <20190730035835.24103-1-ramalingam.c@intel.com>
 <66d3520c-205d-4631-5d35-f963e1d88e2f@linux.intel.com>
 <20190730080427.GA31013@intel.com>
 <37c95ae1-e996-74c1-c08c-08fbcb5fd497@linux.intel.com>
 <156450642872.6373.8533889876738348685@skylake-alporthouse-com>
 <2ff5c66a-2257-1594-44bd-d9e5b7c8e9e0@linux.intel.com>
 <156456032572.6373.13078860351376372466@skylake-alporthouse-com>
Message-ID: <156456222195.6373.10373852899032021702@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 09:37:01 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v5] tests/i915/gem_exec_async: Update
 with engine discovery
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMzEgMDk6MDU6MjUpCj4gKyAgICAgICAvKiBG
aXJzdCB1cCwgY2hlY2sgdGhlIGxlZ2FjeSBlbmdpbmUgc2VsZWN0b3IgQUJJIGZvciBpbmRlcGVu
ZGVuY2UgKi8KPiArICAgICAgIGlndF9zdWJ0ZXN0X2dyb3VwIHsKPiArICAgICAgICAgICAgICAg
c3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyIGVuZ2luZXNbNjRdOwo+ICsgICAgICAgICAg
ICAgICB1bnNpZ25lZCBpbnQgbnVtX2VuZ2luZXMgPSAwOwo+ICsKPiArICAgICAgICAgICAgICAg
aWd0X2ZpeHR1cmUgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9leGVjdXRpb25fZW5naW5lICplOwo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICBmb3Ig
KGUgPSBpbnRlbF9leGVjdXRpb25fZW5naW5lczsgZS0+bmFtZTsgZSsrKSB7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpZiAoIWdlbV9yaW5nX2hhc19waHlzaWNhbF9lbmdpbmUo
ZmQsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncykpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC8qIE11c3QgYmUgdW5pcXVlLCBubyB1bmtub3dhYmxlIEJTRCBhbGlhc2VzISAqLwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lc1tudW1fZW5naW5lc10gPQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnZW1fZWJfZmxhZ3NfdG9fZW5n
aW5lKGUtPmV4ZWNfaWQgfCBlLT5mbGFncyk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpZiAoZW5naW5lc1tudW1fZW5naW5lc10uZmxhZ3MgIT0gLTEpCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGlmICghZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5naW5lc1tu
dW1fZW5naW5lc10uZmxhZ3MpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBudW1f
ZW5naW5lcysrOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKG51bV9lbmdp
bmVzID09IEFSUkFZX1NJWkUoZW5naW5lcykpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiArICAgICAg
ICAgICAgICAgfQoKSSBhbHNvIGV4cGVjdCB0aGlzIHRvIGJlIHJlcGVhdGVkIGVub3VnaCB0byBt
ZXJpdCBzb21ldGhpbmcgbGlrZQpudW1fZW5naW5lcyA9IGdlbV9lbmdpbmVzX2dldF9sZWdhY3ko
ZmQsCgkJCQkgICAgIGVuZ2luZXMsIEFSUkFZX1NJWkUoZW5naW5lcyksCgkJCQkgICAgIExFR0FD
WV9QSFlTSUNBTCB8IExFR0FDWV9DQU5fU1RPUkVfRFdPUkQpOwotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
