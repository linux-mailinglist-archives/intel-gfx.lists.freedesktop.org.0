Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51F410D4FB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637236E8E0;
	Fri, 29 Nov 2019 11:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326586E8E0;
 Fri, 29 Nov 2019 11:37:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:37:10 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203710636"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 03:37:09 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191128180414.44846-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <93cc36f6-7c73-9295-941c-b53ed1a55c9f@linux.intel.com>
Date: Fri, 29 Nov 2019 11:37:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128180414.44846-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] overlay: Believe in 0MHz
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI4LzExLzIwMTkgMTg6MDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUdnJ0a28gcHJvcG9z
ZWQgcmVwb3J0aW5nIDBNSHogd2hlbiBpZGxlLCBidXQgdGhlIG92ZXJsYXkgZGlkbid0IGJlbGll
dmUKPiB0aGF0IHdvdWxkIGJlIHBvc3NpYmxlIGFuZCBzdHJpcHBlZCBmcm9tIGl0cyBncmFwaHMh
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gLS0tCj4gICBvdmVybGF5L292ZXJsYXkuYyB8IDkgKysrLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9vdmVybGF5L292ZXJsYXkuYyBiL292ZXJsYXkvb3ZlcmxheS5jCj4gaW5kZXggZGQ0ZmNhMjll
Li43NzMwMjE4MWMgMTAwNjQ0Cj4gLS0tIGEvb3ZlcmxheS9vdmVybGF5LmMKPiArKysgYi9vdmVy
bGF5L292ZXJsYXkuYwo+IEBAIC01OTksMTAgKzU5OSw4IEBAIHN0YXRpYyB2b2lkIHNob3dfZ3B1
X2ZyZXEoc3RydWN0IG92ZXJsYXlfY29udGV4dCAqY3R4LCBzdHJ1Y3Qgb3ZlcmxheV9ncHVfZnJl
cSAqCj4gICAJfQo+ICAgCj4gICAJaWYgKGhhc19mcmVxKSB7Cj4gLQkJaWYgKGdmLT5ncHVfZnJl
cS5jdXJyZW50KQo+IC0JCQljaGFydF9hZGRfc2FtcGxlKCZnZi0+Y3VycmVudCwgZ2YtPmdwdV9m
cmVxLmN1cnJlbnQpOwo+IC0JCWlmIChnZi0+Z3B1X2ZyZXEucmVxdWVzdCkKPiAtCQkJY2hhcnRf
YWRkX3NhbXBsZSgmZ2YtPnJlcXVlc3QsIGdmLT5ncHVfZnJlcS5yZXF1ZXN0KTsKPiArCQljaGFy
dF9hZGRfc2FtcGxlKCZnZi0+Y3VycmVudCwgZ2YtPmdwdV9mcmVxLmN1cnJlbnQpOwo+ICsJCWNo
YXJ0X2FkZF9zYW1wbGUoJmdmLT5yZXF1ZXN0LCBnZi0+Z3B1X2ZyZXEucmVxdWVzdCk7Cj4gICAK
PiAgIAkJY2hhcnRfZHJhdygmZ2YtPnJlcXVlc3QsIGN0eC0+Y3IpOwo+ICAgCQljaGFydF9kcmF3
KCZnZi0+Y3VycmVudCwgY3R4LT5jcik7Cj4gQEAgLTY0Nyw5ICs2NDUsOCBAQCBzdGF0aWMgdm9p
ZCBzaG93X2dwdV9mcmVxKHN0cnVjdCBvdmVybGF5X2NvbnRleHQgKmN0eCwgc3RydWN0IG92ZXJs
YXlfZ3B1X2ZyZXEgKgo+ICAgCQljYWlyb190ZXh0X2V4dGVudHNfdCBleHRlbnRzOwo+ICAgCj4g
ICAJCWxlbiA9IHNwcmludGYoYnVmLCAiRnJlcXVlbmN5OiAlZE1IeiIsIGdmLT5ncHVfZnJlcS5j
dXJyZW50KTsKPiAtCQlpZiAoZ2YtPmdwdV9mcmVxLnJlcXVlc3QpCj4gICAJCWNhaXJvX3NldF9z
b3VyY2VfcmdiYShjdHgtPmNyLCAxLCAxLCAxLCAxKTsKPiAtCQkJc3ByaW50ZihidWYgKyBsZW4s
ICIgKHJlcXVlc3RlZCAlZE1IeikiLCBnZi0+Z3B1X2ZyZXEucmVxdWVzdCk7Cj4gKwkJc3ByaW50
ZihidWYgKyBsZW4sICIgKHJlcXVlc3RlZCAlZE1IeikiLCBnZi0+Z3B1X2ZyZXEucmVxdWVzdCk7
Cj4gICAJCWNhaXJvX21vdmVfdG8oY3R4LT5jciwgUEFELCB5KTsKPiAgIAkJY2Fpcm9fc2hvd190
ZXh0KGN0eC0+Y3IsIGJ1Zik7Cj4gICAJCXkgKz0gMTI7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkZvciBpZi93aGVuIHdlIGRlY2lk
ZSB0byBnbyB3aXRoIGl0LiBZb3UgbWFkZSBtZSBhIGxpdHRsZSBiaXQgdW5zdXJlIAp3aXRoIHRo
ZSBzeXNmcyBhbmdsZSBhbHRob3VnaCBmcm9tIHRoZSBvdGhlciBoYW5kIEkgZG9uJ3Qgc2VlIHRo
YXQgaXQgaXMgCnVzZWZ1bCB0byByZXBvcnQgbm9uLXplcm8gd2hpbGUgaWRsZS4KClJlZ2FyZHMs
CgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
