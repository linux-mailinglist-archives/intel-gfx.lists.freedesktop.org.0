Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB0178A07
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 13:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36A889D2E;
	Mon, 29 Jul 2019 11:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1377889D2E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 11:00:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 02:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="346549019"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2019 02:50:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <bd4676e8-f724-91a7-ad3b-393e5892b159@linux.intel.com>
 <20190729085944.2179-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1abf4cff-952d-eda3-def5-eb2c3c9867f7@linux.intel.com>
Date: Mon, 29 Jul 2019 10:50:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729085944.2179-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Careful not to flush
 hang_fini on error setups
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

Ck9uIDI5LzA3LzIwMTkgMDk6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBTbWF0Y2ggc3BvdHRl
ZCB0aGF0IHdlIHRlc3QgYXQgdGhlIHN0YXJ0IG9mIGhhbmdfZmluaSBmb3IgYSB2YWxpZCAoaC0+
Z3QKPiBpcyBvbmx5IHNldCBhZnRlciBhIHJlcXVlc3QgaXMgY3JlYXRlZCkgYnV0IHRoZW4gdXNl
ZCBpdCByZWdhcmRsZXNzCj4gbGF0ZXIgb24uCj4gCj4gdjI6IEFsdGVybmF0aXZlbHksIHdlIGRv
IG5vdCBuZWVkIHRvIGNoZWNrIGFzIHdlIG5vdyBhbHdheXMgcHJpbWUgaC0+Z3QKPiBpbiBoYW5n
X2luaXQoKQo+IAo+IEZpeGVzOiBjYjgyM2VkOTkxNWIgKCJkcm0vaTkxNS9ndDogVXNlIGludGVs
X2d0IGFzIHRoZSBwcmltYXJ5IG9iamVjdCBmb3IgaGFuZGxpbmcgcmVzZXRzIikKCldpbGwgdGhl
IGZpeGVzIHRhZyBjYXVzZSBzb21lIHVud2FudGVkIGJhY2twb3J0aW5nPwoKQnV0IGZvciB0aGUg
Y2hhbmdlIGl0c2VsZjoKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIHwgNCArLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKPiBpbmRleCBlMmZhMzhhMWZmMGYuLjQ0ODRiNDQ0
N2RiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5n
Y2hlY2suYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVj
ay5jCj4gQEAgLTI3Miw5ICsyNzIsNyBAQCBzdGF0aWMgdTMyIGh3c19zZXFubyhjb25zdCBzdHJ1
Y3QgaGFuZyAqaCwgY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICBzdGF0aWMgdm9p
ZCBoYW5nX2Zpbmkoc3RydWN0IGhhbmcgKmgpCj4gICB7Cj4gICAJKmgtPmJhdGNoID0gTUlfQkFU
Q0hfQlVGRkVSX0VORDsKPiAtCj4gLQlpZiAoaC0+Z3QpCj4gLQkJaW50ZWxfZ3RfY2hpcHNldF9m
bHVzaChoLT5ndCk7Cj4gKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKGgtPmd0KTsKPiAgIAo+ICAg
CWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoaC0+b2JqKTsKPiAgIAlpOTE1X2dlbV9vYmplY3Rf
cHV0KGgtPm9iaik7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
