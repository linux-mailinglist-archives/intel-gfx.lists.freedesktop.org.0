Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD3078C22
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 14:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA9C8985A;
	Mon, 29 Jul 2019 12:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6967D892FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 12:59:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 05:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="346598108"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2019 05:59:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
 <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
Date: Mon, 29 Jul 2019 13:59:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Push the ring creation
 flags to the backend
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

Ck9uIDI2LzA3LzIwMTkgMDk6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTI0IDEyOjExOjU0KQo+Pgo+PiBPbiAyMy8wNy8yMDE5IDE5OjM4
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZy
b20gdGhlIG91dGVyIEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+Pj4gaW50ZWxfY290bmV4dCB0
byBhdm9pZCBhbiB1bnNpZ2h0bHkgYmFjay1yZWZlcmVuY2UgZnJvbSBpbnNpZGUgdGhlCj4+PiBi
YWNrZW5kLgo+Pgo+PiBTb3JyeSBJIGZpbmQgdGhpcyBxdWl0ZSB1Z2x5LiBQYXNzaW5nIGluIGlu
dGVnZXJzIGluIHBvaW50ZXJzIGZpbGVkIGFuZAo+PiBjYXN0aW5nIGJhY2sgYW5kIGZvcnRoLgo+
IAo+IEJ1dCBiZXR0ZXIgdGhhbiBhIHVuaW9uLCBzaW5jZSBvbmNlIHRoZSBpbnRlbF9jb250ZXh0
IGlzIGFjdGl2ZSwgdGhlCj4gcmluZyBpcyBhbHdheXMgYSByaW5nLgoKVW5sZXNzIGl0IGlzIHU2
NCBzaXplLiBJIGFtIG5vdCBidXlpbmcgaXQuIDopCgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKPj4+IGluZGV4IDZkMzkxMTQ2OTgwMS4uZTIzN2JjZWNmYTFmIDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4+PiBAQCAtMzI4LDEwICszMjgsMTQgQEAg
c3RhdGljIHZvaWQgcHJpbnRfY29udGV4dF9zdGF0cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4+PiAg
ICAKPj4+ICAgICAgICAgICAgICAgIGZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsCj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdpbmVz
KGN0eCksIGl0KSB7Cj4+PiAtICAgICAgICAgICAgICAgICAgICAgaWYgKGNlLT5zdGF0ZSkKPj4+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBlcl9maWxlX3N0YXRzKDAsIGNlLT5zdGF0
ZS0+b2JqLCAma3N0YXRzKTsKPj4+IC0gICAgICAgICAgICAgICAgICAgICBpZiAoY2UtPnJpbmcp
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5lZChjZSk7
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKGludGVsX2NvbnRleHRfaXNfcGlubmVkKGNl
KSkgewo+Pgo+PiBBbmQgdGhlc2UgaHVua3MgZG8gbm90IHNlZW0gdG8gYmVsb25nIHRvIHRoaXMg
cGF0Y2guCj4gCj4gVGhlbiB5b3UgYXJlIG1pc3Rha2VuLiBUaGUgYnVnIGlzIG9sZGVyLCBidXQg
aXQgZ2V0cyB0cmlnZ2VyZWQgYnkgdGhpcwo+IHBhdGNoLgoKR2V0cyB0cmlnZ2VyZWQgb3IgZ2V0
cyBmaXhlZD8gUGVyaGFwcyBjb21taXQgbWVzc2FnZSBuZWVkcyBpbXByb3ZpbmcgCnNpbmNlIGl0
IHRhbGtzIGFib3V0IGF2b2lkaW5nIGFuIHVuc2lnaHRseSBiYWNrLXJlZmVyZW5jZSAoYW5kIEkg
YXJndWUgCmNlLT5yaW5nID0gdTY0IHNpemUgaXMgYXQgbGVhc3QgZXF1YWxseSB1bnNpZ2h0bHkp
LCBhbmQgbm90IGZpeGluZyBhbnkgYnVncy4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
