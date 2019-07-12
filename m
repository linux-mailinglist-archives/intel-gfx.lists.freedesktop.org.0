Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A7467335
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 18:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E166E2F2;
	Fri, 12 Jul 2019 16:23:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF016E2F2
 for <Intel-GFX@lists.freedesktop.org>; Fri, 12 Jul 2019 16:23:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 09:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="157176956"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.254.24.71])
 ([10.254.24.71])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2019 09:23:28 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20190712070745.35239-1-John.C.Harrison@Intel.com>
 <20190712070745.35239-3-John.C.Harrison@Intel.com>
 <3d25fc6c-9ce4-61f3-dae6-ed30e61fd80c@linux.intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <66c5c79b-692a-23e0-213b-e1eeb02e81c2@Intel.com>
Date: Fri, 12 Jul 2019 09:23:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3d25fc6c-9ce4-61f3-dae6-ed30e61fd80c@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Implement read-only
 support in whitelist selftest
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

T24gNy8xMi8yMDE5IDAxOjUzLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiBPbiAxMi8wNy8yMDE5
IDA4OjA3LCBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tIHdyb3RlOgo+PiBGcm9tOiBKb2huIEhh
cnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+Pgo+PiBOZXdlciBoYXJkd2FyZSBz
dXBwb3J0cyBleHRyYSBmZWF0dXJlIGluIHRoZSB3aGl0ZWxpc3QgcmVnaXN0ZXJzLiBUaGlzCj4+
IHBhdGNoIHVwZGF0ZXMgdGhlIHNlbGZ0ZXN0IHRvIHRlc3QgdGhhdCBlbnRyaWVzIG1hcmtlZCBh
cyByZWFkIG9ubHkKPj4gYXJlIGFjdHVhbGx5IHJlYWQgb25seS4KPj4KPj4gdjI6IFJlbW92ZWQg
YWxsIHVzZSBvZiAncnN2ZCcgZm9yIHJlYWQtb25seSByZWdpc3RlcnMgdG8gYXZvaWQKPj4gYW1i
aWd1b3VzIGNvZGUgb3IgZXJyb3IgbWVzc2FnZXMuCj4gV29yaydzIG5ldmVyIGRvbmUuIDopIFlv
dSBjYW4gZm9sbG93IHVwIHdpdGggYSBwYXRjaCB3aGljaCBhZGRzIGVuZ2luZSBsb29waW5nIHRv
IGxpdmVfcmVzZXRfd2hpdGVsaXN0LgoKVGhlcmUgaXMgX2Fsd2F5c18gc29tZXRoaW5nIG1vcmUg
dG8gYmUgZG9uZSEKCkkgbm90aWNlZCB0aGF0IExpb25lbCBhZGRlZCB1c2FnZSBvZiB0aGUgUkFO
R0UgZmllbGQgdG9vLiBUaGVyZSBuZWVkcyB0byAKYmUgbG9vcGluZyBzdXBwb3J0IGFkZGVkIGZv
ciB0aGF0LiBBdCB0aGUgbW9tZW50LCB0aGUgc2VsZi10ZXN0IHNpbXBseSAKbWFza3Mgb2ZmIHRo
ZSByYW5nZSBiaXRzIGFuZCBpZ25vcmVzIHRoZW0uIEl0IHJlYWxseSBzaG91bGQgYmUgdXBkYXRl
ZCAKdG8gdGVzdCB0aGUgZW50aXJlIHJhbmdlLgoKTGlvbmVsLCBhbnkgY2hhbmNlIHlvdSB3b3Vs
ZCBoYXZlIHRpbWUgdG8gcGljayB1cCB0aGVzZSBleHRyYSBjaGFuZ2VzPwoKVGhhbmtzLApKb2hu
LgoKPgo+IEkgd2FzIGxvb2tpbmcgYXQgeW91ciB0ZXN0IHJlc3VsdHMgYW5kIHdvbmRlcmluZyB3
aHkgbm8gbmV3IHdoaXRlbGlzdHM6Cj4KPiA8Nj4gWzQ4Ni42NjU3MDBdIGk5MTU6IFJ1bm5pbmcg
aW50ZWxfd29ya2Fyb3VuZHNfbGl2ZV9zZWxmdGVzdHMvbGl2ZV9yZXNldF93aGl0ZWxpc3QKPiA8
Nj4gWzQ4Ni42NjU3MDZdIENoZWNraW5nIDQgd2hpdGVsaXN0ZWQgcmVnaXN0ZXJzIG9uIHJjczAg
KFJJTkdfTk9OUFJJVikgW2VuZ2luZV0KPiA8Nz4gWzQ4Ni42NjYyODFdIFtkcm06aW50ZWxfcG93
ZXJfd2VsbF9lbmFibGUgW2k5MTVdXSBlbmFibGluZyBhbHdheXMtb24KPiA8NT4gWzQ4Ni42Njg3
NzddIGk5MTUgMDAwMDowMDowMi4wOiBSZXNldHRpbmcgcmNzMCBmb3IgbGl2ZV93b3JrYXJvdW5k
cwo+IDw2PiBbNDg2LjY2OTkwMF0gQ2hlY2tpbmcgNCB3aGl0ZWxpc3RlZCByZWdpc3RlcnMgb24g
cmNzMCAoUklOR19OT05QUklWKSBbZGV2aWNlXQo+IDw1PiBbNDg2LjY3MTA0Ml0gaTkxNSAwMDAw
OjAwOjAyLjA6IFJlc2V0dGluZyBjaGlwIGZvciBsaXZlX3dvcmthcm91bmRzCj4KPiBSZWdhcmRz
LAo+Cj4gVHZydGtvCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
