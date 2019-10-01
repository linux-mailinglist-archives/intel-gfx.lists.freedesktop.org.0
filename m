Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9D5C3E93
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6989389169;
	Tue,  1 Oct 2019 17:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA4B89169
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:28:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 10:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="366407212"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 01 Oct 2019 10:28:51 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.205]) with mapi id 14.03.0439.000;
 Tue, 1 Oct 2019 10:28:51 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Polish intel_tv_mode_valid()
Thread-Index: AQHVeG9vSkKItVQIlkyWaF91aMqatadGf9mA
Date: Tue, 1 Oct 2019 17:28:50 +0000
Message-ID: <4644b22e631ac942541affd9825369c27cc49b93.camel@intel.com>
References: <20191001154629.11063-1-ville.syrjala@linux.intel.com>
 <20191001154629.11063-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191001154629.11063-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <2D71CA1F8BD8CD43AA9B9984F534A510@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Polish intel_tv_mode_valid()
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

T24gVHVlLCAyMDE5LTEwLTAxIGF0IDE4OjQ2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRHJvcCB0aGUgdHZfbW9kZSBOVUxMIGNoZWNrIHNpbmNlIGludGVsX3R2X21vZGVfZmlu
ZCgpIG5ldmVyDQo+IGFjdHVhbGx5IHJldHVybnMgTlVMTCwgYW5kIGZsaXAgdGhlIGNvbmRpdGlv
biBhcm91bmQgc28gdGhhdA0KPiB0aGUgTU9ERV9PSyBjYXNlIGlzIGF0IHRoZSBlbmQsIHdoaWNo
IGlzIGN1c3RvbWFyeSB0byBhbGwNCj4gdGhlIG90aGVyIC5tb2RlX3ZhbGlkKCkgaW1wbGVtZW50
YXRpb25zLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90di5jIHwgNyArKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdHYuYw0KPiBpbmRleCBiNzAyMjFmNTExMmEuLjcxYzNmN2U1ZGY3ZCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYw0KPiBAQCAtOTYx
LDExICs5NjEsMTAgQEAgaW50ZWxfdHZfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0K
PiAqY29ubmVjdG9yLA0KPiAgCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiAgDQo+ICAJLyog
RW5zdXJlIFRWIHJlZnJlc2ggaXMgY2xvc2UgdG8gZGVzaXJlZCByZWZyZXNoICovDQo+IC0JaWYg
KHR2X21vZGUgJiYgYWJzKHR2X21vZGUtPnJlZnJlc2ggLSBkcm1fbW9kZV92cmVmcmVzaChtb2Rl
KSAqDQo+IDEwMDApDQo+IC0JCQkJPCAxMDAwKQ0KPiAtCQlyZXR1cm4gTU9ERV9PSzsNCj4gKwlp
ZiAoYWJzKHR2X21vZGUtPnJlZnJlc2ggLSBkcm1fbW9kZV92cmVmcmVzaChtb2RlKSAqIDEwMDAp
ID49DQo+IDEwMDApDQo+ICsJCXJldHVybiBNT0RFX0NMT0NLX1JBTkdFOw0KPiAgDQo+IC0JcmV0
dXJuIE1PREVfQ0xPQ0tfUkFOR0U7DQo+ICsJcmV0dXJuIE1PREVfT0s7DQo+ICB9DQo+ICANCj4g
IHN0YXRpYyBpbnQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
