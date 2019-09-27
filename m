Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF8CC0516
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 14:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5638930C;
	Fri, 27 Sep 2019 12:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4C58930C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 12:25:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 05:25:26 -0700
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="180483792"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Sep 2019 05:25:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-8-chris@chris-wilson.co.uk>
 <a1305fcf-1ac4-6c06-3553-49a6684168ed@linux.intel.com>
 <156958352829.32596.13199670465422748570@skylake-alporthouse-com>
 <85a5f7de-3837-3017-cb20-23258a61075f@linux.intel.com>
 <156958660601.32596.13285971368792453394@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b4d4838e-dbc3-5ee0-8749-8578fea05881@linux.intel.com>
Date: Fri, 27 Sep 2019 13:25:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156958660601.32596.13285971368792453394@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915: Coordinate i915_active with
 its own mutex
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

Ck9uIDI3LzA5LzIwMTkgMTM6MTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTI3IDEzOjA4OjUxKQo+Pgo+PiBPbiAyNy8wOS8yMDE5IDEyOjI1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTI3IDEyOjEwOjI5KQo+Pj4+Cj4+Pj4gT24gMjUvMDkvMjAxOSAxMTowMSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiArc3RydWN0IGRtYV9mZW5jZSAqCj4+Pj4+ICtfX2k5MTVfYWN0aXZlX2Zl
bmNlX3NldChzdHJ1Y3QgaTkxNV9hY3RpdmVfZmVuY2UgKmFjdGl2ZSwKPj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+Pj4+Cj4+Pj4gQ2FuIHlvdSBh
ZGQgYSBzaG9ydCBjb21tZW50IGZvciB0aGlzIGZ1bmN0aW9uIGV4cGxhaW5pbmcgdGhlIHJhY3lu
ZXNzCj4+Pj4gYW5kIHNvIHdoeSBpdCByZXR1cm5zIHByZXYgYW5kIHdoYXQgc2hvdWxkIHRoZSBj
YWxsZXJzIGRvIHdpdGggaXQ/Cj4+Pgo+Pj4gQmVmb3JlIHVzaW5nIHRoaXMgZnVuY3Rpb24sIHdl
IGhhZCB0aGUgY2FsbGVycyBkZWNsYXJlIHdoYXQgbXV0ZXggZ3VhcmRzCj4+PiB0aGlzIHRpbWVs
aW5lIGFuZCB3ZSBjaGVjayBoZXJlIHRoYXQgaXMgaGVsZC4KPj4KPj4gTm8sIEkgbWVhbiBiZWNh
dXNlIGl0IGhhcyB0byByZWxvYWQgcHJldiBhbmQgcmV0dXJuIGl0IHRvIHRoZSBjYWxsZXIsCj4+
IHdoaWNoIGltcGxpZXMgdGhhdCBpcyB0byBoYW5kbGUgc29tZSBkZXNpZ25lZC1pbiByYWN5LW5l
c3Mgd2hpY2ggSSB0aGluawo+PiBzaG91bGQgYmUgbWVudGlvbmVkLgo+IAo+IEJ1dCB0aGF0J3Mg
bm90IHJhY2luZyB3aXRoIHRoZSBjYWxsZXIsIHRoYXQganVzdCByYWNpbmcgd2l0aCB0aGUKPiBj
YWxsYmFjayBmcm9tIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBhbmQgdGhlIHJlYXNvbiB3aHkgd2Ug
aGF2ZSB0byBjaGVjawo+IGFmdGVyIHNlcmlhbGlzaW5nIGlzIGNhbGxlZCBvdXQuIC8qIHNlcmlh
bGlzZSB3aXRoIHByZXYtPmNiX2xpc3QgKi8gPwo+IAo+IFRoZSBjYWxsZXIgaXMgcmVzcG9uc2li
bGUgZm9yIGVuc3VyaW5nIHRoYXQgcHJldiBpcyBleGVjdXRlZCBiZWZvcmUKPiBmZW5jZSB0byBr
ZWVwIHRoZSB0aW1lbGluZSBpbiB0aGUgc2FtZSBvcmRlciBhcyByZWNvcmRlZC4KCkkgZGlkIG5v
dCBzYXkgaXQgaXMgcmFjaW5nIHdpdGggdGhlIGNhbGxlciwgYnV0IHRoYXQgdGhlIGNhbGxlciBo
YXMgdG8gCmhhbmRsZSBhIHJhY2UuCgoiU2VyaWFsaXNlIHdpdGggcHJldi0+Y2JfbGlzdCIgaXMg
dG9vIGxvdyBsZXZlbCBmb3IgbWUuIFRydXN0IG1lLCBJIAphbHdheXMgc3RydWdnbGUgd2l0aCB0
aGUgYWN0aXZlIHRyYWNraW5nIGNvZGUgc2luY2UgdGhlcmUgaXMgc28gbWFueSAKaW5kaXJlY3Rp
b25zIGFuZCByZWxhdGlvbnNoaXBzLiBTbyBpbiB0aGUgYWJzZW5jZSBvZiBhIHZpc3VhbCBkaWFn
cmFtIGEgCmhpZ2hlciBsZXZlbCBjb21tZW50IHdvdWxkIGJlIGJlbmVmaWNpYWwgZm9yIHRoZSBm
dXR1cmUgc2VsZi4gSnVzdCAKZXhwYW5kaW5nIG9uIHdoYXQgeW91IHJlcGxpZWQgaGVyZSB0YWxr
aW5nIGFib3V0IGhvdyBpbnRlcnJ1cHRzIAppbnRlcmFjdHMgd2l0aCBuZXcgc3R1ZmYgZW50ZXJp
bmcgdHJhY2tpbmcgd291bGQgZG8gaXQuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
