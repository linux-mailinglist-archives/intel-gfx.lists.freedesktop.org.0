Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF8245ADA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 12:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A5389471;
	Fri, 14 Jun 2019 10:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8901E89471
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 10:45:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 03:45:54 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 03:45:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-17-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8448680e-3a62-3088-26c5-8658cf488f01@linux.intel.com>
Date: Fri, 14 Jun 2019 11:45:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614071023.17929-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/39] drm/i915: Execute signal callbacks
 from no-op i915_request_wait
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

Ck9uIDE0LzA2LzIwMTkgMDg6MTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB3ZSBlbnRlciBp
OTE1X3JlcXVlc3Rfd2FpdCgpIHdpdGggYW4gYWxyZWFkeSBjb21wbGV0ZWQgcmVxdWVzdCwgYnV0
Cj4gdW5zaWduYWxlZCBkbWEtZmVuY2UsIHNpZ25hbCB0aGUgZmVuY2UgYmVmb3JlIHJldHVybmlu
Zy4gVGhpcyBhbGxvd3MgdXMKPiB0byBleGVjdXRlIGFueSBvZiB0aGUgc2lnbmFsIGNhbGxiYWNr
cyBhdCB0aGUgZWFybGllc3Qgb3Bwb3J0dW5pdHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
Cj4gaW5kZXggZWFkNjhhMmZmZWFjLi5hODJmM2ZmODJiMzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwo+IEBAIC0xMzkyLDcgKzEzOTIsNyBAQCBsb25nIGk5MTVfcmVxdWVz
dF93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICAgCW1pZ2h0X3NsZWVwKCk7Cj4gICAJ
R0VNX0JVR19PTih0aW1lb3V0IDwgMCk7Cj4gICAKPiAtCWlmIChpOTE1X3JlcXVlc3RfY29tcGxl
dGVkKHJxKSkKPiArCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoJnJxLT5mZW5jZSkpCj4gICAJ
CXJldHVybiB0aW1lb3V0Owo+ICAgCj4gICAJaWYgKCF0aW1lb3V0KQo+IAoKUmV2aWV3ZWQtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZy
dGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
