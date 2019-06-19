Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCEA4BB73
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480BC6E3DD;
	Wed, 19 Jun 2019 14:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7626E3DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:27:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 07:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358206898"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 07:27:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
 <20190619112341.9082-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <22892c2a-194f-d41e-2408-1c4b2a97daa2@linux.intel.com>
Date: Wed, 19 Jun 2019 15:27:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619112341.9082-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Signal fence completion from
 i915_request_wait
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA2LzIwMTkgMTI6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaXRoIHRoZSB1cGNv
bWluZyBjaGFuZ2UgdG8gYXV0b21hbmFnZWQgaTkxNV9hY3RpdmUsIHRoZSBpbnRlbnQgaXMgdGhh
dAo+IHdoZW5ldmVyIHdlIHdhaXQgb24gdGhlIHNldCBvZiBhY3RpdmUgZmVuY2VzLCB0aGV5IGFy
ZSBzaWduYWxlZCBhbmQKPiBjb2xsZWN0ZWQuICBUaGUgcmVxdWlyZW1lbnQgaXMgdGhhdCBhbGwg
c3VjY2Vzc2Z1bCByZXR1cm5zIGZyb20KPiBpOTE1X3JlcXVlc3Rfd2FpdCgpIHNpZ25hbCB0aGUg
ZmVuY2UsIHNvIGZpeHVwIHRoZSBvbmUgcmVtYWluaW5nIHBhdGgKPiB3aGVyZSB3ZSBtYXkgcmV0
dXJuIGJlZm9yZSB0aGUgaW50ZXJydXB0IGhhcyBiZWVuIHJ1bi4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgNCArKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMKPiBpbmRleCAwYzJiNTNiOGEzZDEuLjhkNTljMzViZDIyZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCj4gQEAgLTE0NTEsOCArMTQ1MSwxMCBAQCBsb25nIGk5MTVfcmVx
dWVzdF93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICAgCWZvciAoOzspIHsKPiAgIAkJ
c2V0X2N1cnJlbnRfc3RhdGUoc3RhdGUpOwo+ICAgCj4gLQkJaWYgKGk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQocnEpKQo+ICsJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkgewo+ICsJCQlk
bWFfZmVuY2Vfc2lnbmFsKCZycS0+ZmVuY2UpOwo+ICAgCQkJYnJlYWs7Cj4gKwkJfQo+ICAgCj4g
ICAJCWlmIChzaWduYWxfcGVuZGluZ19zdGF0ZShzdGF0ZSwgY3VycmVudCkpIHsKPiAgIAkJCXRp
bWVvdXQgPSAtRVJFU1RBUlRTWVM7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KClBhdGNoIGlzIGZpbmUsIGJ1dCBJIGhhdmUgdG8gc2F5
IGNvbW1pdCBtZXNzYWdlIHNjYXJlcyBtZSBhIGJpdC4gV2hlcmUgCmFyZSB3ZSBhZGRpbmcgc3Vj
aCBzdWJ0bGUgZnJhZ2lsaXR5IHRoYXQgd2FpdCBoYXMgdG8gZXhpdCB3aXRoIGZlbmNlIApzaWdu
YWxlZD8gSXMgaXQganVzdCBzb21lIHNwZWNpZmljIGk5MTVfcmVxdWVzdF93YWl0IGNhbGwgc2l0
ZSBvciBhbGwgb2YgCnRoZW0/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
