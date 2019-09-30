Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251A2C204E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 14:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E9D6E3A0;
	Mon, 30 Sep 2019 12:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E486E3A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 12:03:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 05:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,567,1559545200"; d="scan'208";a="390795596"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2019 05:03:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D2E815C1E5E; Mon, 30 Sep 2019 15:02:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190930091135.11971-1-chris@chris-wilson.co.uk>
References: <20190928100145.13165-1-chris@chris-wilson.co.uk>
 <20190930091135.11971-1-chris@chris-wilson.co.uk>
Date: Mon, 30 Sep 2019 15:02:49 +0300
Message-ID: <8736gem1p2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Magic interrupt shadow to
 relieve some random lockups
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTXkgY3Vy
cmVudCB0aGVvcnkgaXMgdGhhdCB0aGlzIG1hc2tzIGludGVycnVwdCBkZWxpdmVyeSB0byB0aGUg
bG9jYWwgQ1BVCj4gZHVyaW5nIGEgY3JpdGljYWwgcGhhc2UuIFB1cmVseSBwYXBlcmluZyBvdmVy
IHRoZSBzeW1wdG9tcyB3aXRoIGEgZGVsYXkKPiBwbHVja2VkIG91dCBvZiB0aGluIGFpciBmcm9t
IHRlc3Rpbmcgb24gdGdsMS1nZW0sIHJlZmluZWQgc2xpZ2h0bHkgYnkKPiBqdXN0IHdhaXRpbmcg
Zm9yIHRoZSBuZXh0IGFjayAodGhvdWdoIHRlY2huaWNhbGx5IHRoZSBuZXh0IENTIGV2ZW50IG1h
eQo+IG5vdCBiZSB0aGUgY29ycmVzcG9uZGluZyBldmVudCBmb3IgdGhpcyBzdWJtaXQsIGJ1dCBh
biBpbnRlcm1lZGlhdGUKPiBjb21wbGV0aW9uKS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwg
OSArKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCBhYjcyNWE2Y2EwYWMuLjM1NDEwZDY0N2I1
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTExNTUsNiArMTE1
NSw3IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhl
Y2xpc3RzICpleGVjbGlzdHMsCj4gIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xpc3RzOwo+ICsJdW5zaWdu
ZWQgaW50IHRhaWwgPSBSRUFEX09OQ0UoKmV4ZWNsaXN0cy0+Y3NiX3dyaXRlKTsKPiAgCXVuc2ln
bmVkIGludCBuOwo+ICAKPiAgCUdFTV9CVUdfT04oIWFzc2VydF9wZW5kaW5nX3ZhbGlkKGV4ZWNs
aXN0cywgInN1Ym1pdCIpKTsKPiBAQCAtMTE4Niw2ICsxMTg3LDE0IEBAIHN0YXRpYyB2b2lkIGV4
ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJ
Lyogd2UgbmVlZCB0byBtYW51YWxseSBsb2FkIHRoZSBzdWJtaXQgcXVldWUgKi8KPiAgCWlmIChl
eGVjbGlzdHMtPmN0cmxfcmVnKQo+ICAJCXdyaXRlbChFTF9DVFJMX0xPQUQsIGV4ZWNsaXN0cy0+
Y3RybF9yZWcpOwo+ICsKCkkgZG9uJ3QgZG91YnQgd2UgZm9yZ2V0IHRoaXMgYnV0IGEgY29tbWVu
dCB3b3VsZCBzdGlsbCBiZQpnb29kIHRoYXQgd2UgbGltaXQgdGhlIGludHIgZ2VuZXJhdGlvbiBm
b3IgcmVhc29ucyBzdGlsbAp1bmtub3duLgoKPiArCWlmIChJU19USUdFUkxBS0UoZW5naW5lLT5p
OTE1KSkgewo+ICsJCXU2NCBzdGFydCA9IGxvY2FsX2Nsb2NrKCk7Cj4gKwkJZG8KPiArCQkJY3B1
X3JlbGF4KCk7Cj4gKwkJd2hpbGUgKHRhaWwgPT0gUkVBRF9PTkNFKCpleGVjbGlzdHMtPmNzYl93
cml0ZSkgJiYKPiArCQkgICAgICAgKGxvY2FsX2Nsb2NrKCkgLSBzdGFydCkgPj4gMjAgPT0gMCk7
CgoxbXMuLndlbGwsIGlmIGl0IHdvcmtzIDpPCgpOZWVkIHRvIHRyYWNrIHRoaXMgY2xvc2VseSBh
bmQgcGxzIGNvbnNpZGVyIGxpbWl0aW5nIHRoaXMgdG8gY3VycmVudCByZXZpZApqdXN0IHNvIHRo
YXQgd2Ugd291bGQgbm90aWNlIHRoZSBkaWZmIGltbWVkaWF0ZWx5IHdoZW4gd2UgZ2V0IHVwZGF0
ZXMuCgpBY2tlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+Cgo+ICsJfQo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBjdHhfc2luZ2xlX3BvcnRfc3VibWlz
c2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gLS0gCj4gMi4yMy4wCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
