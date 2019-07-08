Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE6A61FA6
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB1389C94;
	Mon,  8 Jul 2019 13:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F5989C94
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 13:40:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 06:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="170289617"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 06:40:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-2-chris@chris-wilson.co.uk>
 <20190708113909.18117-1-chris@chris-wilson.co.uk>
 <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
 <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
 <156259274575.9375.11752216809720039961@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c49d580d-4db5-8d0b-01b6-1392eec32f47@linux.intel.com>
Date: Mon, 8 Jul 2019 14:40:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156259274575.9375.11752216809720039961@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add to timeline requires the
 timeline mutex
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA3LzIwMTkgMTQ6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNy0wOCAxMzoyMjowMSkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0wNy0wOCAxMzoxODowMikKPj4+Cj4+PiBPbiAwOC8wNy8yMDE5IDEyOjM5LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gdjI6IFRob3VnaCBpdCBkb2Vzbid0IGFmZmVjdCB0aGUgY3VycmVu
dCB1c2VycywgY29udGV4dHMgbWF5IHNoYXJlCj4+Pj4gdGltZWxpbmVzIHNvIGNoZWNrIGlmIHdl
IGFscmVhZHkgaG9sZCB0aGUgcmlnaHQgbXV0ZXguCj4+Cj4+Pj4gK2ludCBpbnRlbF9jb250ZXh0
X3ByZXBhcmVfcmVtb3RlX3JlcXVlc3Qoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQo+Pj4+ICt7Cj4+Pj4gKyAgICAgc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCA9IGNlLT5y
aW5nLT50aW1lbGluZTsKPj4+PiArICAgICBpbnQgZXJyOwo+Pj4+ICsKPj4+PiArICAgICAvKiBP
bmx5IHN1aXRhYmxlIGZvciB1c2UgaW4gcmVtb3RlbHkgbW9kaWZ5aW5nIHRoaXMgY29udGV4dCAq
Lwo+Pj4+ICsgICAgIEdFTV9CVUdfT04ocnEtPmh3X2NvbnRleHQgPT0gY2UpOwo+Pj4+ICsKPj4+
PiArICAgICBpZiAocnEtPnRpbWVsaW5lICE9IHRsKSB7IC8qIGJld2FyZSB0aW1lbGluZSBzaGFy
aW5nICovCj4+Pj4gKyAgICAgICAgICAgICBlcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGVf
bmVzdGVkKCZ0bC0+bXV0ZXgsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKPj4+Cj4+PiBXaGljaCBj
YWxsZXIgaXMgaG9sZGluZyB0bC0+bXV0ZXg/Cj4+Cj4+IE5vbmUgdG9kYXksIGJ1dCBpdCBpcyBj
b25jZWl2YWJsZS4gU28gcmF0aGVyIHRoYW4gaGF2ZSBhIG15c3RlcmlvdXMKPj4gZGVhZGxvY2sg
bm90IHJlcG9ydGVkIGJ5IGxvY2tkZXAgaW4gdGhlIGZ1dHVyZSwgbmlwIHRoZSBwcm9ibGVtIGlu
IHRoZQo+PiBidWQuCj4gCj4gSnVzdCBpbiBjYXNlLCBjcmVhdGluZyBhIHJlcXVlc3QgdGFrZXMg
dGhlIHRpbWVsaW5lLT5tdXRleCBhbmQgaG9sZHMgaXQKPiB1bnRpbCBzdWJtaXR0ZWQuIFNvIHRo
ZSBzY2VuYXJpbyBJIGNvbnNpZGVyZWQgd2FzIGlmIG9uZSB1c2VyIGNvbnRleHQKPiB3YW50ZWQg
dG8gbW9kaWZ5IGFub3RoZXIgb25lICh3aGljaCBjb3VsZCB3b3JrKSwgYnV0IHRoZXkgaGFwcGVu
IHRvIGJlCj4gb24gYSBjb21tb24gdGltZWxpbmUuCgpNYXliZSBteSBmb3J3YXJkIHZpc2lvbiBp
cyB0b28gbGltaXRlZC4gOikgQnV0IHNpbmNlIGNvZGUgY29uc29saWRhdGlvbiAKaXMgd29ydGgg
aXQsIGhvdyBhYm91dCB5b3Uga2VlcCB0aGF0IGFzcGVjdCBpbiB0aGlzIHBhdGNoLCBhbmQgbGVh
dmUgdGhlIAp0bC0+bXV0ZXggdGFraW5nIGZvciBsYXRlcj8KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
