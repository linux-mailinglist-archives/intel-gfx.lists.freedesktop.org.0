Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B6CAE87B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D1E6E8B4;
	Tue, 10 Sep 2019 10:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21756E8B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 03:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385299218"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 10 Sep 2019 03:39:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 241915C1E43; Tue, 10 Sep 2019 13:39:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190909110011.8958-4-chris@chris-wilson.co.uk>
References: <20190909110011.8958-1-chris@chris-wilson.co.uk>
 <20190909110011.8958-4-chris@chris-wilson.co.uk>
Date: Tue, 10 Sep 2019 13:39:38 +0300
Message-ID: <87y2ywsadx.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Perform GGTT restore much
 earlier during resume
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQXMgc29v
biBhcyB3ZSByZS1lbmFibGUgdGhlIHZhcmlvdXMgZnVuY3Rpb25zIHdpdGhpbiB0aGUgSFcsIHRo
ZXkgbWF5IGdvCj4gb2ZmIGFuZCByZWFkIGRhdGEgdmlhIGEgR0dUVCBvZmZzZXQuIEhlbmNlLCBp
ZiB3ZSBoYXZlIG5vdCB5ZXQgcmVzdG9yZWQKPiB0aGUgR0dUVCBQVEUgYmVmb3JlIHRoZW4sIHRo
ZXkgbWF5IHJlYWQgYW5kIGV2ZW4gKndyaXRlKiByYW5kb20gbG9jYXRpb25zCj4gaW4gbWVtb3J5
Lgo+Cj4gRGV0ZWN0ZWQgYnkgRE1BUiBmYXVsdHMgZHVyaW5nIHJlc3VtZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFydGluIFBl
cmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5j
ICAgIHwgMyAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAg
fCA1ICsrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIHwg
NiArKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiBpbmRleCBiMzk5
M2QyNGI4M2QuLjliMTEyOWFhYWNmZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jCj4gQEAgLTI0Miw5ICsyNDIsNiBAQCB2b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwo+ICAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQoJmk5MTUtPnVuY29yZSwg
Rk9SQ0VXQUtFX0FMTCk7Cj4gIAo+IC0JaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3MoaTkx
NSk7Cj4gLQlpOTE1X2dlbV9yZXN0b3JlX2ZlbmNlcyhpOTE1KTsKPiAtCj4gIAlpZiAoaTkxNV9n
ZW1faW5pdF9odyhpOTE1KSkKPiAgCQlnb3RvIGVycl93ZWRnZWQ7Cj4gIAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwo+IGluZGV4IDdiMmM4MWE4YmJhYS4uMWFmNGViYTk2OGMwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTE4NzcsNiArMTg3NywxMSBAQCBzdGF0aWMgaW50IGk5
MTVfZHJtX3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ICAJaWYgKHJldCkKPiAgCQlE
Uk1fRVJST1IoImZhaWxlZCB0byByZS1lbmFibGUgR0dUVFxuIik7Cj4gIAo+ICsJbXV0ZXhfbG9j
aygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJaTkxNV9nZW1fcmVzdG9yZV9ndHRf
bWFwcGluZ3MoZGV2X3ByaXYpOwo+ICsJaTkxNV9nZW1fcmVzdG9yZV9mZW5jZXMoZGV2X3ByaXYp
Owo+ICsJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwo+ICAJ
aW50ZWxfY3NyX3Vjb2RlX3Jlc3VtZShkZXZfcHJpdik7Cj4gIAo+ICAJaTkxNV9yZXN0b3JlX3N0
YXRlKGRldl9wcml2KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0u
Ywo+IGluZGV4IGJiNmRkNTRhNmZmMy4uMzc1OTM4MzFiNTM5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKPiBAQCAtMTE4LDYgKzExOCwxMiBAQCBzdGF0
aWMgdm9pZCBwbV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAl3aXRo
X2ludGVsX3J1bnRpbWVfcG0oJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpIHsKPiAgCQlpbnRl
bF9ndF9zYW5pdGl6ZSgmaTkxNS0+Z3QsIGZhbHNlKTsKPiAgCQlpOTE1X2dlbV9zYW5pdGl6ZShp
OTE1KTsKPiArCj4gKwkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJ
aTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3MoaTkxNSk7Cj4gKwkJaTkxNV9nZW1fcmVzdG9y
ZV9mZW5jZXMoaTkxNSk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKPiArCj4gIAkJaTkxNV9nZW1fcmVzdW1lKGk5MTUpOwo+ICAJfQo+ICB9Cj4gLS0gCj4gMi4y
My4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
