Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC17461F5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4958C899DE;
	Fri, 14 Jun 2019 15:01:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC53899E7
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:01:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:01:29 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 08:01:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-17-tvrtko.ursulin@linux.intel.com>
 <156043460670.17012.7120509194419771135@skylake-alporthouse-com>
 <15623051-38a0-88a6-a1d2-578abb0117ea@linux.intel.com>
 <156050783417.12536.6776047670176121851@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3d342a35-f741-20f4-cf1c-87f39103d77c@linux.intel.com>
Date: Fri, 14 Jun 2019 16:01:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156050783417.12536.6776047670176121851@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 16/28] drm/i915: Compartmentalize
 i915_ggtt_probe_hw
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

Ck9uIDE0LzA2LzIwMTkgMTE6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDEwOjM1OjU3KQo+Pgo+PiBPbiAxMy8wNi8yMDE5IDE1OjAz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE0OjM1OjI3KQo+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4+Pj4KPj4+PiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0ZXIgY29kZSBjb21w
YXJ0bWVudGFsaXphdGlvbiBieSBpbnRyb2R1Y2luZwo+Pj4+IHN0cnVjdCBpbnRlbF9ndCwgY29u
dGludWUgdGhlIHRoZW1lIGVsc2V3aGVyZSBpbiBjb2RlIGJ5IG1ha2luZyBmdW5jdGlvbnMKPj4+
PiB0YWtlIHBhcmFtZXRlcnMgdGFrZSB3aGF0IGxvZ2ljYWxseSBtYWtlcyBtb3N0IHNlbnNlIGZv
ciB0aGVtIGluc3RlYWQgb2YKPj4+PiB0aGUgZ2xvYmFsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
Lgo+Pj4KPj4+IElzIHRoYXQgYSBjYW4gb2Ygd29ybXMgSSBzZWU/IDopCj4+Pgo+Pj4gV2hpbGUg
eW91IGFyZSBoZXJlLCBjYXJlIHRvIHB1bGwgaW4gdGhlIGdtY2ggcHJvYmUgc28gd2UgY2FuIGRy
b3AgdGhlCj4+PiBmcmFua2Vuc3RlaW4gYXBwcm9hY2guCj4+Cj4+IFdoYXQgZXhhY3RseSBkbyB5
b3UgbWVhbj8gUHVsbCBpbiB3aGF0IGZyb20gd2hlcmUgdG8gd2hlcmU/Cj4gCj4gaW50ZWxfZ3R0
LmtvIGlzIHRoZSBvdGhlciBoYWxmIG9mIGk5MTVfZ2VtX2d0dC5jCgpJJ2xsIGxlYXZlIHRoaXMg
b3V0IG9mIHRoaXMgc2VyaWVzLCBhdCBsZWFzdCBmb3Igbm93LgoKT3RoZXJ3aXNlIEkndmUgZG9u
ZSBhbGwgdGhlIG90aGVyIHJlZmFjdG9ycyBhbmQgdHdlYWtzIHRvIGhpZ2hlciBvciAKbG93ZXIg
c3RhbmRhcmQuIEknbGwgc2VuZCBhIG5ldyBSRkMgb3V0IGp1c3Qgc28gd2Ugc2VlIHdoZXJlIHdl
IGFyZS4KClJlZ2FyZHMsCgpUdnJ0a28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
