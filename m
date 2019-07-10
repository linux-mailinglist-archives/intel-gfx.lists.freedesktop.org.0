Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA302642FC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 09:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17DD089F82;
	Wed, 10 Jul 2019 07:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E0889F82
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 07:40:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 00:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,473,1557212400"; d="scan'208";a="340991650"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2019 00:40:33 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4538C5C1E9C; Wed, 10 Jul 2019 10:40:20 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190710064454.682-1-chris@chris-wilson.co.uk>
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 10:40:20 +0300
Message-ID: <875zoa1gnv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/execlists: Record preemption
 for selftests
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUHV0IGJh
Y2sgdGhlIHByZWVtcHRpb24gY291bnRlcnMgbG9zdCBpbiBjb21taXQgMjJiN2E0MjZiYmUxCj4g
KCJkcm0vaTkxNS9leGVjbGlzdHM6IFByZWVtcHQtdG8tYnVzeSIpIHNvIHRoYXQgb3VyIHNlbGZ0
ZXN0cyB0aGF0Cj4gYXNzZXJ0IG5vIHByZWVtcHRpb24gdG9vayBwbGFjZSBjb250aW51ZSB0byBm
dW5jdGlvbi4KPgo+IHYyOiBCdXQgYSB0aW1lc2xpY2UgaXMgb25seSBhICJzb2Z0IiBwcmVlbXB0
aW9uIQo+Cj4gRml4ZXM6IDIyYjdhNDI2YmJlMSAoImRybS9pOTE1L2V4ZWNsaXN0czogUHJlZW1w
dC10by1idXN5IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDcgKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+IGluZGV4IDE5Y2U4ZWI1ZTVjOS4uMjcwZWY0MTdkZDFhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtOTIxLDYgKzkyMSwxMSBAQCBlbmFi
bGVfdGltZXNsaWNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCXJldHVybiBs
YXN0ICYmIG5lZWRfdGltZXNsaWNlKGVuZ2luZSwgbGFzdCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2
b2lkIHJlY29yZF9wcmVlbXB0aW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVj
bGlzdHMpCj4gK3sKPiArCSh2b2lkKUk5MTVfU0VMRlRFU1RfT05MWShleGVjbGlzdHMtPnByZWVt
cHRfaGFuZy5jb3VudCsrKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVl
dWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cyA9ICZlbmdpbmUtPmV4ZWNsaXN0czsK
PiBAQCAtOTg5LDYgKzk5NCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCQkJCSAgbGFzdC0+ZmVuY2Uuc2Vxbm8sCj4g
IAkJCQkgIGxhc3QtPnNjaGVkLmF0dHIucHJpb3JpdHksCj4gIAkJCQkgIGV4ZWNsaXN0cy0+cXVl
dWVfcHJpb3JpdHlfaGludCk7Cj4gKwkJCXJlY29yZF9wcmVlbXB0aW9uKGV4ZWNsaXN0cyk7Cj4g
Kwo+ICAJCQkvKgo+ICAJCQkgKiBEb24ndCBsZXQgdGhlIFJJTkdfSEVBRCBhZHZhbmNlIHBhc3Qg
dGhlIGJyZWFkY3J1bWIKPiAgCQkJICogYXMgd2UgdW53aW5kIChhbmQgdW50aWwgd2UgcmVzdWJt
aXQpIHNvIHRoYXQgd2UgZG8KPiAtLSAKPiAyLjIyLjAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
