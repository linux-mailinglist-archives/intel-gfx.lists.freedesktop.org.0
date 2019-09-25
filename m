Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E1EBDE51
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB8B6EBA8;
	Wed, 25 Sep 2019 12:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142806EBA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:52:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 05:52:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179805434"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 05:52:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-26-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3da94b07-3843-9412-83e3-1257a917b306@linux.intel.com>
Date: Wed, 25 Sep 2019 13:52:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925100137.17956-26-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 25/27] drm/i915: Drop struct_mutex from
 suspend state save/restore
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

Ck9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBzdHJ1Y3RfbXV0ZXgg
cHJvdmlkZXMgbm8gc2VyaWFsaXNhdGlvbiBvZiB0aGUgcmVnaXN0ZXJzIGFuZCBkYXRhCj4gc3Ry
dWN0dXJlcyBiZWluZyBzYXZlZCBhbmQgcmVzdG9yZWQgYWNyb3NzIHN1c3BlbmQvcmVzdW1lLiBJ
dCBpcwo+IGNvbXBsZXRlbHkgc3VwZXJmbHVvdXMgaGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgOCAtLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfc3VzcGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKPiBp
bmRleCA4NTA4YTAxYWQ4YjkuLjFiYmZkOGZkNTEyNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3VzcGVuZC5jCj4gQEAgLTY1LDggKzY1LDYgQEAgaW50IGk5MTVfc2F2ZV9zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJc3RydWN0IHBjaV9kZXYgKnBkZXYg
PSBkZXZfcHJpdi0+ZHJtLnBkZXY7Cj4gICAJaW50IGk7Cj4gICAKPiAtCW11dGV4X2xvY2soJmRl
dl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKPiAtCj4gICAJaTkxNV9zYXZlX2Rpc3BsYXkoZGV2
X3ByaXYpOwo+ICAgCj4gICAJaWYgKElTX0dFTihkZXZfcHJpdiwgNCkpCj4gQEAgLTEwMCw4ICs5
OCw2IEBAIGludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAgCQkJZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZVNXRjNbaV0gPSBJOTE1X1JFQUQoU1dG
MyhpKSk7Cj4gICAJfQo+ICAgCj4gLQltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0
X211dGV4KTsKPiAtCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiBAQCAtMTEwLDggKzEwNiw2
IEBAIGludCBpOTE1X3Jlc3RvcmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAgCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2Owo+ICAg
CWludCBpOwo+ICAgCj4gLQltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7
Cj4gLQo+ICAgCWlmIChJU19HRU4oZGV2X3ByaXYsIDQpKQo+ICAgCQlwY2lfd3JpdGVfY29uZmln
X3dvcmQocGRldiwgR0NER01CVVMsCj4gICAJCQkJICAgICAgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2
ZUdDREdNQlVTKTsKPiBAQCAtMTQ1LDggKzEzOSw2IEBAIGludCBpOTE1X3Jlc3RvcmVfc3RhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCQkJSTkxNV9XUklURShTV0Yz
KGkpLCBkZXZfcHJpdi0+cmVnZmlsZS5zYXZlU1dGM1tpXSk7Cj4gICAJfQo+ICAgCj4gLQltdXRl
eF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKPiAtCj4gICAJaW50ZWxfZ21i
dXNfcmVzZXQoZGV2X3ByaXYpOwo+ICAgCj4gICAJcmV0dXJuIDA7Cj4gCgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
