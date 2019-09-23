Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB648BAEDA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 10:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3906E21A;
	Mon, 23 Sep 2019 08:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A6E6E21A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 08:04:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 01:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="203075010"
Received: from dwitkows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.137])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2019 01:04:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190920185421.17822-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190920185421.17822-1-jani.nikula@intel.com>
Date: Mon, 23 Sep 2019 11:04:17 +0300
Message-ID: <87zhivh20u.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: add
 i915_driver_modeset_remove()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMCBTZXAgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gRm9yIGNvbXBsZXRlbmVzcywgYWRkIGNvdW50ZXJwYXJ0IHRvIGk5MTVfZHJpdmVy
X21vZGVzZXRfcHJvYmUoKSBhbmQKPiByZW1vdmUgdGhlIGFzeW1tZXRyeSBpbiB0aGUgcHJvYmUv
cmVtb3ZlIHBhcnRzLiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4KPiBSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KClB1c2hlZCB0aGUgc2VyaWVzLCB0aGFu
a3MgZm9yIHRoZSByZXZpZXcuIE5vdyB0byBmaWd1cmUgb3V0IGhvdyB0byB0YW1lCnRoZSBhY3R1
YWwgZHJhZ29uLCB0aGlzIHdhcyBqdXN0IHdhcm11cC4uLgoKQlIsCkphbmkuCgoKPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDI1ICsrKysrKysrKysrKysrKy0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggOTkwNGY3NjJmNGJiLi40Y2I5NWZk
OWIzNWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNDIyLDYgKzQyMiwyMCBA
QCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldikKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGk5MTVfZHJpdmVy
X21vZGVzZXRfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKwlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+ICsKPiArCWludGVsX21vZGVz
ZXRfZHJpdmVyX3JlbW92ZSgmaTkxNS0+ZHJtKTsKPiArCj4gKwlpbnRlbF9iaW9zX2RyaXZlcl9y
ZW1vdmUoaTkxNSk7Cj4gKwo+ICsJdmdhX3N3aXRjaGVyb29fdW5yZWdpc3Rlcl9jbGllbnQocGRl
dik7Cj4gKwl2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYsIE5VTEwsIE5VTEwsIE5VTEwpOwo+ICsK
PiArCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBp
bnRlbF9pbml0X2RwaW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4g
IAkvKgo+IEBAIC0xNTg2LDggKzE2MDAsNiBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0
IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4gIAo+ICB2
b2lkIGk5MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAg
ewo+IC0Jc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKPiAtCj4gIAlkaXNh
YmxlX3JwbV93YWtlcmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+ICAKPiAgCWk5MTVf
ZHJpdmVyX3VucmVnaXN0ZXIoaTkxNSk7Cj4gQEAgLTE2MDgsMTQgKzE2MjAsNyBAQCB2b2lkIGk5
MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gIAlp
bnRlbF9ndnRfZHJpdmVyX3JlbW92ZShpOTE1KTsKPiAgCj4gLQlpbnRlbF9tb2Rlc2V0X2RyaXZl
cl9yZW1vdmUoJmk5MTUtPmRybSk7Cj4gLQo+IC0JaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5
MTUpOwo+IC0KPiAtCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOwo+IC0J
dmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBOVUxMLCBOVUxMLCBOVUxMKTsKPiAtCj4gLQlpbnRl
bF9jc3JfdWNvZGVfZmluaShpOTE1KTsKPiArCWk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKGk5
MTUpOwo+ICAKPiAgCS8qIEZyZWUgZXJyb3Igc3RhdGUgYWZ0ZXIgaW50ZXJydXB0cyBhcmUgZnVs
bHkgZGlzYWJsZWQuICovCj4gIAljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmk5MTUtPmd0Lmhh
bmdjaGVjay53b3JrKTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
