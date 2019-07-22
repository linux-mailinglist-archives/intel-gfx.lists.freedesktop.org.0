Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F2D6FF5A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 14:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141C289906;
	Mon, 22 Jul 2019 12:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB8189906
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 12:16:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 05:16:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368497238"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 05:16:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718124220.26623-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4b24f426-7817-1805-0c09-b93c13221b16@linux.intel.com>
Date: Mon, 22 Jul 2019 13:16:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718124220.26623-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move global activity tracking
 from GEM to GT
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

Ck9uIDE4LzA3LzIwMTkgMTM6NDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyBvdXIgZ2xvYmFs
IHVucGFyay9wYXJrIGtlZXAgdHJhY2sgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgdXNlcnMsIHdl
Cj4gY2FuIHNpbXBseSBtb3ZlIHRoZSBhY2NvdW50aW5nIGZyb20gdGhlIEdFTSBsYXllciB0byB0
aGUgYmFzZSBHVCBsYXllci4KPiBJdCB3YXMgcGxhY2VkIG9yaWdpbmFsbHkgaW5zaWRlIEdFTSB0
byBiZW5lZml0IGZyb20gdGhlIDEwMG1zIGV4dHJhCj4gZGVsYXkgb24gaWRsZW5lc3MsIGJ1dCB0
aGF0IGhhcyBiZWVuIGVsaW1pbmF0ZWQgYW5kIG5vdyB0aGVyZSBpcyBubwo+IHN1YnN0YW50aXZl
IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgbGF5ZXJzLiBJbiBtb3ZpbmcgaXQsIHdlIG1vdmUgYW5v
dGhlcgo+IHBpZWNlIG9mIHRoZSBwdXp6bGUgb3V0IGZyb20gdW5kZXJuZWF0aCBzdHJ1Y3RfbXV0
ZXguCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDQgLS0tLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgfCA1ICsrKysrCj4gICAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwo+IGluZGV4IDhmYWYyNjIyNzhhZS4uMWFm
YjA0NjYwNzI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiBA
QCAtOSw3ICs5LDYgQEAKPiAgICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgo+ICAgCj4gICAj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAtI2luY2x1ZGUgImk5MTVfZ2xvYmFscy5oIgo+ICAgCj4g
ICBzdGF0aWMgdm9pZCBjYWxsX2lkbGVfYmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+ICAgewo+IEBAIC00MSw4ICs0MCw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bh
cmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICAKPiAgIAlpbnRlbF90aW1lbGlu
ZXNfcGFyayhpOTE1KTsKPiAgIAlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7Cj4gLQo+IC0JaTkxNV9n
bG9iYWxzX3BhcmsoKTsKCkJlbmVmaXQgb2YgdGhpcyBwbGFjZW1lbnQgd2FzIGFsc28gdGhhdCB3
aGF0IHdpbGwgYmUgZnJlZWQgb24gcGFya2luZyAKd2FzIGZyZWVkIGJ5IHRoaXMgcG9pbnQgc28g
c2hyaW5raW5nIG9mIHNsYWJzIGlzIGVmZmVjdGl2ZS4gSWYgeW91IG1vdmUgCml0IHRvIGd0IHBh
cmtpbmcgdGhlbiB0aGF0IHJ1bnMgdG8gZWFybHkuIFNvIEkgdGhpbmsgaXQgaXMgYmV0dGVyIHRo
YXQgCml0IHN0YXlzIHdoZXJlIGl0IGlzLgoKUmVnYXJkcywKClR2cnRrbwoKPiAgIH0KPiAgIAo+
ICAgc3RhdGljIHZvaWQgaWRsZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQo+IEBAIC05Myw3ICs5MCw2IEBAIHN0YXRpYyBpbnQgcG1fbm90aWZpZXIoc3RydWN0IG5vdGlm
aWVyX2Jsb2NrICpuYiwKPiAgIAo+ICAgCXN3aXRjaCAoYWN0aW9uKSB7Cj4gICAJY2FzZSBJTlRF
TF9HVF9VTlBBUks6Cj4gLQkJaTkxNV9nbG9iYWxzX3VucGFyaygpOwo+ICAgCQlxdWV1ZV9kZWxh
eWVkX3dvcmsoaTkxNS0+d3EsCj4gICAJCQkJICAgJmk5MTUtPmdlbS5yZXRpcmVfd29yaywKPiAg
IAkJCQkgICByb3VuZF9qaWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndF9wbS5jCj4gaW5kZXggNjFlZDkxMjM0MWYxLi5jZTc3MzNlZTc2Y2YgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBAQCAtNSw2ICs1LDcgQEAK
PiAgICAqLwo+ICAgCj4gICAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiArI2luY2x1ZGUgImk5MTVf
Z2xvYmFscy5oIgo+ICAgI2luY2x1ZGUgImk5MTVfcGFyYW1zLmgiCj4gICAjaW5jbHVkZSAiaW50
ZWxfZW5naW5lX3BtLmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKPiBAQCAtMjQsNiArMjUs
OCBAQCBzdGF0aWMgaW50IGludGVsX2d0X3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
Cj4gICAKPiAgIAlHRU1fVFJBQ0UoIlxuIik7Cj4gICAKPiArCWk5MTVfZ2xvYmFsc191bnBhcmso
KTsKPiArCj4gICAJLyoKPiAgIAkgKiBJdCBzZWVtcyB0aGF0IHRoZSBETUMgbGlrZXMgdG8gdHJh
bnNpdGlvbiBiZXR3ZWVuIHRoZSBEQyBzdGF0ZXMgYSBsb3QKPiAgIAkgKiB3aGVuIHRoZXJlIGFy
ZSBubyBjb25uZWN0ZWQgZGlzcGxheXMgKG5vIGFjdGl2ZSBwb3dlciBkb21haW5zKSBkdXJpbmcK
PiBAQCAtNzcsNiArODAsOCBAQCBzdGF0aWMgaW50IGludGVsX2d0X3Bhcmsoc3RydWN0IGludGVs
X3dha2VyZWYgKndmKQo+ICAgCUdFTV9CVUdfT04oIXdha2VyZWYpOwo+ICAgCWludGVsX2Rpc3Bs
YXlfcG93ZXJfcHV0KGk5MTUsIFBPV0VSX0RPTUFJTl9HVF9JUlEsIHdha2VyZWYpOwo+ICAgCj4g
KwlpOTE1X2dsb2JhbHNfcGFyaygpOwo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
