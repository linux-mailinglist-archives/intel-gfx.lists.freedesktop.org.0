Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA82584CA5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 15:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A596E6DA;
	Wed,  7 Aug 2019 13:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6576E6DA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 13:17:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 06:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="179489542"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2019 06:17:28 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CBF1D5C1E44; Wed,  7 Aug 2019 16:16:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190807083702.16349-2-chris@chris-wilson.co.uk>
References: <20190807083702.16349-1-chris@chris-wilson.co.uk>
 <20190807083702.16349-2-chris@chris-wilson.co.uk>
Date: Wed, 07 Aug 2019 16:16:53 +0300
Message-ID: <87y305869m.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Use intel_engine_lookup_user
 for probing HAS_BSD etc
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVXNlIHRo
ZSBzYW1lIG1lY2hhbmlzbSB0byBkZXRlcm1pbmUgaWYgYSBiYWNrZW5kIGVuZ2luZSBleGlzdHMg
Zm9yIGEKPiB1YWJpIG1hcHBpbmcgYXMgdXNlZCBpbnRlcm5hbGx5Lgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTIgKysrKysrKystLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKPiBpbmRleCBhYzU4NjhjMTJiOTcuLmQ3YmM2ZTVkNWM1MiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBAIC0zNzMsMTYgKzM3MywyMCBAQCBzdGF0aWMgaW50IGk5
MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAg
CQl2YWx1ZSA9IGRldl9wcml2LT5vdmVybGF5ID8gMSA6IDA7Cj4gIAkJYnJlYWs7Cj4gIAljYXNl
IEk5MTVfUEFSQU1fSEFTX0JTRDoKPiAtCQl2YWx1ZSA9ICEhZGV2X3ByaXYtPmVuZ2luZVtWQ1Mw
XTsKPiArCQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRldl9wcml2LAo+ICsJ
CQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMCk7Cj4gIAkJYnJlYWs7Cj4gIAljYXNl
IEk5MTVfUEFSQU1fSEFTX0JMVDoKPiAtCQl2YWx1ZSA9ICEhZGV2X3ByaXYtPmVuZ2luZVtCQ1Mw
XTsKPiArCQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRldl9wcml2LAo+ICsJ
CQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19DT1BZLCAwKTsKPiAgCQlicmVhazsKPiAgCWNhc2Ug
STkxNV9QQVJBTV9IQVNfVkVCT1g6Cj4gLQkJdmFsdWUgPSAhIWRldl9wcml2LT5lbmdpbmVbVkVD
UzBdOwo+ICsJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3ByaXYsCj4g
KwkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPX0VOSEFOQ0UsIDApOwo+ICAJCWJyZWFr
Owo+ICAJY2FzZSBJOTE1X1BBUkFNX0hBU19CU0QyOgo+IC0JCXZhbHVlID0gISFkZXZfcHJpdi0+
ZW5naW5lW1ZDUzFdOwo+ICsJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2
X3ByaXYsCj4gKwkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAxKTsKPiAgCQlicmVh
azsKPiAgCWNhc2UgSTkxNV9QQVJBTV9IQVNfTExDOgo+ICAJCXZhbHVlID0gSEFTX0xMQyhkZXZf
cHJpdik7Cj4gLS0gCj4gMi4yMy4wLnJjMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
