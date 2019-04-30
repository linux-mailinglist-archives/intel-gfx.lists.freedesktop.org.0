Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C954F8EA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A763E89121;
	Tue, 30 Apr 2019 12:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6777689121
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:33:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="140088976"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2019 05:33:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190430094405.6127-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <340097ab-b63c-08a3-20bd-04c0f1038f57@linux.intel.com>
Date: Tue, 30 Apr 2019 13:33:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430094405.6127-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Wait for the struct_mutex on
 idling
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

Ck9uIDMwLzA0LzIwMTkgMTA6NDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIHRoZSBzeXN0
ZW0gaXMgaWRsaW5nLCBjb250ZW50aW9uIGZvciBzdHJ1Y3RfbXV0ZXggc2hvdWxkIGJlIGxvdyBh
bmQKPiBzbyB3ZSB3aWxsIGJlIG1vcmUgZWZmaWNpZW50IHRvIHdhaXQgZm9yIGEgY29udGVuZGVk
IG11dGV4IHRoYW4KPiByZXNjaGVkdWxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYyB8IDggKy0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMK
PiBpbmRleCAzNTU0ZDU1ZGFlMzUuLjNiNmU4ZDViZThlMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fcG0uYwo+IEBAIC00NywxMyArNDcsNyBAQCBzdGF0aWMgdm9pZCBpZGxlX3dvcmtf
aGFuZGxlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPQo+ICAgCQljb250YWluZXJfb2Yod29yaywgdHlwZW9mKCppOTE1KSwgZ2Vt
LmlkbGVfd29yay53b3JrKTsKPiAgIAo+IC0JaWYgKCFtdXRleF90cnlsb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KSkgewo+IC0JCS8qIEN1cnJlbnRseSBidXN5LCBjb21lIGJhY2sgbGF0ZXIg
Ki8KPiAtCQltb2RfZGVsYXllZF93b3JrKGk5MTUtPndxLAo+IC0JCQkJICZpOTE1LT5nZW0uaWRs
ZV93b3JrLAo+IC0JCQkJIG1zZWNzX3RvX2ppZmZpZXMoNTApKTsKPiAtCQlyZXR1cm47Cj4gLQl9
Cj4gKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAo+ICAgCWludGVs
X3dha2VyZWZfbG9jaygmaTkxNS0+Z3Qud2FrZXJlZik7Cj4gICAJaWYgKCFpbnRlbF93YWtlcmVm
X2FjdGl2ZSgmaTkxNS0+Z3Qud2FrZXJlZikpCj4gCgpJIGRvbid0IHNlZSBhbnkgcmVhbCBkb3du
c2lkZXMgdG8gdGhpcyBpbmRlZWQuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClBvc3NpYmxlIHR3ZWFrIGNvdWxkIGJlIHRvIGxlYXZlIHRo
aXMgYXMgaXMsIG1heWJlIGp1c3Qgbm90IGdvIGZvciB0aGUgCnJlZHVjZWQgaWRsZSB0aW1lciBv
biByZS1zY2hlZHVsZSwgYnV0IGFkZCBhIGNhbmNlbF9kZWxheWVkX3dvcmsgb24gdGhlIAp1bnBh
cmtpbmcgc2lkZSBvZiB0aGluZ3MuIFRoYXQgd2F5IGFueSBtdXRleCBhY3Rpdml0eSB3aXRob3V0
IGFjdHVhbCAKZGV2aWNlIHVucGFya2luZyB3b3VsZCBvbmx5IHNsaWdodGx5IGRlbGF5IGdvaW5n
IGlkbGUsIHdoaWxlIGlkbGVfd29yayAKd291bGQgcmV0YWluIGl0J3MgbWluaW1hbCBkaXN0dXJi
YW5jZSBvZiB0aGUgbXV0ZXguCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
